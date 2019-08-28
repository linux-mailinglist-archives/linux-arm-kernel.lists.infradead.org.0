Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B68A063E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jXMA0DJnEGsW3KOIvp662knctC8wmjWve9Wrez4UE7s=; b=p5RuVx3TuNWMLkmD8ZN9PmSAFs
	6q0G/NUnT4CbLjqdKeQ0S8sNyE4zFhMLZXGp5MxtCYWaDTASfPvTiZTJSuf4vK1A879gml/Hm3SQQ
	cWAHImbbP4I4i53mNMmrETMfJ7ep3YuAoQD1xeP81y2smXhCAXLfZsZKGaKp//TDhZWIfhbHjCB1U
	beJR9iH9JsfYes6JlhkrYNSUrlzAqwiLRQxOYKyciBIYwjZGX3XVoHKsIkNWgEle3iYpy4LIfxfpL
	uhYtE/HG0IL/1hE1ax1zq3gWEpDbqHblHc4QjRPazI5LcF4ClS3kCKf233qr2zsPTxPX6ShugJk6g
	je9HX6ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zpH-0005X0-Km; Wed, 28 Aug 2019 15:25:35 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zp3-0005WY-Pz
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:25:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id b16so201825wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 08:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6L8M09s8mojzHw+V8zgaVc4pGyrHhUveHfLecbnrKtQ=;
 b=Xu5zJFmAS/FZXvtbeAN1cZms5hBbWLcFTAyvfkoq+pXBqgJF1yhlBGWucJH8uM4AiY
 iYa3z4PVjTaf1xdvBdzio07Lvj/kJTByGPICml5WAS67jvrgrDeXpQdKzg5lM9qqoYzG
 Uj08t7iJeq1ciYVquztLike1R/HMucfuib5vR3y8aAfNOPSIy1y1MlcR8WCJYnJUXmPg
 tnZ7LDhZWk2+B3cc1lt5OXZDxQRk08jLLLOhmcl5VWJwXEBtM+0v3SorEcFGuVt4pbZG
 3ayIR/sOeIG1YsXlxKFsOcxJNkQy2nj8qVFO+DW87s2rURFE40297dPJcxr1WhDrZ57O
 nyFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=6L8M09s8mojzHw+V8zgaVc4pGyrHhUveHfLecbnrKtQ=;
 b=Fq2dkXqUi2FB+kNppXoWkFP48xuOK9feEsJgLuZsTvqYW8J1iLMNL+OLDnZgx5OTdW
 wATCRaOjHNzWO9s2wCg9DyxLFOGwimfTb990oCvv9PtwvsvKM2KMIDhB6NPZxeahaPlE
 +0G1+Hbo2ZKX89G6sW6xdgse/fb3iZOKii8CGX1/OrmKC3mWO+QhY9WWFUfjID9HgqyW
 uFo7tuHzxk9VKW1cbChQSzaIWIXHlW25US0ZehH44pEqpo1TRzWnKzipWtygoFYfNq87
 2GyrZrmaMaS8ccgKJbgE5hh9H/lt/BW7OTn+QTWA/yrcbxxvgOGaMMKb6khl1fCyxTq9
 e7EA==
X-Gm-Message-State: APjAAAUtY3HWOc29thytAzaA7K1dDdQutIhPes1Q2OxrGtNzx15UF3m9
 w1bxHxcoG3zXr4TO8zkzc1r2LA==
X-Google-Smtp-Source: APXvYqw+Td1mwQi14+AdXCwMz2cE3dlXqPRBmsa3DSfkrzOIUvNK8uMKUW/s+20ap7lgnWwaTHb02w==
X-Received: by 2002:a5d:494d:: with SMTP id r13mr5271375wrs.82.1567005918811; 
 Wed, 28 Aug 2019 08:25:18 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:d017:b064:99a0:3097?
 ([2a01:e34:ed2f:f020:d017:b064:99a0:3097])
 by smtp.googlemail.com with ESMTPSA id g14sm5804109wrb.38.2019.08.28.08.25.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 08:25:18 -0700 (PDT)
