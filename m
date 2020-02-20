Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B07A165C68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 12:05:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2Wx3GuPbtHzEbcYNayaKJdG2ykebK6EwzNDgrHUH3c=; b=AZj4XMuF+6p8aN
	4s//6/CAiLYPz4BZqZHLGpMAMDnqsdWUMr05sJxhDjcJxTeVRkacMFZjNfQaqV89PrbRD/npUv32l
	OuzmzQFKO/+5klFb+JTLmbyUu+4ZmVKajqsL5TMgV6MBp5PEpIg99rPQRvzBBah0489mR9bzcl5Rw
	5ps8xMpqbF4thlMN6DAUV8lweLlUjvqvQKBUPWjLKoFbOxcIT0DO/stUoJ638IX83TfWrNHKXvZ06
	A3AEPVsrqxdD8eZQx8ohOb0VIyeADd+Aap2aVUbXNYezY+KB90I62XKtvtvivzEE09RPx7MiWcjMk
	LGNvuIi8vskiAhI/09lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4jeI-0004BE-18; Thu, 20 Feb 2020 11:05:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4je7-0004AW-I3
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 11:05:33 +0000
Received: by mail-wr1-x442.google.com with SMTP id w15so4130095wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 03:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BU42bw+Dgu0RlgBgffTsz8dDeoClFdyzDhVIEgI7g18=;
 b=vWjkmVvsmZ9VPtxL25APBPL4B5hmacS/NXLVVpCBiksO4825PCUcpNycB082OAz84d
 8gFxM6kZiWW4LCa8WI9Cjytha4AD9ueTiot2PckuMba9KMfvHWecQdtzQWhm/312hw29
 nW1sRbl9QbEh1U9pULemvqx7DLQcKXezi9/lt+wErDw6vxbObKAvvineQfKy9IKIgA7K
 g2qWgak3neymBc4fc4fHDcR5Z2yRHWWhIjlVkbQ0jNm/qtoa3HJ3simXBH+m3PTJWoaL
 wqGa2zZlVzsFm5TKBqpjgUN+DdJQ5eQOq+eXYfJPEYM+TLSowGiBPJcLWYMxG9vaIvdb
 X0NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=BU42bw+Dgu0RlgBgffTsz8dDeoClFdyzDhVIEgI7g18=;
 b=T18lI73DiTXz90CAEX7gobVTTms+ztdmk1niu0VdM/UyZ2aTY6v1BnxT7uz9XYTBXS
 x4J0Lnoz07XClGPkjU5UJtUJOsyOcPqbi+VKKytlGQ5EhfHsbDiH0Bx0tYJATYH7Tj26
 Veqg3JYm287JOXy7CdDqVwyunNLfC2hPYCWkS41b5h8tWga0MYAAqX0wpLn+ljVH3v1W
 bP2nKJOmv1gMzz0k2MQPm0m8ktdBUw97ePhFAAZRCeSnfUrWp5th9x25Bbz6fPfO5NaD
 R7UTelolhDvPPupXADr/yDT+dHPtlXFVribUp5/FRRX2tV8lxbIQ4qVseWgK6eV4bk1m
 KZOw==
X-Gm-Message-State: APjAAAW9uVSoc3YS4N4gqRa27YXWP+hVnJ3DPcqg5YxFjEyKDV4GEzeW
 jAlRJF+SfiG00iljg9tWubB5Hw==
X-Google-Smtp-Source: APXvYqxUGdl/VXdVNrTcJJDFjgVeTZWAmNAqHqSCXFTeHuZoE5SUTS7rZoX21pdE+g6Gvy5/EWb+7Q==
X-Received: by 2002:a5d:4c84:: with SMTP id z4mr43094191wrs.423.1582196726030; 
 Thu, 20 Feb 2020 03:05:26 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:1d8d:74ba:7173:f47f?
 ([2a01:e34:ed2f:f020:1d8d:74ba:7173:f47f])
 by smtp.googlemail.com with ESMTPSA id w13sm3934952wru.38.2020.02.20.03.05.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 03:05:25 -0800 (PST)
