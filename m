Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A34AB1DEC1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPo75P+ZNLCPSzmGxG4yvWI9hSP2Xw2K6vBgZJfutiE=; b=Z9VkaTdk9ihrfM
	p7nl7qzZ1vuBTXGNczzwLPznc+6qZmVjND8GqvUUTEC1NR9uesE/0rhuKun/ODHoqZ4AyoS0Fc+kh
	v0/a+8RaP7bQOUyVRDke/DUPez1wLvAxPo7SHdwNK9Q0UagIX8HQdmEzY28PG1kPhSN1w2wdHo+yU
	DiAMm2ZnngMOd804ShdjTPWnM1YdkG579v6fWPOu2374b1hdB85TFGvOBzWVpDCxWUHeghqQwc7Ja
	GGyQO671+FlJgJPPbDSneOHEXARsTW0Fo1LQ5ZM1Fj3/KmLpzd1kANiP77iqMd53xoAbMjkKCRYiK
	RxwqfkolffupJZ7t7w6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9ju-0007IC-70; Fri, 22 May 2020 15:37:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9j6-0006jO-KG
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:36:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so3244289wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 08:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qO//5STrxgCU0oKi08sL7FpWxjHQ0iLeOfPsLNCOOZ8=;
 b=X4mrlj2e0WLmcGe/Ul79eRybo7mfJ/zxXq3t98QPMOzuRrsCG1ErAiK5oRaplnTt/N
 NkqskvRtT/mvacSW80iJRo0WfcusZWQTYCRG8TfxDfPWmaVhSadqf/xR371SrYkZN5vE
 B2F3gLC2M5zEsFtS2KK52DicNOVGvFFL6dJp+F3PUPi1bnJNYA1Bxfqdn2CjmB93Kn0t
 olyDt7OUcrTj0Onr9GqFPtAPWTLF40VCyRzqSWbCTKpkqCmkbu7jbHLsUJMdMhlJFZi1
 5a4fSy+nSmJVL/UQ/H+Ch5lp8wjo0J6ttaahWUUNBKeMa8ZVV5+R1MK/4M2wxOSUsV5Y
 K6Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qO//5STrxgCU0oKi08sL7FpWxjHQ0iLeOfPsLNCOOZ8=;
 b=evWb59ai+rsTWpQIV+479j5//ScSD2XzZZpEzt+rx7Q76Mw3p/pKMsuScoyOPqjyp/
 rWmjyxqnV2lP6M+koM3TZMBBi+FFTkNSiBHVWO4QY6S5GYZliM5e5M2wD3JkqCUrGM/v
 qE5PMMxYImRP3oibK+vhGVEZYNxkIzqRJoYbMCjany3LqFPuyn8FzBkIlm1Zon+IrKxF
 owhDkeCFNHBG7cv09ktSPQp0ZrAagW5ONpg7STSpcO92gtj9Nkq6Q3+PHRKR/xMDDZ63
 tcidsEgVrBxzkQ5s8og606xuAyIC1Iso+5S5FnYcZyafiTtNXL18DY4M7y5mpc1ctmvZ
 COJw==
X-Gm-Message-State: AOAM533DOfssvyDc4phhHdqnLoIHekJeIlpxxmJcTqQw4kGYOeQw5+Ii
 GI8yPIdKE8YsimvPWf7FHZPPpA==
X-Google-Smtp-Source: ABdhPJw+HNRTr+VjCPf0xBBfdVoukyQWtW53930UGkPXuO6c31SE4S/MMuWxdD4uhCH7Xi53i4AiRQ==
X-Received: by 2002:a1c:6706:: with SMTP id b6mr13779520wmc.54.1590161806908; 
 Fri, 22 May 2020 08:36:46 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:a82f:eaec:3c49:875a?
 ([2a01:e34:ed2f:f020:a82f:eaec:3c49:875a])
 by smtp.googlemail.com with ESMTPSA id s19sm6109825wmj.21.2020.05.22.08.36.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 May 2020 08:36:46 -0700 (PDT)
Subject: Re: [v4,7/7] thermal: mediatek: use spinlock to protect PTPCORESEL
To: Michael Kao <michael.kao@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, hsinyi@chromium.org,
 linux-pm@vger.kernel.org, srv_heupstream@mediatek.com
References: <20200323121537.22697-1-michael.kao@mediatek.com>
 <20200323121537.22697-8-michael.kao@mediatek.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <1afbf412-fbeb-8abe-66d8-bd7ac4e9dd83@linaro.org>
