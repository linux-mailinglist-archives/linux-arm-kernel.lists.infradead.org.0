Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D0F137593
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:57:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUfI8531dud6fvd0IjeL9zhr3vmoeEc0YYClHo+JsJg=; b=XDvAKBantKIdh1
	RkuTYLGlF1+9m5j4zJ1vNzXU9JeJ7hF/XeeilTXnsFVbA1Hd4t5R6ERcGk/dH17GWNY++5e72hWrL
	Rlv9qmc4YVmDOFjFWVXgLOGeGxc82hcSMiVGu13kwYBZnWEF42lxBNGWXYJkMgdIgu1zzlAKb72sY
	p45j29b1dCPgxh0i1SkvmePhvO0YzAVRp84GQrAPvXaP52UNUlLK8HTV46w4fQJihtWaOxrro6uo4
	r4rD1Bo+SkJb5oeFaitKyqYQRIO2TzXAh0hO56nUSMRUZdBDoI4V+dqL2K2/imucCVIlvPldYs+iH
	5FVtP+7JkoX4u4kUnLmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipyX9-00047M-M3; Fri, 10 Jan 2020 17:57:19 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipyWj-0003tX-Jy
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:56:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so2876281wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 09:56:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pWYUX/rIlImD7rsO1y/Fxcqs9H8GpWqtY9umyIu0mlA=;
 b=t5auBYqx7BIfzi9yUxMzkN3chK+9WRYVUWGB1RuOaE53ZvvOp6PvzK/LQADefM6iqY
 zjFBDkP1z2e9hNhadhD9xKkC64xtd4RiCexQnMnNODSAy6okj8RrhivZaIqVfALrnwno
 GHqtY+LAdE4JSGuGdCKbqaCf8XJIjIuh7/rT/HzqecCXX+3bP/l3oqfn9nVtqRkAVdHT
 Yz+w6mH7uChOGYgxi6eMd4TZCJ5wm2Au6YWCv8E7xbIK6ohwmo1Ww66PAZp69Vi+TMcy
 A1dkFjwlgMq7HtiPILsTbkZiCfDdysEfbAkItpfqP3nit7HuBs7xknDWEWH6IZw/hFXi
 NDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=pWYUX/rIlImD7rsO1y/Fxcqs9H8GpWqtY9umyIu0mlA=;
 b=ZmVaE4z7UtnA1KhakoKtYI2eOjbMo0sZO9klcYRa3M2Ora0AhL35YLpmJwidOk0yMv
 ftXnfk3z5rwh1HkdG6IzdXuBpVRYabQlI40VpxDI2Y3Pq3ngXVtafh1GhmB2qxsq6DV2
 /0iYACdc4NiXYjWBWMK/H/9u2XvsVHKE5RAIvkPRYEYMb5lOX/b8AEqGdPUcOj3fVbk4
 DOZqWu/gy+72HHlCoK7ro8W62km2SLl+kQCl9aI1tOkj66Y7qwwDSAo8y1ANk8e8azpR
 PlZWcmP0BoFJF69efypJUKAd5boDTdMIMZA86PArIXqLSa+sEcyzM5lAI9APeOoiK9ug
 eysA==
X-Gm-Message-State: APjAAAWUqRZmHn3o9ZHljHAawK4+XUo71wT3Q1H6ShFzzJQYSb9/uX1L
 PInpnMPSHd020dI4K9Coix6GAw==
X-Google-Smtp-Source: APXvYqyKYBw9hPIf40TET6/kCP16hQOW7kdNz7FwOxVZHMyd3YF991WeU+t1cylJiNSOu/06IA/cwQ==
X-Received: by 2002:a7b:c757:: with SMTP id w23mr5299579wmk.166.1578679008827; 
 Fri, 10 Jan 2020 09:56:48 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:a10f:f166:3981:1da4?
 ([2a01:e34:ed2f:f020:a10f:f166:3981:1da4])
 by smtp.googlemail.com with ESMTPSA id s16sm3052420wrn.78.2020.01.10.09.56.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Jan 2020 09:56:48 -0800 (PST)
Subject: Re: [PATCH v3 1/3] clocksource: davinci: only enable clockevents once
 tim34 is initialized
To: Bartosz Golaszewski <brgl@bgdev.pl>, Sekhar Nori <nsekhar@ti.com>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
References: <20200110171643.18578-1-brgl@bgdev.pl>
 <20200110171643.18578-2-brgl@bgdev.pl>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <7be95251-7e26-6090-4770-6e4dbebfadd2@linaro.org>
