Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB831387EF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 20:32:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0MOxsKvo0JIn/Pf5zNzYQ2lNKrd4lbnUdMaBUg3I6V8=; b=EMsItO6044GIW1
	C7U2nUAicLtgvYj+qL9aVbOlxHpNPUcyJBAAE45Q/zvhnc73K40Z0Ir5aaI5AXdew3A6LVFRNEhWl
	T/7FRgh4bxFy59pM9ZrDwgKAJ7bsYdgx4CiuVm8SXO96E/1YggPl8wit3hQ4apw8SCKF8HPLPDbGu
	RHfKWXweGNmpu/cYZ1QD7O6wiVda1Vp8miTs/h6tJbw4S7+SQOyMaVk8/j7LB8jkWJEg7+kdEnwDZ
	xzWZDtC54ecEY/m1n3E7kAI4sqO4yIPYzN3D9gClJPN83U0SYYkqObO8yX0KNEMelHq4rv5YihoqZ
	WnEFjcjak76t6ZJsdn4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqixl-0007jL-Mc; Sun, 12 Jan 2020 19:31:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqixb-0007iP-5e
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 19:31:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so6514302wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 11:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GqMHULzJdxKle3bDEyMcjsTBusdrbyyrQdBFfLUOVxs=;
 b=cvVLRUoGdp5sFBb2jkkzpnjoN50S5tNkoDw/hmE8RyO125b1tWdtHabbQzBDxNA+Hw
 Npkz/uE+urzuyBhiP7lff4/YuPUDMwsxaYkr517+rN7pV+XHdusnhfUkMjyOCLlh2BVG
 Ed47KCxTW0poLuDDGsMGi6uObcJzVEh91hnbCnexk05Vy91vhI/wql8zrgh2c9BvxK07
 KK0vtKryRB8q5CZWeIMfduOTzJbYCSudu/8sj/Bi+mClVnNOjR87F7vItUFtwz5EraX6
 pHfqIBOSzJ80GCGDRy19CeuCgfnkdTnNKIBfMDHG19LeRcSwiwxnyHjwVtjX4jW0Rdn1
 4TTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=GqMHULzJdxKle3bDEyMcjsTBusdrbyyrQdBFfLUOVxs=;
 b=KlY1xTk2KgwYKkMgr7saXmrSqzkbmS7y64LXeqrBKawIOg4LE4c2UfmzugJ1ApohTb
 p5+/v/SrddqqXQDR0wjl/c+xfMREjCMUWqeGRbUATyR4IP+vdLdlT+oW0DIZeLoVtM5S
 IKMoOxTBxr/kWzWXlmvZC4/I6csCtY1wPVdu/Dp4BRZj4oYihwAU3RpSV7f11+8AKrWB
 W0KvRQC7l/w3VBz7ZtQlXHE16FUS6Uk/sAf6Eifjve1TsdORTzN3CTmJBxBnllJ/q5a+
 K5uc3LzZaM0F4wHLFN/Xe2WaZNPmoQ8cjZAnKvbgiqyIQOpgHI1+XbgVMHk68ae/INH1
 xjiA==
X-Gm-Message-State: APjAAAWxUDEJZ5Ax/kf+heRDolK1OzpNDuM0RplTUG4m/4run9LZunPV
 tePrj8RC0xCJXzKsSm9eaZchJw==
X-Google-Smtp-Source: APXvYqyCfQeYTZBrLXI4Yc2tydrcjNsBxeMIsrBB8ft3sogDwKWWOcu9tTBe2e+U7gx5/0TkUaGHRA==
X-Received: by 2002:adf:ea51:: with SMTP id j17mr14662236wrn.83.1578857500473; 
 Sun, 12 Jan 2020 11:31:40 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:5d47:bb17:fc0:dfcb?
 ([2a01:e34:ed2f:f020:5d47:bb17:fc0:dfcb])
 by smtp.googlemail.com with ESMTPSA id
 t131sm11588306wmb.13.2020.01.12.11.31.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 12 Jan 2020 11:31:39 -0800 (PST)
