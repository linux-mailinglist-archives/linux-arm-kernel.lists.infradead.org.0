Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2C21A15A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 21:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pM9xQzFrk394I2CrYx+H2Xd5qlrxkEHruuDpeWD5sys=; b=AKvZuZsI9872DN
	9dC8yq/LCtXvo7mnXUNZ0QR8srnqC8h8GaS4p3l37sZyMNTlbl7ZyEYqX0yScT2wcLuHyzVWnEaCG
	O4MwkoJ650oDkf0w8dNDJv0QX/EkW82pBoz09wSm8MXLSaQVRoSorveo/hXRXEqa6tlTkQNuT5eYU
	dqZ6kecYAXKPMCuD2u83Ww+dCCXE2mGjg1pCVwGv819Y57sGyotTrYEVBifdcKhO3dYR24lh5SYRA
	ZmLPNp5nGP4GAy5Az4pZ6vzFCLxEPX+l7qsNcgsQC++sUNasn3qUcTeXgI9T6V4eegCO6vUrlgi7j
	YJWIKgtIU6cbrAHMUBhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLtdx-0008Hp-61; Tue, 07 Apr 2020 19:12:17 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtdk-0008HH-HQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 19:12:05 +0000
Received: by mail-lf1-x144.google.com with SMTP id z23so3253163lfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 12:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=CF9EVkMcPXMLKckuhEi8Rm3sQX799rg96bk7BbCR0Pw=;
 b=AtJC2mfTzvxyg4EVv/8nFSUIkD0xfX8P59C1zdFpCOgqzoywoKw2zMD4zhktYPYzKP
 rgAUBhwYTy5OrRTuShl3I0k6Csj3jS3zDSmqLLxCVWRa4619jWf6d8lxxBWtig+gvHLu
 8cw/rgZKgVLCqEpbMSxf+8LaEXej4zdu3ZLHKGTd1ItZtLqF1OetnaiVS4c37ZV7kPhE
 TXCCxDGJeqCzjrSoI6SSFyvBtYlURGmmE5lUP9skRgoIXMJmijiT7yIKwmDoD/cjeo0X
 kTEhHNohnTnnG3ran3l7Rmt+YZmBQspA6ak6+xyrUjxVMRy3tQqqd6oeyx22IMv9jsNs
 mpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CF9EVkMcPXMLKckuhEi8Rm3sQX799rg96bk7BbCR0Pw=;
 b=WUGVwU1Hmx+A38p2JJml4lKXxZPCMoPAjOd3ZM+6LmIH4esKxpa3+nzXEbP2Z6k3hU
 poChE5ilCcYGc7b8P21IMG+ab76ofhe8b/8J9k7rVMh9+s8BJs3zOQJlW1bFuajQN+nj
 umQ0nPYtlmSc/0z72AUX/ARpuHkmYI8NFiHmTKV95Wy47DCmDfPsTyIGxpWYUBLJ2JHT
 biQ3irUwTPjC5UsPh2MfVK/Y9nRpKmDCI6ZpuzFu47h+3CopfdH0aHNYAlTHCR88Ef4p
 +Ex+pp1nlbGHWIO4cxOMcVVDZQ4JAJkDBeNIDDkUL+AKzoDOXCCPGIWGZ/5RI0zVJogQ
 w0Cw==
X-Gm-Message-State: AGi0PuazIgtbnSLug/JpQM9FIxPNgtFlGZVZydb+2+nZk97JRM7rda2H
 XGzX3prDNQM5aj0DpEjV3mw=
X-Google-Smtp-Source: APiQypKLhUCx0eZnDHj52JEjnwmcfs/bE/1CLscRFZDkrSrz/iXzWyI75wF3JRRIMi8u5Jgbyvys6g==
X-Received: by 2002:ac2:4554:: with SMTP id j20mr2376490lfm.91.1586286722428; 
 Tue, 07 Apr 2020 12:12:02 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id 203sm12202499ljf.65.2020.04.07.12.12.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Apr 2020 12:12:01 -0700 (PDT)
