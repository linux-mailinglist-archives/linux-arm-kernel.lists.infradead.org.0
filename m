Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA43566EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tp+odOiza0sJSuiNuwFMIXqGrRdF2sukpyS0lKBPYjU=; b=WPdhk1KmpTWICv
	L0tdG4u1VQ8QkhH6kOvEYGZdhVz/TRg3lGQPgICxKs0Biv9MypTLNdiLcRl9z6z3itMwfhqyElIhl
	SpZF32Hu46adOLHwnx9pnzbQRGY7KFJQTXIX2oUfNKPs2O394NkKcrTqLmTfgIUOsLSpqTCKvaa6N
	21MBg1V/0hX7gSEgm8vpun20bQXXjPjTIch6I71d54VlaBl6mMEiWtrS2NL7CdgiYeIFNRt26wTOl
	F15my7+CHQHMrfBOn+4ZjRjayUBCDa17K/IN2urv0TRnwHiJu9RLGYKcVmHOmU8vEGJCYX/84J4yH
	nr9vuYseHXy924g6+w9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg5JU-0001To-3W; Wed, 26 Jun 2019 10:38:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg5JN-0001TH-3A
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:37:58 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so2163072wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 03:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BE4Q6kIsXy7ZYeSWx7jwFQJAWHgEXuWMNO+V0OKRKWQ=;
 b=uXcrECe/WmOv6aWe4aZ4fN1GlMgV47z3fzFklSAfC1srPdj0p7BUNtAh69p57iI06m
 OJWDzLkrWTsC2DaQbg0n4wR2cZjKCcny43O4JOxFLotWgVFrC3R9czddAOVPYACMJ/8O
 NnxAXnchO+6xfxfEVHntu/BbRYxtaxsyVD1QaZJFt4PKPeIimCoeT/nm/2v7aPl9uunV
 1GEPTOWZfddnmw3AoH/+vpXB4/b5j5XtGHuTXEqbj8jzyI8aafckhP4vrImAdExv/eYM
 ptgCtUwhBMws3p+EtaiyFhEwmJXq9jGxrMhlQpdqQtU0VzwkACWIV1ibr3SQVIpLqCwW
 zjsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BE4Q6kIsXy7ZYeSWx7jwFQJAWHgEXuWMNO+V0OKRKWQ=;
 b=P5zOYNHMISnRdBAcFsnFUM9pwPJXndjFgFh1NOH0ecfrH3OBMSzRSN5+Rz/m1eTbQP
 sxXEgWl2lBuGXxXutPc5VUOzUrZ2l0Vjx5IOMdiWPTkJiyeeQIKy3VCLWE7VG9tfx2IK
 N2P9Z9lEBhXoxl0o6v08yWSc1pdnxD+ErTZqPVX4m9yCmmiyZZiPA3oweVMgSunT8FZd
 yxLDGHMzvLQQemoI67as791eOAYpKMec5oJ3kv8Q+X8unhb3zGStXzs3vIDYb2t7KC/I
 Cfco/lS8EUKPFa6o5cEb+kXh/nOI4F3NiTdE/jAhGEmcUzZbnwiFVfCE43njJ4UY46in
 jXEA==
X-Gm-Message-State: APjAAAXzFiNgGRSoycbs7Ue9dZKV4BlHPK9casCPYf3CCF+CMrjZDtCV
 DyQz4aRRFhs91j2S09KhsKSItw==
X-Google-Smtp-Source: APXvYqxdA6ohIleHU+JXzKXyLdxetJYYb4zBfbWjh9KbfccO0wfd/WveAYZEARVdGXJrFASZ/GxrSw==
X-Received: by 2002:a5d:5303:: with SMTP id e3mr3064772wrv.239.1561545475091; 
 Wed, 26 Jun 2019 03:37:55 -0700 (PDT)
Received: from [192.168.0.41] (26.92.130.77.rev.sfr.net. [77.130.92.26])
 by smtp.googlemail.com with ESMTPSA id w7sm1110780wmc.46.2019.06.26.03.37.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 03:37:54 -0700 (PDT)
Subject: Re: [PATCH RESEND V2 1/3] clocksource/drivers/sysctr: Add optional
 clock-frequency property
To: Anson Huang <anson.huang@nxp.com>, "tglx@linutronix.de"
 <tglx@linutronix.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com"
 <ccaione@baylibre.com>, "angus@akkea.ca" <angus@akkea.ca>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20190623123850.22584-1-Anson.Huang@nxp.com>
 <55abafbd-c010-32b5-6d76-26040830d5b0@linaro.org>
 <DB3PR0402MB3916AB9F2260B0E46CCDDEC0F5E20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <9c017ba9-ac6b-480b-d1f3-120289343101@linaro.org>
