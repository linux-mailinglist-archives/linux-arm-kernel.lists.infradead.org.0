Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0926A1346E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 22:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQEDLUHqf1B8iScMzSeZnAiY6/PlKz4zg2jBtEQV7Uo=; b=j1DPuOyJ0ffLvW
	MGi4ZeFRNiS4REe3IbG+b6SAzUy+bmlH00xVMQWg9m+CmjFOtJbsXIGe/W0Y8HN9UPuu6NV1AszFe
	/JcyKxY++MeAp21x1KFpBBw9bEiErB9Ji8mspSH8oEt8oJht+c/4CNxxiy0uOqM4VHlxOzw10mnsr
	uhskCTPKWLGrxY3ckTS21KUltr2R+7MdeQfSC+AwkYhnyHbSB0sYcfekX85cJPLGuMpl+IVlxEdYV
	coNP0E72RZzMTn79N+BwHz2Cdm4uTtj1zAMtSIkQ1+v1eS9N+o5b2M1s0CWq8y7BPzT52yrYro1dx
	MZGr4KlAJEgX4TUmf0aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMeqZ-00010Y-NP; Fri, 03 May 2019 20:31:55 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMeqS-0000ze-Rd
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 20:31:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id l2so9339501wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 13:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=gBhXA59o/c781Pvshp85zebQ9EEVjzWDcnY6gG7a87w=;
 b=PHZaSRtmiNGiwAV8S5F9JHdFSjGfqFg+LkAMtDezkRzbYSNAWuCt2quelw2tF58iYn
 ZnkYxYDCTR2y/V/HCbC4pvBDdi6+wGfkLGt7hjF+dfAbZw1kejNypPKYgACjPJHvbGBi
 fhTOV4gXgU2vbqSoVbRX9MFuBnLa/GM9RiiORPYy48QIOpvdxH2BBGeVIifSsnD0i+Gw
 oZ066xHQUmFveUxz45pU8jhDmlxAs6S2T5e8SNWOoErxp9eedLWEJI88yKrWXDvzQzMZ
 O05uJwvayXvR8xpqrh1jJ9RnKrM2noeuL6Ct8b1J4V+VEBu4NuaWCrgBAI45SfeMUyYY
 pISQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gBhXA59o/c781Pvshp85zebQ9EEVjzWDcnY6gG7a87w=;
 b=gYJqz7ZdRtlHf693o+ge9aQaYw2prSvA8fAwYsXaQTdMg2/WW3bvCIYmpA9Yfx3zC/
 /DT8gNmq/amZNsFGko/DS8AmE0qNGEL6GAR/Uw+63aEzQn+rTT/+6UuOTKnFSR2B1LEo
 incT2Z3bD6qvYPEKUZSbh/xKI/yMsoSzDqohCYyHHq+ikoiZYbdl/hsSGBjF0lDKeVts
 ZnFRs+fFIgdUy8GyHtkNeJFQHDRnEgyw0ETKcOjY//2p+BcKBrMSKDX79PcH0qKaQxCy
 P8vl7kCMUqGJlkaQWpJ2acccoPdE+8GERCfHMSY2/Aswk7tru7IJOywQUc1OmjkGdtUa
 COwA==
X-Gm-Message-State: APjAAAVW4iOxOyvfKHWQCX371J/Lt3obgA3FmQsZ5wrueQ1wO7LoLoE0
 mXwsiHb820ot9zIzNuI6QTcbYQ==
X-Google-Smtp-Source: APXvYqzTCgSlT6YwMdtVV+8KbloZwQiWOo5rQ3sEqs15f5DRkzOvlRByLiiJKVdhu2CyhmXoGKBCnw==
X-Received: by 2002:adf:9cc7:: with SMTP id h7mr8037426wre.259.1556915504762; 
 Fri, 03 May 2019 13:31:44 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id i30sm4225043wrc.8.2019.05.03.13.31.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 13:31:43 -0700 (PDT)
Subject: Re: [PATCH 7/7] clocksource/arm_arch_timer: Use
 arch_timer_read_counter to access stable counters
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190408154907.223536-1-marc.zyngier@arm.com>
 <20190408154907.223536-8-marc.zyngier@arm.com>
 <2a60a031-1eab-2d5e-89ff-b5d516545eeb@linaro.org>
 <bbe9b8c1-132f-bbfa-e3d0-ad10c4165ad7@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <2f3417f6-95e5-f27a-693d-5aa460fb152d@linaro.org>
