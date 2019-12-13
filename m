Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F4911EA8A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 19:39:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qur+FOZkOkpIYKYzICKKp+NKXq8EuKvKuCT6CXsPV5o=; b=uA9eWtaAinhQmc
	5GyjmePamHQwNQTU3P2F1XKWIlkdKkNKdTHmJPtpLsecgfDL1sZ61a5ma8ZyoVCtAdw82G9SK6HYW
	fF1Snbu8+CJ1xYX2G5NWTBltt16r/g7PGRZiDFTAm/1b1OAGyCvT0raZw4ZUzmzggLVxDvmFInfMt
	dtHw3lfPT2hIajWmJRb8k1bIN20j+on59ml5RLDJSb9LU1eRFxZ8MHby525Y8qZUliI/yBMHxYuHT
	YsyPjZm00uChqSLsYsIhJBX8ko9VUaFlIVo3wqob52jhxYaGVUYMW6mjerQzOPEw//sAF+KHhc014
	lh39wccpHpb1BAUHgo3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifpqC-0007dN-Qm; Fri, 13 Dec 2019 18:39:04 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifpq5-0007cr-0x; Fri, 13 Dec 2019 18:38:58 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 75350C0002;
 Fri, 13 Dec 2019 18:38:47 +0000 (UTC)
Date: Fri, 13 Dec 2019 19:38:46 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: Add PX30 CRTCs graph LVDS
 endpoints
Message-ID: <20191213193846.5d28cc97@xps13>
In-Reply-To: <1933192.L6hp5CucIl@diego>
References: <20191213181051.25983-1-miquel.raynal@bootlin.com>
 <20191213181051.25983-11-miquel.raynal@bootlin.com>
 <1933192.L6hp5CucIl@diego>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_103857_206729_75AED270 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBGcmks
