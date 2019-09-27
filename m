Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34BBBFF30
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 08:37:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GF5hdfJD6ZbzIcCaKBOd+cOxulhySeR85Y6yfxBm/Y=; b=BxVbMJ6Pb+egxC
	71AXDM4ESk+sgsxLMBmN6IXeD/Ua239KhufzCCqQ8lmgSeTw6bAnshbqNG5A7VpD/RdLd8xpmd9rC
	6IBXcuUfp+dEhqeC9MpUSYYdzbF7dyom2VU5a1TnvNBZWaxuvngJH4q78EUYgttKV29FxDWfacXb9
	aJwsH1aRg7aJZtBRoyWUFqV77tt3Sd5Hf3vi1a8lCMrTFZhpNwGX+XYJ/DLteZMwizF4Fxr2FgX0x
	rxfhnQRiwbmxWxAvy4Yt+DKnVwgujQaag5yx7eg6I+qjZiT1PdY1+0K6a28BmmkUqZoT+WAvPxnYV
	E8pDWFtY9m3tm+xoHCTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDjsN-0000Pj-2D; Fri, 27 Sep 2019 06:37:11 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjs4-0000Oc-5l
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 06:36:54 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190927063649euoutp02627224cd51836f1040523123309e36f1~IOCbls2sR1204212042euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 06:36:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190927063649euoutp02627224cd51836f1040523123309e36f1~IOCbls2sR1204212042euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569566209;
 bh=1ndUXvyG/naqx4bDD64mUQ+qbfWxe/FYI+t9bA24Nf0=;
 h=Subject:To:From:Date:In-Reply-To:References:From;
 b=i0whF4F3IhfAOxyGT81YkPZzeDYX08Zj8j5OApNndlgrRpBRhxfptQ/YB52s7ah9t
 eIVkhaIpNlaZyVk1vG8/rTP/KN1tHWqSt4lV6+Mi/fosfLXUaHCi8qJqigA9qJGYg+
 0W0CDUFc4DuFTHZLZSgEnlB1ZOE/aRTnut6a3rbw=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190927063649eucas1p2c1c02493b856e394c1c8a44b4e14779b~IOCbAX__J1903919039eucas1p2z;
 Fri, 27 Sep 2019 06:36:49 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 35.76.04469.10EAD8D5; Fri, 27
 Sep 2019 07:36:49 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190927063648eucas1p2e19d5c88d5300b7f6c2ac86144534e0c~IOCasiJR_0925109251eucas1p2v;
 Fri, 27 Sep 2019 06:36:48 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190927063648eusmtrp268e0857240f5443511ac67d136686427~IOCar2bd60211602116eusmtrp2J;
 Fri, 27 Sep 2019 06:36:48 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-7c-5d8dae01e8a8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 95.D4.04117.00EAD8D5; Fri, 27
 Sep 2019 07:36:48 +0100 (BST)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190927063648eusmtip17292d6dcec28ac022351e078da49f1fc~IOCaLZ4AD1038210382eusmtip1U;
 Fri, 27 Sep 2019 06:36:48 +0000 (GMT)
Subject: Re: [PATCH] dt-bindings: timer: Use defines instead of numbers in
 Exynos MCT examples
To: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Kukjin
 Kim <kgene@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <fc0809b0-1e6a-0564-75d9-0ccb14d2826c@samsung.com>
