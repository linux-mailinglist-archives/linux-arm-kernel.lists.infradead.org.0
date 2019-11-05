Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ABCEFDE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:03:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQLTeG7AzAj39eVyIhZfgVccT8+21bc2A1gYS0jGDJo=; b=IpLN7RUbTXur73
	ZpYSBDr59E5pQHrBdamPP7jVG4SwrGAxZwVcD1eZVqvEt/u9pzBLUElHgLubKnb0bPzg9omHmloav
	i1syNW18qFc6FosKsFprtVppHCfIi0X7WgcventThotL/42eByp5UR7D5TGK8BbD7fF7hMpGX5p/R
	BlKW7667e4X6UT2Js8VQaomkirdsBfWoKYpSQRNNbXwgIyVIuG14yes/eO61KIzz75s1cFiKOUIvF
	3cCIIbZbl201aK0JDW7algWVYlhGldPbewaMyVwgo2sK5uBQ8Y5iD/c8uHA1f2vrDSPHfXvEdnGrX
	4xRkF359I2ELRN0AlozA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyUw-0004hS-7U; Tue, 05 Nov 2019 13:03:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyUo-0004gf-3V
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:03:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id c17so13462226wmk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:03:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Z7ne9Wa4hkz+N8qPGF4Ypu88eeGd3GHGKnFHgzFLi7Q=;
 b=txABY5fF1AnrWY9DzF/uQFqxAFxDVFjW/2ptH7Oh3g77rHSCwX8bWUoRWCU44tjyho
 jknQ5DAzGqGmeOTu6oxMNjkHgPOVmNxawihgF9EaOwTkZLRIp//0XfPPx1EosvhOP1jb
 /no4Fax2YHDPut8GAzFOjiRxg5DsLBkgUVME5Hj4bfsFWwj+YlNMuZQxxXQPu+F9LHzt
 KbFArlYcbYVFo6Fr1ELHBKE/rTyiCg4Sib2m3XTzIjrtlo1fZc25EHipn72C3jH00JaL
 ssYfNt4wPQaI3rsCIozs6VSVVMr5DRf5VJFM9PiH1oS11VJs63BC1jUbFJOHC+x8j+xm
 cCUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Z7ne9Wa4hkz+N8qPGF4Ypu88eeGd3GHGKnFHgzFLi7Q=;
 b=Zy1PQf6ku6QO6jiS9jJ5oQARf53QDSzMpE9/w4PfSVc3pVTLRTCDO2t27AiS7gHleJ
 Sv3IYqFPlBfBbQ8C5MEhOAGsCAE0e8XAfKXp6i5mgesOlUtJBGNa/m3EYtcPQ84Lo2fj
 ilXWc5/en3cvsm91Hvytf0q/5amo7JsagZW5ATgi4RJ2rpGUJkN0tEe9/LIP3886NCFc
 erdFyZhPWkJISRtjcKg93bTmKLK5xuWag5ap3ejURwxivSHr8hCXsG3EQVO37yLsVlko
 VZJbw4EUe7tvvmXstVe6ZUEgo2rSn5qs5FkbGCbYg+z9lO5iSzM9jvojaFeI1Kfpqw4h
 i6ZA==
X-Gm-Message-State: APjAAAU5m39DpzFsKmsyj0Nra3v7xQs+gyl4iwN7/RZe90ZZh8Mg7tkx
 Y+QjePW1S27v9cWGMvjs4HFIZFwMa3opq1g9t32f1pmf
X-Google-Smtp-Source: APXvYqwb0Y/4DgCXMu6XYcOuSXC23lgfFDQhSIrLipAkOCOpnCeN9Z4MN81v/WM2BcpD3uIXKsjnceA9E9eVnCSk2dw=
X-Received: by 2002:a1c:2342:: with SMTP id j63mr3964562wmj.56.1572959020153; 
 Tue, 05 Nov 2019 05:03:40 -0800 (PST)
MIME-Version: 1.0
References: <20191103203334.10539-1-peron.clem@gmail.com>
 <20191103203334.10539-3-peron.clem@gmail.com>
 <20191104081157.373v22atswsaktbe@pengutronix.de>
 <20191105070128.ve73ha5ibiymcxnx@pengutronix.de>
