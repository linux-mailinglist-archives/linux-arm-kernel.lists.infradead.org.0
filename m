Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C363130CC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 12:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abUDOndUtn8FfkyD3U/dRv4lAIcXxnITn52fa5BvKII=; b=QW76hTs2RDJfPj
	9+aSz9O+uON5YkjW2yfNPiUhTcfO1Tv1CfDwzWsBuyZyauNCzHCrMuW4RLRXBnzh2X8Jz1Mli2DPP
	QLJ3G9OrGbb8dYG6X/iPRu0GDSrQGHg8YCLFW88Ap/FABLUlm1c3oJPAzYu4LX8u1ifdbjzxHFG1y
	9Mu3KPYxj2QDSsdUpNefy3siRFLrcFx0M07k+LqGAoNEGqUdSelQdxYAs3jxXOn+ntiuIb3knW9i5
	Xw2L9ltmBOU5g6g7xlKvmJpTaT2X5iUOxhq0zkTISYYfO456t39I1mg4r3WAhP/tKU5dId32ZnQ01
	pYcCW8Xk0dOSTubYmkUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWeyk-0001AG-MV; Fri, 31 May 2019 10:41:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeyc-00019r-NR
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 10:41:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id 7so5618796wmo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 03:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=CCV6H0J4djxS2ybDi+4bxoZfe0pRTfOel6V8NP7uZ/8=;
 b=k7Z8aWyOg5qssw5W9IK3zWh7hGpzdk8v0j7utVs7s92tsqUPbX5efVkdVZ1gVjDO7y
 juY80EVCo+pfv/9/eLN1Q8TVFJymB0M5NK9Ru/HHqGAf0UpUM2KMhFAyhpmwmH8EPgVW
 W2OjWavF6IMGR7FSxVonDjro7d429z4amUJB6NKL4+V/NQA/+OUr063yp8BwjrnhtgsQ
 ziOP3hiBsr/VZ+FaN5/n6RMwdlcAcykgHtvo4uQ8mPF9fxKIcJBcHTL72FgMhLYAeFb3
 EUJelc4Vwlm0I696Xvx0TaULAbQjLKs1+zKO9raRr0eQAFxhtRvAhsFnMj2Kc5HMqgfZ
 kN6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=CCV6H0J4djxS2ybDi+4bxoZfe0pRTfOel6V8NP7uZ/8=;
 b=AYIJCtnZF023wwqmb7xLppX5QLht7McgrfOYcQIaQ2fqUs6+ey6v8xtlSEIjmAp7gb
 W7oV4sqgn/5HGAuPqjwJOjv3TgE3T2rIKnWavmnzcYEPG9A2XdZ8vi1eLXkGoEhZ832A
 4ePkhOyXgc4h5lTr8ktveCNRRsQ2UhQbPicwaREEBolwAVSMVVxLtZ1PygL+8v/fw95p
 MPJXuwk8evsFqvO5ldAQxSawm5t1bI8Dt70Zn5RDsvTSXR1+l5HoYk4muJ0YUI6wwfe6
 wlCW8J3DmketB/xga2+2O8898u+pDR4oxiXk36rHVvfzEZBuY97frjvDDxivl2byXYJb
 oJUA==
X-Gm-Message-State: APjAAAUAeXLlcWZIsLEEJlmS4U9o+zd0Iju+hcuuTN0yxnWbOIx5oKG8
 ChRSgJHz6Ck19esjRqqRQyfwZA==
X-Google-Smtp-Source: APXvYqxoKdlFfTOqyTM0xdc/ZhoWxNgpFuKPctTRrqJcfir0qgmovgQouXM2gfQwTlvPgUfqTOwvUw==
X-Received: by 2002:a7b:c189:: with SMTP id y9mr5455773wmi.116.1559299292130; 
 Fri, 31 May 2019 03:41:32 -0700 (PDT)
Received: from [192.168.43.165] ([37.173.17.188])
 by smtp.googlemail.com with ESMTPSA id h90sm16140219wrh.15.2019.05.31.03.41.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 03:41:31 -0700 (PDT)
Subject: Re: [PATCH 2/5] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
To: Claudiu.Beznea@microchip.com, alexandre.belloni@bootlin.com
References: <1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com>
 <1552580772-8499-3-git-send-email-claudiu.beznea@microchip.com>
 <a738fce5-1108-34d7-d255-dfcb86f51c56@linaro.org>
 <20190408121141.GK7480@piout.net>
 <88ab46de-c3b6-6dd2-3fa2-f2d0075e969f@microchip.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <7267f37b-4f80-97e3-7a8e-bc1a9a28b995@linaro.org>