Date: Fri, 22 May 2020 17:36:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200323121537.22697-8-michael.kao@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_083648_717951_0482322A 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjMvMDMvMjAyMCAxMzoxNSwgTWljaGFlbCBLYW8gd3JvdGU6Cj4gRnJvbTogIm1pY2hhZWwu
a2FvIiA8bWljaGFlbC5rYW9AbWVkaWF0ZWsuY29tPgo+IAo+IFRoZSBkcml2ZXIgb2YgdGhlcm1h
bCBhbmQgc3ZzIHdpbGwgdXNlIHRoZQo+IHNhbWUgcmVnaXN0ZXIgZm9yIHRoZSBwcm9qZWN0IHdo
aWNoIHNob3VsZCBzZWxlY3QKPiBiYW5rIGJlZm9yZSByZWFkaW5nIHNlbnNvciB2YWx1ZS4KCkhl
cmUgdGhlcmUgaXMgYSBkZXNpZ24gcHJvYmxlbSBBRkFJQ1QuIFRoZSBzZW5zb3Igc2hvdWxkIG5v
dCBiZSB1c2luZwpleHRlcm5hbCBsb2Nrcy4KCgoKPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIEth
byA8bWljaGFlbC5rYW9AbWVkaWF0ZWsuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvbXRr
X3RoZXJtYWwuYyB8IDkgKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9tdGtf
dGhlcm1hbC5jIGIvZHJpdmVycy90aGVybWFsL210a190aGVybWFsLmMKPiBpbmRleCA5ZWFjYTQz
MjkyMGUuLjU5NGFkNGYwZjhjZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvbXRrX3Ro
ZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9tdGtfdGhlcm1hbC5jCj4gQEAgLTIyLDYg
KzIyLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L3RoZXJtYWwuaD4KPiAgI2luY2x1ZGUgPGxpbnV4
L3Jlc2V0Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ICsjaW5jbHVkZSA8bGludXgv
cG93ZXIvbXRrX3N2cy5oPgo+ICAKPiAgLyogQVVYQURDIFJlZ2lzdGVycyAqLwo+ICAjZGVmaW5l
IEFVWEFEQ19DT04xX1NFVF9WCTB4MDA4Cj4gQEAgLTI2Miw3ICsyNjMsNyBAQCBzdHJ1Y3QgbXRr
X3RoZXJtYWwgewo+ICAJc3RydWN0IGNsayAqY2xrX3BlcmlfdGhlcm07Cj4gIAlzdHJ1Y3QgY2xr
ICpjbGtfYXV4YWRjOwo+ICAJLyogbG9jazogZm9yIGdldHRpbmcgYW5kIHB1dHRpbmcgYmFua3Mg
Ki8KPiAtCXN0cnVjdCBtdXRleCBsb2NrOwo+ICsJdW5zaWduZWQgbG9uZyBmbGFnczsKPiAgCj4g
IAkvKiBDYWxpYnJhdGlvbiB2YWx1ZXMgKi8KPiAgCXMzMiBhZGNfZ2U7Cj4gQEAgLTU2MSw3ICs1
NjIsNyBAQCBzdGF0aWMgdm9pZCBtdGtfdGhlcm1hbF9nZXRfYmFuayhzdHJ1Y3QgbXRrX3RoZXJt
YWxfYmFuayAqYmFuaykKPiAgCXUzMiB2YWw7Cj4gIAo+ICAJaWYgKG10LT5jb25mLT5uZWVkX3N3
aXRjaF9iYW5rKSB7Cj4gLQkJbXV0ZXhfbG9jaygmbXQtPmxvY2spOwo+ICsJCW10LT5mbGFncyA9
IGNsYWltX210a19zdnNfbG9jaygpOwo+ICAKPiAgCQl2YWwgPSByZWFkbChtdC0+dGhlcm1hbF9i
YXNlICsgUFRQQ09SRVNFTCk7Cj4gIAkJdmFsICY9IH4weGY7Cj4gQEAgLTU4MSw3ICs1ODIsNyBA
QCBzdGF0aWMgdm9pZCBtdGtfdGhlcm1hbF9wdXRfYmFuayhzdHJ1Y3QgbXRrX3RoZXJtYWxfYmFu
ayAqYmFuaykKPiAgCXN0cnVjdCBtdGtfdGhlcm1hbCAqbXQgPSBiYW5rLT5tdDsKPiAgCj4gIAlp
ZiAobXQtPmNvbmYtPm5lZWRfc3dpdGNoX2JhbmspCj4gLQkJbXV0ZXhfdW5sb2NrKCZtdC0+bG9j
ayk7Cj4gKwkJcmVsZWFzZV9tdGtfc3ZzX2xvY2sobXQtPmZsYWdzKTsKPiAgfQo+ICAKPiAgLyoq
Cj4gQEAgLTkzOCw4ICs5MzksNiBAQCBzdGF0aWMgaW50IG10a190aGVybWFsX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gIAlpZiAocmV0KQo+ICAJCXJldHVybiByZXQ7Cj4g
IAo+IC0JbXV0ZXhfaW5pdCgmbXQtPmxvY2spOwo+IC0KPiAgCW10LT5kZXYgPSAmcGRldi0+ZGV2
Owo+ICAKPiAgCWF1eGFkYyA9IG9mX3BhcnNlX3BoYW5kbGUobnAsICJtZWRpYXRlayxhdXhhZGMi
LCAwKTsKPiAKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8v
d3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVy
LmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFy
by1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
