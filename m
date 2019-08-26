Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DF09D1BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 16:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BK86ZFEy7w5bE1AQSMct8ZFw4d7fuU6kV8pz/s/eaY=; b=OMFoAZokJeGy7a
	RW3ytBloLEOCpQ+h5cAHKRECH/Ek0QxWMKJKXcJYs0+I+8A0IyVH8KVjSToEW3+gFSNX024ZN8nmZ
	f28Lxp3nr4iYmfsx88TMldgwnS8/eQyd2aJeuds7K9bjpgt0ldbp/F9/aAP7MjTwPn8qGl6fRWT2W
	5qIZwLpSpFvSCx4J2MrsCKlKXiu1Z95OjR5qwN8Id1EgCKg1jss9C097dIoHm9bmjc4th6upGRI6i
	xTsuXbZgKkh3KvESQpo68EDy+xEGwNcEJzVISHsYVSdsjIAvvqV1Xn12cIbTMnFTG22jwupz0Zce5
	Zp+facjMnanjxSE6cXUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2G66-0001Gy-0F; Mon, 26 Aug 2019 14:35:54 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2G5Y-0001Fo-G4
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 14:35:22 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id 060EA5C19C6;
 Mon, 26 Aug 2019 16:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1566830112;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ry+edmxoGbqJLKXnIz/oWoL2et798Iawn9Q+DWPyA5A=;
 b=gDfdi8H6FBA5NLRxdkw7IzW8gkFhDgxBixLFgr80LDizqSmFoE0VMzmP5Vu5y24gGXAPbA
 IBC3CKEDv/rb3LfPtZIc4/2yyA08+1J8PHR2iw8w6JRdNZ4w2DugkepBL6sEdnUok02whO
 EGrocPZch8VAkKkqIEITZdBMxmSz0gU=
MIME-Version: 1.0
Date: Mon, 26 Aug 2019 16:35:10 +0200
From: Stefan Agner <stefan@agner.ch>
To: =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v3 00/15] Improvements and fixes for mxsfb DRM driver
In-Reply-To: <20190826120548.GA14316@bogon.m.sigxcpu.org>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
 <20190826120548.GA14316@bogon.m.sigxcpu.org>
