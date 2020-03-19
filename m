Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F4618B2C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 12:56:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7oTX32rR3PnhBUL+PcVKU0CrJ0GGebOXuyXutir7Ow=; b=ELmbeJOQGuJSqu
	rCytTPEVEBV0bn79Tn57Ko1rj4VfYhnyojst6ulNbvTdqY29CyCi7FVirIUcGQgSJa6Rr0pyl+Ut4
	/+HcwnYvPI+MoaiIbw9bvjPw8i8QRUtG383qMDB1b378RxVZkK99nqUnSRULaJ7ZWWecPCWD5rSZ2
	u+lDET1KyUQF/tqUcTf5CN5Xy0a2/QFUMDDkL7MyMYcshVHLYhwu+W0583UwuDCttWQ4k9alJXCzo
	xwzZXK3FjS17Ij1XvVW8u7cVksyy7/V/XyPhAGI1BPFQN3W4vvkY9hFMBjuMdjHPeHG5Nd6yF+iTg
	iUapWAptF4ol52aKvuHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEtmR-0000Ym-W4; Thu, 19 Mar 2020 11:56:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEtmG-0000YS-IT
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 11:55:58 +0000
Received: by mail-wm1-x341.google.com with SMTP id m3so1892581wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 04:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=cudi9P8HlkG4etpTBbGtsxlC/P7Ku4/3Ch1toRpnrQU=;
 b=B1Go1eVrp+YAnxp6yMKkty37/MmcSdW82gX3i0zLMqolbS7I4JzNolqflAsj4gSsdJ
 b/pz8/OJPembmhjZaElN554UODiRnY3Z+Gm9kDWa9n14N4/Bo5Gl+pdo8k6ONcO5WqLv
 ZHoyc6WBgCvjEnBIzRhn/JiLkvvR3h1mK8LDtUUO5lZaxx1cTvzLHVdirr56WNbmASWS
 Mf4vzy+u5I27pZT83/r+7MlxTPDCaZLe7b2It5SVF10y3/38o+svU51T/Lboe1zVeUQh
 U6brSHrzkHRz1/TJJc2KxP+abWn6q1YMVzJGXWt76rht2xFWTYydEXWs9a8EIkzzbTTd
 hXDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=cudi9P8HlkG4etpTBbGtsxlC/P7Ku4/3Ch1toRpnrQU=;
 b=OaDlrT90EjEFh8wB4+rWD/ZF78fRZrX8xs1Np3qiWhGWcA/DHijkZh5bnA6wel76N8
 kBBNw48id0GPn8qGVFi2i13x09KBMiQbWi9epjUTGdM/Hpziv6xlzM5SVTswoGK5Y1C/
 BpZkTeCkFSto/ijd7vjrqTe1UfHI6DFgUhOMV9WWxNnvB94czViuUOee2tt6YigiTomX
 TlYYUHaI7pEUR2kXOWHNPDKz0ZGsop+mjPBS6Plz+4IB4Q+cd7y729BSmrqOSLbY6E7v
 8dx0oB+u+2HHdEegbeQck+vd1BWvmAxs1dI0z4ORv/Qe9XZrNLskpVZ5gUS00QsxT/Fb
 otZQ==
X-Gm-Message-State: ANhLgQ3GuTLIG801s9ltWIkSvDPt0P7ygfEEYb+tH19shvsyVHsqwdvw
 XEl5CKsmsQX0fLqeyqQLrgnznQ==
X-Google-Smtp-Source: ADFU+vvsMLtvkLKFmONPsXKe/V+ti4VGgCY6Xc7r1R+43v7vArDEQyW90r6n0oopUsT8ykqNTZJnFQ==
X-Received: by 2002:a1c:196:: with SMTP id 144mr3441513wmb.100.1584618954861; 
 Thu, 19 Mar 2020 04:55:54 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5d64:ea6:49bd:69d7?
 ([2a01:e34:ed2f:f020:5d64:ea6:49bd:69d7])
 by smtp.googlemail.com with ESMTPSA id t126sm3049344wmb.27.2020.03.19.04.55.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Mar 2020 04:55:54 -0700 (PDT)
Subject: Re: [PATCH] thermal: imx_sc_thermal: Fix incorrect data type
To: Anson Huang <Anson.Huang@nxp.com>, rui.zhang@intel.com,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1584606380-9972-1-git-send-email-Anson.Huang@nxp.com>
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
Message-ID: <bde3c414-384c-e2e8-7591-3c30d6cc3bd6@linaro.org>
Date: Thu, 19 Mar 2020 12:55:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1584606380-9972-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_045556_640982_2F65474C 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTkvMDMvMjAyMCAwOToyNiwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gVGhlIHRlbXBlcmF0dXJl
IHZhbHVlIHBhc3NlZCBmcm9tIFNDVSBjb3VsZCBiZSBuZWdhdGl2ZSB2YWx1ZSwKPiB0aGUgZGF0
YSB0eXBlIHNob3VsZCBiZSBzaWduZWQgaW5zdGVhZCBvZiB1bnNpZ25lZC4KPiAKPiBGaXhlczog
ZWQwODQzNjMzZmVlICgidGhlcm1hbDogaW14X3NjOiBhZGQgaS5NWCBzeXN0ZW0gY29udHJvbGxl
ciB0aGVybWFsIHN1cHBvcnQiKQo+IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5I
dWFuZ0BueHAuY29tPgoKQXBwbGllZCwgdGhhbmtzCgo+IC0tLQo+ICBkcml2ZXJzL3RoZXJtYWwv
aW14X3NjX3RoZXJtYWwuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3RoZXJtYWwvaW14
X3NjX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9pbXhfc2NfdGhlcm1hbC5jCj4gaW5kZXgg
ZGJiMjc3YS4uYTg3MjNiMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvaW14X3NjX3Ro
ZXJtYWwuYwo+ICsrKyBiL2RyaXZlcnMvdGhlcm1hbC9pbXhfc2NfdGhlcm1hbC5jCj4gQEAgLTMw
LDggKzMwLDggQEAgc3RydWN0IHJlcV9nZXRfdGVtcCB7Cj4gIH0gX19wYWNrZWQgX19hbGlnbmVk
KDQpOwo+ICAKPiAgc3RydWN0IHJlc3BfZ2V0X3RlbXAgewo+IC0JdTE2IGNlbHNpdXM7Cj4gLQl1
OCB0ZW50aHM7Cj4gKwlzMTYgY2Vsc2l1czsKPiArCXM4IHRlbnRoczsKPiAgfSBfX3BhY2tlZCBf
X2FsaWduZWQoNCk7Cj4gIAo+ICBzdHJ1Y3QgaW14X3NjX21zZ19taXNjX2dldF90ZW1wIHsKPiAK
CgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJj
ZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNl
Ym9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEv
bGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+
IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