Date: Fri, 10 Jan 2020 18:56:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200110171643.18578-2-brgl@bgdev.pl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_095653_848787_332DFC52 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTAvMDEvMjAyMCAxODoxNiwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBGcm9tOiBC
YXJ0b3N6IEdvbGFzemV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgo+IAo+IFRoZSBE
TTM2NSBwbGF0Zm9ybSBoYXMgYSBzdHJhbmdlIHF1aXJrIChvbmx5IHByZXNlbnQgd2hlbiB1c2lu
ZyBhbmNpZW50Cj4gdS1ib290IC0gbWFpbmxpbmUgdS1ib290IHYyMDEzLjAxIGFuZCBsYXRlciB3
b3JrcyBmaW5lKSB3aGVyZSBpZiB3ZQo+IGVuYWJsZSB0aGUgc2Vjb25kIGhhbGYgb2YgdGhlIHRp
bWVyIGluIHBlcmlvZGljIG1vZGUgYmVmb3JlIHdlIGRvIGl0cwo+IGluaXRpYWxpemF0aW9uIC0g
dGhlIHRpbWUgd29uJ3Qgc3RhcnQgZmxvd2luZyBhbmQgd2UgY2FuJ3QgYm9vdC4KPiAKPiBXaGVu
IHVzaW5nIG1vcmUgcmVjZW50IHUtYm9vdCwgd2UgY2FuIGVuYWJsZSB0aGUgdGltZXIsIHRoZW4g
cmVpbml0aWFsaXplCj4gaXQgYW5kIGFsbCB3b3JrcyBmaW5lLgo+IAo+IFRvIHdvcmsgYXJvdW5k
IHRoaXMgaXNzdWUgb25seSBlbmFibGUgY2xvY2tldmVudHMgb25jZSB0aW0zNCBpcwo+IGluaXRp
YWxpemVkIGkuZS4gbW92ZSBjbG9ja2V2ZW50c19jb25maWdfYW5kX3JlZ2lzdGVyKCkgYmVsb3cg
dGltMzQKPiBpbml0aWFsaXphdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFz
emV3c2tpIDxiZ29sYXN6ZXdza2lAYmF5bGlicmUuY29tPgoKU2hhbGwgSSB0YWtlIGl0IHRocm91
Z2ggbXkgdHJlZT8KCj4gLS0tCj4gIGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItZGF2aW5jaS5j
IHwgOCArKysrLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWRhdmlu
Y2kuYyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItZGF2aW5jaS5jCj4gaW5kZXggNjI3NDVj
OTYyMDQ5Li5lNDIxOTQ2YTkxYzUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbG9ja3NvdXJjZS90
aW1lci1kYXZpbmNpLmMKPiArKysgYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLWRhdmluY2ku
Ywo+IEBAIC0zMDIsMTAgKzMwMiw2IEBAIGludCBfX2luaXQgZGF2aW5jaV90aW1lcl9yZWdpc3Rl
cihzdHJ1Y3QgY2xrICpjbGssCj4gIAkJcmV0dXJuIHJ2Owo+ICAJfQo+ICAKPiAtCWNsb2NrZXZl
bnRzX2NvbmZpZ19hbmRfcmVnaXN0ZXIoJmNsb2NrZXZlbnQtPmRldiwgdGlja19yYXRlLAo+IC0J
CQkJCURBVklOQ0lfVElNRVJfTUlOX0RFTFRBLAo+IC0JCQkJCURBVklOQ0lfVElNRVJfTUFYX0RF
TFRBKTsKPiAtCj4gIAlkYXZpbmNpX2Nsb2Nrc291cmNlLmRldi5yYXRpbmcgPSAzMDA7Cj4gIAlk
YXZpbmNpX2Nsb2Nrc291cmNlLmRldi5yZWFkID0gZGF2aW5jaV9jbG9ja3NvdXJjZV9yZWFkOwo+
ICAJZGF2aW5jaV9jbG9ja3NvdXJjZS5kZXYubWFzayA9Cj4gQEAgLTMyMyw2ICszMTksMTAgQEAg
aW50IF9faW5pdCBkYXZpbmNpX3RpbWVyX3JlZ2lzdGVyKHN0cnVjdCBjbGsgKmNsaywKPiAgCQlk
YXZpbmNpX2Nsb2Nrc291cmNlX2luaXRfdGltMzQoYmFzZSk7Cj4gIAl9Cj4gIAo+ICsJY2xvY2tl
dmVudHNfY29uZmlnX2FuZF9yZWdpc3RlcigmY2xvY2tldmVudC0+ZGV2LCB0aWNrX3JhdGUsCj4g
KwkJCQkJREFWSU5DSV9USU1FUl9NSU5fREVMVEEsCj4gKwkJCQkJREFWSU5DSV9USU1FUl9NQVhf
REVMVEEpOwo+ICsKPiAgCXJ2ID0gY2xvY2tzb3VyY2VfcmVnaXN0ZXJfaHooJmRhdmluY2lfY2xv
Y2tzb3VyY2UuZGV2LCB0aWNrX3JhdGUpOwo+ICAJaWYgKHJ2KSB7Cj4gIAkJcHJfZXJyKCJVbmFi
bGUgdG8gcmVnaXN0ZXIgY2xvY2tzb3VyY2UiKTsKPiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFy
by5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MK
CkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBG
YWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0
dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
