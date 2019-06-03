Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9673A3330B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duzWcECN0rz58fG4fi2ntzAxG0uMHsYRZtnL9ic6FFY=; b=nS/MylZ3wnY4q2
	CTPzAzMSv/EkrY6qyM2JGRYGih48qMB0tsakQdVJtYF/5qB5kBmCblMsjCEYtY8yhJ7VR5MJW214U
	JV9xk2j+fpXyG6MjoFBZhruKe9qBEx05TLKHzvtiXGK9cQHLharwlCd6rXnmq/MORWjjQRGu5tWH6
	NPh2yxCt0eTV4+FvwzwijWcY7aY3iguIyDbGrb2wCNVsn/WiC0ARW3n+oXvNy6fafBrI0AsiHwRc4
	A9o0XEnYJo0CZoOXIrZNxXZxHmLese7JRueEYXW/ph01dkRE5KLg8pfNFOXzLmDvu8tUIgNbRuhu+
	eao3sSQ85LSuxqxwO5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXoWM-0004m3-7r; Mon, 03 Jun 2019 15:05:10 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoWC-0004Uv-RP
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:05:02 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id A018B40008;
 Mon,  3 Jun 2019 15:04:49 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Tomasz Maciej Nowak <tmn505@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: dts: armada-3720-espressobin: correct spi node
In-Reply-To: <20190527111614.3694-1-tmn505@gmail.com>
References: <20190527111614.3694-1-tmn505@gmail.com>
Date: Mon, 03 Jun 2019 17:04:49 +0200
Message-ID: <87h896k8vi.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_080501_040291_7D01DD15 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Ellie Reeves <ellierevves@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tomasz Maciej Nowak <tmn505@gmail.com> writes:

> The manufacturer of this board, ships it with various SPI NOR chips and
> increments U-Boot bootloader version along the time. There is no way to
> tell which is placed on the board since no revision bump takes place.
> This creates two issues.
>
> The first, cosmetic. Since the NOR chip may differ, there's message on
> boot stating that kernel expected w25q32dw and found different one. To
> correct this, remove optional device-specific compatible string. Being
> here lets replace bogus "spi-flash" compatible string with proper one.
>
> The second is linked to partitions layout, it changed after commit:
> 81e7251252 ("arm64: mvebu: config: move env to the end of the 4MB boot
> device") in Marvells downstream U-Boot fork [1], shifting environment
> location to the end of boot device. Since the new boards will have U-Boot
> with this change, it'll lead to improper results writing or reading from
> these partitions. We can't tell if users will update bootloader to recent
> version provided on manufacturer website, so lets drop partitons layout.
>
> 1. https://github.com/MarvellEmbeddedProcessors/u-boot-marvell.git
>
> Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  .../dts/marvell/armada-3720-espressobin.dts    | 18 +-----------------
>  1 file changed, 1 insertion(+), 17 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
> index 6be019e1888e..fbcf03f86c96 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
> @@ -95,25 +95,9 @@
>  
>  	flash@0 {
>  		reg = <0>;
> -		compatible = "winbond,w25q32dw", "jedec,spi-flash";
> +		compatible = "jedec,spi-nor";
>  		spi-max-frequency = <104000000>;
>  		m25p,fast-read;
> -
> -		partitions {
> -			compatible = "fixed-partitions";
> -			#address-cells = <1>;
> -			#size-cells = <1>;
> -
> -			partition@0 {
> -				label = "uboot";
> -				reg = <0 0x180000>;
> -			};
> -
> -			partition@180000 {
> -				label = "ubootenv";
> -				reg = <0x180000 0x10000>;
> -			};
> -		};
>  	};
>  };
>  
> -- 
> 2.21.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
