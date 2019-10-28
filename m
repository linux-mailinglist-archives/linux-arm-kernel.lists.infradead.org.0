Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707E2E73B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:33:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u28x9fDY+JJ2J+ii1pNR8ZgWzysPkcAbI5g+ieybU0w=; b=Ip/bS1Mv7Mu0xg
	wYFFvfqlo9/LeXE7VDgMjR/7e+shSUbf2GGcIdkQxOnrxMdGI36YRvHkHhKXSpZRrvYASKzIMjcKJ
	/SbcSJOvcyI04uQ12LenzsbOMmPUGwq6wzS6Y5bYOx9GYoe8LexaOy/tlxpE1hfUXpsQ9XzzoXp7Z
	HYYb4S4UoXeYzIWszBrZrAoKlBtChOH7msHFl9qZeLN5baPYas1EinP5YqPqcSJ3NpLZYRGbfJmuG
	uvRPxbXfBxjXmqqo/5ZGXkTRwhAEzO17PnmHESIuydXcLvAspTKgsn1NoduEa6VKrc26GVPTIFUME
	cOLBAGV40F3Sc49F05Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP654-00083X-2Y; Mon, 28 Oct 2019 14:33:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP64v-00083C-Bh
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:33:07 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BDAC1208C0;
 Mon, 28 Oct 2019 14:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572273185;
 bh=uBafmYZtjPMwKogdIRbd9ewyuSPO8qrIg0LiiywuY0M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2mSCPBEhdDJxFiUBH2CUlBroCVPG2Z4czuTICCq0bxeUgK0eaO9UeJTf8t+YYNfUx
 WFwGbTJnjWLsSBFR+ywalEVUSYw4YYA80IXDwY+0EVbCMnQFVaJfRwXlMjYFHW8J+x
 XJ4hKiceXG4z2w9eyzhZtQxWdZSUP/HUz8vffNro=
Date: Mon, 28 Oct 2019 22:32:42 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 2/3] arm64: dts: freescale: Add devicetree support for
 Thor96 board
Message-ID: <20191028143240.GO16985@dragon>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
 <20191024144235.3182-3-manivannan.sadhasivam@linaro.org>
 <20191028115110.GE16985@dragon>
 <20191028142732.GA29312@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028142732.GA29312@Mani-XPS-13-9360>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_073305_438486_7EF76044 
X-CRM114-Status: GOOD (  25.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, pavel@ucw.cz, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 07:57:32PM +0530, Manivannan Sadhasivam wrote:
> Hi Shawn,
> 
> On Mon, Oct 28, 2019 at 07:51:12PM +0800, Shawn Guo wrote:
> > On Thu, Oct 24, 2019 at 08:12:34PM +0530, Manivannan Sadhasivam wrote:
> > > Add devicetree support for Thor96 board from Einfochips. This board is
> > > one of the 96Boards Consumer Edition platform powered by the NXP
> > > i.MX8MQ SoC.
> > > 
> > > Following are the features supported currently:
> > > 
> > > 1. uSD
> > > 2. WiFi/BT
> > > 3. Ethernet
> > > 4. EEPROM (M24256)
> > > 5. NOR Flash (W25Q256JW)
> > > 6. 2xUSB3.0 ports and 1xUSB2.0 port at HS expansion
> > > 
> > > More information about this board can be found in Arrow website:
> > > https://www.arrow.com/en/products/i.imx8-thor96/arrow-development-tools
> > > 
> > > Link to 96Boards CE Specification: https://linaro.co/ce-specification
> > > 
> > > Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> > > [Mani: cleaned up for upstream]
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  arch/arm64/boot/dts/freescale/Makefile        |   1 +
> > >  .../boot/dts/freescale/imx8mq-thor96.dts      | 581 ++++++++++++++++++
> > >  2 files changed, 582 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > > index 93fce8f0c66d..dec1662019be 100644
> > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > @@ -28,6 +28,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-nitrogen.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
> > > +dtb-$(CONFIG_ARCH_MXC) += imx8mq-thor96.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
> > >  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> > > new file mode 100644
> > > index 000000000000..e1adf24c2602
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> > > @@ -0,0 +1,581 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/*
> > > + * Copyright 2019 Einfochips
> > > + * Copyright 2019 Linaro Ltd.
> > > + */
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include "imx8mq.dtsi"
> > > +
> > > +/ {
> > > +	model = "Einfochips i.MX8MQ Thor96";
> > > +	compatible = "einfochips,imx8mq-thor96", "fsl,imx8mq";
> > > +
> > > +	chosen {
> > > +		stdout-path = &uart1;
> > > +	};
> > > +
> > > +	memory@40000000 {
> > > +		device_type = "memory";
> > > +		reg = <0x00000000 0x40000000 0 0x80000000>;
> > > +	};
> > > +
> > > +	leds {
> > > +		compatible = "gpio-leds";
> > > +		pinctrl-names = "default";
> > > +		pinctrl-0 = <&pinctrl_leds>;
> > > +
> > > +		user-led1 {
> > > +			label = "green:user1";
> > > +			gpios = <&gpio4 21 GPIO_ACTIVE_HIGH>;
> > > +			linux,default-trigger = "heartbeat";
> > > +		};
> > > +
> > > +		user-led2 {
> > > +			label = "green:user2";
> > > +			gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
> > > +			linux,default-trigger = "none";
> > 
> > I see linux,default-trigger is defined in Documentation/devicetree/bindings/leds/common.txt
> > with given string values. "none" and the following ones are not there.
> > I'm not sure how this works.
> > 
> 
> The devicetree binding is not updated. I think folks just added triggers
> to the respective places but didn't bother to update the binding.

Can you please bring the bindings up to date?  It will help people like
me a lot.

Shawn

> 
> For instance, mmc* trigger is registered here:
> https://elixir.bootlin.com/linux/v5.4-rc2/source/drivers/mmc/core/host.c#L476
> 
> For `none`, it is like removing the trigger. This is the default mode if the
> trigger property is not present:
> https://elixir.bootlin.com/linux/v5.4-rc2/source/drivers/leds/led-triggers.c#L113
> 
> You can see the list of LED triggers by `cat`ing this file:
> /sys/class/leds/<led>/trigger
> 
> Copied Pavel and LED list for reference.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