In-Reply-To: <20191105070128.ve73ha5ibiymcxnx@pengutronix.de>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 5 Nov 2019 14:03:29 +0100
Message-ID: <CAJiuCccYoD=3Fw+NrkoCipYp8S=pSHUq9hFOxzNg51J=hUx16A@mail.gmail.com>
Subject: Re: [PATCH v2 2/7] pwm: sun4i: Add an optional probe for reset line
To: Philipp Zabel <pza@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_050342_145678_57590EC8 
X-CRM114-Status: GOOD (  26.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUGhpbGlwcCwKCk9uIFR1ZSwgNSBOb3YgMjAxOSBhdCAwODowMSwgUGhpbGlwcCBaYWJlbCA8
cHphQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIE1vbiwgTm92IDA0LCAyMDE5IGF0IDA5
OjExOjU3QU0gKzAxMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+ID4gSGVsbG8sCj4gPgo+
ID4gYWRkaW5nIFBoaWxpcHAgWmFiZWwgKD0gcmVzZXQgY29udHJvbGxlciBtYWludGFpbmVyKSB0
byBDYzogYW5kIHNvIEknbQo+ID4gbm90IHN0cmlwcGluZyB0aGUgdW5jb21tZW50ZWQgcGFydHMg
b2YgdGhlIHBhdGNoLgo+ID4KPiA+IE9uIFN1biwgTm92IDAzLCAyMDE5IGF0IDA5OjMzOjI5UE0g
KzAxMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+ID4gRnJvbTogSmVybmVqIFNrcmFiZWMg
PGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPgo+ID4gPiBINiBQV00gY29yZSBuZWVkcyBk
ZWFzc2VydGVkIHJlc2V0IGxpbmUgaW4gb3JkZXIgdG8gd29yay4KPiA+ID4KPiA+ID4gQWRkIGFu
IG9wdGlvbmFsIHByb2JlIGZvciBpdC4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogSmVybmVq
IFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gIGRy
aXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgMzIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
LS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+ID4gPgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2
ZXJzL3B3bS9wd20tc3VuNGkuYwo+ID4gPiBpbmRleCA2ZjU4NDBhMWE4MmQuLmQxOTRiOGViZGIw
MCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gKysrIGIv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKPiA+ID4gQEAgLTE2LDYgKzE2LDcgQEAKPiA+ID4gICNp
bmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9y
bV9kZXZpY2UuaD4KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9wd20uaD4KPiA+ID4gKyNpbmNsdWRl
IDxsaW51eC9yZXNldC5oPgo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiA+ID4gICNp
bmNsdWRlIDxsaW51eC9zcGlubG9jay5oPgo+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3RpbWUuaD4K
PiA+ID4gQEAgLTc4LDYgKzc5LDcgQEAgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHsKPiA+ID4gIHN0
cnVjdCBzdW40aV9wd21fY2hpcCB7Cj4gPiA+ICAgICBzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsKPiA+
ID4gICAgIHN0cnVjdCBjbGsgKmNsazsKPiA+ID4gKyAgIHN0cnVjdCByZXNldF9jb250cm9sICpy
c3Q7Cj4gPiA+ICAgICB2b2lkIF9faW9tZW0gKmJhc2U7Cj4gPiA+ICAgICBzcGlubG9ja190IGN0
cmxfbG9jazsKPiA+ID4gICAgIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YSAqZGF0YTsKPiA+
ID4gQEAgLTM2NSw2ICszNjcsMjAgQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ID4gICAgIGlmIChJU19FUlIocHdtLT5jbGspKQo+
ID4gPiAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwd20tPmNsayk7Cj4gPiA+Cj4gPiA+ICsg
ICBwd20tPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWwoJnBkZXYtPmRldiwg
TlVMTCk7Cj4gPiA+ICsgICBpZiAoSVNfRVJSKHB3bS0+cnN0KSkgewo+ID4gPiArICAgICAgICAg
ICBpZiAoUFRSX0VSUihwd20tPnJzdCkgPT0gLUVQUk9CRV9ERUZFUikKPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICByZXR1cm4gUFRSX0VSUihwd20tPnJzdCk7Cj4gPiA+ICsgICAgICAgICAgIGRl
dl9pbmZvKCZwZGV2LT5kZXYsICJubyByZXNldCBjb250cm9sIGZvdW5kXG4iKTsKPiA+Cj4gPiBJ
IHdvdWxkIGRlZ3JhZGUgdGhpcyB0byBhIGRldl9kYmcuIE90aGVyd2lzZSB0aGlzIHNwYW1zIHRo
ZSBsb2cgZm9yIGFsbAo+ID4gdW5hZmZlY3RlZCBtYWNoaW5lcy4KPgo+IFRoZSBfb3B0aW9uYWwg
dmFyaWFudHMgcmV0dXJuIE5VTEwgaWYgdGhlIHJlc2V0IGlzIG5vdCBzcGVjaWZpZWQgaW4gdGhl
Cj4gZGV2aWNlIHRyZWUsIHNvIHRoaXMgaXMgbm90ICJubyByZXNldCBjb250cm9sIGZvdW5kIiwg
YnV0IGEgcmVhbCBlcnJvcgo+IHRoYXQgc2hvdWxkIGJlIHJldHVybmVkLgoKQ29ycmVjdCwKClRo
YW5rcyBmb3IgdGhlIGNhdGNoLApDbMOpbWVudAoKPgo+ID4gZGV2bV9yZXNldF9jb250cm9sX2dl
dF9vcHRpb25hbCgpIGlzIGRlZmluZWQgaW4gYSBzZWN0aW9uIHRoYXQgaGFzIGEKPiA+IGNvbW1l
bnQgIlRoZXNlIGlubGluZSBmdW5jdGlvbiBjYWxscyB3aWxsIGJlIHJlbW92ZWQgb25jZSBhbGwK
PiA+IGNvbnN1bWVycyBoYXZlIGJlZW4gbW92ZWQgb3ZlciB0byB0aGUgbmV3IGV4cGxpY2l0IEFQ
SS4iLCBzbyBJIGd1ZXNzCj4gPiB5b3Ugd2FudCBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlv
bmFsX2V4Y2x1c2l2ZSBvciBldmVuCj4gPiBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFs
X3NoYXJlZCBoZXJlLgo+Cj4gQ29ycmVjdC4gSWYgdGhpcyBkcml2ZXIgZGVhc3NlcnRzIGluIHBy
b2JlKCkgYW5kIGFzc2VydHMgdGhlIHJlc2V0IGluCj4gcmVtb3ZlKCksIHRoaXMgY2FuIHVzZSB0
aGUgcmVmY291bnRpbmcgX3NoYXJlZCB2YXJpYW50Lgo+Cj4gPiBAUGhpbGlwcDogbWF5YmUgYSBj
aGVjayBpbiBjaGVja3BhdGNoIHRoYXQgd2FybnMgYWJvdXQgaW50cm9kdWN0aW9uIG9mCj4gPiBz
dWNoIG5ldyBpbnN0YW5jZXMgd291bGQgYmUgZ29vZD8hCj4KPiBZZXMsIHRoYXQgd291bGQgYmUg
aGVscGZ1bC4KPgo+IHJlZ2FyZHMKPiBQaGlsaXBwCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
