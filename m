Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF095503F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3eBvEfYOJ7QM0EDpykt8vacN+FY/iKT6CC8qvSc02A=; b=AQfViG5mVL2OCE
	iBF8A27+kAdX9H37jxwG11DeyLdXSef3zmwPo03v5ngs6XNfJsglXBfRruNS6dS7fb9wYT7R8qQr6
	QT90Eny1lUKdbQaPvQFcHdtV096naWn9BUSd8VMLxxCm6wufJ8hKjsIyrGGmoMaG5PGIN5SwXxbfd
	Zq/h8xKumXZf44C2T4qoelHRepvlZGLpxp4iSpVtnFcUl71fo5oTr0YJQZKBdRzQcnFHMDxupwGE+
	zoZtSotKcrjWu4rVCJpG8yhF8I3aUHRJOo+e5t9v0IgK4riw9/kxGVHmDbxZEQMtCwHwJxxriDpkU
	LjZdlmRljc50/jwk+G6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJfs-0004u1-9D; Mon, 24 Jun 2019 07:46:00 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJfc-0004k3-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:45:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so12721908wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UF0IauyLL9qObMd2T6RxV5zEC/V6smP92cxcZGdpZ3w=;
 b=J+vBE3A6gh6S+hYQQ2rYCFbFxuPvuzHPoL0Ur+YYH8OE0ANqQJtk2/iiTvE/Ac9Eg5
 4sFD5W7GNnUyLX3eGW6EZRBCek+sFwH0dmOIogS6IeYuEN05O383eOOkqEJpq4WTzD9t
 o80/lu01mB2tC7SOmxrtIkCTYmiUuYLVA9CiC7Kk4/s1fkBD/z0Kuo+qJZTxOOW9CAjs
 Ne6q6gkfcvmG8MzdOMBuFQ3r6FQgLEwx/eH2+njE0WDSFxIyu22/JWcqOJjg2Wi39BH+
 pMYPnWzIbT3nXYrVoAm9fh93oe0DSHHqz6p89WT+UE9AUbNNh475CquD6isPrWBwA7m/
 l8zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=UF0IauyLL9qObMd2T6RxV5zEC/V6smP92cxcZGdpZ3w=;
 b=VCJG32Y76jxdCvXs9u0R4DwazonGRexZsaXKZlGM51cW812V1agAnzHAHc5Wkn70vS
 6xr7/OidJbFJbUiz6r3CrDhch7OfpovUgh1JVLrEy+HmVWDJXmyKCu9H4ku67Qp+CuiM
 DdVC4Y/ctZuDAC5FzuUFR/dFq7cyT5oWxwCClgRL/dmubknM3y22/0mHtVugb970088K
 AaDDfw0b8q0K5mjT5PzbTnTpJTyPBO6sZgq7soYZU3ScvX4se57MWKMpRvk8lJQgT9at
 1p/kx8Js4Z1alIQd0GS2BGMSE4AWjXbYU6+kE3/G1MM3YNe5mYNIVWzgbLpYTVaM/a4D
 utww==
X-Gm-Message-State: APjAAAUZUIxxzBmpmRXv+t3xFoRjL10nlX+MN1jO8ODucpBjDS21dksK
 suG6IGkTAabYO/4EZmuLNnTiFw==
X-Google-Smtp-Source: APXvYqyte1PaGMAuWJR5FnsvyEniUnMhVNbJuK8yXMSXWtbM10BtQ74Mlu9Wl1xILSu7a8SJm5xJ2A==
X-Received: by 2002:adf:d4c1:: with SMTP id w1mr44719826wrk.229.1561362343350; 
 Mon, 24 Jun 2019 00:45:43 -0700 (PDT)
Received: from [192.168.0.41] (209.94.129.77.rev.sfr.net. [77.129.94.209])
 by smtp.googlemail.com with ESMTPSA id s3sm18631617wmh.27.2019.06.24.00.45.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:45:42 -0700 (PDT)
