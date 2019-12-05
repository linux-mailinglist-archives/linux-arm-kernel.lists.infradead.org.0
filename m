Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B21144C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 17:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ7ps6q7DkRitKPiLH4bA5rdly+M/S5bVTDPsIVtowo=; b=KYaRa8vy+2a50+
	+oq/W4hOKKRi4XdIJZ6OmQRufQXhxa+SQjo/RLaUtvpGj+zfwxsJhKEVnTITsbmsfVCIwfVDalhPO
	fL5vO+v8xhA0S/mc5KSTwzCHUy+rUR58Zi3w/XTbo84mZJLswdAF8C7V3I8zZt0hpz+V2PwP37aiQ
	IOkhRlzopFWFwLpLFvJ+jV8S0eh8U2Imuecni+lkl3Wm6H4WuuyG1MlP0L16v3+FJukAGjuV1xuz/
	j6kIC264esW3wkyli2XqFpEo0z1lSvVJOlDBsNkq2wgt44uVMuc9XpF+aTPNeH8QnM0ymn7fSOuny
	zSfaZXtaEsnwVhdHjsBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ictvm-0007UT-Vi; Thu, 05 Dec 2019 16:24:42 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ictvc-0007To-SN
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 16:24:35 +0000
Received: by mail-wm1-x342.google.com with SMTP id b11so4529251wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 08:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/iUpNQSehsWiAsCyu1lIopep1wl7J00yoEEiWF1qjNo=;
 b=rohax8+wapGP8khtkuu1uay5xXRQwiIkV1cxSPwIwJyBLvg8W0/KUPklpZO2D5uHim
 FOfGVxqL61yBlscGe/+bwgc3sWY47bOIvfYbIpM4Iro9WK4HJhd2kZjTN43mJzPZy5GN
 Gjq3HMK42zvQxtSKym6dbBaHfH/EwFAEY8rzlb34Lem8hIRZng5gUjHR0XXAtpq9szAe
 aPngYKuKZRbyy9iSREclgNP4BSPnvo1KvkJvF503+hZ8S2Gnt4Uuc51LUva894HDPf5h
 wfakM4Hl90uI2xUf5sbZ84A0liSUgLc4Sd4+FruBaJZdYV2K56jLj5iemypPDeZMSGL9
 visw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=/iUpNQSehsWiAsCyu1lIopep1wl7J00yoEEiWF1qjNo=;
 b=j1WXQAman9pKaNOJdZVIrrOluLbxJOYBJ0QC573OiZFPnc38AhHZHBEIMiFbNQqAU+
 wfShVpjakgPj6P1xnlosoZQRiltbuW5zxQdQLlAUQSw0ZDbJrws1bd2Px+PJavYBvi/k
 GhovSI3krXaXEE6NQ34h3iHcq6WWazGPkOfv4Id9UUax9g0+rbEvaazFxXqvKScjBYha
 Il/a+Hv+xGa1/MusyAUWpqcR4N5ONWzprKbSzWQuUgzMEjRKAEJQq+OH4zz5zG7lL1S0
 XC8OJskTopLhYpHvVhCdQK8GDRYLnG1QWPAkj2HpRQQtjSark5Rr5jypQzg2qHKaOlTe
 pWCw==
X-Gm-Message-State: APjAAAWJkLbRj+oNQk7HQIsKAdy/siw46QO/j/BUpbYfTSFCQ6xYpH/b
 sOKlJ0EuvxxaOxb/myX88ye2EA==
X-Google-Smtp-Source: APXvYqwSOKMT3nnmqzN1dnucnXr9St1oHMMK/XifljrL5PPAGEslXlS/Yj7cAWSwvznV9CY1GAZaqw==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr5883721wmi.118.1575563070835; 
 Thu, 05 Dec 2019 08:24:30 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6?
 ([2a01:e34:ed2f:f020:24c3:ebb3:9dd5:81c6])
 by smtp.googlemail.com with ESMTPSA id x10sm12878522wrv.60.2019.12.05.08.24.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 08:24:30 -0800 (PST)
