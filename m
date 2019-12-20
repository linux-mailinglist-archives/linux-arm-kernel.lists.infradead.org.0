Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E96127D2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:35:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecs8OagC2Rv69fItKisIwWgz/7grjUvEM0kBi8r/1y8=; b=s9IvasbZ58pMQF
	PD9uyw97qBuzSBq2LaGBeI2RSaxRl6jg9rc4EAX7i6OkTdntZMHtsWtxWjammc2i0lu8EUHnGq9mI
	mtM0DZ+xwGIo6At2CpowL4B3zB5/ztizFbestqvS9it++jrbZSr3Tt4e4HIjwABze1JmcHaebdeH3
	Je1+12jkZoGzaA9kAkvziIDMI4R8Lj9OcBDtIu3F0mzftPcxjWzmYXD8oxZNjH0vMMI8bM5/9iL04
	fqCfxRhz+0L6RgvOYgKaVwJ3mnBe3B0Awi6uTeohIFaGYnVRmQ9KhddABlvTIiD1JRWxXJgF6Gunn
	S4yRaAiaDHJnuaxFsTWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJN6-0005aY-NL; Fri, 20 Dec 2019 14:35:16 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJL6-0004Ak-Lr
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:33:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576852368;
 bh=+C6MFj3s6IODdFsx+eagSNyCsVBad3UUv97++hQqWtg=;
 h=X-UI-Sender-Class:To:Cc:References:Subject:From:Date:In-Reply-To;
 b=PdJtT2L7N42Ax8ywQLZ2x2T1r8dQ3IRKqGSPyj5lO6Kt+JQ24Lar7sA6LKoq75HhK
 8PRVWpXAXSDQ1OHs9zG+Lx39dYNMucltyC17JLbwl8eiwlE4W9EU9TkaQwIpKkrAaZ
 xy9YZLTsFrD52n7+cLPrWsn2h32hkIqY8zonesos=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.244.94.196]) by smtp.web.de (mrweb102
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0Lhev7-1hw4Dh1IUj-00mv9p; Fri, 20
 Dec 2019 15:32:48 +0100
To: Zengruan Ye <yezengruan@huawei.com>, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, virtualization@lists.linux-foundation.org
References: <20191217135549.3240-2-yezengruan@huawei.com>
Subject: Re: [PATCH 1/5] KVM: arm64: Document PV-lock interface
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 mQINBFg2+xABEADBJW2hoUoFXVFWTeKbqqif8VjszdMkriilx90WB5c0ddWQX14h6w5bT/A8
 +v43YoGpDNyhgA0w9CEhuwfZrE91GocMtjLO67TAc2i2nxMc/FJRDI0OemO4VJ9RwID6ltwt
 mpVJgXGKkNJ1ey+QOXouzlErVvE2fRh+KXXN1Q7fSmTJlAW9XJYHS3BDHb0uRpymRSX3O+E2
 lA87C7R8qAigPDZi6Z7UmwIA83ZMKXQ5stA0lhPyYgQcM7fh7V4ZYhnR0I5/qkUoxKpqaYLp
 YHBczVP+Zx/zHOM0KQphOMbU7X3c1pmMruoe6ti9uZzqZSLsF+NKXFEPBS665tQr66HJvZvY
 GMDlntZFAZ6xQvCC1r3MGoxEC1tuEa24vPCC9RZ9wk2sY5Csbva0WwYv3WKRZZBv8eIhGMxs
 rcpeGShRFyZ/0BYO53wZAPV1pEhGLLxd8eLN/nEWjJE0ejakPC1H/mt5F+yQBJAzz9JzbToU
 5jKLu0SugNI18MspJut8AiA1M44CIWrNHXvWsQ+nnBKHDHHYZu7MoXlOmB32ndsfPthR3GSv
 jN7YD4Ad724H8fhRijmC1+RpuSce7w2JLj5cYj4MlccmNb8YUxsE8brY2WkXQYS8Ivse39MX
 BE66MQN0r5DQ6oqgoJ4gHIVBUv/ZwgcmUNS5gQkNCFA0dWXznQARAQABtCZNYXJrdXMgRWxm
 cmluZyA8TWFya3VzLkVsZnJpbmdAd2ViLmRlPokCVAQTAQgAPhYhBHDP0hzibeXjwQ/ITuU9
 Figxg9azBQJYNvsQAhsjBQkJZgGABQsJCAcCBhUICQoLAgQWAgMBAh4BAheAAAoJEOU9Figx
 g9azcyMP/iVihZkZ4VyH3/wlV3nRiXvSreqg+pGPI3c8J6DjP9zvz7QHN35zWM++1yNek7Ar
 OVXwuKBo18ASlYzZPTFJZwQQdkZSV+atwIzG3US50ZZ4p7VyUuDuQQVVqFlaf6qZOkwHSnk+
 CeGxlDz1POSHY17VbJG2CzPuqMfgBtqIU1dODFLpFq4oIAwEOG6fxRa59qbsTLXxyw+PzRaR
 LIjVOit28raM83Efk07JKow8URb4u1n7k9RGAcnsM5/WMLRbDYjWTx0lJ2WO9zYwPgRykhn2
 sOyJVXk9xVESGTwEPbTtfHM+4x0n0gC6GzfTMvwvZ9G6xoM0S4/+lgbaaa9t5tT/PrsvJiob
 kfqDrPbmSwr2G5mHnSM9M7B+w8odjmQFOwAjfcxoVIHxC4Cl/GAAKsX3KNKTspCHR0Yag78w
 i8duH/eEd4tB8twcqCi3aCgWoIrhjNS0myusmuA89kAWFFW5z26qNCOefovCx8drdMXQfMYv
 g5lRk821ZCNBosfRUvcMXoY6lTwHLIDrEfkJQtjxfdTlWQdwr0mM5ye7vd83AManSQwutgpI
 q+wE8CNY2VN9xAlE7OhcmWXlnAw3MJLW863SXdGlnkA3N+U4BoKQSIToGuXARQ14IMNvfeKX
 NphLPpUUnUNdfxAHu/S3tPTc/E/oePbHo794dnEm57LuuQINBFg2+xABEADZg/T+4o5qj4cw
 nd0G5pFy7ACxk28mSrLuva9tyzqPgRZ2bdPiwNXJUvBg1es2u81urekeUvGvnERB/TKekp25
 4wU3I2lEhIXj5NVdLc6eU5czZQs4YEZbu1U5iqhhZmKhlLrhLlZv2whLOXRlLwi4jAzXIZAu
 76mT813jbczl2dwxFxcT8XRzk9+dwzNTdOg75683uinMgskiiul+dzd6sumdOhRZR7YBT+xC
 wzfykOgBKnzfFscMwKR0iuHNB+VdEnZw80XGZi4N1ku81DHxmo2HG3icg7CwO1ih2jx8ik0r
 riIyMhJrTXgR1hF6kQnX7p2mXe6K0s8tQFK0ZZmYpZuGYYsV05OvU8yqrRVL/GYvy4Xgplm3
 DuMuC7/A9/BfmxZVEPAS1gW6QQ8vSO4zf60zREKoSNYeiv+tURM2KOEj8tCMZN3k3sNASfoG
 fMvTvOjT0yzMbJsI1jwLwy5uA2JVdSLoWzBD8awZ2X/eCU9YDZeGuWmxzIHvkuMj8FfX8cK/
 2m437UA877eqmcgiEy/3B7XeHUipOL83gjfq4ETzVmxVswkVvZvR6j2blQVr+MhCZPq83Ota
 xNB7QptPxJuNRZ49gtT6uQkyGI+2daXqkj/Mot5tKxNKtM1Vbr/3b+AEMA7qLz7QjhgGJcie
 qp4b0gELjY1Oe9dBAXMiDwARAQABiQI8BBgBCAAmFiEEcM/SHOJt5ePBD8hO5T0WKDGD1rMF
 Alg2+xACGwwFCQlmAYAACgkQ5T0WKDGD1rOYSw/+P6fYSZjTJDAl9XNfXRjRRyJSfaw6N1pA
 Ahuu0MIa3djFRuFCrAHUaaFZf5V2iW5xhGnrhDwE1Ksf7tlstSne/G0a+Ef7vhUyeTn6U/0m
 +/BrsCsBUXhqeNuraGUtaleatQijXfuemUwgB+mE3B0SobE601XLo6MYIhPh8MG32MKO5kOY
 hB5jzyor7WoN3ETVNQoGgMzPVWIRElwpcXr+yGoTLAOpG7nkAUBBj9n9TPpSdt/npfok9ZfL
 /Q+ranrxb2Cy4tvOPxeVfR58XveX85ICrW9VHPVq9sJf/a24bMm6+qEg1V/G7u/AM3fM8U2m
 tdrTqOrfxklZ7beppGKzC1/WLrcr072vrdiN0icyOHQlfWmaPv0pUnW3AwtiMYngT96BevfA
 qlwaymjPTvH+cTXScnbydfOQW8220JQwykUe+sHRZfAF5TS2YCkQvsyf7vIpSqo/ttDk4+xc
 Z/wsLiWTgKlih2QYULvW61XU+mWsK8+ZlYUrRMpkauN4CJ5yTpvp+Orcz5KixHQmc5tbkLWf
 x0n1QFc1xxJhbzN+r9djSGGN/5IBDfUqSANC8cWzHpWaHmSuU3JSAMB/N+yQjIad2ztTckZY
 pwT6oxng29LzZspTYUEzMz3wK2jQHw+U66qBFk8whA7B2uAU1QdGyPgahLYSOa4XAEGb6wbI FEE=
Message-ID: <2337a083-499f-7778-7bf3-9f525a04e17a@web.de>
Date: Fri, 20 Dec 2019 15:32:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191217135549.3240-2-yezengruan@huawei.com>
Content-Language: en-US
X-Provags-ID: V03:K1:eJYxpqmJrjI8l7uVlPbVM9B8T1kMzgJFfkbBbqKHGvl6gjBpJJw
 C42j0xdiOOJKFfA4VTeZNgusOx8YeKknXaQibjgixcLUtFa4nYRpyQZpoucxp1SKWgjhI9w
 /rkiqNIKQaH85shrWQrcuaZNB7jXcwZSpVQHfu0xItAWBjjD03P9Tm6feNl/ZgumAfO3/jk
 9J8QaNxyfifXBhzD/DD8w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ckc/dqP8/+Q=:eBlZwjc9kktQVftlyG/Rbs
 HF2tUUNsb4a6tgPoleDcI+0dcmYqjfGmLKzPr6KLI6Tq9IRTCCyYlh86dh4oNC3dARsG12H3d
 YhsfgMQIJU92Tkkc4wqM3k1vsBu3OD4Y3j3lU3f5ZVzUgGMrSvoQFhhkxdWKl/YE9tlOIWAC9
 usyPCZgIYPXMDLcZk/LcJvB2MUlRdcOdGi6/AR3hfV8g/KMJU8AFh9vRQHLgIMzknqz9hHNFr
 eonFzVZEBwSo5LOXd8cPHTZ4UuO6sypD0Bdt93mkqQwtnn2lH5z9cNSDeD2El3Y0MnUx0eUjI
 5LaUGPdte/MZOXQ3CVEHdUFgQdXzpRYfoGMAujHpz3xhTs6glY8dntXMVo68QHLuAeGGDrcz9
 OYvxifZg1erlIqBIZY8zJI/LAghtsFPKy5CqygL83j9E/er1cWjo7zE4TbHnRvAHE0nn0WKD1
 fF1re7ZikB3fNctI/KeiZbozB2OYXQBNuQYIS9/J3U4v1dnuzCmphL7+sn2/OCJ/pLMNmavEg
 77GxRFmYJSqJEKYMAUY5YJx9PDPfC5cOI+Y6FhlSENAXGPJsyndipfiX3fEyInEUFSPp+1MjS
 AYhglQzM2sReOmoIiFX7OHFLcQrECh5BWopsfoG40OWyjbUv5THXGcRinKv2S8mJQuclDm1gR
 wWKtzhNHU8aKuViW7bKMzYqyJ89arVe0WUZv79OK/fhfk/e0msTMa5YBs5KN0OtKK6xQR1Jxj
 mxyu2xPFrh8Lxs7CjeW8leJnhrTCKrmDTevieU8p0X1M5mEI2mO8WFbBt5uHhw3QfBpzf5dMH
 cx3mtkMF9Zxr1wj/wGBYXe89IPtae/1HGnH38OYn2mfA+z5MJK0Lt+Lnb3B4RpokR2itZQEBf
 +/Gr8bMAbXjzERzvbH01PMVOul1jpTj91Y/BExrGpj1YSGvpJA4vyUslNklaAmcjERSZFfiCj
 0Jf67dtSXaPhAR6hlcCfNHJXDL2JMPCTY2vNBf1nNCh7jolGUi6WoSvUtsAPARdsHocgUgzDY
 ojpCcWJK0jZFVQ79qLCc5uBKMCS01hlMfNztZnS2i2YKJLSKnFeFE9XDYQNhZSWApKDmUZFGU
 fWIicYLhOnuYJKRZj+awmts+TnjzSr2XR8GLmjB5OSmwoTl3V9/Oa3ngrDIWKa/42hS8YO+gm
 VPksdPl251aFkwH22pmix8NDetfS2E8QXTOiuLdMMJ43rWll2tFroU0QpS2DQhI/5NFZGy/Q+
 BLTgWp92CbaCPX1wgPB287F+/0LyDqTNxJ5AGdajR2T5hop/TsnD6TlFe7sk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_063313_067554_97BD12A8 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (markus.elfring[at]web.de)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, James Morse <james.morse@arm.com>,
 Marc Zyngier <maz@kernel.org>, Steven Price <steven.price@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

4oCmDQo+ICsrKyBiL0RvY3VtZW50YXRpb24vdmlydC9rdm0vYXJtL3B2bG9jay5yc3QNCuKApg0K
PiArUGFyYXZpcnR1YWxpemVkIGxvY2sgc3VwcG9ydCBmb3IgYXJtNjQNCj4gKz09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+ICsNCj4gK0tWTS9hcm02NCBwcm92aWRzIHNv
bWUg4oCmDQrigKYNCg0KSSBzdWdnZXN0IHRvIGF2b2lkIGEgdHlwbyBoZXJlLg0KDQpSZWdhcmRz
LA0KTWFya3VzDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
