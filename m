Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392456737A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 18:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CATtVS4AXGdcTLtHqTeg6pM7nw94B+T5YiP+xpNwnns=; b=Vhx25RnT+EGQ9Z
	Ww1GbgX/le/9muuHxQV5hnzSeKskj96ZgZz5JCX3lLYnd8sTYaNPB/NMl5MARQQYH0oHZdz2GY3qn
	6KcSI9cOYdimJaBRG2ZE9EUOjop/vUl4GBuMSlzM/DbFdzouVrDq280XwIEKfcvNmi1BmnRpXxjBQ
	RpBKma+S8mGZoKXYS6odhVVq7+SaeS/vwd5UO+fGeXwSq8sjo6OK1s7ZFwkDCA8p25yzFkd8cenZ6
	MIeZjeL2BcGxPwmfNrRRqDavtmYA2Kl6k5xjC/2BjcUlB4GfxJBxT781j3DyTakHms7nK8QslpjbA
	BdhqHqVVzsuzeT+DwjoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlybl-0007W2-40; Fri, 12 Jul 2019 16:41:17 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlybZ-0007Ve-9c
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 16:41:06 +0000
Received: by mail-lj1-x241.google.com with SMTP id m8so9940668lji.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jul 2019 09:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=07LEgoyEHoGLp0Ac/lWdvUvBRaQXzLrYtdrkGFRgizM=;
 b=tJ6ww7yoECwP0CeZZVy94MX1ukQCov8d9Bd0f8HQ32l/tdRP6mZhyaH3Hr29u1YoDw
 ruGVeqqVNvRJ0UnodnHVbg9FTNkliGuvTG42X2PqzHgpIDh4c/cqDrJXIu5isCVeMeRp
 ax3gLgwh6DnoI2oqAlOCG2RIJ44cRBa6hTGLfOX4Qz8qwRT3WfVeFtCYHFKzaeOugJlU
 MY4JrTK1M9Qq7L0xDy9R3TsaK3/hyGj31uHwC/p2pLGOn83azOY66a5Ef+HFJk3We694
 hLLCMguBiU0g1Sq0bxESUj9lPhMYczjATXkJS1JV9+qUXOFE1sVg6kZ2OlO5Zw5Jt9qo
 CQnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=07LEgoyEHoGLp0Ac/lWdvUvBRaQXzLrYtdrkGFRgizM=;
 b=tTFbkE8zmxGkW2IYnMsey6rJ2lsQ1HU/w3vrh/xOBEcliPA02GjzrwEqyLI/L1vWeO
 ZNwqCyGlXMW9rw0S3ZbEQ3OZX0BJ4K5oD7diRvq/D927YRs6RiM0HW9pRClQEUgn+27e
 8Fz8S4gg38c+pEnzJavcl8cZiO7q/0Vokq+nIqdW5ixNXaj71FYPPNqPzJpjV/lBGC5S
 dAD7D2JbIPnk6hkeH2R3sBZHn/l4D2e+xaiknG68wcsgTIWIBIvWfbJzJyRBbdbpyroM
 Um8rsXvWpwU/E7pSag4Xwihm5gOtEseYfEnMXQhdryykyPzlvpmv8fuogmICZq8rVBsq
 1U1A==
X-Gm-Message-State: APjAAAVqWp6RalLCi55JHkt8JZlQDMYUR70yKUXoTusi33VH0H8CIVf4
 Sk682FNUicaHH8WLutO4XhZR45gN
X-Google-Smtp-Source: APXvYqy7NG6KmwLiCxhrn45MUR985yNGqvu4tsI3gQc4vdOWJTLgDrlkJEB11DCYhzKOpemfZiKL/Q==
X-Received: by 2002:a2e:86c1:: with SMTP id n1mr6473745ljj.162.1562949663596; 
 Fri, 12 Jul 2019 09:41:03 -0700 (PDT)
Received: from [192.168.2.145] (ppp79-139-233-208.pppoe.spdop.ru.
 [79.139.233.208])
 by smtp.googlemail.com with ESMTPSA id k8sm1521898lja.24.2019.07.12.09.41.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jul 2019 09:41:02 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] cpuidle: Add unified driver for NVIDIA Tegra SoCs
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20190711031312.10038-1-digetx@gmail.com>
 <20190711031312.10038-4-digetx@gmail.com>
 <c54c43fd-9b11-4aa8-3acf-d2260d0fca4a@gmail.com>