Subject: Re: [PATCH] thermal: sun8i: Add hwmon support
To: Frank Lee <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@csie.org>
References: <20191228171904.24618-1-tiny.windzz@gmail.com>
 <CAGb2v67YPLy_qFuLKKMFytPEdFRUazoNfsQ1tYj8z3WVSRqC3Q@mail.gmail.com>
 <CAEExFWtkPBhqT-wteE0_bC=QqaTyuvAcj_4SMOLjYAdc6p4tkg@mail.gmail.com>
 <CAGb2v673PM_3QazNWBKYd=4pumyyyE3XFmwa4LY7qFt2=QwEVQ@mail.gmail.com>
 <CAEExFWtaeiX0bq6VO5294w8vCtnnNDDB0HA_nvR19adg=KFANQ@mail.gmail.com>
 <CAEExFWsGZD=Hm3OWmTLmKu82VDfG31y3ENJz7CfRHENqT8jJUw@mail.gmail.com>
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
Message-ID: <cae12779-ec49-db47-0b36-7f2b41c3c774@linaro.org>
Date: Sun, 12 Jan 2020 20:31:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAEExFWsGZD=Hm3OWmTLmKu82VDfG31y3ENJz7CfRHENqT8jJUw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_113143_224755_107E944E 
X-CRM114-Status: GOOD (  14.76  )
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTIvMDEvMjAyMCAxOToxMiwgRnJhbmsgTGVlIHdyb3RlOgo+IEhJIERhbmllbDoKPiAKPiBP
biBTdW4sIEphbiAxMiwgMjAyMCBhdCAyOjA4IEFNIEZyYW5rIExlZSA8dGlueS53aW5kenpAZ21h
aWwuY29tPiB3cm90ZToKPj4KPj4gT24gVHVlLCBKYW4gNywgMjAyMCBhdCAxMToxNSBBTSBDaGVu
LVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+IHdyb3RlOgo+Pj4KPj4+IE9uIFR1ZSwgSmFuIDcsIDIw
MjAgYXQgMTI6MTQgQU0gRnJhbmsgTGVlIDx0aW55LndpbmR6ekBnbWFpbC5jb20+IHdyb3RlOgo+
Pj4+Cj4+Pj4gSEkgQ2hlbi1ZdS4KPj4+Pgo+Pj4+IE9uIE1vbiwgSmFuIDYsIDIwMjAgYXQgMTI6
MzIgUE0gQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPiB3cm90ZToKPj4+Pj4KPj4+Pj4gT24g
U3VuLCBEZWMgMjksIDIwMTkgYXQgMToxOSBBTSBZYW5ndGFvIExpIDx0aW55LndpbmR6ekBnbWFp
bC5jb20+IHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IEV4cG9zZSBzdW44aSB0aGVybWFsIGFzIGEgSFdN
T04gZGV2aWNlLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFlhbmd0YW8gTGkgPHRpbnku
d2luZHp6QGdtYWlsLmNvbT4KPj4+Pj4+IC0tLQo+Pj4+Pj4gIGRyaXZlcnMvdGhlcm1hbC9zdW44
aV90aGVybWFsLmMgfCA2ICsrKysrKwo+Pj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKykKPj4+Pj4+Cj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3N1bjhpX3Ro
ZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFsLmMKPj4+Pj4+IGluZGV4IDIz
YTVmNGFhNGJlNC4uNjE5ZTc1Y2I0MWIwIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy90aGVy
bWFsL3N1bjhpX3RoZXJtYWwuYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy90aGVybWFsL3N1bjhpX3Ro
ZXJtYWwuYwo+Pj4+Pj4gQEAgLTIwLDYgKzIwLDggQEAKPj4+Pj4+ICAjaW5jbHVkZSA8bGludXgv
c2xhYi5oPgo+Pj4+Pj4gICNpbmNsdWRlIDxsaW51eC90aGVybWFsLmg+Cj4+Pj4+Pgo+Pj4+Pj4g
KyNpbmNsdWRlICJ0aGVybWFsX2h3bW9uLmgiCj4+Pj4+PiArCj4+Pj4+PiAgI2RlZmluZSBNQVhf
U0VOU09SX05VTSA0Cj4+Pj4+Pgo+Pj4+Pj4gICNkZWZpbmUgRlRfVEVNUF9NQVNLICAgICAgICAg
ICAgICAgICAgICAgICAgICAgR0VOTUFTSygxMSwgMCkKPj4+Pj4+IEBAIC00NzcsNiArNDc5LDEw
IEBAIHN0YXRpYyBpbnQgc3VuOGlfdGhzX3JlZ2lzdGVyKHN0cnVjdCB0aHNfZGV2aWNlICp0bWRl
dikKPj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAmdGhzX29wcyk7Cj4+Pj4+PiAgICAgICAgICAgICAgICAgaWYgKElTX0VS
Uih0bWRldi0+c2Vuc29yW2ldLnR6ZCkpCj4+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gUFRSX0VSUih0bWRldi0+c2Vuc29yW2ldLnR6ZCk7Cj4+Pj4+PiArCj4+Pj4+PiArICAg
ICAgICAgICAgICAgaWYgKGRldm1fdGhlcm1hbF9hZGRfaHdtb25fc3lzZnModG1kZXYtPnNlbnNv
cltpXS50emQpKQo+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2X3dhcm4odG1kZXYt
PmRldiwKPj4+Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJGYWlsZWQgdG8g
YWRkIGh3bW9uIHN5c2ZzIGF0dHJpYnV0ZXNcbiIpOwo+Pj4+Pgo+Pj4+PiBNYXliZSB5b3Ugd2Fu
dCBhIGhhcmQgZmFpbHVyZSBpbnN0ZWFkPwo+Pj4+Cj4+Pj4gSSBkb24ndCBxdWl0ZSB1bmRlcnN0
YW5kIHdoYXQgeW91IG1lYW4uCj4+Pj4gV2hhdCBkbyB5b3UgdGhpbmsgc2hvdWxkIGJlIGRvbmU/
Cj4+Pgo+Pj4gUmV0dXJuIGFuIGVycm9yIGluc3RlYWQgb2YganVzdCBwcmludGluZyBhIHdhcm5p
bmcuCj4+Cj4+IFNvbWV0aW1lcywgZXZlbiBpZiBod21vbiBmYWlscyB0byBhZGQsIGl0IGNhbiBz
dGlsbCB3b3JrIGFzIGEgdGhlcm1hbCBkcml2ZXIuCj4+IEF0IHRoaXMgdGltZSwgSSBkb24ndCBy
ZWFsbHkgd2FudCB0byBpbnRlcnJ1cHQgdGhlIHJlZ2lzdHJhdGlvbiBvZiB0aGUKPj4gdGhlcm1h
bCBkcml2ZXIuCj4+Cj4+IEFueW9uZSBlbHNlJ3Mgb3BpbmlvbiBoZXJlPwo+Pgo+IAo+IFdoYXQn
cyB5b3VyIHBvaW50PyBDYW4geW91IGNob29zZSB0aGlzIHBhdGNoPwoKQXBwbGllZCwgdGhhbmtz
CgoKLS0gCiA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3Vy
Y2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFj
ZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMh
L2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cv
PiBCbG9nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