Date: Fri, 27 Sep 2019 08:36:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190926183643.7118-1-krzk@kernel.org>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRju29nOjsPJcWp7Me0yMDJKE/xxIjGj24js8rPL0qknFd2UzZmX
 IrtSw8okcy51SkYqXmpTU1PDaQ4TZjo0CdE5F6Q2oSzRqGzb0fLf8z7v87zv+3x8BCbo4PgT
 yfIMWiGXpopwHrulb9m8GzXck+yxt3Cp8oVAStdr5lAPpucwanDwBZfST49yKEt7KU5pBrtY
 1LMPQyzqVmcvlzLoi7AonriuvA6J9bV3cfH4aAcunjebuWJD1VXxgn7zKfwsLyKBTk3OpBWh
 kbG8pCb1NXa6Lihr2WhDecgKauRBABkOn3SFuBrxCAFZjaBu6iFiiu8I2kqacZdKQC44OwUs
 NSLcjt9jOYzmOYKX9YZVgwNB9eIScol8yFgofBzu4n3JeRZU2Bcx1yCcDAO1Q+0eyicjoV39
 iO3CbDIIZlfG3NiPlMDEkgljNN7QX2J38x7Oxe1dIxwXxsgt8MpRijFYCB/tOpZrGZBGLnwp
 K0ZMtkPwVaNlMdgHZk1NXAYHwErbmuEGgilzPZcp8hFYrmtW3fugxzTEccXByGBobA9l6AMw
 6ehGzFN4wZjDmznCCwpbijGG5sOd2wJGvR20poZ/a7vfD2MMFsNESxu3AG3TroupXRdNuy6a
 9v8NFYhdi4S0SilLpJVhcvpSiFIqU6rkiSHxaTI9cv6pgT+mb63ox3CcEZEEEnnyNbX5EgFH
 mqnMlhkREJjIlx99xknxE6TZObQiLUahSqWVRrSJYIuE/NwN1nMCMlGaQafQdDqtWOuyCA//
 PLQx+elMFjTvwizoSo8h6nRglclva5/tTU3A4YC3kycH+LO+8RcrJWTwiWHVuxn1wYjqmyky
 5DhedPl+zdxkLGgaG2It1qbcC77jWnbFsbJ6Gx5xZEdn/v6eypjbTwxxcX0jr+0jrUejhaHF
 cT/FnrrPXvpBnWrBdr56b/8v3CpiK5OkYTsxhVL6F4Qi7uVPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEIsWRmVeSWpSXmKPExsVy+t/xu7oM63pjDb6907eY91nWYv6Rc6wW
 /Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PF0usXmSxa9x5ht9i8aSqzA5fHmnlrGD02repk
 87hzbQ+bx7tz59g9Ni+p9/i8SS6ALUrPpii/tCRVISO/uMRWKdrQwkjP0NJCz8jEUs/Q2DzW
 yshUSd/OJiU1J7MstUjfLkEvY0tXI0vBfNWKn4ceMTYwPpDoYuTgkBAwkfh7o6qLkYtDSGAp
 o8TcB7/Yuhg5geIyEienNbBC2MISf651sUEUvWaUWNN5lB2kWVggQWLSNBOQuIjAOyaJN8/X
 skMUtTNKdLcfZwbpZhMwlOh62wU2lVfATmJX1xQWEJtFQFXi1f8bLCCDRAViJTbtNYMoEZQ4
 OfMJWAkn0HG79l0FO4JZwExi3uaHzBC2vMT2t3OgbHGJW0/mM01gFJyFpH0WkpZZSFpmIWlZ
 wMiyilEktbQ4Nz232EivODG3uDQvXS85P3cTIzD+th37uWUHY9e74EOMAhyMSjy8M1b1xAqx
 JpYVV+YeYpTgYFYS4fWNBArxpiRWVqUW5ccXleakFh9iNAX6bSKzlGhyPjA15JXEG5oamltY
 GpobmxubWSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYLT+uvp65tuEKV8+ZH38lN+58tI3
 jdMlRgU3N8a3n/z29ens/z03f4mkh7Qud9w1P3f/bL2UBSenn6gLfV/W3LD1VWMwa/bqSacf
 PHp3bufZmzG8ykkW5/6pece9Fv+WOCN5NbvKwjnCJw279F5tY0kwjOmviHDwsq06kDjd0HxK
 4q1NXw/Y6wYrsRRnJBpqMRcVJwIAF+K3JdUCAAA=
X-CMS-MailID: 20190927063648eucas1p2e19d5c88d5300b7f6c2ac86144534e0c
X-Msg-Generator: CA
X-RootMTR: 20190926183707epcas3p350fe17bc738540b37f1130d967c31a62
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190926183707epcas3p350fe17bc738540b37f1130d967c31a62
References: <CGME20190926183707epcas3p350fe17bc738540b37f1130d967c31a62@epcas3p3.samsung.com>
 <20190926183643.7118-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_233652_433165_C23206F9 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

On 26.09.2019 20:36, Krzysztof Kozlowski wrote:
> Make the examples in Exynos Multi Core Timer bindings more readable and
> bring them closer to real DTS by using defines for interrupt flags.
>
> Suggested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Rebased on top of:
> https://patchwork.kernel.org/project/linux-samsung-soc/list/?series=177667&state=*
> ---
>   .../timer/samsung,exynos4210-mct.yaml         | 37 ++++++++++++++-----
>   1 file changed, 27 insertions(+), 10 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> index bff3f54a398f..c4d152009f76 100644
> --- a/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> +++ b/Documentation/devicetree/bindings/timer/samsung,exynos4210-mct.yaml
> @@ -75,51 +75,68 @@ examples:
>       // In this example, the IP contains two local timers, using separate
>       // interrupts, so two local timer interrupts have been specified,
>       // in addition to four global timer interrupts.
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>   
>       timer@10050000 {
>           compatible = "samsung,exynos4210-mct";
>           reg = <0x10050000 0x800>;
> -        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -                     <0 42 0>, <0 48 0>;
> +        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
>       };
>   
>     - |
>       // In this example, the timer interrupts are connected to two separate
>       // interrupt controllers. Hence, an interrupts-extended is needed.
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>   
>       timer@101c0000 {
>           compatible = "samsung,exynos4210-mct";
>           reg = <0x101C0000 0x800>;
> -        interrupts-extended = <&gic 0 57 0>,
> -                              <&gic 0 69 0>,
> +        interrupts-extended = <&gic GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +                              <&gic GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
>                                 <&combiner 12 6>,
>                                 <&combiner 12 7>,
> -                              <&gic 0 42 0>,
> -                              <&gic 0 48 0>;
> +                              <&gic GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> +                              <&gic GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
>       };
>   
>     - |
>       // In this example, the IP contains four local timers, but using
>       // a per-processor interrupt to handle them. Only one first local
>       // interrupt is specified.
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>   
>       timer@10050000 {
>           compatible = "samsung,exynos4412-mct";
>           reg = <0x10050000 0x800>;
>   
> -        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -                     <0 42 0>;
> +        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;

the last one should be GIC_PPI

>       };
>   
>     - |
>       // In this example, the IP contains four local timers, but using
>       // a per-processor interrupt to handle them. All the local timer
>       // interrupts are specified.
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>   
>       timer@10050000 {
>           compatible = "samsung,exynos4412-mct";
>           reg = <0x10050000 0x800>;
>   
> -        interrupts = <0 57 0>, <0 69 0>, <0 70 0>, <0 71 0>,
> -                     <0 42 0>, <0 42 0>, <0 42 0>, <0 42 0>;
> +        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;

again, last 4 entries should use GIC_PPI


Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