Subject: Re: [PATCH 2/6] thermal/drivers/cpu_cooling: Unregister with the
 policy
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <20190621132302.30414-1-daniel.lezcano@linaro.org>
 <20190621132302.30414-2-daniel.lezcano@linaro.org>
 <20190624060334.kak2mjuou4napi4x@vireshk-i7>
 <3f324189-aa1e-ae78-1d69-61e00c5d033a@linaro.org>
 <20190624073747.hf7jd6ulkmebbxtm@vireshk-i7>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <d31f65c8-53df-ae59-5f6f-211c0ddcff3f@linaro.org>
Date: Mon, 24 Jun 2019 09:45:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190624073747.hf7jd6ulkmebbxtm@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_004544_962013_DD1C119F 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 edubezval@gmail.com,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjQvMDYvMjAxOSAwOTozNywgVmlyZXNoIEt1bWFyIHdyb3RlOgo+IE9uIDI0LTA2LTE5LCAw
OTozMCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4+IE9uIDI0LzA2LzIwMTkgMDg6MDMsIFZpcmVz
aCBLdW1hciB3cm90ZToKPj4+IE9uIDIxLTA2LTE5LCAxNToyMiwgRGFuaWVsIExlemNhbm8gd3Jv
dGU6Cj4+Pj4gQ3VycmVudGx5IHRoZSBmdW5jdGlvbiBjcHVmcmVxX2Nvb2xpbmdfcmVnaXN0ZXIo
KSByZXR1cm5zIGEgY29vbGluZwo+Pj4+IGRldmljZSBwb2ludGVyIHdoaWNoIGlzIHVzZWQgYmFj
ayBhcyBhIHBvaW50ZXIgdG8gY2FsbCB0aGUgZnVuY3Rpb24KPj4+PiBjcHVmcmVxX2Nvb2xpbmdf
dW5yZWdpc3RlcigpLiBFdmVuIGlmIGl0IGlzIGNvcnJlY3QsIGl0IHdvdWxkIG1ha2UKPj4+PiBz
ZW5zZSB0byBub3QgbGVhayB0aGUgc3RydWN0dXJlIGluc2lkZSBhIGNwdWZyZXEgZHJpdmVyIGFu
ZCBrZWVwIHRoZQo+Pj4+IGNvZGUgdGhlcm1hbCBjb2RlIHNlbGYtZW5jYXBzdWxhdGUuIE1vcmVv
dmVyLCB0aGF0IGZvcmNlcyB0byBhZGQgYW4KPj4+PiBleHRyYSB2YXJpYWJsZSBpbiBlYWNoIGRy
aXZlciB1c2luZyB0aGlzIGZ1bmN0aW9uLgo+Pj4+Cj4+Pj4gSW5zdGVhZCBvZiBwYXNzaW5nIHRo
ZSBjb29saW5nIGRldmljZSB0byB1bnJlZ2lzdGVyLCBwYXNzIHRoZSBwb2xpY3kuCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgTGV6Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9y
Zz4KPj4+PiAtLS0KPj4+PiAgZHJpdmVycy9jcHVmcmVxL2FybV9iaWdfbGl0dGxlLmMgICAgICAg
ICAgICAgICB8ICAyICstCj4+Pj4gIGRyaXZlcnMvY3B1ZnJlcS9jcHVmcmVxLmMgICAgICAgICAg
ICAgICAgICAgICAgfCAgMiArLQo+Pj4+ICBkcml2ZXJzL3RoZXJtYWwvY3B1X2Nvb2xpbmcuYyAg
ICAgICAgICAgICAgICAgIHwgMTggKysrKysrKysrKy0tLS0tLS0tCj4+Pj4gIGRyaXZlcnMvdGhl
cm1hbC9pbXhfdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgfCAgNCArKy0tCj4+Pj4gIC4uLi90
aGVybWFsL3RpLXNvYy10aGVybWFsL3RpLXRoZXJtYWwtY29tbW9uLmMgfCAgMiArLQo+Pj4+ICBp
bmNsdWRlL2xpbnV4L2NwdV9jb29saW5nLmggICAgICAgICAgICAgICAgICAgIHwgIDYgKysrLS0t
Cj4+Pj4gIDYgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0p
Cj4+Pgo+Pj4gQWNrZWQtYnk6IFZpcmVzaCBLdW1hciA8dmlyZXNoLmt1bWFyQGxpbmFyby5vcmc+
Cj4+Cj4+IEp1c3QgYSBzaWRlIG5vdGUsIGRvZXMgaXQgbWFrZSBzZW5zZSB0byBoYXZlIHRoZSBm
dW5jdGlvbiBjYWxsZWQgZnJvbQo+PiBpbXhfdGhlcm1hbC5jIGFuZCB0aS10aGVybWFsLWNvbW1v
bi5jPyBTb3VuZHMgbGlrZSBhbHNvIGEgbGVha2FnZSBmcm9tCj4+IGNwdWZyZXEgdG8gdGhlcm1h
bCBkcml2ZXJzLCBubz8KPiAKPiBJIGFtIG5vdCBzdXJlIHdoYXQgeW91IGFyZSBwcm9wb3Npbmcg
aGVyZSA6KQoKQWN0dWFsbHkgSSdtIGFza2luZyB5b3VyIG9waW5pb24gOikKClRoZSBzdHJ1Y3R1
cmUgaW4gZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMKCnN0cnVjdCBpbXhfdGhlcm1hbF9k
YXRhIHsKICAgICAgICBzdHJ1Y3QgY3B1ZnJlcV9wb2xpY3kgKnBvbGljeTsgPDw8PCBpbiB0aGUg
dGhlcm1hbCBkYXRhID8hCglbIC4uLiBdCn07CgpBbmQgdGhlbjoKCiNpZmRlZiBDT05GSUdfQ1BV
X0ZSRVEKLyoKICogQ3JlYXRlIGNvb2xpbmcgZGV2aWNlIGluIGNhc2Ugbm8gI2Nvb2xpbmctY2Vs
bHMgcHJvcGVydHkgaXMgYXZhaWxhYmxlIGluCiAqIENQVSBub2RlCiAqLwpzdGF0aWMgaW50IGlt
eF90aGVybWFsX3JlZ2lzdGVyX2xlZ2FjeV9jb29saW5nKHN0cnVjdCBpbXhfdGhlcm1hbF9kYXRh
CipkYXRhKQp7CiAgICAgICAgc3RydWN0IGRldmljZV9ub2RlICpucDsKICAgICAgICBpbnQgcmV0
OwoKICAgICAgICBkYXRhLT5wb2xpY3kgPSBjcHVmcmVxX2NwdV9nZXQoMCk7CiAgICAgICAgaWYg
KCFkYXRhLT5wb2xpY3kpIHsKICAgICAgICAgICAgICAgIHByX2RlYnVnKCIlczogQ1BVRnJlcSBw
b2xpY3kgbm90IGZvdW5kXG4iLCBfX2Z1bmNfXyk7CiAgICAgICAgICAgICAgICByZXR1cm4gLUVQ
Uk9CRV9ERUZFUjsKICAgICAgICB9CgogICAgICAgIG5wID0gb2ZfZ2V0X2NwdV9ub2RlKGRhdGEt
PnBvbGljeS0+Y3B1LCBOVUxMKTsKCiAgICAgICAgaWYgKCFucCB8fCAhb2ZfZmluZF9wcm9wZXJ0
eShucCwgIiNjb29saW5nLWNlbGxzIiwgTlVMTCkpIHsKICAgICAgICAgICAgICAgIGRhdGEtPmNk
ZXYgPSBjcHVmcmVxX2Nvb2xpbmdfcmVnaXN0ZXIoZGF0YS0+cG9saWN5KTsKICAgICAgICAgICAg
ICAgIGlmIChJU19FUlIoZGF0YS0+Y2RldikpIHsKICAgICAgICAgICAgICAgICAgICAgICAgcmV0
ID0gUFRSX0VSUihkYXRhLT5jZGV2KTsKICAgICAgICAgICAgICAgICAgICAgICAgY3B1ZnJlcV9j
cHVfcHV0KGRhdGEtPnBvbGljeSk7CiAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7
CiAgICAgICAgICAgICAgICB9CiAgICAgICAgfQoKICAgICAgICByZXR1cm4gMDsKfQoKWyAuLi4g
XQoKU2hvdWxkbid0IHRoaXMgYmUgbW92ZSBpbiB0aGUgZHJpdmVycy9jcHVmcmVxLzx3aGF0ZXZl
ciBkcml2ZXI+ID8KCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRw
Oi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0
dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xp
bmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