Message-ID: <01ec2515-8c54-4809-b79a-363db12c453f@gmail.com>
Date: Fri, 12 Jul 2019 19:41:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <c54c43fd-9b11-4aa8-3acf-d2260d0fca4a@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_094105_368413_A70423ED 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTEuMDcuMjAxOSAyMTozNSwgRG1pdHJ5IE9zaXBlbmtvINC/0LjRiNC10YI6Cj4gMTEuMDcuMjAx
OSA2OjEzLCBEbWl0cnkgT3NpcGVua28g0L/QuNGI0LXRgjoKPj4gVGhlIG5ldyBkcml2ZXIgaXMg
YmFzZWQgb24gdGhlIG9sZCBDUFUgSWRsZSBkcml2ZXJzIHRoYXQgYXJlIHJlbW92ZWQgbm93Cj4+
IGZyb20gYXJtL2FyY2gvbWFjaC10ZWdyYS8gZGlyZWN0b3J5LiBUaG9zZSByZW1vdmVkIGRyaXZl
cnMgd2VyZSByZXdvcmtlZAo+PiBhbmQgc3F1YXNoZWQgaW50byBhIHNpbmdsZSB1bmlmaWVkIGRy
aXZlciB0aGF0IGNvdmVycyBtdWx0aXBsZSBoYXJkd2FyZQo+PiBnZW5lcmF0aW9ucywgc3RhcnRp
bmcgZnJvbSBUZWdyYTIwIGFuZCBlbmRpbmcgd2l0aCBUZWdyYTEyNC4KPj4KPj4gU2lnbmVkLW9m
Zi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkaWdldHhAZ21haWwuY29tPgo+PiAtLS0KPj4gIGFyY2gv
YXJtL21hY2gtdGVncmEvdGVncmEuYyAgICAgfCAgIDQgKwo+PiAgZHJpdmVycy9jcHVpZGxlL0tj
b25maWcuYXJtICAgICB8ICAgOCArCj4+ICBkcml2ZXJzL2NwdWlkbGUvTWFrZWZpbGUgICAgICAg
IHwgICAxICsKPj4gIGRyaXZlcnMvY3B1aWRsZS9jcHVpZGxlLXRlZ3JhLmMgfCAzMDQgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gIGluY2x1ZGUvc29jL3RlZ3JhL2NwdWlkbGUu
aCAgICAgfCAgIDQgKwo+PiAgNSBmaWxlcyBjaGFuZ2VkLCAzMjEgaW5zZXJ0aW9ucygrKQo+PiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY3B1aWRsZS9jcHVpZGxlLXRlZ3JhLmMKPj4KPj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL21hY2gtdGVncmEvdGVncmEuYyBiL2FyY2gvYXJtL21hY2gt
dGVncmEvdGVncmEuYwo+PiBpbmRleCBkOTIzNzc2OWEzN2MuLmYxY2UyODU3YTI1MSAxMDA2NDQK
Pj4gLS0tIGEvYXJjaC9hcm0vbWFjaC10ZWdyYS90ZWdyYS5jCj4+ICsrKyBiL2FyY2gvYXJtL21h
Y2gtdGVncmEvdGVncmEuYwo+PiBAQCAtMzYsNiArMzYsNyBAQAo+PiAgI2luY2x1ZGUgPGFzbS9t
YWNoL2FyY2guaD4KPj4gICNpbmNsdWRlIDxhc20vbWFjaC90aW1lLmg+Cj4+ICAjaW5jbHVkZSA8
YXNtL21hY2gtdHlwZXMuaD4KPj4gKyNpbmNsdWRlIDxhc20vcHNjaS5oPgo+PiAgI2luY2x1ZGUg
PGFzbS9zZXR1cC5oPgo+PiAgCj4+ICAjaW5jbHVkZSAiYm9hcmQuaCIKPj4gQEAgLTkyLDYgKzkz
LDkgQEAgc3RhdGljIHZvaWQgX19pbml0IHRlZ3JhX2R0X2luaXRfbGF0ZSh2b2lkKQo+PiAgCWlm
IChJU19FTkFCTEVEKENPTkZJR19BUkNIX1RFR1JBXzJ4X1NPQykgJiYKPj4gIAkgICAgb2ZfbWFj
aGluZV9pc19jb21wYXRpYmxlKCJudmlkaWEsdGVncmEyMCIpKQo+PiAgCQlwbGF0Zm9ybV9kZXZp
Y2VfcmVnaXN0ZXJfc2ltcGxlKCJ0ZWdyYTIwLWNwdWZyZXEiLCAtMSwgTlVMTCwgMCk7Cj4+ICsK
Pj4gKwlpZiAoSVNfRU5BQkxFRChDT05GSUdfQVJNX1RFR1JBX0NQVUlETEUpICYmICFwc2NpX3Nt
cF9hdmFpbGFibGUoKSkKPj4gKwkJcGxhdGZvcm1fZGV2aWNlX3JlZ2lzdGVyX3NpbXBsZSgidGVn
cmEtY3B1aWRsZSIsIC0xLCBOVUxMLCAwKTsKPj4gIH0KPj4gIAo+PiAgc3RhdGljIGNvbnN0IGNo
YXIgKiBjb25zdCB0ZWdyYV9kdF9ib2FyZF9jb21wYXRbXSA9IHsKPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybSBiL2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFybQo+
PiBpbmRleCA0OGNiM2Q0YmI3ZDEuLmQ5MDg2MTM2MWYxZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9jcHVpZGxlL0tjb25maWcuYXJtCj4+ICsrKyBiL2RyaXZlcnMvY3B1aWRsZS9LY29uZmlnLmFy
bQo+PiBAQCAtNzYsMyArNzYsMTEgQEAgY29uZmlnIEFSTV9NVkVCVV9WN19DUFVJRExFCj4+ICAJ
ZGVwZW5kcyBvbiBBUkNIX01WRUJVICYmICFBUk02NAo+PiAgCWhlbHAKPj4gIAkgIFNlbGVjdCB0
aGlzIHRvIGVuYWJsZSBjcHVpZGxlIG9uIEFybWFkYSAzNzAsIDM4eCBhbmQgWFAgcHJvY2Vzc29y
cy4KPj4gKwo+PiArY29uZmlnIEFSTV9URUdSQV9DUFVJRExFCj4+ICsJYm9vbCAiQ1BVIElkbGUg
RHJpdmVyIGZvciBOVklESUEgVGVncmEgU29DcyIKPj4gKwlkZXBlbmRzIG9uIEFSQ0hfVEVHUkEg
JiYgIUFSTTY0Cj4+ICsJc2VsZWN0IEFSQ0hfTkVFRFNfQ1BVX0lETEVfQ09VUExFRCBpZiBTTVAK
Pj4gKwlzZWxlY3QgQVJNX0NQVV9TVVNQRU5ECj4+ICsJaGVscAo+PiArCSAgU2VsZWN0IHRoaXMg
dG8gZW5hYmxlIGNwdWlkbGUgZm9yIE5WSURJQSBUZWdyYTIwLzMwLzExNC8xMjQgU29Dcy4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3B1aWRsZS9NYWtlZmlsZSBiL2RyaXZlcnMvY3B1aWRsZS9N
YWtlZmlsZQo+PiBpbmRleCA5ZDcxNzZjZWUzZDMuLjQ3MGQxN2ZhODc0NiAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9jcHVpZGxlL01ha2VmaWxlCj4+ICsrKyBiL2RyaXZlcnMvY3B1aWRsZS9NYWtl
ZmlsZQo+PiBAQCAtMjAsNiArMjAsNyBAQCBvYmotJChDT05GSUdfQVJNX1U4NTAwX0NQVUlETEUp
ICAgICAgICAgKz0gY3B1aWRsZS11eDUwMC5vCj4+ICBvYmotJChDT05GSUdfQVJNX0FUOTFfQ1BV
SURMRSkgICAgICAgICAgKz0gY3B1aWRsZS1hdDkxLm8KPj4gIG9iai0kKENPTkZJR19BUk1fRVhZ
Tk9TX0NQVUlETEUpICAgICAgICArPSBjcHVpZGxlLWV4eW5vcy5vCj4+ICBvYmotJChDT05GSUdf
QVJNX0NQVUlETEUpCQkrPSBjcHVpZGxlLWFybS5vCj4+ICtvYmotJChDT05GSUdfQVJNX1RFR1JB
X0NQVUlETEUpCQkrPSBjcHVpZGxlLXRlZ3JhLm8KPj4gIAo+PiAgIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIwo+PiAgIyBNSVBTIGRyaXZlcnMKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY3B1aWRsZS9j
cHVpZGxlLXRlZ3JhLmMgYi9kcml2ZXJzL2NwdWlkbGUvY3B1aWRsZS10ZWdyYS5jCj4+IG5ldyBm
aWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uNTQ5NzRjZDIyNTVmCj4+IC0t
LSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9jcHVpZGxlL2NwdWlkbGUtdGVncmEuYwo+PiBA
QCAtMCwwICsxLDMwNCBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seQo+PiArLyoKPj4gKyAqIENQVSBpZGxlIGRyaXZlciBmb3IgVGVncmEgQ1BVcwo+PiArICoK
Pj4gKyAqIENvcHlyaWdodCAoYykgMjAxMC0yMDEzLCBOVklESUEgQ29ycG9yYXRpb24uCj4+ICsg
KiBDb3B5cmlnaHQgKGMpIDIwMTEgR29vZ2xlLCBJbmMuCj4+ICsgKiBBdXRob3I6IENvbGluIENy
b3NzIDxjY3Jvc3NAYW5kcm9pZC5jb20+Cj4+ICsgKiAgICAgICAgIEdhcnkgS2luZyA8Z2tpbmdA
bnZpZGlhLmNvbT4KPj4gKyAqCj4+ICsgKiBSZXdvcmsgZm9yIDMuMyBieSBQZXRlciBEZSBTY2hy
aWp2ZXIgPHBkZXNjaHJpanZlckBudmlkaWEuY29tPgo+PiArICoKPj4gKyAqIFRlZ3JhMjAvMTI0
IGRyaXZlciB1bmlmaWNhdGlvbiBieSBEbWl0cnkgT3NpcGVua28gPGRpZ2V0eEBnbWFpbC5jb20+
Cj4+ICsgKi8KPj4gKwo+PiArI2luY2x1ZGUgPGxpbnV4L2NwdWlkbGUuaD4KPj4gKyNpbmNsdWRl
IDxsaW51eC9jcHVtYXNrLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvY3B1X3BtLmg+Cj4+ICsjaW5j
bHVkZSA8bGludXgvZXJybm8uaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9rdGltZS5oPgo+PiArI2lu
Y2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVz
Lmg+Cj4+ICsKPj4gKyNpbmNsdWRlIDxsaW51eC9jbGsvdGVncmEuaD4KPj4gKyNpbmNsdWRlIDxs
aW51eC9maXJtd2FyZS90cnVzdGVkX2ZvdW5kYXRpb25zLmg+Cj4+ICsKPj4gKyNpbmNsdWRlIDxz
b2MvdGVncmEvY3B1aWRsZS5oPgo+PiArI2luY2x1ZGUgPHNvYy90ZWdyYS9mbG93Y3RybC5oPgo+
PiArI2luY2x1ZGUgPHNvYy90ZWdyYS9mdXNlLmg+Cj4+ICsjaW5jbHVkZSA8c29jL3RlZ3JhL3Bt
Lmg+Cj4+ICsKPj4gKyNpbmNsdWRlIDxhc20vY3B1aWRsZS5oPgo+PiArI2luY2x1ZGUgPGFzbS9m
aXJtd2FyZS5oPgo+PiArI2luY2x1ZGUgPGFzbS9zbXBfcGxhdC5oPgo+PiArI2luY2x1ZGUgPGFz
bS9zdXNwZW5kLmg+Cj4+ICsKPj4gKyNkZWZpbmUgVEVHUkFfQzEJCTAKPj4gKyNkZWZpbmUgVEVH
UkFfQzcJCTEKPj4gKyNkZWZpbmUgVEVHUkFfQ0M2CQkyCj4+ICsKPj4gK3N0YXRpYyBhdG9taWNf
dCB0ZWdyYV9pZGxlX2JhcnJpZXI7Cj4+ICsKPj4gK3N0YXRpYyBpbmxpbmUgYm9vbCB0ZWdyYV9j
cHVpZGxlX3VzaW5nX2Zpcm13YXJlKHZvaWQpCj4+ICt7Cj4+ICsJcmV0dXJuIGZpcm13YXJlX29w
cy0+cHJlcGFyZV9pZGxlICYmIGZpcm13YXJlX29wcy0+ZG9faWRsZTsKPj4gK30KPj4gKwo+PiAr
c3RhdGljIGludCB0ZWdyYV9zaHV0ZG93bl9zZWNvbmRhcnlfY3B1KHVuc2lnbmVkIGxvbmcgY3B1
KQo+PiArewo+PiArCXRlZ3JhX2NwdV9kaWUoY3B1KTsKPj4gKwo+PiArCXJldHVybiAtRUlOVkFM
Owo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW50IHRlZ3JhX2F3YWl0X3NlY29uZGFyeV9jcHVzX3No
dXRkb3duKHZvaWQpCj4+ICt7Cj4+ICsJa3RpbWVfdCB0aW1lb3V0ID0ga3RpbWVfYWRkX21zKGt0
aW1lX2dldCgpLCAxKTsKPj4gKwo+PiArCS8qCj4+ICsJICogVGhlIGJvb3QgQ1BVIHNoYWxsIGF3
YWl0IGZvciB0aGUgc2Vjb25kYXJpZXMgc2h1dGRvd24gaW4gb3JkZXIKPj4gKwkgKiB0byBwb3dl
ci1vZmYgQ1BVJ3MgY2x1c3RlciBzYWZlbHkuCj4+ICsJICovCj4+ICsJZG8gewo+PiArCQlpZiAo
dGVncmFfY3B1X3JhaWxfb2ZmX3JlYWR5KCkpCj4+ICsJCQlyZXR1cm4gMDsKPj4gKwo+PiArCX0g
d2hpbGUgKGt0aW1lX2NvbXBhcmUoa3RpbWVfZ2V0KCksIHRpbWVvdXQpIDwgMCk7Cj4+ICsKPj4g
KwlyZXR1cm4gLUVUSU1FRE9VVDsKPj4gK30KPj4gKwo+PiArc3RhdGljIHZvaWQgdGVncmFfd2Fr
ZV91cF9zZWNvbmRhcnlfY3B1cyh2b2lkKQo+PiArewo+PiArCXVuc2lnbmVkIGludCBjcHUsIGxj
cHU7Cj4+ICsKPj4gKwlmb3JfZWFjaF9jcHUobGNwdSwgY3B1X29ubGluZV9tYXNrKSB7Cj4+ICsJ
CWNwdSA9IGNwdV9sb2dpY2FsX21hcChsY3B1KTsKPj4gKwo+PiArCQlpZiAoY3B1ID4gMCkgewo+
PiArCQkJdGVncmFfZW5hYmxlX2NwdV9jbG9jayhjcHUpOwo+PiArCQkJdGVncmFfY3B1X291dF9v
Zl9yZXNldChjcHUpOwo+PiArCQkJZmxvd2N0cmxfd3JpdGVfY3B1X2hhbHQoY3B1LCAwKTsKPj4g
KwkJfQo+PiArCX0KPj4gK30KPj4gKwo+PiArc3RhdGljIGludCB0ZWdyYV9jcHVpZGxlX2NjNl9l
bnRlcih2b2lkKQo+PiArewo+PiArCWludCBlcnI7Cj4+ICsKPj4gKwllcnIgPSB0ZWdyYV9hd2Fp
dF9zZWNvbmRhcnlfY3B1c19zaHV0ZG93bigpOwo+PiArCWlmIChlcnIpCj4+ICsJCXJldHVybiBl
cnI7Cj4+ICsKPj4gKwllcnIgPSB0ZWdyYV9pZGxlX2xwMl9sYXN0KCk7Cj4+ICsKPj4gKwl0ZWdy
YV93YWtlX3VwX3NlY29uZGFyeV9jcHVzKCk7Cj4+ICsKPj4gKwlyZXR1cm4gZXJyOwo+PiArfQo+
PiArCj4+ICtzdGF0aWMgaW50IHRlZ3JhX2NwdWlkbGVfYzdfZW50ZXIodm9pZCkKPj4gK3sKPj4g
KwlpbnQgZXJyOwo+PiArCj4+ICsJaWYgKHRlZ3JhX2NwdWlkbGVfdXNpbmdfZmlybXdhcmUoKSkg
ewo+PiArCQllcnIgPSBjYWxsX2Zpcm13YXJlX29wKHByZXBhcmVfaWRsZSwgVEZfUE1fTU9ERV9M
UDJfTk9GTFVTSF9MMik7Cj4+ICsJCWlmIChlcnIpCj4+ICsJCQlyZXR1cm4gZXJyOwo+PiArCj4+
ICsJCXJldHVybiBjYWxsX2Zpcm13YXJlX29wKGRvX2lkbGUsIDApOwo+PiArCX0KPj4gKwo+PiAr
CXJldHVybiBjcHVfc3VzcGVuZCgwLCB0ZWdyYTMwX3NsZWVwX2NwdV9zZWNvbmRhcnlfZmluaXNo
KTsKPj4gK30KPj4gKwo+PiArc3RhdGljIGludCB0ZWdyYV9jcHVpZGxlX2VudGVyKHN0cnVjdCBj
cHVpZGxlX2RldmljZSAqZGV2LAo+PiArCQkJICAgICAgIGludCBpbmRleCwgdW5zaWduZWQgaW50
IGNwdSkKPj4gK3sKPj4gKwlpbnQgZXJyOwo+PiArCj4+ICsJbG9jYWxfZmlxX2Rpc2FibGUoKTsK
Pj4gKwl0ZWdyYV9zZXRfY3B1X2luX2xwMigpOwo+PiArCWNwdV9wbV9lbnRlcigpOwo+PiArCj4+
ICsJc3dpdGNoIChpbmRleCkgewo+PiArCWNhc2UgVEVHUkFfQzc6Cj4+ICsJCWVyciA9IHRlZ3Jh
X2NwdWlkbGVfYzdfZW50ZXIoKTsKPj4gKwkJYnJlYWs7Cj4+ICsJY2FzZSBURUdSQV9DQzY6Cj4+
ICsJCWNwdWlkbGVfY291cGxlZF9wYXJhbGxlbF9iYXJyaWVyKGRldiwgJnRlZ3JhX2lkbGVfYmFy
cmllcik7Cj4gCj4gSSByZWFsaXplZCB0aGF0IHRoaXMgaXMgbm90IHZlcnkgY29ycmVjdC4gV2Ug
c3RpbGwgbmVlZCB0byBkbyBhIHByb3Blcgo+IGJhcnJpZXIgd2l0aCBTR0kgY2hlY2tpbmcgaW4g
b3JkZXIgdG8gYmFpbCBvdXQgaWYgb3RoZXIgQ1BVIHNlbnQgSVBJCj4gZHVyaW5nIG9mIHRoZSBh
d2FpdGluZyBmb3IgYSBjb3VwbGVkIGJhcnJpZXIgdG8gYXZvaWQgdGhlIG92ZXJoZWFkIG9mCj4g
dW5uZWNlc3NhcnkgcG93ZXItZ2F0aW5nLiBXaWxsIGNvcnJlY3QgdGhhdCBpbiB0aGUgbmV4dCBy
ZXZpc2lvbi4KClVQREFURTogQWN0dWFsbHksIHR1cm5lZCBvdXQgaXQncyBldmVuIGEgbmVjZXNz
aXR5IHRvIGhhbmRsZSB0aGUgU0dJCmJlY2F1c2UgR0lDJ3MgZHJpdmVyIGRvZXNuJ3Qgc2F2ZSBh
bmQgcmVwbGF5IFNHSSBhY3Jvc3MgQ1BVIGNsdXN0ZXIgUE0uCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
