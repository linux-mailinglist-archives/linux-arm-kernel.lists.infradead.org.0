Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7FA158CDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 11:40:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCAkTCW5EAp4nB6PPaDolvPK0TNM31cJjteDjAdkhW8=; b=d2BEk24Uo9AJkx
	OUCsQSVK6sc8Ydq3pXTYzljR3NUi5s3YdaK4lNzPnEH3cO+oeeFPv9tdr7D2zaZky5hZCpgvMH+C1
	kTFHO9/znto3VENyN/GSlGsHLWrLeE2FhJqyGsZqwE8OFbT5FawOjd4xZUmfWgfH0K38X6+eZdAz7
	Bm+I5g8QF61RIfngu59E2F7ptj16UZKIB50Nfc88ruIyONU92VPdT2GdxPtwOvoXlkcx5oEY4nXpL
	RSbk3RGHEUexFWKUNnSTDe9RbgOaMhjbNwuLxXc0t713fxNABILH8Lu1xFKEor4F8sZ1Dy9VZg24x
	5wQVgXt+Q/573/FZ06Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1SxV-0002Aw-CD; Tue, 11 Feb 2020 10:40:01 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1SxL-0002AO-QY
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 10:39:54 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 70D68200005;
 Tue, 11 Feb 2020 10:39:39 +0000 (UTC)
Date: Tue, 11 Feb 2020 11:39:39 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Michal Simek <monstr@monstr.eu>
Subject: Re: [PATCH] rtc: zynqmp: Clear alarm interrupt status before
 interrupt enable
Message-ID: <20200211103939.GD3527@piout.net>
References: <1576155618-7933-1-git-send-email-srinivas.neeli@xilinx.com>
 <CAHTX3dKSq1oTzkoRv3wK3rhkc1r0rOiQhFKmgsYbtG_uvOfAJg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHTX3dKSq1oTzkoRv3wK3rhkc1r0rOiQhFKmgsYbtG_uvOfAJg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_023952_131164_5827A3F2 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Srinivas Neeli <srinivas.neeli@xilinx.com>, Srinivas Goud <sgoud@xilinx.com>,
 LKML <linux-kernel@vger.kernel.org>, git <git@xilinx.com>,
 Shubhrajyoti Datta <shubhraj@xilinx.com>,
 linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMDIvMjAyMCAxMjo0ODoxNCswMTAwLCBNaWNoYWwgU2ltZWsgd3JvdGU6Cj4gSGksCj4g
