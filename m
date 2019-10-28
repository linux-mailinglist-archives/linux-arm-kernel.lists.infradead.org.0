Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D03ABE73CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:37:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TWBR6VyaVNdcWIcCz4whYbAPCMDPqBl589SrMW42DU=; b=C3o/o7Cz/mdQqD
	fGrJuppViim+/L5yyuPvIdbwWRUuljchin2pMCwY3pjtt+EKf7QAjWD+u7in+HQ2l++zkyMh1URkw
	bFX5cXTIGwvyfEny8tLeBxPDsTw0owJDgqYQ1xT++f5KSdUfaPkLqMyl8qJWbrHU6W7ox5RsVcqKW
	sW+41DhFKgliEIu3VmCwVAYrdpkNGo0qwxb/awtjujhYGJfiGz2ZMZaG3vSnOKkRZ1vjmYO+eXUdZ
	OaBYWHuImn9H3zgiFcE7tF/EYSQ29QzTsBbxg14qvxGRkLCjdqzSxyCGde0YOY3alqkspuWV8fJBc
	rDs59lzeqNfnTFAC5s7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP68g-0001ik-2W; Mon, 28 Oct 2019 14:36:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP68V-0001i4-Rn
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:36:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id e10so6980326pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 07:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PmRx5dALyuiFb1deH7EkGB+5sMkPmmG95+n7Hin0SRc=;
 b=JStZEYncHmSdREz0qBlxsDMFN2uBP6Q3CK4+XyqH64qAjgci/VtW+3PsD91H7B3UE/
 KoLSTTBstOKiOJkqOaHfcCmZJse26kwFYl8QtItcNqRKfNCbGfzEd095Rg7Z+kBD55NQ
 5zb5IFoZBg2afshGXtCP1cYhZJRGnCnckRCci0EYOBnu7uGUQ40hdDDd/7Dp2oOLgx3O
 sAud2YpY3yXziHjE39cWlPPIJlpguBVvOzLSuam7jQVEC86eC5iUVNvjZF46B0xSgRkc
 f5wQnT5Tw+FReSu+dsA6PB9o7hSJpAHJYMmx/DMJtYkdOLjhAAeKYGfIAk9r6iJMzDxJ
 QKkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PmRx5dALyuiFb1deH7EkGB+5sMkPmmG95+n7Hin0SRc=;
 b=htebNA0hwrp7igdYr0PBmKIl3PmQO78oDvrN6DMxR/U+VK/akYkGRTVQbgjYtS2WfS
 2zVLDjomq0eMLz7IyruAs48uf6ILFFaQr9l4CKwmPyhHsRgSQf+QyO4RGdNedVPm7uPD
 4LSSBT1IhUs8yC4h8q0ndN8tL6Gr8umcw13AKy91lpMq+Ae0rId+rTmflOJI+uiMTH4I
 iI03/iiy1fFYawJAXPi/B4JS+r5LCGrf7+BSWGlAah2Q/Hu1uXyUKvb1ZtC2ZoHSuUo8
 crVJgYwRaD7a/gTtJxtzlQcJ6tMWHEkO3InJaMBdg2vM9k7KWVARhvPrhv/Vtba7/pMY
 I/iQ==
X-Gm-Message-State: APjAAAWpwBzMHDAUrsWDhdsYryhTvMsGHwEEz0Oc5p4xTrAOLxXDtBc1
 o1YNc69OlPihTMfH0GLFVkl5
X-Google-Smtp-Source: APXvYqzACd6bDvccTM4kU0yF1t/3ns8eVeICep9JeWWjs1NcRgEF8ewe5gp5jxsSj987hN2Vymssuw==
X-Received: by 2002:a17:90a:d588:: with SMTP id v8mr356542pju.51.1572273407017; 
 Mon, 28 Oct 2019 07:36:47 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6004:d1fe:706d:952a:57bd:23b6])
 by smtp.gmail.com with ESMTPSA id w6sm10947901pfw.84.2019.10.28.07.36.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 28 Oct 2019 07:36:46 -0700 (PDT)
Date: Mon, 28 Oct 2019 20:06:38 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH 2/3] arm64: dts: freescale: Add devicetree support for
 Thor96 board
Message-ID: <20191028143638.GA29832@Mani-XPS-13-9360>
References: <20191024144235.3182-1-manivannan.sadhasivam@linaro.org>
 <20191024144235.3182-3-manivannan.sadhasivam@linaro.org>
 <20191028115110.GE16985@dragon>
 <20191028142732.GA29312@Mani-XPS-13-9360>
 <20191028143240.GO16985@dragon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028143240.GO16985@dragon>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_073647_932231_0FC8BF03 