Subject: Re: [PATCH v4 3/3] clocksource: Add Low Power STM32 timers driver
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>
References: <20200217134546.14562-1-benjamin.gaignard@st.com>
 <20200217134546.14562-4-benjamin.gaignard@st.com>
 <687ab83c-6381-57aa-3bc1-3628e27644b5@linaro.org>
 <9cc4af9e-27d0-96c3-b3f1-20c88f89b70a@st.com>
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
Message-ID: <ee131515-cd4c-00b2-5e1f-3abefb634bdd@linaro.org>
Date: Thu, 20 Feb 2020 12:05:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <9cc4af9e-27d0-96c3-b3f1-20c88f89b70a@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_030531_603866_B9B823A6 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pascal PAILLET-LME <p.paillet@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAvMDIvMjAyMCAxMTo0NSwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6CgpbIC4uLiBdCgo+
Pj4gK3sKPj4+ICsJc3RydWN0IHN0bTMyX2xwX3ByaXZhdGUgKnByaXYgPSB0b19wcml2KGNsa2V2
dCk7Cj4+PiArCj4+PiArCS8qIGRpc2FibGUgTFBUSU1FUiB0byBiZSBhYmxlIHRvIHdyaXRlIGlu
dG8gSUVSIHJlZ2lzdGVyKi8KPj4+ICsJcmVnbWFwX3dyaXRlKHByaXYtPnJlZywgU1RNMzJfTFBU
SU1fQ1IsIDApOwo+Pj4gKwkvKiBlbmFibGUgQVJSIGludGVycnVwdCAqLwo+Pj4gKwlyZWdtYXBf
d3JpdGUocHJpdi0+cmVnLCBTVE0zMl9MUFRJTV9JRVIsIFNUTTMyX0xQVElNX0FSUk1JRSk7Cj4+
PiArCS8qIGVuYWJsZSBMUFRJTUVSIHRvIGJlIGFibGUgdG8gd3JpdGUgaW50byBBUlIgcmVnaXN0
ZXIgKi8KPj4+ICsJcmVnbWFwX3dyaXRlKHByaXYtPnJlZywgU1RNMzJfTFBUSU1fQ1IsIFNUTTMy
X0xQVElNX0VOQUJMRSk7Cj4+PiArCS8qIHNldCBuZXh0IGV2ZW50IGNvdW50ZXIgKi8KPj4+ICsJ
cmVnbWFwX3dyaXRlKHByaXYtPnJlZywgU1RNMzJfTFBUSU1fQVJSLCBldnQpOwo+Pj4gKwo+Pj4g
KwkvKiBzdGFydCBjb3VudGVyICovCj4+PiArCWlmIChpc19wZXJpb2RpYykKPj4+ICsJCXJlZ21h
cF93cml0ZShwcml2LT5yZWcsIFNUTTMyX0xQVElNX0NSLAo+Pj4gKwkJCSAgICAgU1RNMzJfTFBU
SU1fQ05UU1RSVCB8IFNUTTMyX0xQVElNX0VOQUJMRSk7Cj4+PiArCWVsc2UKPj4+ICsJCXJlZ21h
cF93cml0ZShwcml2LT5yZWcsIFNUTTMyX0xQVElNX0NSLAo+Pj4gKwkJCSAgICAgU1RNMzJfTFBU
SU1fU05HU1RSVCB8IFNUTTMyX0xQVElNX0VOQUJMRSk7Cj4+IFRoZSByZWdtYXAgY29uZmlnIGlu
IHN0bTMyLWxwdGltZXIgaXMgbm90IGRlZmluZWQgd2l0aCB0aGUgZmFzdF9pbyBmbGFnCj4+IChv
biBwdXJwb3NlIG9yIG5vdD8pIHRoYXQgbWVhbnMgd2UgY2FuIHBvdGVudGlhbGx5IGRlYWRsb2Nr
IGhlcmUgYXMgdGhlCj4+IGxvY2sgaXMgYSBtdXRleC4KPj4KPj4gSXNuJ3QgaXQgZGV0ZWN0ZWQg
d2l0aCB0aGUgbG9jayB2YWxpZGF0aW9uIHNjaGVtZT8KPiBJdCB3YXNuJ3QgYSBwcm9ibGVtIHdp
dGggb3RoZXIgcGFydHMgb2YgdGhlIG1mZCBhbmQgSSBkb24ndCBub3RpY2UgCj4gaXNzdWVzIHNv
IEkgZ3Vlc3MgaXQgaXMgb2suCgpHaXZlbiB5b3VyIGNvbW1lbnQgYmVsb3csIHRoZSBjYXNlIGNh
bid0IGhhcHBlbiBJIGFncmVlIGJ1dCB0aGVyZSBpcwpzdGlsbCBhIGhlYXZ5IG9wZXJhdGlvbiB3
aXRoIHRoZSBsb2NraW5nLgoKPj4+ICsJcmV0dXJuIDA7Cj4+PiArfQo+Pj4gK3N0YXRpYyBpbnQg
c3RtMzJfY2xrZXZlbnRfbHBfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+
PiArewo+Pj4gKwlyZXR1cm4gLUVCVVNZOyAvKiBjYW5ub3QgdW5yZWdpc3RlciBjbG9ja2V2ZW50
ICovCj4+PiArfQo+PiBXb24ndCBiZSB0aGUgbWZkIGludG8gYW4gaW5jb25zaXN0ZW50IHN0YXRl
IGhlcmU/IFRoZSBvdGhlciBzdWJzeXN0ZW1zCj4+IHdpbGwgYmUgcmVtb3ZlZCBidXQgdGhpcyBv
bmUgd2lsbCBwcmV2ZW50IHRvIHVubG9hZCB0aGUgbW9kdWxlIGxlYWRpbmcKPj4gdG8gYSBzaXR1
YXRpb24gd2hlcmUgdGhlIG1mZCBpcyBwYXJ0aWFsbHkgcmVtb3ZlZCBidXQgc3RpbGwgdGhlcmUK
Pj4gd2l0aG91dCBhIHBvc3NpYmxlIHJlY292ZXJ5LCBubz8KPiBXZSBjYW4ndCBlbmFibGUgdGhl
IHRpbWVyIHBhcnQgb2YgdGhlIG1mZCBhdCB0aGUgc2FtZSB0aW1lIHRoYW4gdGhlIAo+IG90aGVy
IGZlYXR1cmVzLgoKSG1tLCBpbnRlcmVzdGluZyBjYXNlLiBUaGUgRFQgYmluZGluZyBkb2VzIG5v
dCBnaXZlIHRoaXMgaW5mb3JtYXRpb24sCmVzcGVjaWFsbHkgaW4gdGhlIGV4YW1wbGUuIFlvdSBz
aG91bGQgZml4IHRoZSBEVCBieSBnaXZpbmcgdHdvIGV4YW1wbGVzIElNTy4KClJvYiwgaG93IGRv
IHlvdSBkZXNjcmliZSB0aGlzIHNpdHVhdGlvbiAoZXhjbHVzaXZlIHByb3BlcnRpZXMpPwoKPiBJ
dCBoYXMgYmUgZXhjbHVzaXZlIGFuZCB0aGF0IGV4Y2x1ZGUgdGhlIHByb2JsZW0geW91IGRlc2Ny
aWJlIGFib3ZlLgoKT2ssIHRoZSByZWdtYXBfd3JpdGUgaXMgbm90IGEgZnJlZSBvcGVyYXRpb24g
YW5kIGluIHRoaXMgY2FzZSB5b3UgY2FuCmdldCByaWQgb2YgYWxsIHRoZSByZWdtYXAtaXNoIGlu
IHRoaXMgZHJpdmVyLgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDi
lIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0
dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3
aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcv
bGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
