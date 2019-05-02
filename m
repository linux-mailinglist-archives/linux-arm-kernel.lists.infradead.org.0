Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 076AD1216E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 19:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eWsZeq89jh8fyfD6chSfE0FNgThOPweYCwVF91KvB10=; b=WYtTAOKkz/zPHK
	FxYg7AuwsGWwTXWXROdnWMR+Q9BFYmyCcho09XdMqwg1p8xTQJWrD4/psNGHKX9iDH7dhn50zpAC1
	zcC2onUDAPC7ChZpln1E3cE9teVj0F89jYAtSzWJ1Pvhth6mlVecqMrOvbL8L+bsgLRPoto1Yb7sn
	hcv/lh8HwVUd6wCheylhL+pdQTjdhqIWaKOPVW8KUpjUYNumxxok+JPx32pLESrtNiC0PWC0qesWt
	P41fry5cBOQI1MFpxZdCk15V+fuzzziKI7Nwq3OCA+wkoFKocerP1JNG2FQAnCQWIBs/qS5wA9uF3
	YbxsyhMHD7DY/R9YPoTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMFyl-0002KD-25; Thu, 02 May 2019 17:58:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMFyQ-0002AZ-SU; Thu, 02 May 2019 17:58:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gportay) with ESMTPSA id 59086260C68
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Lin Huang <hl@rock-chips.com>, Brian Norris <briannorris@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Derek Basehore <dbasehore@chromium.org>, Randy Li <ayaka@soulik.info>,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v5 0/5] Add support for drm/rockchip to dynamically control
 the DDR frequency.