Cj4gxI10IDEyLiAxMi4gMjAxOSB2IDE0OjAxIG9kZXPDrWxhdGVsIFNyaW5pdmFzIE5lZWxpCj4g
PHNyaW5pdmFzLm5lZWxpQHhpbGlueC5jb20+IG5hcHNhbDoKPiA+Cj4gPiBGaXggbXVsdGlwbGUg
b2NjdXJyaW5nIGludGVycnVwdHMgZm9yIGFsYXJtIGludGVycnVwdC4gUlRDIG1vZHVsZSBkb2Vz
bid0Cj4gPiBjbGVhciB0aGUgYWxhcm0gaW50ZXJydXB0IHN0YXR1cyBiaXQgaW1tZWRpYXRlbHkg
YWZ0ZXIgdGhlIGludGVycnVwdCBpcwo+ID4gdHJpZ2dlcmVkLlRoaXMgaXMgZHVlIHRvIHRoZSBz
dGlja3kgbmF0dXJlIG9mIHRoZSBhbGFybSBpbnRlcnJ1cHQgc3RhdHVzCj4gPiByZWdpc3Rlci4g
VGhlIGFsYXJtIGludGVycnVwdCBzdGF0dXMgcmVnaXN0ZXIgY2FuIGJlIGNsZWFyZWQgb25seSBh
ZnRlcgo+ID4gdGhlIHNlY29uZCBjb3VudGVyIG91dHJ1bnMgdGhlIHNldCBhbGFybSB2YWx1ZS4g
VG8gZml4IG11bHRpcGxlIHNwdXJpb3VzCj4gPiBpbnRlcnJ1cHRzLCBkaXNhYmxlIGFsYXJtIGlu
dGVycnVwdCBpbiB0aGUgaGFuZGxlciBhbmQgY2xlYXIgdGhlIHN0YXR1cwo+ID4gYml0IGJlZm9y
ZSBlbmFibGluZyB0aGUgYWxhcm0gaW50ZXJydXB0Lgo+ID4KPiA+IEZpeGVzOiAxMTE0M2MxOWVi
NTcgKCJydGM6IGFkZCB4aWxpbnggenlucW1wIHJ0YyBkcml2ZXIiKQo+ID4gU2lnbmVkLW9mZi1i
eTogU3Jpbml2YXMgTmVlbGkgPHNyaW5pdmFzLm5lZWxpQHhpbGlueC5jb20+Cj4gPiAtLS0KPiA+
ICBkcml2ZXJzL3J0Yy9ydGMtenlucW1wLmMgfCAyOSArKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3J0Yy9ydGMtenlucW1wLmMgYi9kcml2ZXJz
L3J0Yy9ydGMtenlucW1wLmMKPiA+IGluZGV4IDU3ODY4NjZjMDllOS4uZDMxMWUzZWYxZjIxIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ydGMvcnRjLXp5bnFtcC5jCj4gPiArKysgYi9kcml2ZXJz
L3J0Yy9ydGMtenlucW1wLmMKPiA+IEBAIC0zOCw2ICszOCw4IEBACj4gPgo+ID4gICNkZWZpbmUg
UlRDX0NBTElCX0RFRiAgICAgICAgICAweDE5ODIzMwo+ID4gICNkZWZpbmUgUlRDX0NBTElCX01B
U0sgICAgICAgICAweDFGRkZGRgo+ID4gKyNkZWZpbmUgUlRDX0FMUk1fTUFTSyAgICAgICAgICBC
SVQoMSkKPiA+ICsjZGVmaW5lIFJUQ19NU0VDICAgICAgICAgICAgICAgMTAwMAo+ID4KPiA+ICBz
dHJ1Y3QgeGxueF9ydGNfZGV2IHsKPiA+ICAgICAgICAgc3RydWN0IHJ0Y19kZXZpY2UgICAgICAg
KnJ0YzsKPiA+IEBAIC0xMjQsMTEgKzEyNiwyOCBAQCBzdGF0aWMgaW50IHhsbnhfcnRjX2FsYXJt
X2lycV9lbmFibGUoc3RydWN0IGRldmljZSAqZGV2LCB1MzIgZW5hYmxlZCkKPiA+ICB7Cj4gPiAg
ICAgICAgIHN0cnVjdCB4bG54X3J0Y19kZXYgKnhydGNkZXYgPSBkZXZfZ2V0X2RydmRhdGEoZGV2
KTsKPiA+Cj4gCj4gaGVyZSBzaG91bGRuJ3QgYmUgZW1wdHkgbGluZS4KPiAKPiA+IC0gICAgICAg
aWYgKGVuYWJsZWQpCj4gPiArICAgICAgIHVuc2lnbmVkIGludCBzdGF0dXM7Cj4gPiArICAgICAg
IHVsb25nIHRpbWVvdXQ7Cj4gPiArCj4gPiArICAgICAgIHRpbWVvdXQgPSBqaWZmaWVzICsgbXNl
Y3NfdG9famlmZmllcyhSVENfTVNFQyk7Cj4gPiArCj4gPiArICAgICAgIGlmIChlbmFibGVkKSB7
Cj4gPiArICAgICAgICAgICAgICAgd2hpbGUgKDEpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIHN0YXR1cyA9IHJlYWRsKHhydGNkZXYtPnJlZ19iYXNlICsgUlRDX0lOVF9TVFMpOwo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgaWYgKCEoKHN0YXR1cyAmIFJUQ19BTFJNX01BU0spID09
IFJUQ19BTFJNX01BU0spKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVh
azsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmICh0aW1lX2FmdGVyX2VxKGpp
ZmZpZXMsIHRpbWVvdXQpKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRl
dl9lcnIoZGV2LCAiVGltZSBvdXQgb2NjdXIsIHdoaWxlIGNsZWFyaW5nIGFsYXJtIHN0YXR1cyBi
aXRcbiIpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVUSU1F
RE9VVDsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIH0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIHdyaXRlbChSVENfSU5UX0FMUk0sIHhydGNkZXYtPnJlZ19iYXNlICsgUlRDX0lOVF9T
VFMpOwo+ID4gKyAgICAgICAgICAgICAgIH0KPiA+ICsKPiA+ICAgICAgICAgICAgICAgICB3cml0
ZWwoUlRDX0lOVF9BTFJNLCB4cnRjZGV2LT5yZWdfYmFzZSArIFJUQ19JTlRfRU4pOwo+ID4gLSAg
ICAgICBlbHNlCj4gPiArICAgICAgIH0gZWxzZSB7Cj4gPiAgICAgICAgICAgICAgICAgd3JpdGVs
KFJUQ19JTlRfQUxSTSwgeHJ0Y2Rldi0+cmVnX2Jhc2UgKyBSVENfSU5UX0RJUyk7Cj4gPiAtCj4g
PiArICAgICAgIH0KPiAKPiBBbmQgaGVyZSBpdCB3YXMgZ29vZCB0byBoYXZlIGVtcHR5IGxpbmUu
Cj4gCj4gPiAgICAgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiBAQCAtMTgzLDggKzIwMiw4
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCB4bG54X3J0Y19pbnRlcnJ1cHQoaW50IGlycSwgdm9pZCAq
aWQpCj4gPiAgICAgICAgIGlmICghKHN0YXR1cyAmIChSVENfSU5UX1NFQyB8IFJUQ19JTlRfQUxS
TSkpKQo+ID4gICAgICAgICAgICAgICAgIHJldHVybiBJUlFfTk9ORTsKPiA+Cj4gPiAtICAgICAg
IC8qIENsZWFyIFJUQ19JTlRfQUxSTSBpbnRlcnJ1cHQgb25seSAqLwo+ID4gLSAgICAgICB3cml0
ZWwoUlRDX0lOVF9BTFJNLCB4cnRjZGV2LT5yZWdfYmFzZSArIFJUQ19JTlRfU1RTKTsKPiA+ICsg
ICAgICAgLyogRGlzYWJsZSBSVENfSU5UX0FMUk0gaW50ZXJydXB0IG9ubHkgKi8KPiA+ICsgICAg
ICAgd3JpdGVsKFJUQ19JTlRfQUxSTSwgeHJ0Y2Rldi0+cmVnX2Jhc2UgKyBSVENfSU5UX0RJUyk7
Cj4gPgo+ID4gICAgICAgICBpZiAoc3RhdHVzICYgUlRDX0lOVF9BTFJNKQo+ID4gICAgICAgICAg
ICAgICAgIHJ0Y191cGRhdGVfaXJxKHhydGNkZXYtPnJ0YywgMSwgUlRDX0lSUUYgfCBSVENfQUYp
Owo+ID4gLS0KPiA+IDIuNy40Cj4gCj4gT3RoZXIgdGhlbiB0aGVzZSB0d28gYWJvdmUgdGhpbmdz
IGxvb2sgZ29vZC4KPiAKPiBBbGV4YW5kcmU6IEFueSBpc3N1ZSB3aXRoIHRoaXMgcGF0Y2g/Cj4g
CgpObyBpc3N1ZSwgSSB3YXMga2luZCBvZiB3YWl0aW5nIGZvciB5b3VyIHJldmlldy4gSSdsbCB0
YWtlIHRoZSBwYXRjaApvbmNlIHlvdXIgY29tbWVudHMgYXJlIGFkZHJlc3NlZC4KCi0tIApBbGV4
YW5kcmUgQmVsbG9uaSwgQm9vdGxpbgpFbWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVy
aW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
