Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CF023858
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 15:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdoUlfjH6YGKWwnpswgPxg+eSFqB4067/a1YdY9NExE=; b=PbYcjdoKiSFAR/
	AyAoXSV/GDL9g2XbdTQPTy8xcaEI81I6CfxKbiVNp9OCmdtjmDaYN2AjrS/N5T0oDP6jiQQT7CRnY
	iWPP2Zf07OUSBKYG4nDavcPtQQmNgPsDSyzFcmImVakNPogMDxFVIJ+FOvYQJ677ytZ6W37sP1lVb
	IEVh5+1SrrHwUrlBI+4fxRkRHAQ+t871ZPkTF2Zjm14L7UOdp4lOuexO6KSax29tsL+XwQkr302kl
	fvtpMKdSeKlobpQUtrqGbMpS7jnXjEI/YW/5xCgIkn/3pVpM7hcPbl4vb7u54XR1iksnFyGPLICQ9
	3Uvisw0wVfeYjzn8fnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSiVB-0005HF-MZ; Mon, 20 May 2019 13:38:53 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSiV3-0005GO-GY; Mon, 20 May 2019 13:38:47 +0000
Received: by mail-qk1-x743.google.com with SMTP id j1so8770030qkk.12;
 Mon, 20 May 2019 06:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4sn2aNhSmWMF2bxaXlhtdrrD8MWB8zLabNnT30+rXN4=;
 b=KcgzAGA5TEDzFFBWGDWAFNeiLd9NNMqf4uaECaqxcXYCa1qvlE+IkMRR/7dzHa2d9N
 A6gd10ktaMwYZTW5XOaWR4f4NDEML2gpQPzXuLCmiEs3CXzm6KxshIZR0FPr0agP/w6e
 bpT45YHpj90Ru/F01/fZAUFpD5IwCIlVNmYl9tCsjE+m1X1H/rcsl3ryz+/drMo3e30b
 eveWPibVsL4VegNF/lyjAoAZo5MJjziMELluckprHhusFdkA6/z+Aq4bUijrIQXTSKWe
 PW08mM5Ru6QmMgPaov+duN9ychrfxubsp4cPqtqy354VlPeP92fNZ3CRqLpbSGiB5lJa
 DNQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4sn2aNhSmWMF2bxaXlhtdrrD8MWB8zLabNnT30+rXN4=;
 b=UIUJhpzb/7nr0jxtKF81dOdYyvEihVdorVW0l4M2aM2DI9HH8qVJPT/E/XFrxeqSUN
 ultYgN2nCBf8qnod3hSVrfsff2v0SKjr9PGZAMVGMcKGx6PNnmExHx6pxHTF4RXcCCr8
 nN2MfopHcB2Eyzht0DKoiryU9PNvwKMVPUGuhGUJ/pKwN0a3x/07JFOkMalU/JdzNF/l
 tWrv6DjIr8M9mFZi/Hg/IZdh144FKvxLtyGU07J4sb2oSNnjudfqgTxmu15cPQM9vhkq
 9vflRMRuwUrIq3Oo+dobkwaLFuBmjaZToXXsv6P1giZ5Mp+GFL6yMU1qouXml0sHIph1
 e7tA==
X-Gm-Message-State: APjAAAWc956MNowARFLsDVwfgx4U//G77CMLslL5/gQIh6itVOOHcEsf
 5Q+i9K9Ek/utsGJTridQyrY+C1zqGIkJMTbRkVs=
X-Google-Smtp-Source: APXvYqzpOs2ngVfVmJz73hlGI8UpUk2sigfqSuJkh1z/AeIEMMH2pH3Z+sBZuAGRfCGBbKsLDsEAA0YPlpDKL1R27CU=
X-Received: by 2002:a05:620a:1644:: with SMTP id
 c4mr58248705qko.32.1558359523914; 
 Mon, 20 May 2019 06:38:43 -0700 (PDT)
