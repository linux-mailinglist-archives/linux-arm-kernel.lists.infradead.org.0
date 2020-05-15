Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFDE1D54E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHSDz1FncqadATRv7l+7ajXCtJhcwtlL9QnFs6RQIaU=; b=aBsQqRohrdr5B+
	qJlZRdlWpV69OZfa8C8I3NCGU26sDT2MJ8W7ONASHBQD2q2lA58isrp7ljz9u2cLTjxDSrK3RIUfN
	1yDnqf1ectHhIv4dsCYm6f1QuGQeRDmvWP8QW7vPLW8rRxZiy0lX7FNhoaeHW0o8PjvAIaEqLF/mG
	i6nflZL2Ldx7+pHQDrP6FS7bGJQpMfzrjM+DxIoHQFz06AZWCIfNd/3Uop9JIUL/fmdgEPs5BHGjK
	bPCcaGwoG17iFwJDWJ1zxY39IfQiUmNc/XGCe6KKhtGgYKEzDSZvOseVtIwKx7DDGMFD6ggLm/O4q
	x0Zu2NjbZiP3/jSXIM7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcRh-0007ed-CU; Fri, 15 May 2020 15:40:21 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcRL-0007LS-T8
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 15:40:03 +0000
Received: from localhost (lfbn-lyo-1-1912-bdcst.w90-65.abo.wanadoo.fr
 [90.65.91.255]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 22947240005;
 Fri, 15 May 2020 15:39:57 +0000 (UTC)
Date: Fri, 15 May 2020 17:39:56 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH] ARM: dts: at91: Configure SCL gpio of i2c2 node as open
 drain
Message-ID: <20200515153956.GX34497@piout.net>
References: <20200515153239.323944-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515153239.323944-1-codrin.ciubotariu@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_084000_072988_720DDC01 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, eugen.hristev@microchip.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/05/2020 18:32:39+0300, Codrin Ciubotariu wrote:
> The SCL gpio pin of i2c2 node used for recovery needs to be configured as
> open drain.
> 
> Fixes: 455fec938bbb ("ARM: dts: at91: sama5d2: add i2c gpio pinctrl")
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>  arch/arm/boot/dts/at91-sama5d2_xplained.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Squashed in the previous one, thanks.

> diff --git a/arch/arm/boot/dts/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> index 5846720fc9dc..851b8587068b 100644
> --- a/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> +++ b/arch/arm/boot/dts/at91-sama5d2_xplained.dts
> @@ -344,7 +344,7 @@ i2c2: i2c@600 {
>  					pinctrl-0 = <&pinctrl_flx0_default>;
>  					pinctrl-1 = <&pinctrl_i2c2_gpio>;
>  					sda-gpios = <&pioA PIN_PB28 GPIO_ACTIVE_HIGH>;
> -					scl-gpios = <&pioA PIN_PB29 GPIO_ACTIVE_HIGH>;
> +					scl-gpios = <&pioA PIN_PB29 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
>  					i2c-sda-hold-time-ns = <350>;
>  					i2c-analog-filter;
>  					i2c-digital-filter;
> -- 
> 2.25.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