Date: Thu,  2 May 2019 13:58:14 -0400
Message-Id: <20190502175820.25382-1-gael.portay@collabora.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_105823_180306_72B6FF91 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RGVhciBhbGwsCgpUaGUgcmszMzk5IHBsYXRmb3JtIGhhcyBhIERGSSBjb250cm9sbGVyIHRoYXQg
Y2FuIG1vbml0b3IgRERSIGxvYWQgYW5kIGEKRE1DIGRyaXZlciB0aGF0IHRhbGtzIHdpdGggdGhl
IFRGLUEgKFRydXN0ZWQgRmlybXdhcmUtQSkgdG8gZHluYW1pY2FsbHkKc2V0IHRoZSBERFIgZnJl
cXVlbmN5IHdpdGggZm9sbG93aW5nIGZsb3cuCgogICAgICAgICAgICAga2VybmVsICAgICAgICAg
ICAgICAgICAgICAgICAgICBUcnVzdGVkIEZpcm13YXJlLUEKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoYmwzMSkKICAgICAgICBtb25pdG9yIGRkciBs
b2FkCiAgICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgICB8CiAgICAgICAgZ2V0X3Rhcmdl
dF9yYXRlCiAgICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgICB8ICAgICAgICAgICBwYXNz
IHJhdGUgdG8gVEYtQQogICAgICAgIGNsa19zZXRfcmF0ZShkZHIpIC0tLS0tLS0tLS0tLS0tLS0t
LS0tLT5ydW4gZGRyIGR2cyBmbG93CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB8CiAgICAgICAgICAgICAgICAgPC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLWVuZCBkZHIgZHZzIGZsb3cKICAgICAgICAgICAgICAgIHwKICAgICAgICAgICAgICAg
IHwKICAgICAgICAgICAgICByZXR1cm4KClRoZXNlIHBhdGNoZXMgYWRkIHN1cHBvcnQgZm9yIGRl
dmZyZXEgdG8gZHluYW1pY2FsbHkgY29udHJvbCB0aGUgRERSCmZyZXF1ZW5jeSBmb3IgdGhlIGdy
dSBjaHJvbWVib29rcy4gQnkgZGVmYXVsdCBpdCB1c2VzIHRoZQonc2ltcGxlX29uZGVtYW5kJyBn
b3Zlcm5vciB3aGljaCBjYW4gYWRqdXN0IHRoZSBmcmVxdWVuY3kgYmFzZWQgb24gdGhlCkREUiBs
b2FkLgoKV2FpdGluZyBmb3IgeW91ciBmZWVkYmFjay4KCkJlc3QgcmVnYXJkcywKR2HDq2wKCk5v
dGU6IFRoZSBSRkMgYW5kIHRoZSBmaXJzdCBwYXRjaHNldCBjb250YWluZWQgdGhyZWUgcGF0Y2hl
cyB0byBzeW5jIHRoZQpERFIgZnJlcXVlbmN5IGNoYW5nZSB3aXRoaW4gdGhlIHZibGFuay4gVGhl
c2UgcGF0Y2hlcyB3YXMgc3VibWl0dGVkCnNlcGFyYXRseSBpbiBhIGRlZGljYXRlZCBSRkNbMV0u
CgpbMV06IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzQvMzAvMTA2NgoKQ2hhbmdlcyBpbiB2
NToKLSBbUEFUQ0ggdjQgNS81XSBSZW1vdmUgdXNlIG9mIERSQU0gc2V0dGluZyBkZWZpbmVzLgoJ
CSBSZW1vdmUgbmV3IERSQU0gc2V0dGluZyBoZWFkZXIuCi0gW1BBVENIIHY1IDYvNl0gUmVtb3Zl
IHJlZmVyZW5jZXMgb2YgdW5leGlzdGFudCBkZWZpbmVzIGluIGRvY3VtZW50YXRpb24gKG5ldwog
ICAgICAgICAgICAgICAgIHBhdGNoKS4KCkNoYW5nZXMgaW4gdjQ6Ci0gW1BBVENIIHYzIDEvNV0g
QWRkIEFja2VkLWJ5OiBNeXVuZ0pvbyBIYW0gPG15dW5nam9vLmhhbUBzYW1zdW5nLmNvbT4uCi0g
W1BBVENIIHYzIDIvNV0gQWRkIEFja2VkLWJ5OiBNeXVuZ0pvbyBIYW0gPG15dW5nam9vLmhhbUBz
YW1zdW5nLmNvbT4uCi0gW1BBVENIIHYzIDMvNV0gQWRkIEFja2VkLWJ5OiBNeXVuZ0pvbyBIYW0g
PG15dW5nam9vLmhhbUBzYW1zdW5nLmNvbT4uCi0gW1BBVENIIHYzIDQvNV0gUmVtb3ZlIGJvYXJk
IHJlbGF0ZWQgRERSIHNldHRpbmdzIChtb3ZlZCB0byA1LzUpLgotIFtQQVRDSCB2MyA1LzVdIEFk
ZCBib2FyZCByZWxhdGVkIEREUiBzZXR0aW5ncyAobW92ZWQgZnJvbSA1LzUpLgoKQ2hhbmdlcyBp
biB2MzoKLSBbUEFUQ0ggdjIgMS81XSBBZGQgU2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxn
YWVsLnBvcnRheUBjb2xsYWJvcmEuY29tPi4KLSBbUEFUQ0ggdjIgMi81XSBBZGQgU2lnbmVkLW9m
Zi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBvcnRheUBjb2xsYWJvcmEuY29tPi4KLSBbUEFUQ0gg
djIgMy81XSBBZGQgU2lnbmVkLW9mZi1ieTogR2HDq2wgUE9SVEFZIDxnYWVsLnBvcnRheUBjb2xs
YWJvcmEuY29tPi4KCQkgUmVtb3ZlIGNvbW1lbnRzLgoJCSBNb3ZlIHBtdSBkdCBwYXJzaW5nIGFm
dGVyIGR0LXBhcnNpbmcgb2YgdGltaW5ncyB0byBmaXgKCQkgIGRhdGEtPm9kdF9kaXNfZnJlcSB2
YWx1ZS4KLSBbUEFUQ0ggdjIgNS81XSBSZW1vdmUgZGlzcGxheV9zdWJzeXN0ZW0gbm9kZXMuCgpD
aGFuZ2VzIGluIHYyOgotIFtQQVRDSCAxLzhdIFJlYWxseSBhZGQgQWNrZWQtYnk6IENoYW53b28g
Q2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPi4KLSBbUEFUQ0ggNC84XSBSZW1vdmVkIGZyb20g
cGF0Y2hzZXQuCi0gW1BBVENIIDUvOF0gUmVtb3ZlZCBmcm9tIHBhdGNoc2V0LgotIFtQQVRDSCA2
LzhdIFJlbW92ZWQgZnJvbSBwYXRjaHNldC4KLSBbUEFUQ0ggNy84XSBSZXdvcmQgdGhlIGNvbW1p
dCBtZXNzYWdlIHRvIHJlZmxlY3QgdGhlIHJlbW92YWwgb2YKICAgICAgICAgICAgICByazMzOTAt
ZHJhbS1kZWZhdWx0LXRpbWluZy5kdHMgaW4gdjEuCi0gW1BBVENIIDgvOF0gTW92ZSBjZW50ZXIt
c3VwcGx5IGF0dHJpYnV0ZSBvZiBkbWMgbm9kZSBpbiBmaWxlCiAgICAgICAgICAgICAgcmszMzk5
LWdydS1jaHJvbWVib29rLmR0c2kgKHdoZXJlIHBwdmFyX2NlbnRlcmxvZ2ljIGlzCgkgICAgICBk
ZWZpbmVkKS4KCkNoYW5nZXMgaW4gdjE6Ci0gW1JGQyAxLzEwXSBBZGQgQWNrZWQtYnk6IENoYW53
b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgotIFtSRkMgMS8xMF0gcy9HZW5lcmljL0dl
bmVyYWwvIChSb2JpbiBNdXJwaHkpCi0gW1JGQyAyLzEwXSBBZGQgcmV2aWV3ZWQgYW5kIGFja2Vk
IHRhZ3MgZnJvbSBDaGFud29vIENob2kgYW5kIFJvYiBIZXJyaW5nCi0gW1JGQyAzLzEwXSBBZGQg
YW4gZXhwbGFuYXRpb24gZm9yIHBsYXRmb3JtIFNJUCBjYWxscy4KLSBbUkZDIDMvMTBdIENoYW5n
ZSBpZiBzdGF0ZW1lbnQgZm9yIGEgc3dpdGNoLgotIFtSRkMgMy8xMF0gUmVuYW1lIGRkcl9mbGFn
IHRvIG9kdF9lbmFibGUgdG8gYmUgbW9yZSBjbGVhci4KLSBbUkZDIDQvMTBdIFJlbW92ZWQgZnJv
bSB0aGUgc2VyaWVzLiBJIGRpZCBub3QgZm91bmQgYSB1c2UgY2FzZSB3aGVyZSBub3QgaG9sZGlu
ZyB0aGUgbXV0ZXggY2F1c2VzIHRoZSBpc3N1ZS4KLSBbUkZDIDcvMTBdIFJlbW92ZWQgZnJvbSB0
aGUgc2VyaWVzLiBJIGRpZCBub3QgZm91bmQgYSB1c2UgY2FzZSB3aGVyZSB0aGlzIG1hdHRlcnMu
Ci0gW1JGQyA4LzEwXSBNb3ZlIHJrMzM5OS1kcmFtLmggdG8gZHQtaW5jbHVkZXMuCi0gW1JGQyA4
LzEwXSBQdXQgc2RyYW0gZGVmYXVsdCB2YWx1ZXMgdW5kZXIgdGhlIGRtYyBub2RlLgotIFtSRkMg
OC8xMF0gUmVtb3ZlZCByazMzOTktZHJhbS1kZWZhdWx0LXRpbWluZy5kdHMKCkVucmljIEJhbGxl
dGJvIGkgU2VycmEgKDMpOgogIGRldmZyZXE6IHJvY2tjaGlwLWRmaTogTW92ZSBHUkYgZGVmaW5p
dGlvbnMgdG8gYSBjb21tb24gcGxhY2UuCiAgZHQtYmluZGluZ3M6IGRldmZyZXE6IHJrMzM5OV9k
bWM6IEFkZCByb2NrY2hpcCxwbXUgcGhhbmRsZS4KICBkZXZmcmVxOiByazMzOTlfZG1jOiBQYXNz
IE9EVCBhbmQgYXV0byBwb3dlciBkb3duIHBhcmFtZXRlcnMgdG8gVEYtQS4KCkdhw6tsIFBPUlRB
WSAoMSk6CiAgZHQtYmluZGluZ3M6IGRldmZyZXE6IHJrMzM5OV9kbWM6IFJlbW92ZSByZWZlcmVu
Y2VzIG9mIHVuZXhpc3RhbnQKICAgIGRlZmluZXMKCkxpbiBIdWFuZyAoMik6CiAgYXJtNjQ6IGR0
czogcmszMzk5OiBBZGQgZGZpIGFuZCBkbWMgbm9kZXMuCiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6
IEVuYWJsZSBkbWMgYW5kIGRmaSBub2RlcyBvbiBncnUuCgogLi4uL2JpbmRpbmdzL2RldmZyZXEv
cmszMzk5X2RtYy50eHQgICAgICAgICAgIHwgNzUgKysrKysrKysrLS0tLS0tLS0tLQogLi4uL2R0
cy9yb2NrY2hpcC9yazMzOTktZ3J1LWNocm9tZWJvb2suZHRzaSAgIHwgIDQgKwogYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZ3J1LmR0c2kgIHwgNDUgKysrKysrKysrKysKIC4u
Li9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktb3AxLW9wcC5kdHNpICAgICB8IDI5ICsrKysrKysK
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgICAgICB8IDE5ICsrKysr
CiBkcml2ZXJzL2RldmZyZXEvZXZlbnQvcm9ja2NoaXAtZGZpLmMgICAgICAgICAgfCAyMyArKy0t
LS0KIGRyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMgICAgICAgICAgICAgICAgICB8IDcxICsr
KysrKysrKysrKysrKysrLQogaW5jbHVkZS9zb2Mvcm9ja2NoaXAvcmszMzk5X2dyZi5oICAgICAg
ICAgICAgIHwgMjEgKysrKysrCiBpbmNsdWRlL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9zaXAuaCAg
ICAgICAgICAgfCAgMSArCiA5IGZpbGVzIGNoYW5nZWQsIDIzMiBpbnNlcnRpb25zKCspLCA1NiBk
ZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL3NvYy9yb2NrY2hpcC9yazMz
OTlfZ3JmLmgKCi0tIAoyLjIxLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
