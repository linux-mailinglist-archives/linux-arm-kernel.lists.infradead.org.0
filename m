Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2734CFF62
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNnIazRiUK7KqEvk7Nxzxa6i3rdrTUQ5AYFGd8oAcTE=; b=gLDNBapWbi9KZJ
	fcSIWkLvUQkcbtQCw1mf1MWXtNg+IebZxwPRQpQCWz3c/LziP4tpJ73ieWzYt3k21jJ1+fa/JOXh5
	/cjYHmBSD7rj4zsms0dozYUT1q3I6BMQDcRERf4iZgKoEwgerh6AlU13peFnpx+Ld+jv17OQ8SMM7
	bAPhYPmHcK4U+pyqNbQUqHBx4GyfI1dRLHv2jaPYKoMONjKsUNPritz7Rdl5JWVT0ueIHsbbnLuO1
	D4H2rmRTIhQUVoaonswnnTBnWhYQNKFtXGoTcLZUuakuvH7+rKPZS/cwV2iqzpEU8ElIbtaMtv3ua
	eLub3z9+TyKFMS6fNPXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHsot-0001cO-FB; Tue, 08 Oct 2019 16:58:43 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHsol-0001bO-P4
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:58:37 +0000
X-Originating-IP: 195.57.117.247
Received: from localhost (unknown [195.57.117.247])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id C893924000B;
 Tue,  8 Oct 2019 16:58:28 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <marek.behun@nic.cz>
Subject: Re: [PATCH mvebu-dt64 1/1] arm64: dts: armada-3720-turris-mox:
 convert usb-phy to phy-supply
In-Reply-To: <20191008184921.60e526bc@dellmb>
References: <20191008145944.21659-1-marek.behun@nic.cz>
 <871rvntcr4.fsf@FE-laptop> <20191008184921.60e526bc@dellmb>
