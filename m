Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401DCE872A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:32:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2u6FEQQp1RwauY9PolocYjfpXdDo+qGNnlfoSBl4j4=; b=P8/JVj5EdHbRVH
	9fO2R07aW9GHgCh82EAn/FIHnDSUUAvKASr4nxwbGw8Z18e5ajXRDYY0AOhxwYGYqiCUkEuG3LHWw
	nZ1Id9SXt8iJTD0l0sZnCzhjXaTZP9v9h9YjBv/AJBjDmbXP19JdhmSRC1wBEgADlJsI5aMNbYS+a
	nRlLlTCR89ZOmLnDU79Pc23DumCTDBIYu3Tn29Pjbeh+iAttMO3x/46NrdYGxVZl9oWuX4Jt0+dnF
	74rFKkQzcha2qtMHvz5jUNqzEncpVP6nBIJVJaQao2b5UbnX0SgO6NMgiFq2tXmo37SUZ4FGyABwC
	aN6qEdQRN/We2QniSCww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPjN-0002me-SN; Tue, 29 Oct 2019 11:32:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPhU-0000jp-HM
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:30:15 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iPPhI-0001hB-9f; Tue, 29 Oct 2019 12:30:00 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iPPhH-0003aC-0J; Tue, 29 Oct 2019 12:29:59 +0100
Date: Tue, 29 Oct 2019 12:29:58 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@bootlin.com>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] input: edt-ft5x06: Add support for regulator
Message-ID: <20191029112958.gd3vbbcjxuw6n3m5@pengutronix.de>
References: <20191029005806.3577376-1-megous@megous.com>
 <20191029005806.3577376-2-megous@megous.com>
 <20191029041233.GD57214@dtor-ws>
 <20191029085545.cw5c24gi76gbfdhy@pengutronix.de>
 <20191029112129.t4mxqyybltjbuyhj@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029112129.t4mxqyybltjbuyhj@core.my.home>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:26:01 up 164 days, 17:44, 99 users,  load average: 0.11, 0.04,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_043012_612444_B1681473 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kxZllaiwKCk9uIDE5LTEwLTI5IDEyOjIxLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiBI
aSBNYXJjbywKPiAKPiBPbiBUdWUsIE9jdCAyOSwgMjAxOSBhdCAwOTo1NTo0NUFNICswMTAwLCBN
YXJjbyBGZWxzY2ggd3JvdGU6Cj4gPiBIaSBEbWl0cnksCj4gPiAKPiA+IE9uIDE5LTEwLTI4IDIx
OjEyLCBEbWl0cnkgVG9yb2tob3Ygd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgT2N0IDI5LCAyMDE5IGF0
IDAxOjU4OjA0QU0gKzAxMDAsIE9uZHJlaiBKaXJtYW4gd3JvdGU6Cj4gPiA+ID4gRnJvbTogTXls
w6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAYm9vdGxpbi5jb20+Cj4gPiA+ID4gCj4g
PiA+ID4gQWRkIHRoZSBzdXBwb3J0IGZvciBlbmFibGluZyBvcHRpb25hbCByZWd1bGF0b3IgdGhh
dCBtYXkgYmUgdXNlZCBhcyBWQ0MKPiA+ID4gPiBzb3VyY2UuCj4gPiA+ID4gCj4gPiA+ID4gU2ln
bmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+Cj4gPiA+ID4gU2ln
bmVkLW9mZi1ieTogTXlsw6huZSBKb3NzZXJhbmQgPG15bGVuZS5qb3NzZXJhbmRAYm9vdGxpbi5j
b20+Cj4gPiA+IAo+ID4gPiBBcHBsaWVkLCB0aGFuayB5b3UuCj4gPiAKPiA+IFdoYXQgaGFwcGVu
cyB3aXRoIG15IHZkZCBwYXRjaGVzPwo+IAo+IFNvcnJ5IGZvciBub3Qgbm90aWNpbmcgeW91ciBw
YXRjaGVzLCBJIHdhcyBvbmx5IGF3YXJlIG9mIE15bMOobmUncyBvbGRlciBzZXJpZXMuCj4gSXQg
bG9va3MgbGlrZSB5b3UgY2FuIGp1c3Qgc2tpcCByZWd1bGF0b3IgZW5hYmxlIHN1cHBvcnQgZnJv
bSB5b3VyIHNlcmllcywgYW5kCj4gcmUtc2VuZCB0aGUgZGVlcC1zbGVlcCBtZWNoYW5pc20gYW5k
IHdha2V1cCBzb3VyY2UgcGF0Y2hlcyBvbmx5LgoKTm8gcHJvYmxlbXMganVzdCB3b25kZXJlZCBt
eXNlbGYuIE5vdyBJIG5lZWQgdG8gYWRhcHQgdGhlIHBhdGNoZXMgXl4KCj4gSSdsbCB0ZXN0IGl0
IHdpdGggbXkgYm9hcmQsIGFuZCBnaXZlIHlvdSBhIHRlc3RlZC1ieS4KClRoYW5rcy4KClJlZ2Fy
ZHMsCiAgTWFyY28KCj4gdGhhbmsgeW91IGFuZCByZWdhcmRzLAo+IAlvLgo+IAo+ID4gUmVnYXJk
cywKPiA+ICAgTWFyY28KPiA+IAo+ID4gPiAKPiA+ID4gPiAtLS0KPiA+ID4gPiAgZHJpdmVycy9p
bnB1dC90b3VjaHNjcmVlbi9lZHQtZnQ1eDA2LmMgfCAzMCArKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKQo+ID4gPiA+IAo+
ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lucHV0L3RvdWNoc2NyZWVuL2VkdC1mdDV4MDYu
YyBiL2RyaXZlcnMvaW5wdXQvdG91Y2hzY3JlZW4vZWR0LWZ0NXgwNi5jCj4gPiA+ID4gaW5kZXgg
NTUyNWYxZmIxNTI2Li5kNjE3MzFjMDAzN2QgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9p
bnB1dC90b3VjaHNjcmVlbi9lZHQtZnQ1eDA2LmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2lucHV0
L3RvdWNoc2NyZWVuL2VkdC1mdDV4MDYuYwo+ID4gPiA+IEBAIC0yOCw2ICsyOCw3IEBACj4gPiA+
ID4gICNpbmNsdWRlIDxsaW51eC9pbnB1dC9tdC5oPgo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgv
aW5wdXQvdG91Y2hzY3JlZW4uaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGFzbS91bmFsaWduZWQuaD4K
PiA+ID4gPiArI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1lci5oPgo+ID4gPiA+ICAK
PiA+ID4gPiAgI2RlZmluZSBXT1JLX1JFR0lTVEVSX1RIUkVTSE9MRAkJMHgwMAo+ID4gPiA+ICAj
ZGVmaW5lIFdPUktfUkVHSVNURVJfUkVQT1JUX1JBVEUJMHgwOAo+ID4gPiA+IEBAIC04OCw2ICs4
OSw3IEBAIHN0cnVjdCBlZHRfZnQ1eDA2X3RzX2RhdGEgewo+ID4gPiA+ICAJc3RydWN0IHRvdWNo
c2NyZWVuX3Byb3BlcnRpZXMgcHJvcDsKPiA+ID4gPiAgCXUxNiBudW1feDsKPiA+ID4gPiAgCXUx
NiBudW1feTsKPiA+ID4gPiArCXN0cnVjdCByZWd1bGF0b3IgKnZjYzsKPiA+ID4gPiAgCj4gPiA+
ID4gIAlzdHJ1Y3QgZ3Bpb19kZXNjICpyZXNldF9ncGlvOwo+ID4gPiA+ICAJc3RydWN0IGdwaW9f
ZGVzYyAqd2FrZV9ncGlvOwo+ID4gPiA+IEBAIC0xMDM2LDYgKzEwMzgsMTMgQEAgZWR0X2Z0NXgw
Nl90c19zZXRfcmVncyhzdHJ1Y3QgZWR0X2Z0NXgwNl90c19kYXRhICp0c2RhdGEpCj4gPiA+ID4g
IAl9Cj4gPiA+ID4gIH0KPiA+ID4gPiAgCj4gPiA+ID4gK3N0YXRpYyB2b2lkIGVkdF9mdDV4MDZf
ZGlzYWJsZV9yZWd1bGF0b3Iodm9pZCAqYXJnKQo+ID4gPiA+ICt7Cj4gPiA+ID4gKwlzdHJ1Y3Qg
ZWR0X2Z0NXgwNl90c19kYXRhICpkYXRhID0gYXJnOwo+ID4gPiA+ICsKPiA+ID4gPiArCXJlZ3Vs
YXRvcl9kaXNhYmxlKGRhdGEtPnZjYyk7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+ID4gIHN0
YXRpYyBpbnQgZWR0X2Z0NXgwNl90c19wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+
ID4gPiA+ICAJCQkJCSBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCAqaWQpCj4gPiA+ID4gIHsK
PiA+ID4gPiBAQCAtMTA2NCw2ICsxMDczLDI3IEBAIHN0YXRpYyBpbnQgZWR0X2Z0NXgwNl90c19w
cm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50LAo+ID4gPiA+ICAKPiA+ID4gPiAgCXRzZGF0
YS0+bWF4X3N1cHBvcnRfcG9pbnRzID0gY2hpcF9kYXRhLT5tYXhfc3VwcG9ydF9wb2ludHM7Cj4g
PiA+ID4gIAo+ID4gPiA+ICsJdHNkYXRhLT52Y2MgPSBkZXZtX3JlZ3VsYXRvcl9nZXQoJmNsaWVu
dC0+ZGV2LCAidmNjIik7Cj4gPiA+ID4gKwlpZiAoSVNfRVJSKHRzZGF0YS0+dmNjKSkgewo+ID4g
PiA+ICsJCWVycm9yID0gUFRSX0VSUih0c2RhdGEtPnZjYyk7Cj4gPiA+ID4gKwkJaWYgKGVycm9y
ICE9IC1FUFJPQkVfREVGRVIpCj4gPiA+ID4gKwkJCWRldl9lcnIoJmNsaWVudC0+ZGV2LAo+ID4g
PiA+ICsJCQkJImZhaWxlZCB0byByZXF1ZXN0IHJlZ3VsYXRvcjogJWRcbiIsIGVycm9yKTsKPiA+
ID4gPiArCQlyZXR1cm4gZXJyb3I7Cj4gPiA+ID4gKwl9Cj4gPiA+ID4gKwo+ID4gPiA+ICsJZXJy
b3IgPSByZWd1bGF0b3JfZW5hYmxlKHRzZGF0YS0+dmNjKTsKPiA+ID4gPiArCWlmIChlcnJvciA8
IDApIHsKPiA+ID4gPiArCQlkZXZfZXJyKCZjbGllbnQtPmRldiwgImZhaWxlZCB0byBlbmFibGUg
dmNjOiAlZFxuIiwgZXJyb3IpOwo+ID4gPiA+ICsJCXJldHVybiBlcnJvcjsKPiA+ID4gPiArCX0K
PiA+ID4gPiArCj4gPiA+ID4gKwllcnJvciA9IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgmY2xp
ZW50LT5kZXYsCj4gPiA+ID4gKwkJCQkJIGVkdF9mdDV4MDZfZGlzYWJsZV9yZWd1bGF0b3IsCj4g
PiA+ID4gKwkJCQkJIHRzZGF0YSk7Cj4gPiA+ID4gKwlpZiAoZXJyb3IpCj4gPiA+ID4gKwkJcmV0
dXJuIGVycm9yOwo+ID4gPiA+ICsKPiA+ID4gPiAgCXRzZGF0YS0+cmVzZXRfZ3BpbyA9IGRldm1f
Z3Bpb2RfZ2V0X29wdGlvbmFsKCZjbGllbnQtPmRldiwKPiA+ID4gPiAgCQkJCQkJICAgICAicmVz
ZXQiLCBHUElPRF9PVVRfSElHSCk7Cj4gPiA+ID4gIAlpZiAoSVNfRVJSKHRzZGF0YS0+cmVzZXRf
Z3BpbykpIHsKPiA+ID4gPiAtLSAKPiA+ID4gPiAyLjIzLjAKPiA+ID4gPiAKPiA+ID4gCj4gPiA+
IC0tIAo+ID4gPiBEbWl0cnkKPiA+ID4gCj4gPiAKPiA+IC0tIAo+ID4gUGVuZ3V0cm9uaXggZS5L
LiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwKPiA+IEluZHVzdHJpYWwgTGludXggU29sdXRpb25zICAgICAgICAgICAgICAgICB8IGh0dHA6
Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8Cj4gPiBQZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRl
c2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfAo+ID4gQW10c2dl
cmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIw
NjkxNy01NTU1IHwKPiAKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApJbmR1c3RyaWFsIExpbnV4IFNv
bHV0aW9ucyAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfApQ
ZWluZXIgU3RyLiA2LTgsIDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgfCBQaG9uZTogKzQ5LTUx
MjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAg
ICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
