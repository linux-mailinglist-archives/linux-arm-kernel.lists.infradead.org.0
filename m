Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CD12FACE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:20:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBO44POUe5ENfOX3StgmCIGM1D7wPLgEYOTK/yPfIfY=; b=rxJ7SCXbbTaZyj
	pZdWuhs0g/V4S7RN7sKlyGDBN941H7Tv9G1tSfiZ8qyUrNQjoQDJB5Qx6S+NkJeGZE/Z1AkIer0uk
	UX9ZINOAEM56ugIIdKcNR76LG/MsP7iQitLy3EBUntN56/Jf0QAenISc2RzuJSm6L/cAq48imWlVJ
	+uz+Go+IhP5K3L7amAK5Srt8wvlmjfnTShMFbD+nUPHQvtuS4QZLE+8DrAZXSGDU55SAf6YwdN6l4
	oz25tQq8jVZ8ILtI+2Fl/93V3C4w61zh3GFHarySvZi9jXRKeX8l+X0kRcSFhOsQZ78ozjYJBCU4C
	USZUFduEl7UKeqMbWzIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJ6k-0003Ru-0q; Thu, 30 May 2019 11:20:30 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJ6c-0003RO-Pl
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 11:20:24 +0000
Received: by mail-lf1-x141.google.com with SMTP id m14so4680614lfp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 04:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=VekgKS2qzcKcSAxRPfpFghP7GZS0WUkLzmxFEC0aAfw=;
 b=i5Y/x+LaTL+31TC/zpG95n9Pxw2Ttz9M8CjsJwaFNoF8mqscNVhB8iZB8iasTK5+GJ
 R4vFDjRYOr01LtD8iq59BJZ1JgTLhSg26Mtbz4zaxOGirksWIbFAmXgd2v6lR/mhD3o9
 zlAxoRCMQsK/yqB7X5vxT0P0a65W0IDsrHLpQ16Xz3wgaym7he5ulnucdJpePFLK0N/q
 hD6oU9KRrBZUNxAJfkDkWQgYBEqWlkptHTXbKa7KX5AXLhShQBEsdNEFzpJNcJNhradN
 XTANkmB+vax7WVabB3JKEo80N+UkarcrfmoLt33gHMPPDy1e9THzG1e+sipTu9H3hHA6
 fblg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VekgKS2qzcKcSAxRPfpFghP7GZS0WUkLzmxFEC0aAfw=;
 b=oL7ifhdsD3NRshODnSEmj+IR5DCs5DiRYWOiyep2/uxScXxUr8vMYsPyWBRTKQWQIG
 2IAtXjS7hFCk7npmdMtOuu1bmq67blWBO6bdAMwRCsAymrG32UHSbcOjV0pKJSJckkk3
 pmWywRowuV0QJNPJ9bzxQPe8KNTyderUUjluAvLWsj083zBrvMPLAz7f19s9gg3YujXo
 5f82VjLQJoX10CElNFIX23CFeKYqTSo+NBPIXDw/3JoxBp3mGjpt+2YtULuNML0c6wIk
 8K9gNXH3BOqBONZiRIMkqSqyiawJtKTc3RvgOAIFgyPOwcTznpxgu2PGKvf6ywOPo1b2
 J+gw==
X-Gm-Message-State: APjAAAVOJMkAu1r1igupV22VisMlE/ybWL8FpXakmuEcM2NakXzdlgwI
 rMlvyjm45aexC9M66Wo/LvpgnY/X
X-Google-Smtp-Source: APXvYqxcrL5kdqSLjZhlD0FVQkH3bohM0sbHuwh/0mk3vsWwNIiZx41LWxTDWsUlDr10RgWDi82Mjw==
X-Received: by 2002:ac2:4908:: with SMTP id n8mr1767791lfi.10.1559215219998;
 Thu, 30 May 2019 04:20:19 -0700 (PDT)
Received: from [192.168.2.145] ([94.29.35.141])
 by smtp.googlemail.com with ESMTPSA id f30sm440648lfa.48.2019.05.30.04.20.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 04:20:19 -0700 (PDT)