Date: Fri, 31 May 2019 12:41:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <88ab46de-c3b6-6dd2-3fa2-f2d0075e969f@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_034134_827101_8C1AEA00 
X-CRM114-Status: GOOD (  16.74  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ludovic.Desroches@microchip.com,
 robh+dt@kernel.org, tglx@linutronix.de,
 Arnd Bergmann <arnd.bergmann@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIENsYXVkaXUsCgoKT24gMzAvMDUvMjAxOSAwOTo0NiwgQ2xhdWRpdS5CZXpuZWFAbWljcm9j
aGlwLmNvbSB3cm90ZToKPiBIaSBEYW5pZWwsCj4gCj4gVGFraW5nIGludG8gYWNjb3VudCB0aGUg
ZGlzY3Vzc2lvbiBvbiB0aGlzIHRyZWFkIGFuZCB0aGUgZmFjdCB0aGF0IHdlIGhhdmUKPiBubyBh
bnN3ZXIgZnJvbSBSb2Igb24gdGhpcyB0b3BpYyAoSSdtIHRhbGtpbmcgYWJvdXQgWzFdKSwgd2hh
dCBkbyB5b3UgdGhpbmsKPiBpdCB3b3VsZCBiZSBiZXN0IGZvciB0aGlzIGRyaXZlciB0byBiZSBh
Y2NlcHRlZCB0aGUgc29vbmVzdD8gV291bGQgaXQgYmUgT0sKPiBmb3IgeW91IHRvIG1pbWljIHRo
ZSBhcHByb2FjaCBkb25lIGJ5Ogo+IAo+IGRyaXZlcnMvY2xvY2tzb3VyY2UvdGltZXItaW50ZWdy
YXRvci1hcC5jCj4gCj4gd2l0aCB0aGUgZm9sbG93aW5nIGJpbmRpbmdzIGluIERUOgo+IAo+IGFs
aWFzZXMgewo+IAlhcm0sdGltZXItcHJpbWFyeSA9ICZ0aW1lcjI7Cj4gCWFybSx0aW1lci1zZWNv
bmRhcnkgPSAmdGltZXIxOwo+IH07Cj4gCj4gYWxzbyBpbiBQSVQ2NEIgZHJpdmVyPwo+IAo+IE9y
IGRvIHlvdSB0aGluayByZS1zcGlubmluZyB0aGUgQWxleGFuZHJlJ3MgcGF0Y2hlcyBhdCBbMl0g
KHdoaWNoIHNlZW1zIHRvCj4gbWUgbGlrZSB0aGUgZ2VuZXJpYyB3YXkgdG8gZG8gaXQpIHdvdWxk
IGJlIGJldHRlcj8KClRoaXMgaGFyZHdhcmUgLyBPUyBjb25uZWN0aW9uIHByb2JsZW0gaXMgZ2V0
dGluZyByZWFsbHkgYW5ub3lpbmcgZm9yCmV2ZXJ5b25lIGFuZCB0aGlzIHBhdHRlcm4gaXMgcmVw
ZWF0aW5nIGl0c2VsZiBzaW5jZSBzZXZlcmFsIHllYXJzLiBJdCBpcwp0aW1lIHdlIGZpeCBpdCBw
cm9wZXJseS4KClRoZSBmaXJzdCBzb2x1dGlvbiBsb29rcyBoYWNraXNoIGZyb20gbXkgUE9WLiBU
aGUgc2Vjb25kIGFwcHJvYWNoIGxvb2tzCm5pY2VyIGFuZCBnZW5lcmljIGFzIHlvdSBzYXkuIFNv
IEkgd291bGQgdm90ZSBmb3IgWzJdIGJ1dCB3aXRoIHRoZQpmbGFnZ2luZyBhcHByb2FjaCBwcm9w
b3NlZCBieSBNYXJrIFszXS4KCkkgYWRkZWQgQXJuZCBpbiBDYyBpbiBvcmRlciB0byBoYXZlIGl0
cyBvcGluaW9uLgoKWzNdCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxNzEyMTUxMTMy
NDIuc2ttaDVuenI3d3FkbXZud0BsYWtyaWRzLmNhbWJyaWRnZS5hcm0uY29tLwoKPiBbMV0KPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMTkwNDA4MTUxMTU1LjIwMjc5LTEtYWxleGFu
ZHJlLmJlbGxvbmlAYm9vdGxpbi5jb20vI3QKPiBbMl0KPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9sa21sLzIwMTcxMjEzMTg1MzEzLjIwMDE3LTEtYWxleGFuZHJlLmJlbGxvbmlAZnJlZS1lbGVj
dHJvbnMuY29tLwo+IAoKCgoKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86
ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRw
Oi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJv
Lm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
