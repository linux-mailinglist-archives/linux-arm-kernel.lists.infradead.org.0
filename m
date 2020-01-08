Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1291D133F29
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 11:22:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCO+w1CjflxlXSdKGfmBN/A5qBkSIXCEWwpJoRg+vu4=; b=APMQ3PuKl9vq6p
	GGcDZoblArRjo0+jPledffWNC/bMgJQ5cf0z5PfKzJBdQuCxPn01lYw21TGIHL+a/Noo6euencX+G
	kt1IcQGwlznZK5HNeaB+CJEUSstm7+TOdf0Mjo6UVDw2IRomTf+pereHQytLTGt8db2pkEM0lnTiX
	+3gzf9OgSANcO2/ksp4oOfZMC7o6PBEIYr81XHkstAREsnyKXiCDPB413/KfnBlGDvoezqiMODiE6
	DNRR0nNR8YGOXqK3T9b8KH2SfgyWAMzmb7o28wvsVadx61ZUw6lrFa0jSUqVJgO8Xmf3FxO7oBCs0
	xzvrKZg1owS4P80PEesA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip8UC-0002Uy-JP; Wed, 08 Jan 2020 10:22:48 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip8U3-0002U7-MN
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 10:22:41 +0000
Received: from localhost (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id CC9E024000E;
 Wed,  8 Jan 2020 10:22:30 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>, jason@lakedaemon.net,
 andrew@lunn.ch, sebastian.hesselbarth@gmail.com,
 Joshua Scott <joshua.scott@alliedtelesis.co.nz>
Subject: Re: [PATCH] ARM: mvebu: Enable MBUS error propagation
In-Reply-To: <20191124093529.32399-1-chris.packham@alliedtelesis.co.nz>
References: <20191124093529.32399-1-chris.packham@alliedtelesis.co.nz>
Date: Wed, 08 Jan 2020 11:22:30 +0100
Message-ID: <8736cqb63d.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_022239_998544_18760288 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Chris,

> U-boot disables MBUS error propagation for Armada-385. The effect of
> this on the kernel is that any access to a mapped but inaccessible
> address causes the system to hang.
>
> By enabling MBUS error propagation the kernel can raise a Bus Error and
> panic to restart the system.

Unless I miss it, it seems that nobody comment this patch: sorry for the
delay.

>
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
>
> Notes:
>     We've encountered an issue where rogue accesses to PCI-e space cause an
>     Armada-385 system to lockup. We've found that enabling MBUS error
>     propagation lets us get a bus error which at least gives us a panic to
>     help identify what was accessed.
>     
>     U-boot clears the IO Err Prop Enable Bit[1] but so far no-one seems to
>     know why.
>     
>     I wasn't sure where to put this code. There is similar code for kirwood
>     in the equivalent dt_init function. On Armada-XP the register is part of
>     the Core Coherency Fabric block (for A385 it's documented as part of the
>     CCF block).

What about adding a new set of register to the mvebu mbus driver?

In this case it will be called even earlier allowing to see bus error
earlier.

In any case, you should separate the device tree change from the code
change and at least provide 2 patches.

Gregory

>     
>     --
>     [1] - https://gitlab.denx.de/u-boot/u-boot/blob/master/arch/arm/mach-mvebu/cpu.c#L489
>
>  arch/arm/boot/dts/armada-38x.dtsi |  5 +++++
>  arch/arm/mach-mvebu/board-v7.c    | 27 +++++++++++++++++++++++++++
>  2 files changed, 32 insertions(+)
>
> diff --git a/arch/arm/boot/dts/armada-38x.dtsi b/arch/arm/boot/dts/armada-38x.dtsi
> index 3f4bb44d85f0..3214c67433eb 100644
> --- a/arch/arm/boot/dts/armada-38x.dtsi
> +++ b/arch/arm/boot/dts/armada-38x.dtsi
> @@ -386,6 +386,11 @@
>  				      <0x20250 0x8>;
>  			};
>  
> +			ioerrc: io-err-control@20200 {
> +				compatible = "marvell,io-err-control";
> +				reg = <0x20200 0x4>;
> +			};
> +
>  			mpic: interrupt-controller@20a00 {
>  				compatible = "marvell,mpic";
>  				reg = <0x20a00 0x2d0>, <0x21070 0x58>;
> diff --git a/arch/arm/mach-mvebu/board-v7.c b/arch/arm/mach-mvebu/board-v7.c
> index d2df5ef9382b..fb7718386ef9 100644
> --- a/arch/arm/mach-mvebu/board-v7.c
> +++ b/arch/arm/mach-mvebu/board-v7.c
> @@ -138,10 +138,36 @@ static void __init i2c_quirk(void)
>  	}
>  }
>  
> +#define MBUS_ERR_PROP_EN BIT(8)
> +
> +/*
> + * U-boot disables MBUS error propagation. Re-enable it so we
> + * can handle them as Bus Errors.
> + */
> +static void __init enable_mbus_error_propagation(void)
> +{
> +	struct device_node *np =
> +		of_find_compatible_node(NULL, NULL, "marvell,io-err-control");
> +
> +	if (np) {
> +		void __iomem *reg;
> +
> +		reg = of_iomap(np, 0);
> +		if (reg) {
> +			u32 val;
> +
> +			val = readl_relaxed(reg);
> +			writel_relaxed(val | MBUS_ERR_PROP_EN, reg);
> +		}
> +		of_node_put(np);
> +	}
> +}
> +
>  static void __init mvebu_dt_init(void)
>  {
>  	if (of_machine_is_compatible("marvell,armadaxp"))
>  		i2c_quirk();
> +	enable_mbus_error_propagation();
>  }
>  
>  static void __init armada_370_xp_dt_fixup(void)
> @@ -191,6 +217,7 @@ DT_MACHINE_START(ARMADA_38X_DT, "Marvell Armada 380/385 (Device Tree)")
>  	.l2c_aux_val	= 0,
>  	.l2c_aux_mask	= ~0,
>  	.init_irq       = mvebu_init_irq,
> +	.init_machine	= mvebu_dt_init,
>  	.restart	= mvebu_restart,
>  	.dt_compat	= armada_38x_dt_compat,
>  MACHINE_END
> -- 
> 2.24.0
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