Subject: Re: [PATCH V4 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-6-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <1838333d-bf58-1e06-7e4c-a64753075053@gmail.com>
Date: Thu, 30 May 2019 14:20:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190529082139.5581-6-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_042022_864960_A6C3F289 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjkuMDUuMjAxOSAxMToyMSwgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gVGhpcyBwYXRjaCBhZGRz
IHRoZSByZXF1aXJlZCBBUElzIGFuZCB2YXJpYWJsZXMgZm9yIHRoZSBFTUMgc2NhbGluZwo+IHNl
cXVlbmNlIGNvZGUgb24gVGVncmEyMTAuCj4gCj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgUGV0ZXIg
RGUgU2NocmlqdmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4gCj4gU2lnbmVkLW9mZi1i
eTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4gLS0tCj4gdjQ6Cj4gLSBmaXggdGhl
IEFQSSB3aXRoIGdlbmVyaWMgbmFtaW5nCgo+ICtleHRlcm4gY29uc3Qgc3RydWN0IGVtY190YWJs
ZV9yZWdpc3Rlcl9vZmZzZXQgcmVnX29mZjsKPiArZXh0ZXJuIHVuc2lnbmVkIGxvbmcgZHJhbV9v
dmVyX3RlbXBfc3RhdGU7Cj4gKwo+ICt2b2lkIGNjZmlmb193cml0ZWwoc3RydWN0IHRlZ3JhX2Vt
YyAqZW1jLCB1MzIgdmFsLCB1bnNpZ25lZCBsb25nIGFkZHIsCj4gKwkJICAgdTMyIGRlbGF5KTsK
PiArdTMyIGRpdl9vMyh1MzIgYSwgdTMyIGIpOwo+ICt2b2lkIGVtY193cml0ZWwoc3RydWN0IHRl
Z3JhX2VtYyAqZW1jLCB1MzIgdmFsLCB1bnNpZ25lZCBsb25nIG9mZnNldCk7Cj4gK3UzMiAgZW1j
X3JlYWRsKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywgdW5zaWduZWQgbG9uZyBvZmZzZXQpOwo+ICt2
b2lkIGVtY193cml0ZWxfcGVyX2NoKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywgdTMyIHZhbCwgaW50
IHR5cGUsCj4gKwkJICAgICAgIHVuc2lnbmVkIGxvbmcgb2Zmc2V0KTsKPiArdTMyICBlbWMxX3Jl
YWRsKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywgdW5zaWduZWQgbG9uZyBvZmZzZXQpOwo+ICsKPiAr
dm9pZCBlbWNfZG9fY2xvY2tfY2hhbmdlKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywgdTMyIGNsa3Ny
Yyk7Cj4gK3ZvaWQgZW1jX3NldF9zaGFkb3dfYnlwYXNzKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywg
aW50IHNldCk7Cj4gK3ZvaWQgZW1jX3RpbWluZ191cGRhdGUoc3RydWN0IHRlZ3JhX2VtYyAqZW1j
LCBpbnQgZHVhbF9jaGFuKTsKPiArdTMyIGVtY19nZXRfZGxsX3N0YXRlKHN0cnVjdCBlbWNfdGFi
bGUgKm5leHRfdGltaW5nKTsKPiArc3RydWN0IGVtY190YWJsZSAqZW1jX2dldF90aW1pbmdfZnJv
bV9mcmVxKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywKPiArCQkJCQkgICB1bnNpZ25lZCBsb25nIHJh
dGUpOwo+ICt2b2lkIGVtY19zZXRfb3Zlcl90ZW1wX3RpbWluZyhzdHJ1Y3QgdGVncmFfZW1jICpl
bWMsIHN0cnVjdCBlbWNfdGFibGUgKnRpbWluZywKPiArCQkJICAgICAgdW5zaWduZWQgbG9uZyBz
dGF0ZSk7Cj4gK2ludCBlbWNfd2FpdF9mb3JfdXBkYXRlKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywg
dTMyIHN0YXR1c19yZWcsIHUzMiBiaXRfbWFzaywKPiArCQkJYm9vbCB1cGRhdGVkX3N0YXRlLCBp
bnQgY2hhbik7CgpJdCB3b3VsZG4ndCBodXJ0IHRvIHByZXBlbmQgdGhlc2UgYWxsIHdpdGggInRl
Z3JhMjEwXyIuCgotLSAKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
