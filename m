Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E250578989
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 12:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LETdnc5YkJYcLY+/d/0+CNrGA7V7lzpmpINg+yQMDTE=; b=IIApTBwzX8cLul
	y+gwYCSIx84dG6N7YYv8GDh4SxRrTEAvoYrkYIbDJSoiouradW+zwquRq267VrYSkR1kSJZGWZ4At
	v6YrEt4heOsmKbzfPzUMmuZ+6AGKeYCThlYbUicbAYvUcZHnPpCKkShRSM0hWcsB/YQ0denfefuPe
	4akPzAd5uzxQS//u9VXwzatsnH2eQTttX1C8YtAGKR0GTydFzEwh/90Pv82ig8UJcauNBMwHR8Nx1
	yILmf9cYcPW+2j+SwSM7OvDOv/ptL57/LByAV+IfssZIsrQWfUH0067zFUdBeOEeHVdWZaT2wXIPX
	3ZuDh+XBIsi1zyJ11HwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs2kQ-0003e2-25; Mon, 29 Jul 2019 10:19:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs2kF-0003dg-Pn
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 10:19:09 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hs2k8-0005Yb-DO; Mon, 29 Jul 2019 12:19:00 +0200
Message-ID: <1564395538.7633.7.camel@pengutronix.de>
Subject: Re: [PATCH 2/6] pwm: sun4i: Add a quirk for reset line
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, 
 Chen-Yu Tsai <wens@csie.org>
Date: Mon, 29 Jul 2019 12:18:58 +0200
In-Reply-To: <20190729071218.bukw7vxilqy523k3@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-3-jernej.skrabec@siol.net>
 <20190729063630.rn325whatfnc3m7n@pengutronix.de>
 <CAGb2v65KOpivHQNkg+R2=D=ejCJYnPdVcyHJZW-GJCR8j0Yk0g@mail.gmail.com>
 <20190729071218.bukw7vxilqy523k3@pengutronix.de>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_031907_842419_2BBC461F 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBNb24sIDIwMTktMDctMjkgYXQgMDk6MTIgKzAyMDAsIFV3ZSBLbGVpbmUtS8O2bmln
IHdyb3RlOgo+IEhlbGxvLAo+IAo+IE9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDAyOjQzOjIzUE0g
KzA4MDAsIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+IE9uIE1vbiwgSnVsIDI5LCAyMDE5IGF0IDI6
MzYgUE0gVXdlIEtsZWluZS1Lw7ZuaWcKPiA+IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXgu
ZGU+IHdyb3RlOgo+ID4gPiBPbiBGcmksIEp1bCAyNiwgMjAxOSBhdCAwODo0MDo0MVBNICswMjAw
LCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+ID4gPiBAQCAtMzcxLDYgKzM3NCwxNCBAQCBzdGF0
aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4g
PiA+ICAgICAgIGlmIChJU19FUlIocHdtLT5jbGspKQo+ID4gPiA+ICAgICAgICAgICAgICAgcmV0
dXJuIFBUUl9FUlIocHdtLT5jbGspOwo+ID4gPiA+IAo+ID4gPiA+ICsgICAgIGlmIChwd20tPmRh
dGEtPmhhc19yZXNldCkgewo+ID4gPiA+ICsgICAgICAgICAgICAgcHdtLT5yc3QgPSBkZXZtX3Jl
c2V0X2NvbnRyb2xfZ2V0KCZwZGV2LT5kZXYsIE5VTEwpOwo+ID4gPiA+ICsgICAgICAgICAgICAg
aWYgKElTX0VSUihwd20tPnJzdCkpCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJldHVy
biBQVFJfRVJSKHB3bS0+cnN0KTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICByZXNl
dF9jb250cm9sX2RlYXNzZXJ0KHB3bS0+cnN0KTsKPiA+ID4gPiArICAgICB9Cj4gPiA+ID4gKwo+
ID4gPiAKPiA+ID4gSSB3b25kZXIgd2h5IHRoZXJlIGlzIGEgbmVlZCB0byB0cmFjayBpZiBhIGdp
dmVuIGNoaXAgbmVlZHMgYSByZXNldAo+ID4gPiBsaW5lLiBJJ2QganVzdCB1c2UgZGV2bV9yZXNl
dF9jb250cm9sX2dldF9vcHRpb25hbCgpIGFuZCBkcm9wIHRoZQo+ID4gPiAuaGFzX3Jlc2V0IG1l
bWJlciBpbiBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEuCj4gPiAKPiA+IEJlY2F1c2UgaXQncyBub3Qg
b3B0aW9uYWwgZm9yIHRoaXMgcGxhdGZvcm0sIGkuZS4gaXQgd29uJ3Qgd29yayBpZgo+ID4gdGhl
IHJlc2V0IGNvbnRyb2wgKG9yIGNsaywgaW4gdGhlIG5leHQgcGF0Y2gpIGlzIHNvbWVob3cgbWlz
c2luZyBmcm9tCj4gPiB0aGUgZGV2aWNlIHRyZWUuCj4gCj4gSWYgdGhlIGRldmljZSB0cmVlIGlz
IHdyb25nIGl0IGlzIGNvbnNpZGVyZWQgb2sgdGhhdCB0aGUgZHJpdmVyIGRvZXNuJ3QKPiBiZWhh
dmUgY29ycmVjdGx5LiBTbyB0aGlzIGlzIG5vdCBhIHByb2JsZW0geW91IG5lZWQgKG9yIHNob3Vs
ZCkgY2FyZQo+IGFib3V0LgoKSSBhZ3JlZSB3aXRoIHRoaXMuwqBDYXRjaGluZyBtaXNzaW5nIERU
IHByb3BlcnRpZXMgYW5kIG90aGVyIGRldmljZSB0cmVlCnZhbGlkYXRpb24gaXMgbm90IHRoZSBq
b2Igb2YgZGV2aWNlIGRyaXZlcnMuIFRoZSBfb3B0aW9uYWwgcmVxdWVzdAp2YXJpYW50cyB3ZXJl
IGludHJvZHVjZWQgdG8gc2ltcGxpZnkgZHJpdmVycyB0aGF0IHJlcXVpcmUgdGhlIHJlc2V0IGxp
bmUKb24gc29tZSBwbGF0Zm9ybXMgYW5kIG5vdCBvbiBvdGhlcnMuCgpJIHdvdWxkIGFzayB0byBl
eHBsaWNpdGx5IHN0YXRlIHdoZXRoZXIgdGhlIGRyaXZlciBuZWVkcyBmdWxsIGNvbnRyb2wKb3Zl
ciB0aGUgbW9tZW50IG9mIChkZSlhc3NlcnRpb24gb2YgdGhlIHJlc2V0IHNpZ25hbCwgb3Igd2hl
dGhlciB0aGUKb25seSByZXF1aXJlbWVudCBpcyB0aGF0IHRoZSByZXNldCBzaWduYWwgc3RheXMg
ZGVhc3NlcnRlZCB3aGlsZSB0aGUgUFdNCmRyaXZlciBpcyBhY3RpdmUsIGJ5IHVzaW5nIGRldm1f
cmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfZXhjbHVzaXZlIG9yCmRldm1fcmVzZXRfY29udHJv
bF9nZXRfb3B0aW9uYWxfc2hhcmVkIHRvIHJlcXVlc3QgdGhlIHJlc2V0IGNvbnRyb2wuCgpyZWdh
cmRzClBoaWxpcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
