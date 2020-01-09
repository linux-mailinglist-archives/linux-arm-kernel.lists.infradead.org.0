Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3801D135850
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19KXlUC0xOW56jPoZ1GO79cCcNAtpWO5NwNtTZVFXug=; b=PajFaKnuatOcfz
	uTJNRh7VcRdJCbaB+4mBzhr/NXw6KgnvPODT7Tp4BqtXr/hEVj+Yjae0Ab37qrnMW6lsNnV29cQss
	eb8z2jFr8r399U5HdBlwS6HMOOS2EWQFMoXYVwjirFvcF7SDrZg2zfpOrW8/NQcG6YHCmy59/Myw9
	jzQhyH/F7QM6JoiaqcW2BMeNvKwuEV35PTIQANd+FH/U4MJ2FjGztqrsVD3t3vRQgkXtQEWY8/F6W
	RVK1exWq0JPEVo6uG34IRRpDfTILwrf6WzybaBT1gJm2pXlHGzf+wHGM7rQsoZGgcHDBitexnxi7H
	W51sBFY68ZNQm3URXwRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWFr-0005ij-MI; Thu, 09 Jan 2020 11:45:35 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWFi-0005hj-Qf
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:45:28 +0000
Received: by mail-wr1-x443.google.com with SMTP id c14so7047094wrn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 03:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=M+Hleybvc0xNgkFFNo5eVdjk4X0NArxdjlsDgPzB5xM=;
 b=QMff/w1W9s6CsJj7ISgeRx7ZokETKM1nkN+g0axCcpzfZHTd12c1zJ5D+3CHxqwvXE
 s0k66KlUh3BR7eP7CwGA8+3/BP5ELuADkxMGo4M9/GAGivWntmJQpYwH1TUumw8gW2Da
 3WioL9jhSPLhwcj2yKVHIpVfXrXXrXdKWEU/rsXeQEHoej8vPyA/iKLBu5AzX0QoFZYm
 0vyPMJVvnmx3ktn8dFkHTuaGOw9HziD5NrSodSgOWBcH+SiJA7RsOHSNrHnzUSdOFciK
 QFm7Ly+EYGZMZa72e0H9rkgadLLCSDC+kWdBvN8Cp6kQ0zdj4xD2Y9OangAPTDz9kiWC
 +0oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=M+Hleybvc0xNgkFFNo5eVdjk4X0NArxdjlsDgPzB5xM=;
 b=YBqTHtHKQPhBvv+7HteFVuaAijMLF71ag777HZQJhc0PjaaoH9+KJmCIhkIBbj9PeA
 Q77ahDg3TsAJY0YCwrl6soyaohdBVBT+y4MvCTifdk/RsW6X7m9/a3FGN9v/lUpqCF+T
 XR7T3pi2lP/ZqBN3l72HSyJFCJCEP2Nd56J6h7YijrB8gkblXT+cij4Z7RgXyhXGEmL3
 epcvKA82TpMdlZ9pF1Rqu7HAz3w4p4By9koWbZF6mnyNUJQcYBJMCvPN8Z5R7O+cJpCd
 dZ7CMMcdiCnMm64Nakaeofm3Y+Cr1MURR2CI+95AcpmGeZJzSNUr4+9Pu75vcBtOo0Bc
 GQIA==
X-Gm-Message-State: APjAAAVMEJj8Tpp9adIxzDxruuziXTZEtg4/apYU5H+4gEjhwrAPilgY
 XeF+I5W6nqUXNU4y/W5WV1MDZg==
X-Google-Smtp-Source: APXvYqz13xiaB2c/AHMygGlCgFvL4DXkCGf0TFO1taGJ+xr9xsy5Q8LnIcRYOXeQIqh7/inPIHKmNw==
X-Received: by 2002:a5d:6886:: with SMTP id h6mr10473834wru.154.1578570325074; 
 Thu, 09 Jan 2020 03:45:25 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d?
 ([2a01:e34:ed2f:f020:f1d5:61e0:e9d8:1c3d])
 by smtp.googlemail.com with ESMTPSA id b16sm8163491wrj.23.2020.01.09.03.45.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jan 2020 03:45:24 -0800 (PST)
