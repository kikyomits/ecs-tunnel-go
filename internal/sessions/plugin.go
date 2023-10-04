//go:generate go run go.uber.org/mock/mockgen@v0.3.0 -source=plugin.go  -package=mock  -destination=./mock/plugin_mock.go
package sessions

import (
	"github.com/aws/session-manager-plugin/src/datachannel"

	"github.com/aws/session-manager-plugin/src/sessionmanagerplugin/session"
)

type PluginSessionInput struct {
	ClientId    string
	DataChannel datachannel.IDataChannel
	Endpoint    string
	SessionId   string
	StreamUrl   string
	TargetId    string
	TokenValue  string
}

func (p *PluginSessionInput) toSession() *session.Session {
	sess := new(session.Session)
	sess.ClientId = p.ClientId
	sess.DataChannel = p.DataChannel
	sess.Endpoint = p.Endpoint
	sess.SessionId = p.SessionId
	sess.StreamUrl = p.StreamUrl
	sess.TargetId = p.TargetId
	sess.TokenValue = p.TokenValue
	return sess
	//return &session.Session{
	//	ClientId:    p.ClientId,
	//	DataChannel: p.DataChannel,
	//	Endpoint:    p.Endpoint,
	//	SessionId:   p.SessionId,
	//	StreamUrl:   p.StreamUrl,
	//	TargetId:    p.TargetId,
	//	TokenValue:  p.TokenValue,
	//}
}

type Plugin interface {
	Execute(in PluginSessionInput) error
}