Date: Fri, 3 May 2019 22:31:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <bbe9b8c1-132f-bbfa-e3d0-ad10c4165ad7@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_133148_908998_07AA44E0 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Russell King <linux@arm.linux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 Valentin Schneider <valentin.schneider@arm.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIE1hcmMsCgpPbiAzMC8wNC8yMDE5IDE3OjI3LCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gT24g
MTUvMDQvMjAxOSAxMzoxNiwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+IE9uIDA4LzA0LzIwMTkg
MTc6NDksIE1hcmMgWnluZ2llciB3cm90ZToKPj4+IEluc3RlYWQgb2YgYWx3YXlzIGdvaW5nIHZp
YSBhcmNoX2NvdW50ZXJfZ2V0X2NudHZjdF9zdGFibGUgdG8KPj4+IGFjY2VzcyB0aGUgY291bnRl
ciB3b3JrYXJvdW5kLCBsZXQncyBoYXZlIGFyY2hfdGltZXJfcmVhZF9jb3VudGVyCj4+PiB0byBw
b2ludCB0byB0aGUgcmlnaHQgbWV0aG9kLgo+Pj4KPj4+IEZvciB0aGF0LCB3ZSBuZWVkIHRvIHRy
YWNrIHdoZXRoZXIgYW55IENQVSBpbiB0aGUgc3lzdGVtIGhhcyBhCj4+PiB3b3JrYXJvdW5kIGZv
ciB0aGUgY291bnRlci4gVGhpcyBpcyBkb25lIGJ5IGhhdmluZyBhbiBhdG9taWMKPj4+IHZhcmlh
YmxlIHRyYWNraW5nIHRoaXMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogTWFyYyBaeW5naWVyIDxt
YXJjLnp5bmdpZXJAYXJtLmNvbT4KPj4+IC0tLQo+Pgo+PiBbIC4uLiBdCj4+Cj4+PiArCj4+PiAg
LyoKPj4+ICAgKiBEZWZhdWx0IHRvIGNwMTUgYmFzZWQgYWNjZXNzIGJlY2F1c2UgYXJtNjQgdXNl
cyB0aGlzIGZ1bmN0aW9uIGZvcgo+Pj4gICAqIHNjaGVkX2Nsb2NrKCkgYmVmb3JlIERUIGlzIHBy
b2JlZCBhbmQgdGhlIGNwMTUgbWV0aG9kIGlzIGd1YXJhbnRlZWQKPj4+IEBAIC0zNzIsNiArMzky
LDcgQEAgc3RhdGljIHUzMiBub3RyYWNlIHN1bjUwaV9hNjRfcmVhZF9jbnR2X3R2YWxfZWwwKHZv
aWQpCj4+PiAgREVGSU5FX1BFUl9DUFUoY29uc3Qgc3RydWN0IGFyY2hfdGltZXJfZXJyYXR1bV93
b3JrYXJvdW5kICosIHRpbWVyX3Vuc3RhYmxlX2NvdW50ZXJfd29ya2Fyb3VuZCk7Cj4+PiAgRVhQ
T1JUX1NZTUJPTF9HUEwodGltZXJfdW5zdGFibGVfY291bnRlcl93b3JrYXJvdW5kKTsKPj4+ICAK
Pj4+ICtzdGF0aWMgYXRvbWljX3QgdGltZXJfdW5zdGFibGVfY291bnRlcl93b3JrYXJvdW5kX2lu
X3VzZSA9IEFUT01JQ19JTklUKDApOwo+Pgo+PiBXb3VsZG4ndCBtYWtlIHNlbnNlIHRvIFJFQURf
T05DRSAvIFdSSVRFX09OQ0UgaW5zdGVhZCBvZiB1c2luZyBhbiBhdG9taWM/Cj4gCj4gSSBkb24n
dCB0aGluayAqX09OQ0Ugc2F5cyBhbnl0aGluZyBhYm91dCB0aGUgYXRvbWljaXR5IG9mIHRoZSBh
Y2Nlc3MuIEl0Cj4gb25seSBpbnN0cnVjdCB0aGUgY29tcGlsZXIgdGhhdCB0aGlzIHNob3VsZCBv
bmx5IGJlIGFjY2Vzc2VkIG9uY2UsIGFuZAo+IG5vdCByZWxvYWRlZC9yZXdyaXR0ZW4uIEluIHRo
aXMgY2FzZSwgV1JJVEVfT05DRSgpIHdvdWxkIHdvcmsganVzdCBhcwo+IHdlbGwsIGJ1dCBJIGZl
ZWwgdGhhdCBzZXR0aW5nIHRoZSBleHBlY3RhdGlvbnMgZG8gbWF0dGVyLgo+IAo+IEkgYWxzbyBo
YWQgYSB2YWd1ZSBpZGVhIHRvIHVzZSB0aGlzIGFzIGEgcmVmY291bnQgdG8gZHJvcCB0aGUKPiB3
b3JrYXJvdW5kcyBhcyBDUFVzIGdldCBob3RwbHVnZ2VkIG9mZiwgaW4gd2hpY2ggY2FzZSB3ZSdk
IG5lZWQgdGhlIFJNVwo+IG9wZXJhdGlvbnMgdG8gYmUgYXRvbWljLgo+IAo+IEFueXdheSwgSSdt
IG5vdCBoZWxsIGJlbnQgb24gdGhpcy4gSWYgeW91IGZ1bmRhbWVudGFsbHkgZGlzYWdyZWUgd2l0
aCBtZQo+IEknbGwgY2hhbmdlIGl0LgoKQXMgeW91IGFyZSBwbGFubmluZyB0byBleHRlbmQgaXRz
IHVzYWdlIGZvciByZWZjb3VudGluZyBpbiB0aGUgaG90cGx1ZwpwYXRoLCBJIHRoaW5rIGl0IGlz
IGZpbmUuCgpUaGFua3MKCiAgLS0gRGFuaWVsCgoKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5v
cmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZv
bGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNl
Ym9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6
Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