Subject: Re: [PATCH v2 06/20] thermal: exynos: Rename Samsung and Exynos to
 lowercase
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org
References: <20200104152107.11407-1-krzk@kernel.org>
 <20200104152107.11407-7-krzk@kernel.org>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 xsFNBFv/yykBEADDdW8RZu7iZILSf3zxq5y8YdaeyZjI/MaqgnvG/c3WjFaunoTMspeusiFE
 sXvtg3ehTOoyD0oFjKkHaia1Zpa1m/gnNdT/WvTveLfGA1gH+yGes2Sr53Ht8hWYZFYMZc8V
 2pbSKh8wepq4g8r5YI1XUy9YbcTdj5mVrTklyGWA49NOeJz2QbfytMT3DJmk40LqwK6CCSU0
 9Ed8n0a+vevmQoRZJEd3Y1qXn2XHys0F6OHCC+VLENqNNZXdZE9E+b3FFW0lk49oLTzLRNIq
 0wHeR1H54RffhLQAor2+4kSSu8mW5qB0n5Eb/zXJZZ/bRiXmT8kNg85UdYhvf03ZAsp3qxcr
 xMfMsC7m3+ADOtW90rNNLZnRvjhsYNrGIKH8Ub0UKXFXibHbafSuq7RqyRQzt01Ud8CAtq+w
 P9EftUysLtovGpLSpGDO5zQ++4ZGVygdYFr318aGDqCljKAKZ9hYgRimPBToDedho1S1uE6F
 6YiBFnI3ry9+/KUnEP6L8Sfezwy7fp2JUNkUr41QF76nz43tl7oersrLxHzj2dYfWUAZWXva
 wW4IKF5sOPFMMgxoOJovSWqwh1b7hqI+nDlD3mmVMd20VyE9W7AgTIsvDxWUnMPvww5iExlY
 eIC0Wj9K4UqSYBOHcUPrVOKTcsBVPQA6SAMJlt82/v5l4J0pSQARAQABzSpEYW5pZWwgTGV6
 Y2FubyA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz7Cwa4EEwEIAEECGwEFCwkIBwIGFQoJ
 CAsCBBYCAwECHgECF4ACGQEWIQQk1ibyU76eh+bOW/SP9LjScWdVJwUCXAkeagUJDRnjhwAh
 CRCP9LjScWdVJxYhBCTWJvJTvp6H5s5b9I/0uNJxZ1Un69gQAJK0ODuKzYl0TvHPU8W7uOeu
 U7OghN/DTkG6uAkyqW+iIVi320R5QyXN1Tb6vRx6+yZ6mpJRW5S9fO03wcD8Sna9xyZacJfO
 UTnpfUArs9FF1pB3VIr95WwlVoptBOuKLTCNuzoBTW6jQt0sg0uPDAi2dDzf+21t/UuF7I3z
 KSeVyHuOfofonYD85FkQJN8lsbh5xWvsASbgD8bmfI87gEbt0wq2ND5yuX+lJK7FX4lMO6gR
 ZQ75g4KWDprOO/w6ebRxDjrH0lG1qHBiZd0hcPo2wkeYwb1sqZUjQjujlDhcvnZfpDGR4yLz
 5WG+pdciQhl6LNl7lctNhS8Uct17HNdfN7QvAumYw5sUuJ+POIlCws/aVbA5+DpmIfzPx5Ak
 UHxthNIyqZ9O6UHrVg7SaF3rvqrXtjtnu7eZ3cIsfuuHrXBTWDsVwub2nm1ddZZoC530BraS
 d7Y7eyKs7T4mGwpsi3Pd33Je5aC/rDeF44gXRv3UnKtjq2PPjaG/KPG0fLBGvhx0ARBrZLsd
 5CTDjwFA4bo+pD13cVhTfim3dYUnX1UDmqoCISOpzg3S4+QLv1bfbIsZ3KDQQR7y/RSGzcLE
 z164aDfuSvl+6Myb5qQy1HUQ0hOj5Qh+CzF3CMEPmU1v9Qah1ThC8+KkH/HHjPPulLn7aMaK
 Z8t6h7uaAYnGzjMEXZLIEhYJKwYBBAHaRw8BAQdAGdRDglTydmxI03SYiVg95SoLOKT5zZW1
 7Kpt/5zcvt3CwhsEGAEIACAWIQQk1ibyU76eh+bOW/SP9LjScWdVJwUCXZLIEgIbAgCvCRCP
 9LjScWdVJ40gBBkWCAAdFiEEbinX+DPdhovb6oob3uarTi9/eqYFAl2SyBIAIQkQ3uarTi9/
 eqYWIQRuKdf4M92Gi9vqihve5qtOL396pnZGAP0c3VRaj3RBEOUGKxHzcu17ZUnIoJLjpHdk
 NfBnWU9+UgD/bwTxE56Wd8kQZ2e2UTy4BM8907FsJgAQLL4tD2YZggwWIQQk1ibyU76eh+bO
 W/SP9LjScWdVJ5CaD/0YQyfUzjpR1GnCSkbaLYTEUsyaHuWPI/uSpKTtcbttpYv+QmYsIwD9
 8CeH3zwY0Xl/1fE9Hy59z6Vxv9YVapLx0nPDOA1zDVNq2MnutxHb8t+Imjz4ERCxysqtfYrv
 gao3E/h0c8SEeh+bh5MkjwmU8CwZ3doWyiVdULKESe7/Gs5OuhFzaDVPCpWdsKdCAGyUuP/+
 qRWwKGVpWP0Rrt6MTK24Ibeu3xEZO8c3XOEXH5d9nf6YRqBEIizAecoCr00E9c+6BlRS0AqR
 OQC3/Mm7rWtco3+WOridqVXkko9AcZ8AiM5nu0F8AqYGKg0y7vkL2LOP8us85L0p57MqIR1u
 gDnITlTY0x4RYRWJ9+k7led5WsnWlyv84KNzbDqQExTm8itzeZYW9RvbTS63r/+FlcTa9Cz1
 5fW3Qm0BsyECvpAD3IPLvX9jDIR0IkF/BQI4T98LQAkYX1M/UWkMpMYsL8tLObiNOWUl4ahb
 PYi5Yd8zVNYuidXHcwPAUXqGt3Cs+FIhihH30/Oe4jL0/2ZoEnWGOexIFVFpue0jdqJNiIvA
 F5Wpx+UiT5G8CWYYge5DtHI3m5qAP9UgPuck3N8xCihbsXKX4l8bdHfziaJuowief7igeQs/
 WyY9FnZb0tl29dSa7PdDKFWu+B+ZnuIzsO5vWMoN6hMThTl1DxS+jc7ATQRb/8z6AQgAvSkg
 5w7dVCSbpP6nXc+i8OBz59aq8kuL3YpxT9RXE/y45IFUVuSc2kuUj683rEEgyD7XCf4QKzOw
 +XgnJcKFQiACpYAowhF/XNkMPQFspPNM1ChnIL5KWJdTp0DhW+WBeCnyCQ2pzeCzQlS/qfs3
 dMLzzm9qCDrrDh/aEegMMZFO+reIgPZnInAcbHj3xUhz8p2dkExRMTnLry8XXkiMu9WpchHy
 XXWYxXbMnHkSRuT00lUfZAkYpMP7La2UudC/Uw9WqGuAQzTqhvE1kSQe0e11Uc+PqceLRHA2
 bq/wz0cGriUrcCrnkzRmzYLoGXQHqRuZazMZn2/pSIMZdDxLbwARAQABwsGNBBgBCAAgFiEE
 JNYm8lO+nofmzlv0j/S40nFnVScFAlv/zPoCGwwAIQkQj/S40nFnVScWIQQk1ibyU76eh+bO
 W/SP9LjScWdVJ/g6EACFYk+OBS7pV9KZXncBQYjKqk7Kc+9JoygYnOE2wN41QN9Xl0Rk3wri
 qO7PYJM28YjK3gMT8glu1qy+Ll1bjBYWXzlsXrF4szSqkJpm1cCxTmDOne5Pu6376dM9hb4K
 l9giUinI4jNUCbDutlt+Cwh3YuPuDXBAKO8YfDX2arzn/CISJlk0d4lDca4Cv+4yiJpEGd/r
 BVx2lRMUxeWQTz+1gc9ZtbRgpwoXAne4iw3FlR7pyg3NicvR30YrZ+QOiop8psWM2Fb1PKB9
 4vZCGT3j2MwZC50VLfOXC833DBVoLSIoL8PfTcOJOcHRYU9PwKW0wBlJtDVYRZ/CrGFjbp2L
 eT2mP5fcF86YMv0YGWdFNKDCOqOrOkZVmxai65N9d31k8/O9h1QGuVMqCiOTULy/h+FKpv5q
 t35tlzA2nxPOX8Qj3KDDqVgQBMYJRghZyj5+N6EKAbUVa9Zq8xT6Ms2zz/y7CPW74G1GlYWP
 i6D9VoMMi6ICko/CXUZ77OgLtMsy3JtzTRbn/wRySOY2AsMgg0Sw6yJ0wfrVk6XAMoLGjaVt
 X4iPTvwocEhjvrO4eXCicRBocsIB2qZaIj3mlhk2u4AkSpkKm9cN0KWYFUxlENF4/NKWMK+g
 fGfsCsS3cXXiZpufZFGr+GoHwiELqfLEAQ9AhlrHGCKcgVgTOI6NHg==