Message-ID: <3bd35686e046048d35cd4987567a13cf@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_073520_834770_D8EAE123 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAxOS0wOC0yNiAxNDowNSwgR3VpZG8gR8O8bnRoZXIgd3JvdGU6Cj4gSGksCj4gT24gV2Vk
LCBBdWcgMjEsIDIwMTkgYXQgMDE6MTU6NDBQTSArMDMwMCwgUm9iZXJ0IENoaXJhcyB3cm90ZToK
Pj4gVGhpcyBwYXRjaC1zZXQgaW1wcm92ZXMgdGhlIHVzZSBvZiBlTENESUYgYmxvY2sgb24gaU1Y
IDggU29DcyAobGlrZSA4TVEsIDhNTQo+PiBhbmQgOFFYUCkuIEZvbGxvd2luZywgYXJlIHRoZSBu
ZXcgZmVhdHVyZXMgYWRkZWQgYW5kIGZpeGVzIGZyb20gdGhpcwo+PiBwYXRjaC1zZXQ6Cj4gCj4g
SSd2ZSBhcHBsaWVkIHRoaXMgd2hvbGUgc2VyaWVzIG9uIHRvcCBvZiBteSBOV0wgd29yayBhbmQg
aXQgbG9va3MgZ29vZAo+IHdpdGggYSBEU0kgcGFuZWwuIEFwcGx5aW5nIHRoZSB3aG9sZSBzZXJp
ZXMgYWxzbyBmaXhlcyBhbiBpc3N1ZSB3aGVyZQo+IGFmdGVyIHVuYmxhbmsgdGhlIG91dHB1dCB3
YXMgc29tZXRpbWVzIHNoaWZ0ZWQgYWJvdXQgaGFsZiBhIHNjcmVlbiB3aWR0aAo+IHRvIHRoZSBy
aWdodCAod2hpY2ggZGlkbid0IGhhcHBlbiB3aXRoIERDU1MpLiBTbyBhdCBsZWFzdCBmcm9tIHRo
ZSBwYXJ0cwo+IEkgY291bGQgdGVzdDoKPiAKPiAgIFRlc3RlZC1ieTogR3VpZG8gR8O8bnRoZXIg
PGFneEBzaWd4Y3B1Lm9yZz4gCj4gCj4gZm9yIHRoZSB3aG9sZSB0aGluZy4KClRoYW5rcyBmb3Ig
dGVzdGluZyEgV2hhdCBTb0MgZGlkIHlvdSB1c2U/IEkgdGhpbmsgaXQgd291bGQgYmUgZ29vZCB0
bwphbHNvIGdpdmUgdGhpcyBhIHRyeSBvbiBpLk1YIDcgb3IgaS5NWCA2VUxMIGJlZm9yZSBtZXJn
aW5nLgoKLS0KU3RlZmFuCgoKPiBDaGVlcnMsCj4gIC0tIEd1aWRvCj4+Cj4+IDEuIEFkZCBzdXBw
b3J0IGZvciBkcm1fYnJpZGdlCj4+IE9uIDhNUSBhbmQgOE1NLCB0aGUgTENESUYgYmxvY2sgaXMg
bm90IGRpcmVjdGx5IGNvbm5lY3RlZCB0byBhIHBhcmFsbGVsCj4+IGRpc3BsYXkgY29ubmVjdG9y
LCB3aGVyZSBhbiBMQ0QgcGFuZWwgY2FuIGJlIGF0dGFjaGVkLCBidXQgaW5zdGVhZCBpdCBpcwo+
PiBjb25uZWN0ZWQgdG8gRFNJIGNvbnRyb2xsZXIuIFNpbmNlIHRoaXMgRFNJIHN0YW5kcyBiZXR3
ZWVuIHRoZSBkaXNwbGF5Cj4+IGNvbnRyb2xsZXIgKGVMQ0RJRikgYW5kIHRoZSBwaHlzaWNhbCBj
b25uZWN0b3IsIHRoZSBEU0kgY2FuIGJlIGltcGxlbWVudGVkCj4+IGFzIGEgRFJNIGJyaWRnZS4g
U28sIGluIG9yZGVyIHRvIGJlIGFibGUgdG8gY29ubmVjdCB0aGUgbXhzZmIgZHJpdmVyIHRvCj4+
IHRoZSBEU0kgZHJpdmVyLCB0aGUgc3VwcG9ydCBmb3IgYSBkcm1fYnJpZGdlIHdhcyBuZWVkZWQg
aW4gbXhzZmIgRFJNCj4+IGRyaXZlciAodGhlIGFjdHVhbCBkcml2ZXIgZm9yIHRoZSBlTENESUYg
YmxvY2spLgo+Pgo+PiAyLiBBZGQgc3VwcG9ydCBmb3IgYWRkaXRpb25hbCBwaXhlbCBmb3JtYXRz
Cj4+IFNvbWUgb2YgdGhlIHBpeGVsIGZvcm1hdHMgbmVlZGVkIGJ5IEFuZHJvaWQgd2VyZSBub3Qg
aW1wbGVtZW50ZWQgaW4gdGhpcwo+PiBkcml2ZXIsIGJ1dCB0aGV5IHdlcmUgYWN0dWFsbHkgc3Vw
cG9ydGVkLiBTbywgYWRkIHN1cHBvcnQgZm9yIHRoZW0uCj4+Cj4+IDMuIEFkZCBzdXBwb3J0IGZv
ciBob3Jpem9udGFsIHN0cmlkZQo+PiBIYXZpbmcgc3VwcG9ydCBmb3IgaG9yaXpvbnRhbCBzdHJp
ZGUgYWxsb3dzIHRoZSB1c2Ugb2YgZUxDRElGIHdpdGggYSBHUFUKPj4gKGZvciBleGFtcGxlKSB0
aGF0IGNhbiBvbmx5IG91dHB1dCByZXNvbHV0aW9uIHNpemVzIG11bHRpcGxlIG9mIGEgcG93ZXIg
b2YKPj4gOC4gRm9yIGV4YW1wbGUsIDEwODAgaXMgbm90IGEgcG93ZXIgb2YgMTYsIHNvIGluIG9y
ZGVyIHRvIHN1cHBvcnQgMTkyMHgxMDgwCj4+IG91dHB1dCBmcm9tIEdQVXMgdGhhdCBjYW4gcHJv
ZHVjZSBsaW5lYXIgYnVmZmVycyBvbmx5IGluIHNpemVzIG11bHRpcGxlIHRvIDE2LAo+PiB0aGlz
IGZlYXR1cmUgaXMgbmVlZGVkLgo+Pgo+PiAzLiBGZXcgbWlub3IgZmVhdHVyZXMgYW5kIGJ1Zy1m
aXhpbmcKPj4gVGhlIGFkZGl0aW9uIG9mIG1heC1yZXMgRFQgcHJvcGVydHkgd2FzIGFjdHVhbGx5
IG5lZWRlZCBpbiBvcmRlciB0byBsaW1pdAo+PiB0aGUgYmFuZHdpZHRoIHVzYWdlIG9mIHRoZSBl
TENESUYgYmxvY2suIFRoaXMgaXMgbmVlZCBvbiBzeXN0ZW1zIHdoZXJlCj4+IG11bHRpcGxlIGRp
c3BsYXkgY29udHJvbGxlcnMgYXJlIHByZXNlbmQgYW5kIHRoZSBtZW1vcnkgYmFuZHdpZHRoIGlz
IG5vdAo+PiBlbm91Z2ggdG8gaGFuZGxlIGFsbCBvZiB0aGVtIGF0IG1heGltdW0gY2FwYWNpdHkg
KGxpa2UgaXQgaXMgdGhlIGNhc2Ugb24KPj4gOE1RLCB3aGVyZSB0aGVyZSBhcmUgdHdvIGRpc3Bs
YXkgY29udHJvbGxlcnM6IERDU1MgYW5kIGVMQ0RJRikuCj4+IFRoZSByZXN0IG9mIHRoZSBwYXRj
aGVzIGFyZSBidWctZml4ZXMuCj4+Cj4+IHYzOgo+PiAtIFJlbW92ZWQgdGhlIG1heC1yZXMgcHJv
cGVydHkgcGF0Y2hlcyBhbmQgYWRkZWQgc3VwcG9ydCBmb3IKPj4gICBtYXgtbWVtb3J5LWJhbmR3
aWR0aCBwcm9wZXJ0eSwgYXMgaXQgaXMgYWxzbyBpbXBsZW1lbnRlZCBpbiBvdGhlciBkcml2ZXJz
Cj4+IC0gUmVtb3ZlZCB1bm5lY2Vzc2FyeSBkcm1fdmJsYW5rX29mZiBpbiBwcm9iZQo+Pgo+PiB2
MjoKPj4gLSBDb2xsZWN0ZWQgVGVzdGVkLWJ5IGZyb20gR3VpZG8KPj4gLSBTcGxpdCB0aGUgZmly
c3QgcGF0Y2gsIHdoaWNoIGFkZGVkIG1vcmUgdGhhbiBvbmUgZmVhdHVyZSBpbnRvIHJlbGV2YW50
Cj4+ICAgcGF0Y2hlcywgZXhwbGFpbmluZyBlYWNoIGZlYXR1cmUgYWRkZWQKPj4gLSBBbHNvIHNw
bGl0IHRoZSBzZWNvbmQgcGF0Y2ggaW50byBtb3JlIHBhdGNoZXMsIHRvIGRpZmZlcmVudGlhdGUg
YmV0d2Vlbgo+PiAgIHRoZSBmZWF0dXJlIGl0c2VsZiAoYWRkaXRpb25hbCBwaXhlbCBmb3JtYXRz
IHN1cHBvcnQpIGFuZCB0aGUgY2xlYW51cAo+PiAgIG9mIHRoZSByZWdpc3RlciBkZWZpbml0aW9u
cyBmb3IgYSBiZXR0ZXIgcmVwcmVzZW50YXRpb24gKGd1aWRvKQo+PiAtIEluY2x1ZGVkIGEgcGF0
Y2ggc3VibWl0dGVkIGJ5IEd1aWRvLCB3aGlsZSBoZSB3YXMgdGVzdGluZyBteSBwYXRjaC1zZXQK
Pj4KPj4gR3VpZG8gR8O8bnRoZXIgKDEpOgo+PiAgIGRybS9teHNmYjogUmVhZCBidXMgZmxhZ3Mg
ZnJvbSBicmlkZ2UgaWYgcHJlc2VudAo+Pgo+PiBNaXJlbGEgUmFidWxlYSAoMSk6Cj4+ICAgZHJt
L214c2ZiOiBTaWduYWwgbW9kZSBjaGFuZ2VkIHdoZW4gYnBwIGNoYW5nZWQKPj4KPj4gUm9iZXJ0
IENoaXJhcyAoMTMpOgo+PiAgIGRybS9teHNmYjogVXBkYXRlIG14c2ZiIHRvIHN1cHBvcnQgYSBi
cmlkZ2UKPj4gICBkcm0vbXhzZmI6IEFkZCBkZWZpbmVzIGZvciB0aGUgcmVzdCBvZiByZWdpc3Rl
cnMKPj4gICBkcm0vbXhzZmI6IFJlc2V0IHZpdGFsIHJlZ2lzdGVycyBmb3IgYSBwcm9wZXIgaW5p
dGlhbGl6YXRpb24KPj4gICBkcm0vbXhzZmI6IFVwZGF0ZSByZWdpc3RlciBkZWZpbml0aW9ucyB1
c2luZyBiaXQgbWFuaXB1bGF0aW9uIGRlZmluZXMKPj4gICBkcm0vbXhzZmI6IFVwZGF0ZSBteHNm
YiB3aXRoIGFkZGl0aW9uYWwgcGl4ZWwgZm9ybWF0cwo+PiAgIGRybS9teHNmYjogRml4IHRoZSB2
YmxhbmsgZXZlbnRzCj4+ICAgZHJtL214c2ZiOiBBZGQgbWF4LW1lbW9yeS1iYW5kd2lkdGggcHJv
cGVydHkgZm9yIE1YU0ZCCj4+ICAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IEFkZCBtYXgtbWVtb3J5
LWJhbmR3aWR0aCBwcm9wZXJ0eSBmb3IgbXhzZmIKPj4gICBkcm0vbXhzZmI6IFVwZGF0ZSBteHNm
YiB0byBzdXBwb3J0IExDRCByZXNldAo+PiAgIGRybS9teHNmYjogSW1wcm92ZSB0aGUgYXhpIGNs
b2NrIHVzYWdlCj4+ICAgZHJtL214c2ZiOiBDbGVhciBPVVRTVEFORElOR19SRVFTIGJpdHMKPj4g
ICBkcm0vbXhzZmI6IEFkZCBzdXBwb3J0IGZvciBob3Jpem9udGFsIHN0cmlkZQo+PiAgIGRybS9t
eHNmYjogQWRkIHN1cHBvcnQgZm9yIGxpdmUgcGl4ZWwgZm9ybWF0IGNoYW5nZQo+Pgo+PiAgLi4u
L2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9teHNmYi50eHQgICAgICAgICAgfCAgIDUgKwo+
PiAgZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX2NydGMuYyAgICAgICAgICAgICAgICAgfCAy
ODcgKysrKysrKysrKysrKysrKysrLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJf
ZHJ2LmMgICAgICAgICAgICAgICAgICB8IDIwMyArKysrKysrKysrKysrLS0KPj4gIGRyaXZlcnMv
Z3B1L2RybS9teHNmYi9teHNmYl9kcnYuaCAgICAgICAgICAgICAgICAgIHwgIDEyICstCj4+ICBk
cml2ZXJzL2dwdS9kcm0vbXhzZmIvbXhzZmJfb3V0LmMgICAgICAgICAgICAgICAgICB8ICAyNiAr
LQo+PiAgZHJpdmVycy9ncHUvZHJtL214c2ZiL214c2ZiX3JlZ3MuaCAgICAgICAgICAgICAgICAg
fCAxOTMgKysrKysrKysrLS0tLS0KPj4gIDYgZmlsZXMgY2hhbmdlZCwgNTg5IGluc2VydGlvbnMo
KyksIDEzNyBkZWxldGlvbnMoLSkKPj4KPj4gLS0KPj4gMi43LjQKPj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