Subject: Re: [TEGRA194_CPUFREQ Patch v2 2/3] cpufreq: Add Tegra194 cpufreq
 driver
To: sumitg <sumitg@nvidia.com>, rjw@rjwysocki.net, viresh.kumar@linaro.org,
 catalin.marinas@arm.com, will@kernel.org, thierry.reding@gmail.com,
 jonathanh@nvidia.com, talho@nvidia.com, linux-pm@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
 <1586028547-14993-3-git-send-email-sumitg@nvidia.com>
 <67f9feb1-ba51-f1ac-b6eb-4587924d0748@gmail.com>
 <538ddcf4-b760-a342-eab6-5a61c9bd860a@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <3009a636-0c85-c867-6dcb-2deb1a610a00@gmail.com>
Date: Tue, 7 Apr 2020 22:12:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <538ddcf4-b760-a342-eab6-5a61c9bd860a@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_121204_577962_14F12B80 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, mperttunen@nvidia.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDcuMDQuMjAyMCAyMTo1NSwgc3VtaXRnINC/0LjRiNC10YI6Ci4uLgo+Pj4gKyAqIFJldHVybnMg
ZnJlcSBpbiBLSHogb24gc3VjY2VzcywgMCBpZiBjcHUgaXMgb2ZmbGluZQo+Pgo+PiBJIGRvbid0
IHNlZSBhbnkgY2hlY2tzIGluIHRoZSBjb2RlIGFib3V0IHdoZXRoZXIgQ1BVIGlzIG9mZmxpbmUu
Cj4+Cj4+IEdvb2dsaW5nIGZvciAicXVldWVfd29ya19vbiBvZmZsaW5lIGNwdSIgc3VnZ2VzdHMg
dGhhdCB0aGlzIGZ1bmN0aW9uCj4+IHNob3VsZCBoYW5nLgo+Pgo+IFRyaWVkIHRoaXMgYW5kIGRp
ZG4ndCBnZXQgY3Jhc2ggb3IgaGFuZy4KPiBzaG93X2NwdWluZm9fY3VyX2ZyZXEoKSByZXR1cm5z
ICI8dW5rbm93bj4iIHZhbHVlIG9uIHJlYWRpbmcgZnJlcXVlbmN5Cj4gZnJvbSBhIGNsdXN0ZXIg
aGF2aW5nIGJvdGggaXQncyBjb3JlcyBvZmZsaW5lLgo+IElmIG9ubHkgb25lIGNwdSBpcyBvZmZs
aW5lLCB0aGVuIGZyZXF1ZW5jeSBvZiBvdGhlciBvbmxpbmUgY3B1IHdoaWNoIGlzCj4gbWFuYWdp
bmcgdGhlIHBvbGljeSBvZiB0aGF0IGNsdXN0ZXIgaXMgcmV0dXJuZWQuCj4gSGF2ZSBzdGlsbCBh
ZGRlZCBiZWxvdyBjaGVjayBhcyBndWFyZCBpbiBnZXR8c2V0KCkgZnJlcSBjYWxscy4KPiDCoMKg
wqDCoGlmICghY3B1X29ubGluZShjcHUpKQo+IMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFM
Owo+IFRoYW5reW91IGZvciB0aGUgaW5wdXQuCgpJZiBDUFVGcmVxIGNvcmUgdGFrZXMgY2FyZSBv
ZiB0YWtpbmcgaW50byBhY2NvdW50IHRoZSBvZmZsaW5lIENQVSwgdGhlbgp0aGUgY2hlY2sgaXNu
J3QgbmVlZGVkLiBJdCBhbHNvIHdvdWxkbid0IGJlIGVub3VnaCBpZiB0aGVyZSB3YXMgYQpwcm9i
bGVtIGhlcmUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