Message-ID: <7a61f167-07be-f60d-ec8e-cca171caeb94@linaro.org>
Date: Thu, 9 Jan 2020 12:45:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200104152107.11407-7-krzk@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_034526_870715_C6D0F416 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, linux-pm@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQvMDEvMjAyMCAxNjoyMCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBGaXggdXAg
aW5jb25zaXN0ZW50IHVzYWdlIG9mIHVwcGVyIGFuZCBsb3dlcmNhc2UgbGV0dGVycyBpbiAiU2Ft
c3VuZyIKPiBhbmQgIkV4eW5vcyIgbmFtZXMuCj4gCj4gIlNBTVNVTkciIGFuZCAiRVhZTk9TIiBh
cmUgbm90IGFiYnJldmlhdGlvbnMgYnV0IHJlZ3VsYXIgdHJhZGVtYXJrZWQKPiBuYW1lcy4gIFRo
ZXJlZm9yZSB0aGV5IHNob3VsZCBiZSB3cml0dGVuIHdpdGggbG93ZXJjYXNlIGxldHRlcnMgc3Rh
cnRpbmcKPiB3aXRoIGNhcGl0YWwgbGV0dGVyLgo+IAo+IFRoZSBsb3dlcmNhc2UgIkV4eW5vcyIg
bmFtZSBpcyBwcm9tb3RlZCBieSBpdHMgbWFudWZhY3R1cmVyIFNhbXN1bmcKPiBFbGVjdHJvbmlj
cyBDby4sIEx0ZC4sIGluIGFkdmVydGlzZW1lbnQgbWF0ZXJpYWxzIGFuZCBvbiB3ZWJzaXRlLgo+
IAo+IEFsdGhvdWdoIGFkdmVydGlzZW1lbnQgbWF0ZXJpYWxzIHVzdWFsbHkgdXNlIHVwcGVyY2Fz
ZSAiU0FNU1VORyIsIHRoZQo+IGxvd2VyY2FzZSB2ZXJzaW9uIGlzIHVzZWQgaW4gYWxsIGxlZ2Fs
IGFzcGVjdHMgKGUuZy4gb24gV2lraXBlZGlhIGFuZCBpbgo+IHByaXZhY3kvbGVnYWwgc3RhdGVt
ZW50cyBvbgo+IGh0dHBzOi8vd3d3LnNhbXN1bmcuY29tL3NlbWljb25kdWN0b3IvcHJpdmFjeS1n
bG9iYWwvKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtl
cm5lbC5vcmc+Cj4gLS0tCgpBcHBsaWVkLgoKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcv
PiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxv
dyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9v
ayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93
d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
