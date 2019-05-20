Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 685FD232AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RSThUCgzYjcgx/a5/9nlY6xfx7iLAQxRtFkyoexUyXA=; b=K6Fb9gc0K8LqXP
	MpFcZVjdjUUlg5WotP6JbqMfQWBvZwbLBmca5+D/OH2YSrU6zQVkLVvAEl6C6oM7Olvx6WChsl0XI
	IQw3oN3t+dQyOvdQOxJWdE494/QW7CtqBMVg0MZJ7t6ER+BbNe2waItxKTusTWS9ShHrLbZk5zXzo
	tsjMU3vNBCl3ktvSFGrS/o75ji8OhMnX8XHGhVrL/TC74nb+d6ET2FPNGvtHzOzedsGQjkjI+AEiE
	xOyruzmuh6hFbItIem2jINyMai+d7KkRPPwfES+f/aoHQjI6Y4Tan+LSVchYL75OMHY/6aHk1rC3i
	kropD+JDjTnxqd/wVcCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgdI-0004zl-92; Mon, 20 May 2019 11:39:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgdA-0004yT-AP
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558352334; bh=rAw4E5u5yC+I7cC6PCbSVyMvIwVJ8vK/VlOL2T4E4AQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dppL/+PYlejvDtRHTB5HhLGEFp5Mv+vfXDWeZEYAgjF+32qoDGlDN9yzAQ6ZZi/s+
 kokNdiDrhAdqsx5R7NMaVzI7Iw1Ojmda461UQcCE6B06pfXZHM+5fuEvVlSoSrdDgh
 +Skzmd3/tQdP5l9EKK8hTFbrJOI3mhwZ2ZnrM3WQ=
Date: Mon, 20 May 2019 13:38:54 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 4/6] ARM: dts: sun8i: a83t: Add device node for CSI
 (Camera Sensor Interface)
Message-ID: <20190520113854.ngyaw4mgki77gdbn@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
References: <20190408165744.11672-1-wens@kernel.org>
 <20190408165744.11672-5-wens@kernel.org>
 <20190409075804.4zrwjil7ie2gjigu@flea>
 <CAGb2v64CYV68Q0a7x5p-XabS74vaQWP3paPopodmqQPTOrq2gQ@mail.gmail.com>
 <20190409082818.z33mq2qrxethldzf@flea>
 <CAGb2v67pX+7ccihmGEWPKrXg8mMhht-vh37p2auWYgt=qGDA6A@mail.gmail.com>
 <20190409145225.2ltluiyqa5xha4zd@flea>
 <20190519135422.l2bnumyjr3dxehhx@core.my.home>
 <20190520111048.cnh435fnmz7esyks@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520111048.cnh435fnmz7esyks@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043900_856713_BCDBC3EA 