Date: Wed, 26 Jun 2019 12:37:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <DB3PR0402MB3916AB9F2260B0E46CCDDEC0F5E20@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_033757_142285_A1ACD488 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMDYvMjAxOSAwMzo0MiwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gSGksIERhbmllbAo+IAo+
PiBPbiAyMy8wNi8yMDE5IDE0OjM4LCBBbnNvbi5IdWFuZ0BueHAuY29tIHdyb3RlOgo+Pj4gRnJv
bTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4+Pgo+Pj4gU3lzdGVtcyB3aGlj
aCB1c2UgcGxhdGZvcm0gZHJpdmVyIG1vZGVsIGZvciBjbG9jayBkcml2ZXIgcmVxdWlyZSB0aGUK
Pj4+IGNsb2NrIGZyZXF1ZW5jeSB0byBiZSBzdXBwbGllZCB2aWEgZGV2aWNlIHRyZWUgd2hlbiBz
eXN0ZW0gY291bnRlcgo+Pj4gZHJpdmVyIGlzIGVuYWJsZWQuCj4+Pgo+Pj4gVGhpcyBpcyBuZWNl
c3NhcnkgYXMgaW4gdGhlIHBsYXRmb3JtIGRyaXZlciBtb2RlbCB0aGUgb2ZfY2xrCj4+PiBvcGVy
YXRpb25zIGRvIG5vdCB3b3JrIGNvcnJlY3RseSBiZWNhdXNlIHN5c3RlbSBjb3VudGVyIGRyaXZl
ciBpcwo+Pj4gaW5pdGlhbGl6ZWQgaW4gZWFybHkgcGhhc2Ugb2Ygc3lzdGVtIGJvb3QgdXAsIGFu
ZCBjbG9jayBkcml2ZXIgdXNpbmcKPj4+IHBsYXRmb3JtIGRyaXZlciBtb2RlbCBpcyBOT1QgcmVh
ZHkgYXQgdGhhdCB0aW1lLCBpdCB3aWxsIGNhdXNlIHN5c3RlbQo+Pj4gY291bnRlciBkcml2ZXIg
aW5pdGlhbGl6YXRpb24gZmFpbGVkLgo+Pj4KPj4+IEFkZCB0aGUgb3B0aW5hbCBjbG9jay1mcmVx
dWVuY3kgdG8gdGhlIGRldmljZSB0cmVlIGJpbmRpbmdzIG9mIHRoZSBOWFAKPj4+IHN5c3RlbSBj
b3VudGVyLCBzbyB0aGUgZnJlcXVlbmN5IGNhbiBiZSBoYW5kZWQgaW4gYW5kIHRoZSBvZl9jbGsK
Pj4+IG9wZXJhdGlvbnMgY2FuIGJlIHNraXBwZWQuCj4+Cj4+IElzbid0IGl0IHBvc3NpYmxlIHRv
IGNyZWF0ZSBhIGZpeGVkLWNsb2NrIGFuZCByZWZlciB0byBpdD8gU28gbm8gbmVlZCB0byBjcmVh
dGUgYQo+PiBzcGVjaWZpYyBhY3Rpb24gYmVmb3JlIGNhbGxpbmcgdGltZXJfb2ZfaW5pdCgpID8K
Pj4KPiAKPiBBcyB0aGUgY2xvY2sgbXVzdCBiZSByZWFkeSBiZWZvcmUgdGhlIFRJTUVSX09GX0RF
Q0xBUkUsIHNvIGFkZGluZyBhIENMS19PRl9ERUNMQVJFX0RSSVZFUiBpbgo+IGNsb2NrIGRyaXZl
ciB0byBPTkxZIHJlZ2lzdGVyIGEgZml4ZWQtY2xvY2s/IFRoZSBzeXN0ZW0gY291bnRlcidzIGZy
ZXF1ZW5jeSBhcmUgZGlmZmVyZW50IG9uIGRpZmZlcmVudAo+IHBsYXRmb3Jtcywgc28gYWRkaW5n
IGZpeGVkIGNsb2NrIGluIHN5c3RlbSBjb3VudGVyIGRyaXZlciBpcyBOT1QgYSBnb29kIGlkZWEs
IE9OTFkgdGhlIERUIG5vZGUgb3IgdGhlCj4gY2xvY2sgZHJpdmVyIGNhbiBjcmVhdGUgdGhpcyBm
aXhlZCBjbG9jayBhY2NvcmRpbmcgdG8gcGxhdGZvcm1zLCBjYW4geW91IGFkdmlzZSB3aGVyZSB0
byBjcmVhdGUgdGhpcyBmaXhlZAo+IGNsb2NrIGlzIGJldHRlcj8KCkNhbiB5b3UgcG9pbnQgbWUg
dG8gYSBEVCB3aXRoIHRoZSAibnhwLHN5c2N0ci10aW1lciIgPwoKCi0tIAogPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5h
cm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIg
fAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
