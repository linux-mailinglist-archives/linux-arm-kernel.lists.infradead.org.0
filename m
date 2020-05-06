Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9248E1C6CDE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tv8HL1Yxo/uou23wfVimOUp+0rOFSc50Di3NYkyKy1o=; b=GiloDxQC3afSRh
	/DEvZ4d7VhfaKUYR7nPYl0iIclHaTPlaGrp5XiegRtGS3dqN/lFntwFAq9IZWTHCcmwb43TrMtzvh
	4VMCklbz9a9VyrJ++tHhNjd02Z5q7xu/2f9snkrds7nbJXgZYXUx7JWyHuSghIiUbqaLYIf89VY6H
	bW2KpBGxYWz+Cjt7z2m4NjD71Przw7SVwO5rX2s+fmoY3zhYsxqna7TDT7X8b4bxxJ0kOz0uN0aMp
	BKOTS2gOJD4dF7BZ/X/E/qe1+dl9V33otC+9Ld47sAN45UTjvrmDC50xABD6juLEbIrfV94HuQ2WK
	bhzwPTYlmVeGQAGeHezA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGKM-00025I-8n; Wed, 06 May 2020 09:26:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGKD-00023J-SV
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:26:47 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jWGK6-0000MM-3k; Wed, 06 May 2020 11:26:38 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jWGK5-0004UU-P0; Wed, 06 May 2020 11:26:37 +0200
Message-ID: <8b33b8fe9d12470743384773be0953851845e11f.camel@pengutronix.de>
Subject: Re: [PATCH v2 23/91] reset: simple: Add reset callback
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Maxime Ripard <maxime@cerno.tech>, Nicolas Saenz Julienne
 <nsaenzjulienne@suse.de>, Eric Anholt <eric@anholt.net>