Subject: Re: [PATCH 1/2] ARM: dts: ux500: Fix up the thermal nodes
To: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Ulf Hansson <ulf.hansson@linaro.org>
References: <20190828135218.7307-1-linus.walleij@linaro.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <bc1e8257-2812-da1c-3ddf-c17581e4445f@linaro.org>
Date: Wed, 28 Aug 2019 17:25:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828135218.7307-1-linus.walleij@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_082521_910504_58758E56 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjgvMDgvMjAxOSAxNTo1MiwgTGludXMgV2FsbGVpaiB3cm90ZToKPiBUaGUgdGhlcm1hbCBk
cml2ZXIgZm9yIHRoZSBEQjg1MDAgd2FzIG5ldmVyIHByb3Blcmx5IGNvbnZlcnRlZAo+IHRvIGRl
dmljZSB0cmVlLCB0aGUgbm9kZSBzaG91bGQgZGVmaW5pdGVseSBiZSBhY3RpdmF0ZWQgZm9yCj4g
YWxsIGJvYXJkIHZhcmlhbnRzIHNvIG1vdmUgdGhpcyBkb3duIGludG8gdGhlIG1haW4gU29DCj4g
RFRTSSwgYW5kIGRlZmF1bHQgb24uCj4gCj4gQ2M6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6
Y2Fub0BsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndh
bGxlaWpAbGluYXJvLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3RlLWRieDV4MC5k
dHNpICB8IDIyICsrKysrKysrKysrKysrKysrKysrKy0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvc3Rl
LXNub3diYWxsLmR0cyB8IDI5IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDIgZmls
ZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0ZS1kYng1eDAuZHRzaSBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3N0ZS1kYng1eDAuZHRzaQo+IGluZGV4IGIxYTMxMTM0Zjg2MC4uNzk1M2VlYTdjNDg2IDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N0ZS1kYng1eDAuZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtL2Jvb3QvZHRzL3N0ZS1kYng1eDAuZHRzaQo+IEBAIC01MDUsMTAgKzUwNSwzMCBAQAo+
ICAJCQl0aGVybWFsQDgwMTU3M2MwIHsKPiAgCQkJCWNvbXBhdGlibGUgPSAic3Rlcmljc3Nvbixk
Yjg1MDAtdGhlcm1hbCI7Cj4gIAkJCQlyZWcgPSA8MHg4MDE1NzNjMCAweDQwPjsKPiArCQkJCWlu
dGVycnVwdC1wYXJlbnQgPSA8JnByY211PjsKPiAgCQkJCWludGVycnVwdHMgPSA8MjEgSVJRX1RZ
UEVfTEVWRUxfSElHSD4sCj4gIAkJCQkJICAgICA8MjIgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4g
IAkJCQlpbnRlcnJ1cHQtbmFtZXMgPSAiSVJRX0hPVE1PTl9MT1ciLCAiSVJRX0hPVE1PTl9ISUdI
IjsKPiAtCQkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gKwkJCQludW0tdHJpcHMgPSA8ND47Cj4g
Kwo+ICsJCQkJdHJpcDAtdGVtcCA9IDw3MDAwMD47Cj4gKwkJCQl0cmlwMC10eXBlID0gImFjdGl2
ZSI7Cj4gKwkJCQl0cmlwMC1jZGV2LW51bSA9IDwxPjsKPiArCQkJCXRyaXAwLWNkZXYtbmFtZTAg
PSAidGhlcm1hbC1jcHVmcmVxLTAiOwo+ICsKPiArCQkJCXRyaXAxLXRlbXAgPSA8NzUwMDA+Owo+
ICsJCQkJdHJpcDEtdHlwZSA9ICJhY3RpdmUiOwo+ICsJCQkJdHJpcDEtY2Rldi1udW0gPSA8MT47
Cj4gKwkJCQl0cmlwMS1jZGV2LW5hbWUwID0gInRoZXJtYWwtY3B1ZnJlcS0wIjsKPiArCj4gKwkJ
CQl0cmlwMi10ZW1wID0gPDgwMDAwPjsKPiArCQkJCXRyaXAyLXR5cGUgPSAiYWN0aXZlIjsKPiAr
CQkJCXRyaXAyLWNkZXYtbnVtID0gPDE+Owo+ICsJCQkJdHJpcDItY2Rldi1uYW1lMCA9ICJ0aGVy
bWFsLWNwdWZyZXEtMCI7Cj4gKwo+ICsJCQkJdHJpcDMtdGVtcCA9IDw4NTAwMD47Cj4gKwkJCQl0
cmlwMy10eXBlID0gImNyaXRpY2FsIjsKPiArCQkJCXRyaXAzLWNkZXYtbnVtID0gPDA+OwoKSSB0
aGluayB5b3UgY2FuIGZvbGQgYm90aCBwYXRjaGVzLCB0aGF0IHdvdWxkIGJlIGNsZWFyZXIgdGhh
biBtb3ZpbmcgYW5kCnRoZW4gcmVtb3ZpbmcuCgo+ICAJCQl9Owo+ICAKPiAgCQkJZGI4NTAwLXBy
Y211LXJlZ3VsYXRvcnMgewo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdGUtc25v
d2JhbGwuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3RlLXNub3diYWxsLmR0cwo+IGluZGV4IDM0
MjgyOTA2NDRiYS4uMDY0ZThhYmVjOTU0IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3N0ZS1zbm93YmFsbC5kdHMKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9zdGUtc25vd2JhbGwu
ZHRzCj4gQEAgLTM3Niw0MCArMzc2LDExIEBACj4gIAkJCXBpbmN0cmwtMCA9IDwmc3NwMF9zbm93
YmFsbF9tb2RlPjsKPiAgCQl9Owo+ICAKPiAtCQljcHVmcmVxLWNvb2xpbmcgewo+IC0JCQlzdGF0
dXMgPSAib2theSI7Cj4gLQkJfTsKPiAtCj4gIAkJcHJjbXVAODAxNTcwMDAgewo+ICAJCQljcHVm
cmVxIHsKPiAgCQkJCXN0YXR1cyA9ICJva2F5IjsKPiAgCQkJfTsKPiAgCj4gLQkJCXRoZXJtYWxA
ODAxNTczYzAgewo+IC0JCQkJbnVtLXRyaXBzID0gPDQ+Owo+IC0KPiAtCQkJCXRyaXAwLXRlbXAg
PSA8NzAwMDA+Owo+IC0JCQkJdHJpcDAtdHlwZSA9ICJhY3RpdmUiOwo+IC0JCQkJdHJpcDAtY2Rl
di1udW0gPSA8MT47Cj4gLQkJCQl0cmlwMC1jZGV2LW5hbWUwID0gInRoZXJtYWwtY3B1ZnJlcS0w
IjsKPiAtCj4gLQkJCQl0cmlwMS10ZW1wID0gPDc1MDAwPjsKPiAtCQkJCXRyaXAxLXR5cGUgPSAi
YWN0aXZlIjsKPiAtCQkJCXRyaXAxLWNkZXYtbnVtID0gPDE+Owo+IC0JCQkJdHJpcDEtY2Rldi1u
YW1lMCA9ICJ0aGVybWFsLWNwdWZyZXEtMCI7Cj4gLQo+IC0JCQkJdHJpcDItdGVtcCA9IDw4MDAw
MD47Cj4gLQkJCQl0cmlwMi10eXBlID0gImFjdGl2ZSI7Cj4gLQkJCQl0cmlwMi1jZGV2LW51bSA9
IDwxPjsKPiAtCQkJCXRyaXAyLWNkZXYtbmFtZTAgPSAidGhlcm1hbC1jcHVmcmVxLTAiOwo+IC0K
PiAtCQkJCXRyaXAzLXRlbXAgPSA8ODUwMDA+Owo+IC0JCQkJdHJpcDMtdHlwZSA9ICJjcml0aWNh
bCI7Cj4gLQkJCQl0cmlwMy1jZGV2LW51bSA9IDwwPjsKPiAtCj4gLQkJCQlzdGF0dXMgPSAib2th
eSI7Cj4gLQkJCX07Cj4gLQo+ICAJCQlhYjg1MDAgewo+ICAJCQkJYWI4NTAwLWdwaW8gewo+ICAJ
CQkJCS8qCj4gCgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIg
T3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6
Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0
ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGlu
YXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