X-CRM114-Status: GOOD (  37.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMDE6MTA6NDlQTSArMDIwMCwgTWF4
aW1lIFJpcGFyZCB3cm90ZToKPiBIaSBPbmTFmWVqLAo+IAo+IE9uIFN1biwgTWF5IDE5LCAyMDE5
IGF0IDAzOjU0OjIyUE0gKzAyMDAsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+ID4gT24gVHVlLCBB
cHIgMDksIDIwMTkgYXQgMDQ6NTI6MjVQTSArMDIwMCwgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiA+
ID4gT24gVHVlLCBBcHIgMDksIDIwMTkgYXQgMDQ6NDA6NDBQTSArMDgwMCwgQ2hlbi1ZdSBUc2Fp
IHdyb3RlOgo+ID4gPiA+IE9uIFR1ZSwgQXByIDksIDIwMTkgYXQgNDoyOCBQTSBNYXhpbWUgUmlw
YXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4g
PiBPbiBUdWUsIEFwciAwOSwgMjAxOSBhdCAwNDowNzozNFBNICswODAwLCBDaGVuLVl1IFRzYWkg
d3JvdGU6Cj4gPiA+ID4gPiA+IE9uIFR1ZSwgQXByIDksIDIwMTkgYXQgMzo1OCBQTSBNYXhpbWUg
UmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+ID4gPiA+ID4gPiBP
biBUdWUsIEFwciAwOSwgMjAxOSBhdCAxMjo1Nzo0MkFNICswODAwLCBDaGVuLVl1IFRzYWkgd3Jv
dGU6Cj4gPiA+ID4gPiA+ID4gPiBGcm9tOiBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+Cj4g
PiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gVGhlIEE4M1QgU29DIGhhcyBhIGNhbWVyYSBz
ZW5zb3IgaW50ZXJmYWNlIChrbm93biBhcyBDU0kgaW4gQWxsd2lubmVyCj4gPiA+ID4gPiA+ID4g
PiBsaW5nbyksIHdoaWNoIGlzIHNpbWlsYXIgdG8gdGhlIG9uZSBmb3VuZCBvbiB0aGUgQTY0IGFu
ZCBIMy4gVGhlIG9ubHkKPiA+ID4gPiA+ID4gPiA+IGRpZmZlcmVuY2Ugc2VlbXMgdG8gYmUgdGhh
dCBzdXBwb3J0IG9mIE1JUEkgQ1NJIHRocm91Z2ggYSBjb25uZWN0ZWQKPiA+ID4gPiA+ID4gPiA+
IE1JUEkgQ1NJLTIgYnJpZGdlLgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IEFkZCBh
IGRldmljZSBub2RlIGZvciBpdCwgYW5kIHBpbmN0cmwgbm9kZXMgZm9yIHRoZSBjb21tb25seSB1
c2VkIE1DTEsKPiA+ID4gPiA+ID4gPiA+IGFuZCA4LWJpdCBwYXJhbGxlbCBpbnRlcmZhY2UuIFRo
ZSBwcm9wZXJ0eSAvb21pdC1pZi1uby1yZWYvIGlzIGFkZGVkIHRvCj4gPiA+ID4gPiA+ID4gPiB0
aGUgcGluY3RybCBub2RlcyB0byBrZWVwIHRoZSBkZXZpY2UgdHJlZSBibG9iIHNpemUgZG93biBp
ZiB0aGV5IGFyZQo+ID4gPiA+ID4gPiA+ID4gdW51c2VkLgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENoZW4tWXUgVHNhaSA8d2Vuc0Bjc2llLm9yZz4KPiA+
ID4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiA+ID4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhp
LWE4M3QuZHRzaSB8IDMxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4gPiA+
ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0
LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kKPiA+ID4gPiA+ID4gPiA+
IGluZGV4IGY3MzliODhlZmI1My4uMGM1MmY5NDVmZDVmIDEwMDY0NAo+ID4gPiA+ID4gPiA+ID4g
LS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgzdC5kdHNpCj4gPiA+ID4gPiA+ID4gPiAr
KysgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kKPiA+ID4gPiA+ID4gPiA+IEBA
IC02ODIsNiArNjgyLDIwIEBACj4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAg
I2ludGVycnVwdC1jZWxscyA9IDwzPjsKPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAg
ICAgICAjZ3Bpby1jZWxscyA9IDwzPjsKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgL29taXQtaWYtbm8tcmVmLwo+ID4gPiA+ID4gPiA+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIGNzaV84Yml0X3BhcmFsbGVsX3BpbnM6IGNzaS04Yml0LXBhcmFs
bGVsLXBpbnMgewo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cGlucyA9ICJQRTAiLCAiUEUyIiwgIlBFMyIsICJQRTYiLCAiUEU3IiwKPiA+ID4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiUEU4IiwgIlBFOSIsICJQRTEw
IiwgIlBFMTEiLAo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJQRTEyIiwgIlBFMTMiOwo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgZnVuY3Rpb24gPSAiY3NpIjsKPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICB9Owo+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIC9vbWl0LWlmLW5vLXJlZi8KPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICBjc2lfbWNsa19waW46IGNzaS1tY2xrLXBpbiB7Cj4gPiA+ID4gPiA+ID4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwaW5zID0gIlBFMSI7Cj4gPiA+ID4gPiA+ID4g
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9ICJjc2kiOwo+ID4gPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIH07Cj4gPiA+ID4gPiA+ID4gPiArCj4gPiA+
ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgZW1hY19yZ21paV9waW5zOiBlbWFjLXJn
bWlpLXBpbnMgewo+ID4gPiA+ID4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
cGlucyA9ICJQRDIiLCAiUEQzIiwgIlBENCIsICJQRDUiLCAiUEQ2IiwgIlBENyIsCj4gPiA+ID4g
PiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIlBEMTEiLCAiUEQx
MiIsICJQRDEzIiwgIlBEMTQiLCAiUEQxOCIsCj4gPiA+ID4gPiA+ID4gPiBAQCAtOTk0LDYgKzEw
MDgsMjMgQEAKPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgICAgICAgICBpbnRlcnJ1cHRz
ID0gPEdJQ19QUEkgOSAoR0lDX0NQVV9NQVNLX1NJTVBMRSg4KSB8IElSUV9UWVBFX0xFVkVMX0hJ
R0gpPjsKPiA+ID4gPiA+ID4gPiA+ICAgICAgICAgICAgICAgfTsKPiA+ID4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgIGNzaTogY2FtZXJhQDFjYjAwMDAgewo+ID4gPiA+
ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1
bjhpLWE4M3QtY3NpIjsKPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcg
PSA8MHgwMWNiMDAwMCAweDEwMDA+Owo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA4NCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPiA+ID4g
PiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNjdSBDTEtfQlVTX0NT
ST4sCj4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPCZjY3Ug
Q0xLX0NTSV9TQ0xLPiwKPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA8JmNjdSBDTEtfRFJBTV9DU0k+Owo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrLW5hbWVzID0gImJ1cyIsICJtb2QiLCAicmFtIjsKPiA+ID4gPiA+ID4gPiA+
ICsgICAgICAgICAgICAgICAgICAgICByZXNldHMgPSA8JmNjdSBSU1RfQlVTX0NTST47Cj4gPiA+
ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+
ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBjc2lf
aW46IHBvcnQgewo+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
I2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+
IElmIHdlIGV4cGVjdCBhIHNpbmdsZSBlbnBvaW50LCB0aGVuIHdlIGRvbid0IG5lZWQgdGhlIGFk
ZHJlc3MtY2VsbHMKPiA+ID4gPiA+ID4gPiBhbmQgc2l6ZS1jZWxscyBwcm9wZXJ0aWVzLgo+ID4g
PiA+ID4gPgo+ID4gPiA+ID4gPiBJIHdvdWxkbid0IGJldCBvbiBhbnl0aGluZy4gVGhlIHdheSB0
aGUgUTggdGFibGV0cyBkaWQgZnJvbnQvYmFjayBjYW1lcmFzCj4gPiA+ID4gPiA+IGlzIGtpbmQg
b2YgZ2VuaXVzIGlmIG5vdCB2ZXJ5IGhhY2t5LiBUaGV5IGhhdmUgdHdvICJpZGVudGljYWwiIHNl
bnNvcnMKPiA+ID4gPiA+ID4gb24gdGhlIHNhbWUgSTJDIGJ1cyBhbmQgQ1NJIGJ1cywgd2l0aCBz
aGFyZWQgcmVzZXQgbGluZSBidXQgc2VwYXJhdGUKPiA+ID4gPiA+ID4gc2h1dGRvd24gbGluZXMu
IFNpbmNlIHRoZXkgYXJlIGlkZW50aWNhbCwgdGhleSBhbHNvIGhhdmUgdGhlIHNhbWUgSTJDCj4g
PiA+ID4gPiA+IGFkZHJlc3MuIEkgaGF2ZW4ndCBmaWd1cmVkIG91dCBob3cgdG8gbW9kZWwgdGhp
cyBpbiB0aGUgZGV2aWNlIHRyZWUuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFRoZSBwb2ludCBp
cywgaXQncyBwZXJmZWN0bHkgcG9zc2libGUgdG8gaGF2ZSB0d28gb3IgbW9yZSBzZW5zb3JzIHVz
ZQo+ID4gPiA+ID4gPiB0aGUgc2FtZSBjb250cm9sbGVyLCBwcm92aWRlZCBvbmx5IG9uZSBiZSBh
Y3RpdmUgYXQgYSB0aW1lLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFJpZ2h0LCBidXQgSSBndWVzcyB0
aGUgY29tbW9uIGNhc2Ugd291bGQgYmUgdG8gaGF2ZSBhIHNpbmdsZSBzZW5zb3IsCj4gPiA+ID4g
PiB3aGVyZSB0aGF0IHdvdWxkbid0IGJlIG5lZWRlZC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJbiBv
ZGQgY2FzZXMsIHdlIGNhbiBhbHdheXMgc3BlY2lmeSBpdCBpbiB0aGUgRFRTLCBhbmQgaWYgaXQg
YmVjb21lcwo+ID4gPiA+ID4gY29tbW9uIGVub3VnaCwgd2UgY2FuIG1vdmUgaXQgdG8gdGhlIERU
U0kuCj4gPiA+ID4KPiA+ID4gPiBNYWtlcyBzZW5zZS4gRG8geW91IHdhbnQgbWUgdG8gcmUtc3Bp
bj8KPiA+ID4KPiA+ID4gSWYgdGhlcmUncyBubyBvdGhlciBjb21tZW50LCB3ZSdsbCBmaXggaXQg
d2hlbiBhcHBseWluZy4KPiA+Cj4gPiBUaGlzIHBhdGNoIHNlcmllcyBzZWVtcyB0byBoYXZlIGJl
ZW4gZm9yZ290dGVuLiBJdCBkb2Vzbid0IHNlZW0gdGhlcmUgYXJlIGFueQo+ID4gYmxvY2tlcnMu
Cj4gCj4gU29ycnkgYWJvdXQgdGhhdCA6Lwo+IAo+ID4gQ2FuIHlvdSBwbGVhc2UgYXBwbHkgaXQg
bm93PyBJIGhhdmUgc29tZSBmdXJ0aGVyIHNlcmllcyAoY2FtZXJhIG1vZHVsZQo+ID4gc3VwcG9y
dCBmb3IgVEJTLUE3MTEpIHRoYXQgZGVwZW5kIG9uIHRoaXMuCj4gCj4gU29tZSBwYXJ0cyBvZiBp
dCB3aWxsIGhhdmUgdG8gYmUgbWVyZ2VkIHRocm91Z2ggdjRsMiwgYW5kIEkgY2FuJ3QKPiBhcHBs
eSB0aG9zZSBwYXRjaGVzLgo+IAo+IENhbiB5b3UgcmVzZW5kIHRoYXQgc2VyaWVzLCBhbmQgcGlu
ZyBvbiBhIHJlZ3VsYXIgYmFzaXMgKGxpa2Ugb25jZSBhCj4gd2VlaykgaWYgeW91IGRvbid0IGdl
dCBhbnkgZmVlZGJhY2s/CgpZb3UgbWVhbiB0aGlzIHNlcmllcyBmb3IgQTgzdCBDU0k/CgpyZWdh
cmRzLAoJby4KCj4gVGhhbmtzIQo+IE1heGltZQo+IAo+IC0tCj4gTWF4aW1lIFJpcGFyZCwgQm9v
dGxpbgo+IEVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKPiBodHRwczovL2Jv
b3RsaW4uY29tCgoKCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