Date: Wed, 06 May 2020 11:26:37 +0200
In-Reply-To: <31e3daec5d5b703bd87ef9d77e353589daf6fa3e.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <31e3daec5d5b703bd87ef9d77e353589daf6fa3e.1587742492.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_022645_923788_69174861 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLAoKT24gRnJpLCAyMDIwLTA0LTI0IGF0IDE3OjM0ICswMjAwLCBNYXhpbWUgUmlw
YXJkIHdyb3RlOgo+IFRoZSByZXNldC1zaW1wbGUgY29kZSBsYWNrcyBhIHJlc2V0IGNhbGxiYWNr
IHRoYXQgaXMgc3RpbGwgcHJldHR5IGVhc3kgdG8KPiBpbXBsZW1lbnQuIFRoZSBvbmx5IHJlYWwg
dGhpbmcgdG8gY29uc2lkZXIgaXMgdGhlIGRlbGF5IG5lZWRlZCBmb3IgYSBkZXZpY2UKPiB0byBi
ZSByZXNldCwgc28gbGV0J3MgZXhwb3NlIHRoYXQgYXMgcGFydCBvZiB0aGUgcmVzZXQtc2ltcGxl
IGRyaXZlciBkYXRhLgo+IAo+IENjOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4
LmRlPgo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZUBjZXJuby50ZWNoPgo+
IC0tLQo+ICBkcml2ZXJzL3Jlc2V0L3Jlc2V0LXNpbXBsZS5jICAgICAgIHwgMjQgKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvcmVzZXQvcmVzZXQtc2ltcGxlLmggfCAg
NiArKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvcmVzZXQvcmVzZXQtc2ltcGxlLmMgYi9kcml2ZXJzL3Jlc2V0L3Jlc2V0
LXNpbXBsZS5jCj4gaW5kZXggYzg1NGFhMzUxNjQwLi42MDJlZDk3MmIwYTkgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9yZXNldC9yZXNldC1zaW1wbGUuYwo+ICsrKyBiL2RyaXZlcnMvcmVzZXQvcmVz
ZXQtc2ltcGxlLmMKPiBAQCAtMTEsNiArMTEsNyBAQAo+ICAgKiBNYXhpbWUgUmlwYXJkIDxtYXhp
bWUucmlwYXJkQGZyZWUtZWxlY3Ryb25zLmNvbT4KPiAgICovCj4gIAo+ICsjaW5jbHVkZSA8bGlu
dXgvZGVsYXkuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvZXJyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9pby5oPgo+IEBAIC02Myw2ICs2NCwyOCBAQCBz
dGF0aWMgaW50IHJlc2V0X3NpbXBsZV9kZWFzc2VydChzdHJ1Y3QgcmVzZXRfY29udHJvbGxlcl9k
ZXYgKnJjZGV2LAo+ICAJcmV0dXJuIHJlc2V0X3NpbXBsZV91cGRhdGUocmNkZXYsIGlkLCBmYWxz
ZSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgcmVzZXRfc2ltcGxlX3Jlc2V0KHN0cnVjdCByZXNl
dF9jb250cm9sbGVyX2RldiAqcmNkZXYsCj4gKwkJCSAgICAgIHVuc2lnbmVkIGxvbmcgaWQpCj4g
K3sKPiArCXN0cnVjdCByZXNldF9zaW1wbGVfZGF0YSAqZGF0YSA9IHRvX3Jlc2V0X3NpbXBsZV9k
YXRhKHJjZGV2KTsKPiArCWludCByZXQ7Cj4gKwo+ICsJaWYgKCFkYXRhLT5yZXNldF91cykKPiAr
CQlyZXR1cm4gLUVOT1RTVVBQOwo+ICsKPiArCXJldCA9IHJlc2V0X3NpbXBsZV9hc3NlcnQocmNk
ZXYsIGlkKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4gKwl1c2xlZXBfcmFu
Z2UoZGF0YS0+cmVzZXRfdXMsIGRhdGEtPnJlc2V0X3VzICogMik7Cj4gKwo+ICsJcmV0ID0gcmVz
ZXRfc2ltcGxlX2RlYXNzZXJ0KHJjZGV2LCBpZCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBy
ZXQ7Cj4gKwo+ICsJcmV0dXJuIDA7CgpKdXN0CglyZXR1cm4gcmVzZXRfc2ltcGxlX2RlYXNzZXJ0
KHJjZGV2LCBpZCk7CmhlcmUuCgo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IHJlc2V0X3NpbXBsZV9z
dGF0dXMoc3RydWN0IHJlc2V0X2NvbnRyb2xsZXJfZGV2ICpyY2RldiwKPiAgCQkJICAgICAgIHVu
c2lnbmVkIGxvbmcgaWQpCj4gIHsKPiBAQCAtODAsNiArMTAzLDcgQEAgc3RhdGljIGludCByZXNl
dF9zaW1wbGVfc3RhdHVzKHN0cnVjdCByZXNldF9jb250cm9sbGVyX2RldiAqcmNkZXYsCj4gIGNv
bnN0IHN0cnVjdCByZXNldF9jb250cm9sX29wcyByZXNldF9zaW1wbGVfb3BzID0gewo+ICAJLmFz
c2VydAkJPSByZXNldF9zaW1wbGVfYXNzZXJ0LAo+ICAJLmRlYXNzZXJ0CT0gcmVzZXRfc2ltcGxl
X2RlYXNzZXJ0LAo+ICsJLnJlc2V0CQk9IHJlc2V0X3NpbXBsZV9yZXNldCwKPiAgCS5zdGF0dXMJ
CT0gcmVzZXRfc2ltcGxlX3N0YXR1cywKPiAgfTsKPiAgRVhQT1JUX1NZTUJPTF9HUEwocmVzZXRf
c2ltcGxlX29wcyk7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcmVzZXQvcmVzZXQtc2lt
cGxlLmggYi9pbmNsdWRlL2xpbnV4L3Jlc2V0L3Jlc2V0LXNpbXBsZS5oCj4gaW5kZXggMDhjY2Iy
NWE1NWU2Li41ZWI4MzYyNWE0OTUgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9yZXNldC9y
ZXNldC1zaW1wbGUuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvcmVzZXQvcmVzZXQtc2ltcGxlLmgK
PiBAQCAtMjcsNiArMjcsMTEgQEAKPiAgICogQHN0YXR1c19hY3RpdmVfbG93OiBpZiB0cnVlLCBi
aXRzIHJlYWQgYmFjayBhcyBjbGVhcmVkIHdoaWxlIHRoZSByZXNldCBpcwo+ICAgKiAgICAgICAg
ICAgICAgICAgICAgIGFzc2VydGVkLiBPdGhlcndpc2UsIGJpdHMgcmVhZCBiYWNrIGFzIHNldCB3
aGlsZSB0aGUKPiAgICogICAgICAgICAgICAgICAgICAgICByZXNldCBpcyBhc3NlcnRlZC4KPiAr
ICogQHJlc2V0X3VzOiBNaW5pbXVtIGRlbGF5IGluIG1pY3Jvc2Vjb25kcyBuZWVkZWQgdGhhdCBu
ZWVkcyB0byBiZQo+ICsgKiAgICAgICAgICAgIHdhaXRlZCBmb3IgYmV0d2VlbiBhbiBhc3NlcnQg
YW5kIGEgZGVhc3NlcnQgdG8gcmVzZXQgdGhlCj4gKyAqICAgICAgICAgICAgZGV2aWNlLiBJZiBt
dWx0aXBsZSBjb25zdW1lcnMgd2l0aCBkaWZmZXJlbnQgZGVsYXkKPiArICogICAgICAgICAgICBy
ZXF1aXJlbWVudHMgYXJlIGNvbm5lY3RlZCB0byB0aGlzIGNvbnRyb2xsZXIsIGl0IG11c3QKPiAr
ICogICAgICAgICAgICBiZSB0aGUgbGFyZ2VzdCBtaW5pbXVtIGRlbGF5LgoKUGxlYXNlIG1lbnRp
b24gdGhhdCAwIGRvZXMgbm90IG1lZW4gMCDCtXMgZGVsYXksIGJ1dCB1bmtub3duIGFuZCB0aHVz
CnJlc2V0IGNhbGxiYWNrIG5vdCBzdXBwb3J0ZWQuCgpXaXRoIHRoZXNlIHR3byBpc3N1ZXMgZml4
ZWQKUmV2aWV3ZWQtYnk6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+Cgpy
ZWdhcmRzClBoaWxpcHAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
