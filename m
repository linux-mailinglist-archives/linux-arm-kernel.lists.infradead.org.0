Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6571181608
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:56:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yeqddo/vJEj5jfPnC8eGugNcsGG3EkOyEwTmQW1BsOY=; b=WjlcyhDdlf7wbp
	9zvjdPgUAaZuSaAknOD9+KqPQ0BvDSAuhMG3YFBU0BbLJJHH3wKtFcJqi+s7QCu7ovlNOQWjx/xnX
	+erZW679w5/TP/ePKnTcMkparrRjzhQFg8iAsEhrk6JS49tHC7HiIKcb6nRiMuQKstNi0Pw1PdIvE
	b5Pe60xYhOwTiFl4AWhQk+iTGqz2FgluFIEi1uyVSw300HhPND5Ce+kCgNfQzkU/uCDZD60LTTvIQ
	gHwb9y4sQ1dTmmiRbIFlReClReec810Gnlq35FLIQVirRXihIpArPNJnTLCUOHVs95OKZNt+IYLCs
	U9lnvTV42wRZTQII8ThA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZjR-00029y-5a; Mon, 05 Aug 2019 09:56:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZj8-000257-4G
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:56:27 +0000
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FF5F2184D
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  5 Aug 2019 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564998985;
 bh=c/eJMd7h8iMY7g3oBcO09Ax6tNi/85j/LkvMdm+2LJ0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kCUfwhYAxdatWJQsoVRP5kF25HVcRa1aMqKUgUJMss9brgbECYUQmepSWt2tGm/RQ
 umRuOgvoPUKkt+A7Papljrijh6QQVCW0gkYfOsbJ6bM3ez1Rp3W8VOVzCufeKWykP2
 SI9yu/NkrsRLYzfI5dB6G+qzLhW/6hIfeGIf620k=
Received: by mail-lj1-f174.google.com with SMTP id y17so54213013ljk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:56:25 -0700 (PDT)
X-Gm-Message-State: APjAAAXeCqJyDn5qCxhK92Tr92G6wg3Pfrg4GSjq2090BRmtn/nNGk53
 R9H5qKsSi/tpmxTa9ziJCMjXAO/csgCbFtk0C60=
X-Google-Smtp-Source: APXvYqxzVKAd5TMLzlif6yoBQ/7YS/sKvvkA9uKhcxY/lMn1ISB5YMDZXNJeRxIeHY+6zPufLi4WkrEALvt2npvWd0M=
X-Received: by 2002:a2e:8155:: with SMTP id t21mr21170060ljg.80.1564998983563; 
 Mon, 05 Aug 2019 02:56:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122022eucas1p1266d90873d564894bd852c20140f8474@eucas1p1.samsung.com>
 <20190723122016.30279-2-a.swigon@partner.samsung.com>
 <20190724190741.GD14346@kozik-lap>
 <bda10bcc66aae96355e74c4739229d72bcc95b0d.camel@partner.samsung.com>