IDEzIERlYyAyMDE5IDE5OjI4OjIxCiswMTAwOgoKPiBIaSBNaXF1ZWwsCj4gCj4gQW0gRnJlaXRh
ZywgMTMuIERlemVtYmVyIDIwMTksIDE5OjEwOjQ5IENFVCBzY2hyaWViIE1pcXVlbCBSYXluYWw6
Cj4gPiBBZGQgdGhlIGRpc3BsYXkgc3Vic3lzdGVtIHJvdXRlcyB3aXRoIHRoZSB0d28gYXZhaWxh
YmxlIENSVENzOiB2b3BiCj4gPiBhbmQgdm9wbCAoYmlnIGFuZCBsaXR0bGUpLiBGb3IgZWFjaCBD
UlRDLCBhZGQgdGhlIExWRFMgZW5kcG9pbnRzLiBNSVBJCj4gPiBEU0kgZW5kcG9pbnRzIHdpbGwg
Y29tZSBsYXRlci4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVs
LnJheW5hbEBib290bGluLmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcHgzMC5kdHNpIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3B4MzAuZHRzaQo+ID4gaW5kZXggYjJhZjBmMDJlY2JlLi4xYzk2YmE1NTZkYWYgMTAwNjQ0Cj4g
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAuZHRzaQo+ID4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLmR0c2kKPiA+IEBAIC0xOTAsNiArMTkw
LDE2IEBACj4gPiAgCQljb21wYXRpYmxlID0gInJvY2tjaGlwLGRpc3BsYXktc3Vic3lzdGVtIjsK
PiA+ICAJCXBvcnRzID0gPCZ2b3BiX291dD4sIDwmdm9wbF9vdXQ+Owo+ID4gIAkJc3RhdHVzID0g
ImRpc2FibGVkIjsKPiA+ICsKPiA+ICsJCXJvdXRlIHsKPiA+ICsJCQlyb3V0ZV92b3BiX2x2ZHM6
IHJvdXRlLXZvcGItbHZkcyB7Cj4gPiArCQkJCWNvbm5lY3QgPSA8JnZvcGJfb3V0X2x2ZHM+Owo+
ID4gKwkJCX07Cj4gPiArCj4gPiArCQkJcm91dGVfdm9wbF9sdmRzOiByb3V0ZS12b3BsLWx2ZHMg
ewo+ID4gKwkJCQljb25uZWN0ID0gPCZ2b3BsX291dF9sdmRzPjsKPiA+ICsJCQl9Owo+ID4gKwkJ
fTsgIAo+IAo+IHdoZXJlIGRvZXMgdGhpcyByb3V0ZS1zdHVmZiBjb21lIGZyb20/Cj4gVGhlIHZl
bmRvciB0cmVlPyBCZWNhdXNlIHNvIGZhciBJJ3ZlIG5vdCBzZWVuIHRoaXMgaW4gbWFpbmxpbmUt
ZHJtCj4gaW4gZ2VuZXJhbCBub3IgdGhlIFJvY2tjaGlwIGRybSBkcml2ZXIgaXRzZWxmLgoKWWVz
IGl0IGNvbWVzIGZyb20gdGhlIHZlbmRvciB0cmVlLCBJIGFkZGVkIGEgZmV3IHRoaW5ncyBmcm9t
IHRoZSB2ZW5kb3IKdHJlZSBpbiB0aGUgIkkgcmVhbGx5IHdhbnQgdGhpcyBwYW5lbCB0byB3b3Jr
IiBwaGFzZSBhbmQgSSBmb3Jnb3QgdG8KY2hlY2sgaWYgaXQgY291bGQgYmUgcmVtb3ZlZCwgSSds
bCBwcm9iYWJseSBkcm9wIHRoaXMuCiAKPiAKPiAKPiA+ICAJfTsKPiA+ICAKPiA+ICAJZ21hY19j
bGtpbjogZXh0ZXJuYWwtZ21hYy1jbG9jayB7Cj4gPiBAQCAtOTc2LDYgKzk4NiwxMSBAQAo+ID4g
IAkJdm9wYl9vdXQ6IHBvcnQgewo+ID4gIAkJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gIAkJ
CSNzaXplLWNlbGxzID0gPDA+Owo+ID4gKwo+ID4gKwkJCXZvcGJfb3V0X2x2ZHM6IGVuZHBvaW50
QDAgewo+ID4gKwkJCQlyZWcgPSA8MD47Cj4gPiArCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmbHZk
c192b3BiX2luPjsKPiA+ICsJCQl9OyAgCj4gCj4gVGhpcyAoYW5kIHRoZSBvbmUgYmVsb3cpIHdv
dWxkIGNyZWF0ZSBkYW5nbGluZyBwaGFuZGxlIHJlZmVyZW5jZXMKPiBhbmQgY29tcGlsZSBlcnJv
cnMsIGJlY2F1c2UgdGhlIHJlZmVyZW5jZWQgcGhhbmRsZXMgb25seSBnZXQgaW50cm9kdWNlZAo+
IGluIHBhdGNoMTIuIFNvIGlkZWFsbHkgbWVyZ2UgdGhpcyBpbnRvIHRoZSBsYXN0IHBhdGNoLgoK
QWN0dWFsbHkgcGF0Y2ggMTIgYWxzbyByZWZlcmVuY2VzIHRoZXNlIG5vZGVzIHNvIEkgc2hvdWxk
IG1lcmdlIHRoZW0uCgo+IAo+IAo+IEhlaWtvCj4gCj4gPiAgCQl9Owo+ID4gIAl9Owo+ID4gIAo+
ID4gQEAgLTEwMDgsNiArMTAyMywxMSBAQAo+ID4gIAkJdm9wbF9vdXQ6IHBvcnQgewo+ID4gIAkJ
CSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gIAkJCSNzaXplLWNlbGxzID0gPDA+Owo+ID4gKwo+
ID4gKwkJCXZvcGxfb3V0X2x2ZHM6IGVuZHBvaW50QDAgewo+ID4gKwkJCQlyZWcgPSA8MD47Cj4g
PiArCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmbHZkc192b3BsX2luPjsKPiA+ICsJCQl9Owo+ID4g
IAkJfTsKPiA+ICAJfTsKPiA+ICAKPiA+ICAgCj4gCj4gCj4gCj4gCgpUaGFua3MgZm9yIHRoZSBy
ZXZpZXchCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
