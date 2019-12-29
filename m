Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6458912C26A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 13:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d10qI5P2uiozURbXEH8iaY+yHaUAO3TgZ6KUfBKwXuI=; b=Ia8evKG/d57wqg
	1RskECffZCv4C1o5SXIACK/jize5VDONq2eztRaLWahLXVmjrombCsUcSyj6irfOXl1r8Aw+VVRNe
	coE6iz/1y1K30ZCiaqgtdVTGNRpEc94ONgU4Yy3qTvhxvKe0uCCvd3e8ouSB++QOAG5Z6C7kwLsti
	/mxjc9SHX9YAEijIO7M9RTVqazH524QYPogTis01JUYY/C5kzJwvxSD7LdDiWqLBvccdhtQUXqe5O
	PcopckZSI40465lBJCRl/3JcwwnOlQzeGAB8/H7IvO6J++iCgxbvvBhp5NqvvbVJ858/lpaRCuouI
	MJF4wpHGv6zf2NAqkp2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilXSe-0001uD-5e; Sun, 29 Dec 2019 12:14:20 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilXST-0001ol-7J
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 12:14:11 +0000
Received: by mail-qv1-xf42.google.com with SMTP id o18so11550753qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 04:14:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3NS0YuGMiOiXrvIw4OA/SAcuSinUcRqRdHd2DvYzoZU=;
 b=NFSeelGFUGbKCnY4MqSk5IrHuOJpyf1wo+pWVTHkHUds2ORXCZQ9ZdmXN9EihMp0G5
 lHRNAdHN6dIOmbMgTi4yyntauiOE27BDDXpJKSUPL2oU5yT979aRlmrQE0dZZniw3jiJ
 pSPph8NB+DQM24IoCts8J/eQ75Dsg0nBWkwQ+LdHJE2UDadceeR6HyFyJ5eEm/8uUVoZ
 m9ebwScQ2dmn7eZkiD72WzW2SY0LgiDseNBOgNc3498eMD5CXqkFc0N9fgkZlC8KrXlX
 c9PB701VLPkZaRHo2CNIXoSRKwJB/SoveGPMHsShioMhaty7FQFVOQh319uxfaLWLbTg
 CAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3NS0YuGMiOiXrvIw4OA/SAcuSinUcRqRdHd2DvYzoZU=;
 b=cf/1Act0eJz2Iy4PhdXXhBWwEt90mkwnHUSLBZUOlR96xaDfVawvvmcvUoefo0m+51
 IGcCes9xty2noN7XRRXgAjkQuog4F4wCtPNnl25XUOTylhtfCd/43ORVShvAbz3NazYx
 7fyCe6Kaj2BNleqhsmCpbdyTwlDnSgyF33bHwYWPsT4cQz9+9ZiyjqQjPnmVrJT5wTTy
 bQb1eZTekVCmFUM3e5Ul4zu6IiYQOv5xKQ0ZLctJaDriRPN2E7FcWYI6++wiOwaD2paq
 ULcxGgiQNRGusii2IeMwACrQtODUoGt1YzwMCseZ0Ilrl+5L9o/4EzQVgnhrqz50eFQy
 FNkg==
X-Gm-Message-State: APjAAAVyRMiKm4RQVC3TimwOVu6wnZdraY731hLary9BM0KMMSiqPGAj
 mOTP9ZaQMMSdgJyvNUZ+lDxw3gKU831bqgIiLUoSoQ==
X-Google-Smtp-Source: APXvYqzVMlGsS4IKEu6R5VeMGANUaqglI5oQ/UGu2nc8eNJ1v9AswUjiKA/FTrq6aO/sNZpWNbxd8BhAN0oCAaC6LsY=
X-Received: by 2002:ad4:55e8:: with SMTP id bu8mr48113914qvb.61.1577621647544; 
 Sun, 29 Dec 2019 04:14:07 -0800 (PST)
MIME-Version: 1.0
References: <20191210203149.7115-1-tiny.windzz@gmail.com>
 <CAEExFWvd1Md-guT=wgZ1-G69r71KBn64k2yGh0Vqjh_-D8yGuQ@mail.gmail.com>
