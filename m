Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0867120F0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:16:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XemhnYTxCkUHTDDVNqXSzWmgTH2Klr5duxOr/IIrtdE=; b=jLWhOkzErxCxOAdeN9gJ4AnPq9
	bCPv3n5A2lDVlnzkUrsSJn3RgvFID/nIvKw0QwYVDjKnyXu6gHhbPudaQQWDvYrYMecPLwm9n55zW
	cSfzDZ2rA+2Iw6cjJ9X2784QTPcZoI2rK+c7ZoSb8XAWkYtsIfRhyXu+/gGWWOOmoyEhxDurhkBB5
	ARXnDZAGKitnuT2uAihDbVkcatZqIn4kuo/hdcnCchleRcC/QNbpHrdhMf/ttP4fU4J3I7MAsg5pg
	MXsxdAGF0bo1mtkmCD1NYq6KfT6uOHA7ZcQKTQ2ggKd0DnJNek1RW2sklhPIAkc7TI1D1JwdgO9ud
	OozZJRHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igt34-00054J-AG; Mon, 16 Dec 2019 16:16:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igt2Y-0004wF-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:16:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id f129so7357140wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 08:16:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4KWg0LiMX7EL3TUgZyeZC4KqXcBsdzCDrVE6UGWPRZQ=;
 b=JA0txClZqFCt5d+0MZN27cPp6eAnruisccaSI/2QQDg4OZrxgT6uGFm3/TxP7zPhRW
 eFYnTKr0O7niWSQKazgr/IomLyCTSgikAJrAx1flHRBbQ8EJvv5cpE9ArAOLHrQH5vHi
 ZsX3PD1MZFgTBtf8UJwGWhaP5wiwFMvihqb+z2SiZuvH+9RTSD+ROcORZe50TGBLMlfM
 ozz34xsIndKjvl6dUOe5TwblAgjevVmL3cOfX6bVqDcd59rWm/AtwuaX67ZYBufbXrU+
 PYXyKPbqoZZVjPg+IEXAqBxIajX7q7zJzXd2lfzb4TWtyB4TAS3xqRWG1m+jPbGe/B7E
 ahUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4KWg0LiMX7EL3TUgZyeZC4KqXcBsdzCDrVE6UGWPRZQ=;
 b=l78V8do28EtXDAkFzld+2UOWXtFjnYDITd0wO7whN1I9I56fxOt8mykU3IOu9jnPiY
 Kjsb7n4C1J7ddhw4+M9coOxD4f67RoqqIukQmFod1kFS336x1dKVrbzFRUl4Rt2YoGM1
 4DemerFPjq98LoGzs5Lp3EYf3q7oqX1NDUxBbyG5mGtT4ufov+Wy8fZF4hPFHvLaqTnP
 DSXR3ppko4rn9bonZlSWzpZfLGG2/pr+XCacQaShOS8UJ9qzlxv5WpZVmELxcjjtCRH5
 EGl9uvEhRMINKdx1sQfgaO6XKr3qPwQHTZ+aLm84zG8ML2l1os+52H5+sIdfk8IAXUio
 VjFA==
X-Gm-Message-State: APjAAAVBR1LtkiohPjM8sOUjt34J6CWiTWvkBm+eGaYx9koBgXrgBLNn
 IDt9tDQYN9MV2jN++oYTKkXAyA==
X-Google-Smtp-Source: APXvYqys27lbtpqQOpy2AoSAhIOwi94ngxwMHkVF8FaHZa9KJ0Y17M9gDQPwppIh+kBbe/eS+n3Q7A==
X-Received: by 2002:a05:600c:48a:: with SMTP id
 d10mr15253063wme.87.1576512968734; 
 Mon, 16 Dec 2019 08:16:08 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:44d6:972c:f996:2f15?
 ([2a01:e34:ed2f:f020:44d6:972c:f996:2f15])
 by smtp.googlemail.com with ESMTPSA id v20sm21889756wmj.32.2019.12.16.08.16.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 08:16:08 -0800 (PST)
Subject: Re: [RESEND PATCH] thermal: rockchip: enable hwmon
To: schaecsn@gmx.net, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, Heiko Stuebner
 <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20191212061702.BFE2D6E85603@corona.crabdance.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <3f3e1fcd-f4e5-efe6-ff84-bc46db15137e@linaro.org>