Date: Tue, 08 Oct 2019 18:58:28 +0200
Message-ID: <87y2xvrx6z.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_095835_950937_6E12116A 
X-CRM114-Status: GOOD (  20.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Lunn <andrew@lunn.ch>, linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWssCgo+IEdyZWdvcnksCj4KPiBJIGNvbW11bmljYXRlZCB3aXRoIE1pcXVlbCB3aGVu
IEkgZmlyc3QgZGlzY292ZXJlZCB0aGlzIHJlZ3Jlc3Npb24sIHNlZQo+IGh0dHBzOi8vbWFyYy5p
bmZvLz9sPWxpbnV4LXVzYiZtPTE1Njk2NjMyODMxMDQ3MiZ3PTIKPgo+IEluIHRoaXMgbWFpbCBN
aXF1ZWwgaXMgbWVudGlvbmluZyBhIHBhdGNoCj4gKGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcGF0Y2gvMTEwNjc2ODcvKSB3aGljaCBkb2VzIHRoZSBzYW1lIGZvcgo+IEFybWFkYSA3ay84
ay4gSGUgc2F5cyBoaXMgcGF0Y2ggc2hvdWxkIGVudGVyIG5leHQgcmVsZWFzZSwgYnV0IHNpbmNl
IG9uCj4gTW94IHRoaXMgY2F1c2VkIGEgcmVncmVzc2lvbiwgSSB3b3VsZCBsaWtlIGl0IHRvIGJl
IG1lcmdlZCBub3cuCgpJIHdhcyBub3QgYXdhcmUgb2YgdGhpcyBtYWlsLCBidXQgYWZ0ZXIgcmVh
ZGluZyBJIGFncmVlIHRvIGFwcGx5IGl0IG5vdy4KCgo+Cj4gQW55d2F5IGlmIHlvdSB3YW50IHRv
IHN0aWxsIHdhaXQgZm9yIE1pcXVlbHMgcmV2aWV3IHRvIGJlIHN1cmUsIEkgYW0gb2sKPiB3aXRo
IHRoYXQuCj4KPiBXaGF0IGRvIHlvdSB0aGluayBhYm91dCB0aGUgImFybTY0OiBkdHM6IGFybWFk
YS0zNzIwLXR1cnJpcy1tb3g6IGFkZAo+IGZpcm13YXJlIG5vZGUiIHdoaWNoIEkgc2VudCBsYXN0
IG1vbnRoPwoKSSd2ZSBhcHBsaWVkIGEgY291cGxlIG9mIG1pbnV0ZSBhZ29zLgoKR3JlZ29yeQoK
Pgo+IE1hcmVrCj4KPiBPbiBUdWUsIDA4IE9jdCAyMDE5IDE4OjM3OjAzICswMjAwCj4gR3JlZ29y
eSBDTEVNRU5UIDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+IHdyb3RlOgo+Cj4+IEhpIE1h
cmVrLAo+PiAKPj4gPiBVcGRhdGUgVHVycmlzIE1veCBkZXZpY2UgdHJlZSB0byB1c2UgdGhlIHBo
eS1zdXBwbHkgcHJvcGVydHkgb2YgdGhlCj4+ID4gZ2VuZXJpYyBQSFkgZnJhbWV3b3JrIGluc3Rl
YWQgb2YgdGhlIGxlZ2FjeSB1c2ItcGh5IHByb3BlcnR5Lgo+PiA+Cj4+ID4gVGhpcyBpcyBuZWVk
ZWQgc2luY2UgaXQgY2F1c2VkIGEgcmVncmVzc2lvbiBvbiBUdXJyaXMgTW94IHNpbmNlCj4+ID4g
Y29tbWl0IGViNmMyZWI2YzdmYiAoInVzYjogaG9zdDogeGhjaS1wbGF0OiBQcmV2ZW50IGFuCj4+
ID4gYWJub3JtYWxseS4uLiIpLiAKPj4gCj4+IEkgYW0gbm90IGFnYWluc3QgdGhpcyBwYXRjaCBh
bmQgaWYgaXQgdGhlIHJpZ2h0IGZpeCBmb3IgdGhlCj4+IHJlZ3Jlc3Npb24gSSB3aWxsIGFwcGxp
ZWQgaXQgb24gbXkgbXZlYnUvZml4ZXMgYnJhbmNoIHRvIGJlIHBhcnQgb2YKPj4gdjUuNC4gSG93
ZXZlciBJJ2QgbGlrZSB0byBoYXZlIHRoZSBmZWVkYmFjayBmcm9tIE1pcXVlbCBvbiB0aGlzIG9u
ZSwKPj4gYXMgZm9yIG1lIGl0IGlzIG5vdCBvYnZpb3VzIHRoYXQgaXQgaXMgdGUgY29ycmVjdCBm
aXguCj4+IAo+PiBHcmVnb3J5Cj4+IAo+PiA+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6biA8
bWFyZWsuYmVodW5AbmljLmN6Pgo+PiA+IEZpeGVzOiBlYjZjMmViNmM3ZmIgKCJ1c2I6IGhvc3Q6
IHhoY2ktcGxhdDogUHJldmVudCBhbgo+PiA+IGFibm9ybWFsbHkuLi4iKSBDYzogTWlxdWVsIFJh
eW5hbCA8bWlxdWVsLnJheW5hbEBib290bGluLmNvbT4KPj4gPiBDYzogR3JlZ29yeSBDTEVNRU5U
IDxncmVnb3J5LmNsZW1lbnRAYm9vdGxpbi5jb20+Cj4+ID4gQ2M6IEFuZHJldyBMdW5uIDxhbmRy
ZXdAbHVubi5jaD4KPj4gPiAtLS0KPj4gPiAgLi4uL2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3
MjAtdHVycmlzLW1veC5kdHMgICAgIHwgMTMKPj4gPiArKysrKysrLS0tLS0tIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4+ID4KPj4gPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2FybWFkYS0zNzIwLXR1cnJpcy1tb3guZHRz
Cj4+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1v
eC5kdHMgaW5kZXgKPj4gPiBkMTA1OTg2YzZiZTEuLjVmMzUwY2M3MWEyZiAxMDA2NDQgLS0tCj4+
ID4gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1veC5k
dHMgKysrCj4+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVy
cmlzLW1veC5kdHMgQEAgLTYwLDExCj4+ID4gKzYwLDYgQEAgZ3BpbyA9IDwmZ3Bpb3NiIDAgR1BJ
T19BQ1RJVkVfSElHSD47Cj4+ID4gIAl9Owo+PiA+ICAKPj4gPiAtCXVzYjNfcGh5OiB1c2IzLXBo
eSB7Cj4+ID4gLQkJY29tcGF0aWJsZSA9ICJ1c2Itbm9wLXhjZWl2IjsKPj4gPiAtCQl2Y2Mtc3Vw
cGx5ID0gPCZleHBfdXNiM192YnVzPjsKPj4gPiAtCX07Cj4+ID4gLQo+PiA+ICAJdnNkY19yZWc6
IHZzZGMtcmVnIHsKPj4gPiAgCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1ncGlvIjsKPj4gPiAg
CQlyZWd1bGF0b3ItbmFtZSA9ICJ2c2RjIjsKPj4gPiBAQCAtMjU1LDEwICsyNTAsMTYgQEAKPj4g
PiAgCXN0YXR1cyA9ICJva2F5IjsKPj4gPiAgfTsKPj4gPiAgCj4+ID4gKyZjb21waHkyIHsKPj4g
PiArCWNvbm5lY3RvciB7Cj4+ID4gKwkJY29tcGF0aWJsZSA9ICJ1c2ItYS1jb25uZWN0b3IiOwo+
PiA+ICsJCXBoeS1zdXBwbHkgPSA8JmV4cF91c2IzX3ZidXM+Owo+PiA+ICsJfTsKPj4gPiArfTsK
Pj4gPiArCj4+ID4gICZ1c2IzIHsKPj4gPiAgCXN0YXR1cyA9ICJva2F5IjsKPj4gPiAgCXBoeXMg
PSA8JmNvbXBoeTIgMD47Cj4+ID4gLQl1c2ItcGh5ID0gPCZ1c2IzX3BoeT47Cj4+ID4gIH07Cj4+
ID4gIAo+PiA+ICAmbWRpbyB7Cj4+ID4gLS0gCj4+ID4gMi4yMS4wCj4+ID4gIAo+PiAKPgoKLS0g
CkdyZWdvcnkgQ2xlbWVudCwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2lu
ZWVyaW5nCmh0dHA6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