In-Reply-To: <CAEExFWvd1Md-guT=wgZ1-G69r71KBn64k2yGh0Vqjh_-D8yGuQ@mail.gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Sun, 29 Dec 2019 13:13:56 +0100
Message-ID: <CAMpxmJUQjyCeNvczx_UKNL6PMnNWAPsY5ptCdz24YLXH_63nRg@mail.gmail.com>
Subject: Re: [PATCH] drivers: add devm_platform_ioremap_resource_byname()
 helper
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_041409_268354_E782D39C 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: treding@nvidia.com, mans@mansr.com, "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, suzuki.poulose@arm.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-amlogic@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

c29iLiwgMjggZ3J1IDIwMTkgbyAxODozOSBGcmFuayBMZWUgPHRpbnkud2luZHp6QGdtYWlsLmNv
bT4gbmFwaXNhxYIoYSk6Cj4KPiBwaW5nLi4uCj4KPiBPbiBXZWQsIERlYyAxMSwgMjAxOSBhdCA0
OjMxIEFNIFlhbmd0YW8gTGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+ID4g
VGhlcmUgYXJlIGN1cnJlbnRseSAzMDArIGluc3RhbmNlcyBvZiB1c2luZyBwbGF0Zm9ybV9nZXRf
cmVzb3VyY2VfYnluYW1lKCkKPiA+IGFuZCBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoKSB0b2dldGhl
ciBpbiB0aGUga2VybmVsIHRyZWUuCj4gPgo+ID4gVGhpcyBwYXRjaCB3cmFwcyB0aGVzZSB0d28g
Y2FsbHMgaW4gYSBzaW5nbGUgaGVscGVyLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8g
TGkgPHRpbnkud2luZHp6QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvYmFzZS9wbGF0
Zm9ybS5jICAgICAgICAgfCAyMiArKysrKysrKysrKysrKysrKysrKystCj4gPiAgaW5jbHVkZS9s
aW51eC9wbGF0Zm9ybV9kZXZpY2UuaCB8ICAzICsrKwo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgMjQg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2Jhc2UvcGxhdGZvcm0uYyBiL2RyaXZlcnMvYmFzZS9wbGF0Zm9ybS5jCj4gPiBpbmRleCBiNmM2
YzdkOTdkNWIuLjljNGY1ZTIyOTYwMCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvYmFzZS9wbGF0
Zm9ybS5jCj4gPiArKysgYi9kcml2ZXJzL2Jhc2UvcGxhdGZvcm0uYwo+ID4gQEAgLTYwLDYgKzYw
LDcgQEAgc3RydWN0IHJlc291cmNlICpwbGF0Zm9ybV9nZXRfcmVzb3VyY2Uoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqZGV2LAo+ID4gIH0KPiA+ICBFWFBPUlRfU1lNQk9MX0dQTChwbGF0Zm9ybV9n
ZXRfcmVzb3VyY2UpOwo+ID4KPiA+ICsjaWZkZWYgQ09ORklHX0hBU19JT01FTQo+ID4gIC8qKgo+
ID4gICAqIGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZSAtIGNhbGwgZGV2bV9pb3JlbWFw
X3Jlc291cmNlKCkgZm9yIGEgcGxhdGZvcm0KPiA+ICAgKiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGRldmljZQo+ID4gQEAgLTY4LDcgKzY5LDcgQEAgRVhQT1JUX1NZTUJPTF9HUEwo
cGxhdGZvcm1fZ2V0X3Jlc291cmNlKTsKPiA+ICAgKiAgICAgICAgcmVzb3VyY2UgbWFuYWdlbWVu
dAo+ID4gICAqIEBpbmRleDogcmVzb3VyY2UgaW5kZXgKPiA+ICAgKi8KPiA+IC0jaWZkZWYgQ09O
RklHX0hBU19JT01FTQo+ID4gKwo+ID4gIHZvaWQgX19pb21lbSAqZGV2bV9wbGF0Zm9ybV9pb3Jl
bWFwX3Jlc291cmNlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQgaW5kZXgpCj4g
PiAgewo+ID4gQEAgLTc4LDYgKzc5LDI1IEBAIHZvaWQgX19pb21lbSAqZGV2bV9wbGF0Zm9ybV9p
b3JlbWFwX3Jlc291cmNlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gPiAgICAgICAg
IHJldHVybiBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoJnBkZXYtPmRldiwgcmVzKTsKPiA+ICB9Cj4g
PiAgRVhQT1JUX1NZTUJPTF9HUEwoZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlKTsKPiA+
ICsKPiA+ICsvKioKPiA+ICsgKiBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1l
IC0gY2FsbCBkZXZtX2lvcmVtYXBfcmVzb3VyY2UoKSBmb3IKPiA+ICsgKiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBhIHBsYXRmb3JtIGRldmljZQo+ID4gKyAqCj4gPiAr
ICogQHBkZXY6IHBsYXRmb3JtIGRldmljZSB0byB1c2UgYm90aCBmb3IgbWVtb3J5IHJlc291cmNl
IGxvb2t1cCBhcyB3ZWxsIGFzCj4gPiArICogICAgICAgIHJlc291cmNlIG1hbmFnZW1lbmQKPiA+
ICsgKiBAbmFtZTogcmVzb3VyY2UgbmFtZQo+ID4gKyAqLwo+ID4gK3ZvaWQgX19pb21lbSAqCj4g
PiArZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNlX2J5bmFtZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBj
b25zdCBjaGFyICpuYW1lKQo+ID4gK3sKPiA+ICsgICAgICAgc3RydWN0IHJlc291cmNlICpyZXM7
Cj4gPiArCj4gPiArICAgICAgIHJlcyA9IHBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUocGRl
diwgSU9SRVNPVVJDRV9NRU0sIG5hbWUpOwo+ID4gKyAgICAgICByZXR1cm4gZGV2bV9pb3JlbWFw
X3Jlc291cmNlKCZwZGV2LT5kZXYsIHJlcyk7Cj4gPiArfQo+ID4gK0VYUE9SVF9TWU1CT0xfR1BM
KGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZV9ieW5hbWUpOwo+ID4gICNlbmRpZiAvKiBD
T05GSUdfSEFTX0lPTUVNICovCj4gPgo+ID4gIHN0YXRpYyBpbnQgX19wbGF0Zm9ybV9nZXRfaXJx
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKmRldiwgdW5zaWduZWQgaW50IG51bSkKPiA+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2xpbnV4L3BsYXRmb3JtX2RldmljZS5oIGIvaW5jbHVkZS9saW51eC9w
bGF0Zm9ybV9kZXZpY2UuaAo+ID4gaW5kZXggMWI1Y2VjMDY3NTMzLi4yNGZmNWRhOWM1MzIgMTAw
NjQ0Cj4gPiAtLS0gYS9pbmNsdWRlL2xpbnV4L3BsYXRmb3JtX2RldmljZS5oCj4gPiArKysgYi9p
bmNsdWRlL2xpbnV4L3BsYXRmb3JtX2RldmljZS5oCj4gPiBAQCAtNjMsNiArNjMsOSBAQCBleHRl
cm4gaW50IHBsYXRmb3JtX2lycV9jb3VudChzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICopOwo+ID4g
IGV4dGVybiBzdHJ1Y3QgcmVzb3VyY2UgKnBsYXRmb3JtX2dldF9yZXNvdXJjZV9ieW5hbWUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB1bnNpZ25lZCBpbnQsCj4gPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnN0IGNoYXIgKik7Cj4gPiAr
ZXh0ZXJuIHZvaWQgX19pb21lbSAqCj4gPiArZGV2bV9wbGF0Zm9ybV9pb3JlbWFwX3Jlc291cmNl
X2J5bmFtZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBjaGFyICpuYW1lKTsKPiA+ICBleHRlcm4gaW50
IHBsYXRmb3JtX2dldF9pcnFfYnluYW1lKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKiwgY29uc3Qg
Y2hhciAqKTsKPiA+ICBleHRlcm4gaW50IHBsYXRmb3JtX2FkZF9kZXZpY2VzKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKiosIGludCk7Cj4gPgo+ID4gLS0KPiA+IDIuMTcuMQo+ID4KClRoaXMgZXhh
Y3Qgcm91dGluZSBoYXMgZXhpc3RlZCB1cHN0cmVhbSBzaW5jZSBjb21taXQgYzljODY0MWQzZWJk
CigiZHJpdmVyczogcHJvdmlkZSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2VfYnluYW1l
KCkiKS4gV2hhdAp2ZXJzaW9uIGFyZSB5b3Ugd29ya2luZyBvbj8KCkJhcnQKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