X-CRM114-Status: GOOD (  29.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, pavel@ucw.cz, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, darshak.patel@einfochips.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 prajose.john@einfochips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shawn,

On Mon, Oct 28, 2019 at 10:32:42PM +0800, Shawn Guo wrote:
> On Mon, Oct 28, 2019 at 07:57:32PM +0530, Manivannan Sadhasivam wrote:
> > Hi Shawn,
> > 
> > On Mon, Oct 28, 2019 at 07:51:12PM +0800, Shawn Guo wrote:
> > > On Thu, Oct 24, 2019 at 08:12:34PM +0530, Manivannan Sadhasivam wrote:
> > > > Add devicetree support for Thor96 board from Einfochips. This board is
> > > > one of the 96Boards Consumer Edition platform powered by the NXP
> > > > i.MX8MQ SoC.
> > > > 
> > > > Following are the features supported currently:
> > > > 
> > > > 1. uSD
> > > > 2. WiFi/BT
> > > > 3. Ethernet
> > > > 4. EEPROM (M24256)
> > > > 5. NOR Flash (W25Q256JW)
> > > > 6. 2xUSB3.0 ports and 1xUSB2.0 port at HS expansion
> > > > 
> > > > More information about this board can be found in Arrow website:
> > > > https://www.arrow.com/en/products/i.imx8-thor96/arrow-development-tools
> > > > 
> > > > Link to 96Boards CE Specification: https://linaro.co/ce-specification
> > > > 
> > > > Signed-off-by: Darshak Patel <darshak.patel@einfochips.com>
> > > > [Mani: cleaned up for upstream]
> > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > ---
> > > >  arch/arm64/boot/dts/freescale/Makefile        |   1 +
> > > >  .../boot/dts/freescale/imx8mq-thor96.dts      | 581 ++++++++++++++++++
> > > >  2 files changed, 582 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
> > > > index 93fce8f0c66d..dec1662019be 100644
> > > > --- a/arch/arm64/boot/dts/freescale/Makefile
> > > > +++ b/arch/arm64/boot/dts/freescale/Makefile
> > > > @@ -28,6 +28,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-nitrogen.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
> > > > +dtb-$(CONFIG_ARCH_MXC) += imx8mq-thor96.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
> > > >  dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
> > > > diff --git a/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> > > > new file mode 100644
> > > > index 000000000000..e1adf24c2602
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/freescale/imx8mq-thor96.dts
> > > > @@ -0,0 +1,581 @@
> > > > +// SPDX-License-Identifier: GPL-2.0+
> > > > +/*
> > > > + * Copyright 2019 Einfochips
> > > > + * Copyright 2019 Linaro Ltd.
> > > > + */
> > > > +
> > > > +/dts-v1/;
> > > > +
> > > > +#include "imx8mq.dtsi"
> > > > +
> > > > +/ {
> > > > +	model = "Einfochips i.MX8MQ Thor96";
> > > > +	compatible = "einfochips,imx8mq-thor96", "fsl,imx8mq";
> > > > +
> > > > +	chosen {
> > > > +		stdout-path = &uart1;
> > > > +	};
> > > > +
> > > > +	memory@40000000 {
> > > > +		device_type = "memory";
> > > > +		reg = <0x00000000 0x40000000 0 0x80000000>;
> > > > +	};
> > > > +
> > > > +	leds {
> > > > +		compatible = "gpio-leds";
> > > > +		pinctrl-names = "default";
> > > > +		pinctrl-0 = <&pinctrl_leds>;
> > > > +
> > > > +		user-led1 {
> > > > +			label = "green:user1";
> > > > +			gpios = <&gpio4 21 GPIO_ACTIVE_HIGH>;
> > > > +			linux,default-trigger = "heartbeat";
> > > > +		};
> > > > +
> > > > +		user-led2 {
> > > > +			label = "green:user2";
> > > > +			gpios = <&gpio4 22 GPIO_ACTIVE_HIGH>;
> > > > +			linux,default-trigger = "none";
> > > 
> > > I see linux,default-trigger is defined in Documentation/devicetree/bindings/leds/common.txt
> > > with given string values. "none" and the following ones are not there.
> > > I'm not sure how this works.
> > > 
> > 
> > The devicetree binding is not updated. I think folks just added triggers
> > to the respective places but didn't bother to update the binding.
> 
> Can you please bring the bindings up to date?  It will help people like
> me a lot.
> 

Sure thing. It will help everyone :) If Pavel has no objections on this (incase
if someone did/working on it), I'll add a patch to next iteration.

Thanks,
Mani

> Shawn
> 
> > 
> > For instance, mmc* trigger is registered here:
> > https://elixir.bootlin.com/linux/v5.4-rc2/source/drivers/mmc/core/host.c#L476
> > 
> > For `none`, it is like removing the trigger. This is the default mode if the
> > trigger property is not present:
> > https://elixir.bootlin.com/linux/v5.4-rc2/source/drivers/leds/led-triggers.c#L113
> > 
> > You can see the list of LED triggers by `cat`ing this file:
> > /sys/class/leds/<led>/trigger
> > 
> > Copied Pavel and LED list for reference.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