MIME-Version: 1.0
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
 <1556618986-18923-2-git-send-email-zhangqing@rock-chips.com>
 <785392a0-282a-1e51-a4d6-a6d5ca478949@linaro.org>
In-Reply-To: <785392a0-282a-1e51-a4d6-a6d5ca478949@linaro.org>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Mon, 20 May 2019 15:38:32 +0200
Message-ID: <CAFqH_53nbiwzQKctNa7MBzgCcsRFn1p8g31Xgvo3E9k6eA8AKw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] thermal: rockchip: fix up the tsadc pinctrl
 setting error
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_063845_613448_10C1FAB2 
X-CRM114-Status: GOOD (  26.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eballetbo[at]gmail.com)
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Doug Anderson <dianders@chromium.org>, huangtao@rock-chips.com,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Linux PM list <linux-pm@vger.kernel.org>, xxx@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, vicencb@gmail.com,
 xf@rock-chips.com, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgYWxsLAoKQXMgcG9pbnRlZCBieSBbMV0gYW5kIFsyXSB0aGlzIGNvbW1pdCwgdGhhdCBub3cg
aXMgdXBzdHJlYW0sIGJyZWFrcwp2ZXlyb24gKHJrMzI4OCkgYW5kIGtldmluIChyazMzOTkpIGJv
YXJkcy4gVGhlIHByb2JsZW0gaXMgZXNwZWNpYWxseQpjcml0aWNhbCBmb3IgdmV5cm9uIGJvYXJk
cyBiZWNhdXNlIHRoZXkgZG9uJ3QgYm9vdCBhbnltb3JlLgoKSSBkaWRuJ3QgbG9vayBkZWVwIGF0
IHRoZSBwcm9ibGVtIGJ1dCBJIGhhdmUgc29tZSBjb25jZXJucyBhYm91dCB0aGlzCnBhdGNoLCBz
ZWUgYmVsb3cuCgpbMV0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtcm9ja2No
aXAvbXNnMjQ2NTcuaHRtbApbMl0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgt
cm9ja2NoaXAvbXNnMjQ3MzUuaHRtbAoKTWlzc2F0Z2UgZGUgRGFuaWVsIExlemNhbm8gPGRhbmll
bC5sZXpjYW5vQGxpbmFyby5vcmc+IGRlbCBkaWEgZHQuLCAzMApk4oCZYWJyLiAyMDE5IGEgbGVz
IDE1OjM5Ogo+Cj4gT24gMzAvMDQvMjAxOSAxMjowOSwgRWxhaW5lIFpoYW5nIHdyb3RlOgo+ID4g
RXhwbGljaXRseSB1c2UgdGhlIHBpbmN0cmwgdG8gc2V0L3Vuc2V0IHRoZSByaWdodCBtb2RlCj4g
PiBpbnN0ZWFkIG9mIHJlbHlpbmcgb24gdGhlIHBpbmN0cmwgaW5pdCBtb2RlLgo+ID4gQW5kIGl0
IHJlcXVpcmVzIHNldHRpbmcgdGhlIHRzaHV0IHBvbGFyaXR5IGJlZm9yZSBzZWxlY3QgcGluY3Ry
bC4KPiA+Cj4gPiBXaGVuIHRoZSB0ZW1wZXJhdHVyZSBzZW5zb3IgbW9kZSBpcyBzZXQgdG8gMCwg
aXQgd2lsbCBhdXRvbWF0aWNhbGx5Cj4gPiByZXNldCB0aGUgYm9hcmQgdmlhIHRoZSBDbG9jay1S
ZXNldC1Vbml0IChDUlUpIGlmIHRoZSBvdmVyIHRlbXBlcmF0dXJlCj4gPiB0aHJlc2hvbGQgaXMg
cmVhY2hlZC4gSG93ZXZlciwgd2hlbiB0aGUgcGluY3RybCBpbml0aWFsaXplcywgaXQgZG9lcyBh
Cj4gPiB0cmFuc2l0aW9uIHRvICJvdHBfb3V0IiB3aGljaCBtYXkgbGVhZCB0aGUgU29DIHJlc3Rh
cnQgYWxsIHRoZSB0aW1lLgo+ID4KPiA+ICJvdHBfb3V0IiBJTyBtYXkgYmUgY29ubmVjdGVkIHRv
IHRoZSBSRVNFVCBjaXJjdWl0IG9uIHRoZSBoYXJkd2FyZS4KPiA+IElmIHRoZSBJTyBpcyBpbiB0
aGUgd3Jvbmcgc3RhdGUsIGl0IHdpbGwgdHJpZ2dlciBSRVNFVC4KPiA+IChzaW1pbGFyIHRvIHRo
ZSBlZmZlY3Qgb2YgcHJlc3NpbmcgdGhlIFJFU0VUIGJ1dHRvbikKPiA+IHdoaWNoIHdpbGwgY2F1
c2UgdGhlIHNvYyB0byByZXN0YXJ0IGFsbCB0aGUgdGltZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5
OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPgo+IFJldmlld2VkLWJ5
OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4KPgo+Cj4KPiA+IC0t
LQo+ID4gIGRyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMgfCAzNiArKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzMgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVy
bWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFs
LmMKPiA+IGluZGV4IDljNzY0M2Q2MmVkNy4uNmRjN2ZjNTE2YWJmIDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+ID4gKysrIGIvZHJpdmVycy90aGVy
bWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+ID4gQEAgLTE3Miw2ICsxNzIsOSBAQCBzdHJ1Y3Qgcm9j
a2NoaXBfdGhlcm1hbF9kYXRhIHsKPiA+ICAgICAgIGludCB0c2h1dF90ZW1wOwo+ID4gICAgICAg
ZW51bSB0c2h1dF9tb2RlIHRzaHV0X21vZGU7Cj4gPiAgICAgICBlbnVtIHRzaHV0X3BvbGFyaXR5
IHRzaHV0X3BvbGFyaXR5Owo+ID4gKyAgICAgc3RydWN0IHBpbmN0cmwgKnBpbmN0cmw7Cj4gPiAr
ICAgICBzdHJ1Y3QgcGluY3RybF9zdGF0ZSAqZ3Bpb19zdGF0ZTsKPiA+ICsgICAgIHN0cnVjdCBw
aW5jdHJsX3N0YXRlICpvdHBfc3RhdGU7Cj4gPiAgfTsKPiA+Cj4gPiAgLyoqCj4gPiBAQCAtMTI0
Miw2ICsxMjQ1LDggQEAgc3RhdGljIGludCByb2NrY2hpcF90aGVybWFsX3Byb2JlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPiAgICAgICAgICAgICAgIHJldHVybiBlcnJvcjsKPiA+
ICAgICAgIH0KPiA+Cj4gPiArICAgICB0aGVybWFsLT5jaGlwLT5jb250cm9sKHRoZXJtYWwtPnJl
Z3MsIGZhbHNlKTsKPiA+ICsKClRoYXQncyB0aGUgbGluZSB0aGF0IGNhdXNlcyB0aGUgaGFuZy4g
Q29tbWVudGluZyB0aGlzIG1ha2VzIHRoZSB2ZXlyb24KYm9vdCBhZ2Fpbi4gUHJvYmFibHkgdGhp
cyBuZWVkcyB0byBnbyBhZnRlciBjaGlwLT5pbml0aWFsaXplPwoKPiA+ICAgICAgIGVycm9yID0g
Y2xrX3ByZXBhcmVfZW5hYmxlKHRoZXJtYWwtPmNsayk7Cj4gPiAgICAgICBpZiAoZXJyb3IpIHsK
PiA+ICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBj
b252ZXJ0ZXIgY2xvY2s6ICVkXG4iLAo+ID4gQEAgLTEyNjcsNiArMTI3MiwzMCBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX3RoZXJtYWxfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
PiA+ICAgICAgIHRoZXJtYWwtPmNoaXAtPmluaXRpYWxpemUodGhlcm1hbC0+Z3JmLCB0aGVybWFs
LT5yZWdzLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGVybWFsLT50c2h1
dF9wb2xhcml0eSk7Cj4gPgo+ID4gKyAgICAgaWYgKHRoZXJtYWwtPnRzaHV0X21vZGUgPT0gVFNI
VVRfTU9ERV9HUElPKSB7Cj4gPiArICAgICAgICAgICAgIHRoZXJtYWwtPnBpbmN0cmwgPSBkZXZt
X3BpbmN0cmxfZ2V0KCZwZGV2LT5kZXYpOwo+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKHRo
ZXJtYWwtPnBpbmN0cmwpKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZGV2X2VycigmcGRl
di0+ZGV2LCAiZmFpbGVkIHRvIGZpbmQgdGhlcm1hbCBwaW5jdHJsXG4iKTsKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUih0aGVybWFsLT5waW5jdHJsKTsKPiA+ICsgICAg
ICAgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICAgICAgICB0aGVybWFsLT5ncGlvX3N0YXRlID0g
cGluY3RybF9sb29rdXBfc3RhdGUodGhlcm1hbC0+cGluY3RybCwKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJncGlvIik7CgpTaG91
bGRuJ3QgdGhpcyBtb2RlIGJlIGRvY3VtZW50ZWQgcHJvcGVybHkgaW4gdGhlIGJpbmRpbmcgZmly
c3Q/CgpUaGUgYmluZGluZyBbM10gdGFsa3MgYWJvdXQgaW5pdCwgZGVmYXVsdCBhbmQgc2xlZXAg
c3RhdGVzIGJ1dCAqbm90KgpncGlvIGFuZCBvdHBvdXQuIFRoZSBwYXRjaCBzZXJpZXMgbG9va3Mg
aW5jb21wbGV0ZSB0byBtZSBvciBub3QgdXNpbmcKdGhlIHByb3BlciBuYW1lcy4KClszXSBodHRw
czovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92NS4yLXJjMS9zb3VyY2UvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1hbC50eHQKCj4gPiAr
ICAgICAgICAgICAgIGlmIChJU19FUlJfT1JfTlVMTCh0aGVybWFsLT5ncGlvX3N0YXRlKSkgewo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwgImZhaWxlZCB0byBm
aW5kIHRoZXJtYWwgZ3BpbyBzdGF0ZVxuIik7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuIC1FSU5WQUw7Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgICAgICAg
dGhlcm1hbC0+b3RwX3N0YXRlID0gcGluY3RybF9sb29rdXBfc3RhdGUodGhlcm1hbC0+cGluY3Ry
bCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIm90cG91dCIpOwo+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSX09SX05VTEwodGhl
cm1hbC0+b3RwX3N0YXRlKSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoJnBk
ZXYtPmRldiwgImZhaWxlZCB0byBmaW5kIHRoZXJtYWwgb3Rwb3V0IHN0YXRlXG4iKTsKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiA+ICsgICAgICAgICAgICAgfQo+
ID4gKwoKU2FtZSBoZXJlIG90cG91dCBpcyBub3QgYSBkb2N1bWVudGVkLgoKQXMgdGhpcyBjaGFu
Z2UgaXMgbm93IGluIG1haW5saW5lIGFuZCBpcyBjYXVzaW5nIHZleXJvbiB0byBoYW5nIEknZApz
dWdnZXN0IHJldmVydGluZyB0aGlzIGNoYW5nZSBmb3Igbm93LiBFdmVuIGZpeGluZyB0aGUgcm9v
dCBjYXVzZQoobWF5YmUgdGhlIG9uZSBJIHBvaW50ZWQgYWJvdmUpIGFmdGVyIHRoaXMgcGF0Y2gg
d2Ugd2lsbCBoYXZlIHRoZQp0aGVybWFsIGRyaXZlciB0byBmYWlsIGJlY2F1c2UgImdwaW8iIGFu
ZCAib3Rwb3V0IiBzdGF0ZXMgYXJlIG5vdApkZWZpbmVkIG5vciBkb2N1bWVudGVkIChhIGNoYW5n
ZSBvbiB0aGlzIHdpbGwgbmVlZCBzb21lIHJldmlld3MgYW5kCmFja3MgYW5kIHRpbWUgSSBndWVz
cykuCgpDaGVlcnMsCiBFbnJpYwoKPiA+ICsgICAgICAgICAgICAgcGluY3RybF9zZWxlY3Rfc3Rh
dGUodGhlcm1hbC0+cGluY3RybCwgdGhlcm1hbC0+b3RwX3N0YXRlKTsKPiA+ICsgICAgIH0KPiA+
ICsKPiA+ICAgICAgIGZvciAoaSA9IDA7IGkgPCB0aGVybWFsLT5jaGlwLT5jaG5fbnVtOyBpKysp
IHsKPiA+ICAgICAgICAgICAgICAgZXJyb3IgPSByb2NrY2hpcF90aGVybWFsX3JlZ2lzdGVyX3Nl
bnNvcihwZGV2LCB0aGVybWFsLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICZ0aGVybWFsLT5zZW5zb3JzW2ldLAo+ID4gQEAgLTEzMzcsOCArMTM2Niw4
IEBAIHN0YXRpYyBpbnQgX19tYXliZV91bnVzZWQgcm9ja2NoaXBfdGhlcm1hbF9zdXNwZW5kKHN0
cnVjdCBkZXZpY2UgKmRldikKPiA+Cj4gPiAgICAgICBjbGtfZGlzYWJsZSh0aGVybWFsLT5wY2xr
KTsKPiA+ICAgICAgIGNsa19kaXNhYmxlKHRoZXJtYWwtPmNsayk7Cj4gPiAtCj4gPiAtICAgICBw
aW5jdHJsX3BtX3NlbGVjdF9zbGVlcF9zdGF0ZShkZXYpOwo+ID4gKyAgICAgaWYgKHRoZXJtYWwt
PnRzaHV0X21vZGUgPT0gVFNIVVRfTU9ERV9HUElPKQo+ID4gKyAgICAgICAgICAgICBwaW5jdHJs
X3NlbGVjdF9zdGF0ZSh0aGVybWFsLT5waW5jdHJsLCB0aGVybWFsLT5ncGlvX3N0YXRlKTsKPiA+
Cj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPiBAQCAtMTM4Myw3ICsxNDEyLDggQEAgc3Rh
dGljIGludCBfX21heWJlX3VudXNlZCByb2NrY2hpcF90aGVybWFsX3Jlc3VtZShzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gPiAgICAgICBmb3IgKGkgPSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+Y2huX251
bTsgaSsrKQo+ID4gICAgICAgICAgICAgICByb2NrY2hpcF90aGVybWFsX3RvZ2dsZV9zZW5zb3Io
JnRoZXJtYWwtPnNlbnNvcnNbaV0sIHRydWUpOwo+ID4KPiA+IC0gICAgIHBpbmN0cmxfcG1fc2Vs
ZWN0X2RlZmF1bHRfc3RhdGUoZGV2KTsKPiA+ICsgICAgIGlmICh0aGVybWFsLT50c2h1dF9tb2Rl
ID09IFRTSFVUX01PREVfR1BJTykKPiA+ICsgICAgICAgICAgICAgcGluY3RybF9zZWxlY3Rfc3Rh
dGUodGhlcm1hbC0+cGluY3RybCwgdGhlcm1hbC0+b3RwX3N0YXRlKTsKPiA+Cj4gPiAgICAgICBy
ZXR1cm4gMDsKPiA+ICB9Cj4gPgo+Cj4KPiAtLQo+ICA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4g
TGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCj4KPiBGb2xs
b3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJv
b2sgfAo+IDxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPiA8aHR0
cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