In-Reply-To: <bda10bcc66aae96355e74c4739229d72bcc95b0d.camel@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 5 Aug 2019 11:56:12 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdAhyAE96LmzV7TB1YTyNcN7Eh65Xb9caanXA-52Gskvg@mail.gmail.com>
Message-ID: <CAJKOXPdAhyAE96LmzV7TB1YTyNcN7Eh65Xb9caanXA-52Gskvg@mail.gmail.com>
Subject: Re: [RFC PATCH 01/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init()
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_025626_240369_05F9BC53 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, Seung Woo Kim <sw0312.kim@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, myungjoo.ham@samsung.com,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAzMSBKdWwgMjAxOSBhdCAxNTowMCwgQXJ0dXIgxZp3aWdvxYQgPGEuc3dpZ29uQHBh
cnRuZXIuc2Ftc3VuZy5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBXZWQsIDIwMTktMDctMjQg
YXQgMjE6MDcgKzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiBPbiBUdWUsIEp1
bCAyMywgMjAxOSBhdCAwMjoyMDowNlBNICswMjAwLCBBcnR1ciDFmndpZ2/FhCB3cm90ZToKPiA+
ID4gVGhpcyBwYXRjaCBhZGRzIGEgbmV3IHN0YXRpYyBmdW5jdGlvbiwgZXh5bm9zX2J1c19wcm9m
aWxlX2luaXQoKSwgZXh0cmFjdGVkCj4gPiA+IGZyb20gZXh5bm9zX2J1c19wcm9iZSgpLgo+ID4g
Pgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5lci5z
YW1zdW5nLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5j
IHwgMTA2ICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCj4gPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgNDYgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIGIvZHJpdmVycy9kZXZmcmVx
L2V4eW5vcy1idXMuYwo+ID4gPiBpbmRleCBkOWYzNzc5MTJjMTAuLmQ4ZjFlZmFmMmQ0OSAxMDA2
NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+ID4gPiArKysgYi9k
cml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gPiA+IEBAIC0zNzIsMTIgKzM3Miw2OSBAQCBz
dGF0aWMgaW50IGV4eW5vc19idXNfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiA+
ID4gICAgIHJldHVybiByZXQ7Cj4gPiA+ICB9Cj4gPiA+Cj4gPiA+ICtzdGF0aWMgaW50IGV4eW5v
c19idXNfcHJvZmlsZV9pbml0KHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZGV2ZnJlcV9kZXZfcHJvZmlsZSAqcHJvZmls
ZSkKPiA+ID4gK3sKPiA+ID4gKyAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2Owo+ID4g
PiArICAgc3RydWN0IGRldmZyZXFfc2ltcGxlX29uZGVtYW5kX2RhdGEgKm9uZGVtYW5kX2RhdGE7
Cj4gPiA+ICsgICBpbnQgcmV0Owo+ID4gPiArCj4gPiA+ICsgICAvKiBJbml0aWFsaXplIHRoZSBz
dHJ1Y3QgcHJvZmlsZSBhbmQgZ292ZXJub3IgZGF0YSBmb3IgcGFyZW50IGRldmljZSAqLwo+ID4g
PiArICAgcHJvZmlsZS0+cG9sbGluZ19tcyA9IDUwOwo+ID4gPiArICAgcHJvZmlsZS0+dGFyZ2V0
ID0gZXh5bm9zX2J1c190YXJnZXQ7Cj4gPiA+ICsgICBwcm9maWxlLT5nZXRfZGV2X3N0YXR1cyA9
IGV4eW5vc19idXNfZ2V0X2Rldl9zdGF0dXM7Cj4gPiA+ICsgICBwcm9maWxlLT5leGl0ID0gZXh5
bm9zX2J1c19leGl0Owo+ID4gPiArCj4gPiA+ICsgICBvbmRlbWFuZF9kYXRhID0gZGV2bV9remFs
bG9jKGRldiwgc2l6ZW9mKCpvbmRlbWFuZF9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4gPiA+ICsgICBp
ZiAoIW9uZGVtYW5kX2RhdGEpIHsKPiA+ID4gKyAgICAgICAgICAgcmV0ID0gLUVOT01FTTsKPiA+
ID4gKyAgICAgICAgICAgZ290byBlcnI7Cj4gPgo+ID4gSnVzdCByZXR1cm4gcHJvcGVyIGVycm9y
IGNvZGUuIExlc3MgbGluZXMsIG9idmlvdXMgY29kZSBzaW5jZSB5b3UgZG8gbm90Cj4gPiBoYXZl
IGFueSBjbGVhbnVwIGluIGVycm9yIHBhdGguCj4KPiBJIHdhcyBhZHZpc2VkIHRvIGF2b2lkIG1v
ZGlmeWluZyBjb2RlIGJlaW5nIG1vdmVkIChpbiBvbmUgcGF0Y2gpLiBJIGRvIG1ha2UKPiBjaGFu
Z2VzIGluIHRoZXNlIHBsYWNlcyBpbiBwYXRjaCAwNC8xMSwgaS5lLiBjaGFuZ2UgdGhlIG9yaWdp
bmFsIGxhYmVsICdlcnInIHRvCj4gJ291dCcuIFdoYXQncyB5b3VyIG9waW5pb24gb24gbWFraW5n
IHRoZSBwcm9wb3NlZCBjaGFuZ2VzIHRvIHBhdGNoZXMgMDEgYW5kIDAyCj4gKHMvZ290byBlcnIv
cmV0dXJuIHJldC8pIGluIHBhdGNoIDA0IGluc3RlYWQ/CgpZZXMsIHlvdSdyZSByaWdodC4gSSBh
bHNvIHByZWZlciBub3QgdG8gdG91Y2ggbW92ZWQgY29kZS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6
dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