Subject: Re: [PATCH] drivers: clocksource: Use ttc driver as platform driver
To: Rajan Vaja <RAJANV@xilinx.com>, Michal Simek <michals@xilinx.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
References: <1573122988-18399-1-git-send-email-rajan.vaja@xilinx.com>
 <BYAPR02MB40555C1884AA318D9E79EFFEB7450@BYAPR02MB4055.namprd02.prod.outlook.com>
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
Message-ID: <2ffe4baf-1de1-3f0e-311f-dd1fdaf1cee8@linaro.org>
Date: Thu, 5 Dec 2019 17:24:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <BYAPR02MB40555C1884AA318D9E79EFFEB7450@BYAPR02MB4055.namprd02.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_082432_950447_67E7BCC2 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jolly Shah <JOLLYS@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMTEvMjAxOSAxMjo1MywgUmFqYW4gVmFqYSB3cm90ZToKPiBSZXF1ZXN0IGZvciByZXZp
ZXcuCgpXYWl0aW5nIGZyb20gTWljaGFsIFNpbWVrIHJldmlldyAuLi4KCgo+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBSYWphbiBWYWphIDxyYWphbi52YWphQHhpbGlueC5j
b20+Cj4+IFNlbnQ6IDA3IE5vdmVtYmVyIDIwMTkgMDQ6MDYgUE0KPj4gVG86IE1pY2hhbCBTaW1l
ayA8bWljaGFsc0B4aWxpbnguY29tPjsgZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZzsKPj4gdGds
eEBsaW51dHJvbml4LmRlCj4+IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc7IEpvbGx5IFNoYWggPEpPTExZU0B4aWxpbnguY29tPjsgbGludXgtCj4+IGtlcm5lbEB2Z2Vy
Lmtlcm5lbC5vcmc7IFJhamFuIFZhamEgPFJBSkFOVkB4aWxpbnguY29tPgo+PiBTdWJqZWN0OiBb
UEFUQ0hdIGRyaXZlcnM6IGNsb2Nrc291cmNlOiBVc2UgdHRjIGRyaXZlciBhcyBwbGF0Zm9ybSBk
cml2ZXIKPj4KPj4gQ3VycmVudGx5IFRUQyBkcml2ZXIgaXMgVElNRVJfT0ZfREVDTEFSRSB0eXBl
IGRyaXZlci4gQmVjYXVzZSBvZgo+PiB0aGF0LCBUVEMgZHJpdmVyIG1heSBiZSBpbml0aWFsaXpl
ZCBiZWZvcmUgb3RoZXIgY2xvY2sgZHJpdmVycy4gSWYKPj4gVFRDIGRyaXZlciBpcyBkZXBlbmRl
bnQgb24gdGhhdCBjbG9jayBkcml2ZXIgdGhlbiBpbml0aWFsaXphdGlvbiBvZgo+PiBUVEMgZHJp
dmVyIHdpbGwgZmFpbGVkLgo+Pgo+PiBTbyB1c2UgVFRDIGRyaXZlciBhcyBwbGF0Zm9ybSBkcml2
ZXIgaW5zdGVhZCBvZiB1c2luZwo+PiBUSU1FUl9PRl9ERUNMQVJFLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBSYWphbiBWYWphIDxyYWphbi52YWphQHhpbGlueC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVy
cy9jbG9ja3NvdXJjZS90aW1lci1jYWRlbmNlLXR0Yy5jIHwgMjYgKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1jYWRlbmNl
LXR0Yy5jIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci0KPj4gY2FkZW5jZS10dGMuYwo+PiBp
bmRleCA4OGZlMmU5Li4zODg1OGUxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2Nsb2Nrc291cmNl
L3RpbWVyLWNhZGVuY2UtdHRjLmMKPj4gKysrIGIvZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1j
YWRlbmNlLXR0Yy5jCj4+IEBAIC0xNSw2ICsxNSw4IEBACj4+ICAjaW5jbHVkZSA8bGludXgvb2Zf
aXJxLmg+Cj4+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+PiAgI2luY2x1ZGUgPGxpbnV4L3Nj
aGVkX2Nsb2NrLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4+ICsjaW5jbHVkZSA8
bGludXgvb2ZfcGxhdGZvcm0uaD4KPj4KPj4gIC8qCj4+ICAgKiBUaGlzIGRyaXZlciBjb25maWd1
cmVzIHRoZSAyIDE2LzMyLWJpdCBjb3VudC11cCB0aW1lcnMgYXMgZm9sbG93czoKPj4gQEAgLTQ2
NCwxMyArNDY2LDcgQEAgc3RhdGljIGludCBfX2luaXQgdHRjX3NldHVwX2Nsb2NrZXZlbnQoc3Ry
dWN0IGNsayAqY2xrLAo+PiAgCXJldHVybiAwOwo+PiAgfQo+Pgo+PiAtLyoqCj4+IC0gKiB0dGNf
dGltZXJfaW5pdCAtIEluaXRpYWxpemUgdGhlIHRpbWVyCj4+IC0gKgo+PiAtICogSW5pdGlhbGl6
ZXMgdGhlIHRpbWVyIGhhcmR3YXJlIGFuZCByZWdpc3RlciB0aGUgY2xvY2sgc291cmNlIGFuZCBj
bG9jayBldmVudAo+PiAtICogdGltZXJzIHdpdGggTGludXgga2VybmFsIHRpbWVyIGZyYW1ld29y
awo+PiAtICovCj4+IC1zdGF0aWMgaW50IF9faW5pdCB0dGNfdGltZXJfaW5pdChzdHJ1Y3QgZGV2
aWNlX25vZGUgKnRpbWVyKQo+PiArc3RhdGljIGludCBfX2luaXQgdHRjX3RpbWVyX3Byb2JlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICB7Cj4+ICAJdW5zaWduZWQgaW50IGlycTsK
Pj4gIAl2b2lkIF9faW9tZW0gKnRpbWVyX2Jhc2VhZGRyOwo+PiBAQCAtNDc4LDYgKzQ3NCw3IEBA
IHN0YXRpYyBpbnQgX19pbml0IHR0Y190aW1lcl9pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqdGlt
ZXIpCj4+ICAJc3RhdGljIGludCBpbml0aWFsaXplZDsKPj4gIAlpbnQgY2xrc2VsLCByZXQ7Cj4+
ICAJdTMyIHRpbWVyX3dpZHRoID0gMTY7Cj4+ICsJc3RydWN0IGRldmljZV9ub2RlICp0aW1lciA9
IHBkZXYtPmRldi5vZl9ub2RlOwo+Pgo+PiAgCWlmIChpbml0aWFsaXplZCkKPj4gIAkJcmV0dXJu
IDA7Cj4+IEBAIC01MzIsNCArNTI5LDE3IEBAIHN0YXRpYyBpbnQgX19pbml0IHR0Y190aW1lcl9p
bml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqdGltZXIpCj4+ICAJcmV0dXJuIDA7Cj4+ICB9Cj4+Cj4+
IC1USU1FUl9PRl9ERUNMQVJFKHR0YywgImNkbnMsdHRjIiwgdHRjX3RpbWVyX2luaXQpOwo+PiAr
c3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQgdHRjX3RpbWVyX29mX21hdGNoW10gPSB7
Cj4+ICsJey5jb21wYXRpYmxlID0gImNkbnMsdHRjIn0sCj4+ICsJe30sCj4+ICt9Owo+PiArCj4+
ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCB0dGNfdGltZXJfb2ZfbWF0Y2gpOwo+PiArCj4+ICtz
dGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciB0dGNfdGltZXJfZHJpdmVyID0gewo+PiArCS5k
cml2ZXIgPSB7Cj4+ICsJCS5uYW1lCT0gImNkbnNfdHRjX3RpbWVyIiwKPj4gKwkJLm9mX21hdGNo
X3RhYmxlID0gdHRjX3RpbWVyX29mX21hdGNoLAo+PiArCX0sCj4+ICt9Owo+PiArYnVpbHRpbl9w
bGF0Zm9ybV9kcml2ZXJfcHJvYmUodHRjX3RpbWVyX2RyaXZlciwgdHRjX3RpbWVyX3Byb2JlKTsK
Pj4gLS0KPj4gMi43LjQKPiAKCgotLSAKIDxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8u
b3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86
ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRw
Oi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJv
Lm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
