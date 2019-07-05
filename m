Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA55E60996
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMl3uKr2uAQa7L0ZLIbXVaFLHAXBKDW+c1AdGbrbyiE=; b=EzjvppdQSGuUqn
	WuyKeYU8GD8NIzc9g8/JoPN7CDoNhPdKRJr/44EZUWY9zEKOX1YPrnyu0KWG/mq6wbXB6qx/ExsFa
	YxUI3M17aNQmNbgLlssqBCyHf8cOMXstWqx7byOq0VuTkZPny8WdBjCrOpfsqj4O6/TNxAVCvIfl3
	y1Wsk4hxpClHpDhifWgTXG91vTlbBKbiCYXxHrbuqybG6AFW1P5vRwH4GtjJnQbx8KTkF2RwR1K30
	zr0iNWHKXufBsiOKVTzHq3MhJMKrPEvVKrwyIeQdS+qVDYQMPT2cZqLQeSUgYr/8E7jIeCK7QUEtF
	5O62zY/TIEdGvga81Www==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQQd-0001Qj-A7; Fri, 05 Jul 2019 15:47:15 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQNW-0005fs-ER
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 15:44:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Mime-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BY8TPzgiQE6FdNT5fQQkpJfEkQ90WKwXgFewQnPm0Ic=; b=bp3u6mHjsD/Pw/FFUH91lKo9en
 /bHHQxAr9+9tGgsy7zYTb/nGy/6M3NIuWxomr5M8Jx/n8eXncARjIH/rS1+lDOoMBwE481uEazUS9
 TmC7+VG/GMjboJ7ujvPE46kNk/ZymWWMNUSWbQeRIpkj8nYnfU+uoqTsU08oW7T7eZWx/T7Pf5SL/
 Nc0K3pUNfyZqGBpYKteGp6X+kRRC6ACky0N6mTFGdtIe0y3gizlo2i1yu19/5NvxPkyOr2NgCMLSk
 73frcg0RBe0wj7qb6iMVd7OjzlxxFHm+3AhthCvItNXq6NeOhwlIoyHptlKJC2qpT5khvysFcnMF7
 CrDDl/OA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJFN-0000OM-6W
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 08:07:10 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hjJAu-0001cv-SN; Fri, 05 Jul 2019 10:02:32 +0200
Message-ID: <1562313748.4291.3.camel@pengutronix.de>
Subject: Re: [PATCH V3 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>,  "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,  "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>,  "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Date: Fri, 05 Jul 2019 10:02:28 +0200
In-Reply-To: <DB3PR0402MB39167B9A3CFAE6D8798B3CAEF5F50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190704094416.4757-1-Anson.Huang@nxp.com>
 <1562235363.6641.10.camel@pengutronix.de>
 <DB3PR0402MB39167B9A3CFAE6D8798B3CAEF5F50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5zb24sCgpPbiBGcmksIDIwMTktMDctMDUgYXQgMDA6MjYgKzAwMDAsIEFuc29uIEh1YW5n
IHdyb3RlOgo+IEhpLCBQaGlsaXBwCj4gCj4gPiBPbiBUaHUsIDIwMTktMDctMDQgYXQgMTc6NDQg
KzA4MDAsIEFuc29uLkh1YW5nQG54cC5jb20gd3JvdGU6Cj4gPiA+IEZyb206IEFuc29uIEh1YW5n
IDxBbnNvbi5IdWFuZ0BueHAuY29tPgo+ID4gPiAKPiA+ID4gaS5NWDhNTSBjYW4gcmV1c2UgaS5N
WDhNUSdzIHJlc2V0IGRyaXZlciwgdXBkYXRlIHRoZSBjb21wYXRpYmxlCj4gPiA+IHByb3BlcnR5
IGFuZCByZWxhdGVkIGluZm8gdG8gc3VwcG9ydCBpLk1YOE1NLgo+ID4gPiAKPiA+ID4gU2lnbmVk
LW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4gPiA+IC0tLQo+ID4g
PiBDaGFuZ2VzIHNpbmNlIFYyOgo+ID4gPiAJLSBBZGQgc2VwYXJhdGUgbGluZSBmb3IgaS5NWDhN
TSBpbiBjYXNlIGFueXRoaW5nIGRpZmZlcmVudCBsYXRlciBmb3IKPiA+IAo+ID4gaS5NWDhNTS4K
PiA+ID4gLS0tCj4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcmVzZXQv
ZnNsLGlteDctc3JjLnR4dCB8IDYgKysrKy0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZXNldC9mc2wsaW14Ny1zcmMudHh0Cj4gPiA+
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L2ZzbCxpbXg3LXNyYy50
eHQKPiA+ID4gaW5kZXggMTNlMDk1MS4uYzI0ODllNCAxMDA2NDQKPiA+ID4gLS0tIGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L2ZzbCxpbXg3LXNyYy50eHQKPiA+ID4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Jlc2V0L2ZzbCxpbXg3LXNy
Yy50eHQKPiA+ID4gQEAgLTgsNiArOCw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6Cj4gPiA+ICAt
IGNvbXBhdGlibGU6Cj4gPiA+ICAJLSBGb3IgaS5NWDcgU29DcyBzaG91bGQgYmUgImZzbCxpbXg3
ZC1zcmMiLCAic3lzY29uIgo+ID4gPiAgCS0gRm9yIGkuTVg4TVEgU29DcyBzaG91bGQgYmUgImZz
bCxpbXg4bXEtc3JjIiwgInN5c2NvbiIKPiA+ID4gKwktIEZvciBpLk1YOE1NIFNvQ3Mgc2hvdWxk
IGJlICJmc2wsaW14OG1tLXNyYyIsICJmc2wsaW14OG1xLXNyYyIsCj4gPiAKPiA+ICJzeXNjb24i
Cj4gPiA+ICAtIHJlZzogc2hvdWxkIGJlIHJlZ2lzdGVyIGJhc2UgYW5kIGxlbmd0aCBhcyBkb2N1
bWVudGVkIGluIHRoZQo+ID4gPiAgICBkYXRhc2hlZXQKPiA+ID4gIC0gaW50ZXJydXB0czogU2hv
dWxkIGNvbnRhaW4gU1JDIGludGVycnVwdCBAQCAtNDYsNSArNDcsNiBAQCBFeGFtcGxlOgo+ID4g
PiAKPiA+ID4gCj4gPiA+ICBGb3IgbGlzdCBvZiBhbGwgdmFsaWQgcmVzZXQgaW5kaWNlcyBzZWUK
PiA+ID4gLTxkdC1iaW5kaW5ncy9yZXNldC9pbXg3LXJlc2V0Lmg+IGZvciBpLk1YNyBhbmQKPiA+
ID4gLTxkdC1iaW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaD4gZm9yIGkuTVg4TVEKPiA+ID4g
KzxkdC1iaW5kaW5ncy9yZXNldC9pbXg3LXJlc2V0Lmg+IGZvciBpLk1YNywKPiA+ID4gKzxkdC1i
aW5kaW5ncy9yZXNldC9pbXg4bXEtcmVzZXQuaD4gZm9yIGkuTVg4TVEgYW5kCj4gPiA+ICs8ZHQt
YmluZGluZ3MvcmVzZXQvaW14OG1xLXJlc2V0Lmg+IGZvciBpLk1YOE1NCj4gPiAKPiA+IFRoZSBs
YXN0IGxpbmUgaXMgbWlzbGVhZGluZywgYXMgdGhhdCBmaWxlIGNvbnRhaW5zIHJlc2V0IGluZGlj
ZXMgdGhhdCBhcmUgaW52YWxpZAo+ID4gZm9yIGkuTVg4TU0uCj4gCj4gV2hhdCBpcyB5b3VyIHN1
Z2dlc3Rpb24gYWJvdXQgdGhpcyBsaW5lPwoKSSB3b3VsZCBwcmVmZXIgdG8gYWRkIGFuIGlteDht
bS1yZXNldC5oIHdpdGggb25seSB0aGUgZXhpc3RpbmcgcmVzZXQKYml0cywgdXNpbmcgdGhlIElN
WDhNTV9SRVNFVF8gcHJlZml4LsKgVGhhdCB3b3VsZCBtYWtlIGl0IGVhc3kgdG8gc3BvdAplcnJv
cnMgaW4gdGhlIGR0c2kgKGFueXRoaW5nIHN0YXJ0aW5nIHdpdGggSU1YOE1RXyBpcyBwb3RlbnRp
YWxseQp3cm9uZykuCgo+IEp1c3QgTk9UIGNoYW5nZSBpdD8KClRoZSBjaGFuZ2UgaXMgZ29vZCBp
biBwcmluY2lwbGUuIEl0IGp1c3Qgc2hvdWxkIHBvaW50IHRvIGFuIGlteDhtbS0KcmVzZXQuaCB3
aXRoIG9ubHkgdGhlIGV4aXN0aW5nIHJlc2V0cyBvbiBpLk1YOE1NLCBvciBpbXg4bXEtcmVzZXQu
aApzaG91bGQgYmUgbW9kaWZpZWQgdG8gYWN0dWFsbHkgbWFrZSBjbGVhciB3aGljaCByZXNldHMg
YXJlIHZhbGlkIG9uCmkuTVg4TU0uCgo+IE9yIGFkZGluZyBhIG5ldyBmaWxlwqBpbXg4bW0tcmVz
ZXQuaCBidXQgc3RpbGwgdXNlIHRoZSBJTVg4TVFfUkVTRVRfIGFzCj4gcHJlZml4ID8KCkkgZG9u
J3QgdGhpbmsgeW91IHNob3VsZCByZWRlZmluZSB0aGUgc2FtZSBtYWNyb3MgaW4gaW14OG1tLXJl
c2V0LmguIEluCnRoaXMgY2FzZSB1c2luZyBJTVg4TU1fUkVTRVRfIHdvdWxkIGJlIGJldHRlci4K
Cj4gT3Iga2VlcCB3aGF0IEkgY2hhbmdlZCwgYnV0IGFkZGluZyBzb21lIGNvbW1lbnRzIGluIHRo
b3NlIG1hY3JvcyB0aGF0Cj4gaS5NWDhNTSBkb2VzIE5PVCBzdXBwb3J0PwoKVGhhdCB3b3VsZCBi
ZSBhY2NlcHRhYmxlIGFzIHdlbGwuCgpyZWdhcmRzClBoaWxpcHAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