Date: Mon, 16 Dec 2019 17:16:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191212061702.BFE2D6E85603@corona.crabdance.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_081610_826249_454FACFC 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMTIvMjAxOSAwNzoxNywgU3RlZmFuIFNjaGFlY2tlbGVyIHdyb3RlOgo+IEJ5IGRlZmF1
bHQsIG9mLWJhc2VkIHRoZXJtYWwgZHJpdmVycyBkbyBub3QgZW5hYmxlIGh3bW9uLgo+IEV4cGxp
Y2l0bHkgZW5hYmxlIGh3bW9uIGZvciBib3RoLCB0aGUgc29jIGFuZCBncHUgdGVtcGVyYXR1cmUK
PiBzZW5zb3IuCj4gCj4gU2lnbmVkLW9mZi1ieTogU3RlZmFuIFNjaGFlY2tlbGVyIDxzY2hhZWNz
bkBnbXgubmV0PgoKQXBwbGllZCwgYW5kIHRvb2sgdGhlIG9wcG9ydHVuaXR5IHRvIHRlc3QgaXQu
CgooZm9yIHBhdGNod29yaykKClRlc3RlZC1ieTogRGFuaWVsIExlemNhbm8gPGRhbmllbC5sZXpj
YW5vQGxpbmFyby5vcmc+Cgo+IC0tLQo+ICBkcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1h
bC5jIHwgMTIgKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hp
cF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4gaW5kZXgg
MzQzYzJmNWM1YTI1Li5lNDdjNjAwMTAyNTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFs
L3JvY2tjaGlwX3RoZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVy
bWFsLmMKPiBAQCAtMTksNiArMTksOCBAQAo+ICAjaW5jbHVkZSA8bGludXgvbWZkL3N5c2Nvbi5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvcGluY3RybC9jb25zdW1lci5oPgo+IAo+ICsjaW5jbHVkZSAi
dGhlcm1hbF9od21vbi5oIgo+ICsKPiAgLyoqCj4gICAqIElmIHRoZSB0ZW1wZXJhdHVyZSBvdmVy
IGEgcGVyaW9kIG9mIHRpbWUgSGlnaCwKPiAgICogdGhlIHJlc3VsdGluZyBUU0hVVCBnYXZlIENS
VSBtb2R1bGUsbGV0IGl0IHJlc2V0IHRoZSBlbnRpcmUgY2hpcCwKPiBAQCAtMTMyMSw4ICsxMzIz
LDE1IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhlcm1hbF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1f
ZGV2aWNlICpwZGV2KQo+IAo+ICAJdGhlcm1hbC0+Y2hpcC0+Y29udHJvbCh0aGVybWFsLT5yZWdz
LCB0cnVlKTsKPiAKPiAtCWZvciAoaSA9IDA7IGkgPCB0aGVybWFsLT5jaGlwLT5jaG5fbnVtOyBp
KyspCj4gKwlmb3IgKGkgPSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+Y2huX251bTsgaSsrKSB7Cj4g
IAkJcm9ja2NoaXBfdGhlcm1hbF90b2dnbGVfc2Vuc29yKCZ0aGVybWFsLT5zZW5zb3JzW2ldLCB0
cnVlKTsKPiArCQl0aGVybWFsLT5zZW5zb3JzW2ldLnR6ZC0+dHpwLT5ub19od21vbiA9IGZhbHNl
Owo+ICsJCWVycm9yID0gdGhlcm1hbF9hZGRfaHdtb25fc3lzZnModGhlcm1hbC0+c2Vuc29yc1tp
XS50emQpOwo+ICsJCWlmIChlcnJvcikKPiArCQkJZGV2X3dhcm4oJnBkZXYtPmRldiwKPiArCQkJ
CSAiZmFpbGVkIHRvIHJlZ2lzdGVyIHNlbnNvciAlZCB3aXRoIGh3bW9uOiAlZFxuIiwKPiArCQkJ
CSBpLCBlcnJvcik7Cj4gKwl9Cj4gCj4gIAlwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCB0aGVy
bWFsKTsKPiAKPiBAQCAtMTM0NCw2ICsxMzUzLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF90aGVy
bWFsX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJZm9yIChpID0gMDsg
aSA8IHRoZXJtYWwtPmNoaXAtPmNobl9udW07IGkrKykgewo+ICAJCXN0cnVjdCByb2NrY2hpcF90
aGVybWFsX3NlbnNvciAqc2Vuc29yID0gJnRoZXJtYWwtPnNlbnNvcnNbaV07Cj4gCj4gKwkJdGhl
cm1hbF9yZW1vdmVfaHdtb25fc3lzZnMoc2Vuc29yLT50emQpOwo+ICAJCXJvY2tjaGlwX3RoZXJt
YWxfdG9nZ2xlX3NlbnNvcihzZW5zb3IsIGZhbHNlKTsKPiAgCX0KPiAKPiAtLQo+IDIuMjQuMAo+
IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZh
Y2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8j
IS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9n
Lz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
