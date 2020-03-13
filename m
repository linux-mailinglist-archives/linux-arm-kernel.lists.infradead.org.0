Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C7D184FF8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ak8q6Chtgpgcvcf+RN4AVWwCkUB9+zuBypdYlTyh8jo=; b=Inwl6cq+i2Fer/
	nPPsVnS5steU+Urs6brmwXsq4UgVQ9rYYf5AOiCHqCw7Zd7bP/eCBcVAp3vaRdHdrzCrP+rLhHvxm
	gyUimB+9lWb9MZ6ZEsInCLOjj0yWH6/fYCfYjlOe7lT/wFDIor3I6/QxJ3pUH/rjgR4gQSnx1jC8o
	C5P3Qq4qDOxF7gC2yUHDW/DBg3EPRirv4irwXm0WP5mskd0IvKWOnBnWF+u4cNniT9czL6VS9UzFZ
	ySoPrx4D0v5QPBM7pXkP3D3oLUz5GqQNbO3tYvMq+rg1pgSs2z7wvCrkULPme4ZE8RN43MbBa8bsQ
	Wbacj4MrSmNQUj7/b84A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqgr-000700-Dr; Fri, 13 Mar 2020 20:13:53 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqgj-0006y3-4R
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:13:47 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 5E8881BF206;
 Fri, 13 Mar 2020 20:13:35 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] arm64: dts: clearfog-gt-8k: set gigabit PHY reset
 deassert delay
In-Reply-To: <E1j6YeG-00026g-08@rmk-PC.armlinux.org.uk>
References: <E1j6YeG-00026g-08@rmk-PC.armlinux.org.uk>
Date: Fri, 13 Mar 2020 21:13:34 +0100
Message-ID: <87eetwypw1.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_131345_309697_DECB978D 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Baruch Siach <baruch@tkos.co.il>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

> If the mv88e6xxx DSA driver is built as a module, it causes the
> ethernet driver to re-probe when it's loaded. This in turn causes
> the gigabit PHY to be momentarily reset and reprogrammed. However,
> we attempt to reprogram the PHY immediately after deasserting reset,
> and the PHY ignores the writes.
>
> This results in the PHY operating in the wrong mode, and the copper
> link states down.
>
> Set a reset deassert delay of 10ms for the gigabit PHY to avoid this.
>
> Fixes: babc5544c293 ("arm64: dts: clearfog-gt-8k: 1G eth PHY reset signal")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>


Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> index bd881497b872..dc531d136273 100644
> --- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
> @@ -367,6 +367,7 @@
>  		pinctrl-0 = <&cp0_copper_eth_phy_reset>;
>  		reset-gpios = <&cp0_gpio2 11 GPIO_ACTIVE_LOW>;
>  		reset-assert-us = <10000>;
> +		reset-deassert-us = <10000>;
>  	};
>  
>  	switch0: switch0@4 {
> -- 
> 2.20.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
