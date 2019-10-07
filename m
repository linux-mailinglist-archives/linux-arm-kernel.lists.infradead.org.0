Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C76CE31A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoPl1da4YqyymMETZOVOV2Hayuk2ugNV7+6WOaKN/g8=; b=tHch6063ZQdTi7
	ruE2D0WepcuSbw6pZG3MA+V+SKwxtiiCJOm6D41NknzsVgwbdptavxnmkmOUzsrrJ9OWf799D7emT
	RQJ7wUyCq3oINjn48GOfU7cJjC1g6/ioJzFYRz1FtAGHp1uJ7xWn/bxXUssihBJ2yA4Pmvf+TqMz+
	pLIEWl4qswyWmcCn5e+N+2lIPY4c0acQvAe9uz0zAh5q+efBmdARapcK/OxeI16fyby9V4ib2RmBk
	hMhdsX0dwvlLxuCnfXkanyP7US/IqGsrgzNa3P2Qb1aXKRXEjhCFp9wrkg93opClhNPy4afY4wdsa
	xFWbr993yz4cptijnXZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSv3-0003Jo-Tz; Mon, 07 Oct 2019 13:19:21 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHStX-000209-57
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:17:49 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id B7BFE1C001A;
 Mon,  7 Oct 2019 13:17:38 +0000 (UTC)
Date: Mon, 7 Oct 2019 15:17:36 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 2/4] dt-bindings: rtc: s3c: Use defines instead of clock
 numbers
Message-ID: <20191007131736.GJ4254@piout.net>
References: <20191002160744.11307-1-krzk@kernel.org>
 <20191002160744.11307-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002160744.11307-2-krzk@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_061747_342443_C6350EAC 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Alessandro Zummo <a.zummo@towertech.it>, Lars-Peter Clausen <lars@metafoo.de>,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-rtc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/10/2019 18:07:42+0200, Krzysztof Kozlowski wrote:
> Make the examples in S3C RTC bindings more readable and bring them
> closer to real DTS by using defines for clocks.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  Documentation/devicetree/bindings/rtc/s3c-rtc.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> index 95570d7e19eb..4d91cdc9b998 100644
> --- a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> @@ -75,11 +75,14 @@ allOf:
>  
>  examples:
>    - |
> +    #include <dt-bindings/clock/exynos5420.h>
> +    #include <dt-bindings/clock/samsung,s2mps11.h>
> +
>      rtc@10070000 {
>          compatible = "samsung,s3c6410-rtc";
>          reg = <0x10070000 0x100>;
>          interrupts = <0 44 4>, <0 45 4>;
> -        clocks = <&clock 0>, // CLK_RTC
> -                 <&s2mps11_osc 0>; // S2MPS11_CLK_AP
> +        clocks = <&clock CLK_RTC>,
> +                 <&s2mps11_osc S2MPS11_CLK_AP>;
>          clock-names = "rtc", "rtc_src";
>      };
> -- 
> 2.17.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
