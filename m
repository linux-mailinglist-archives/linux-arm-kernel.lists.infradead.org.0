Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 423BB84981
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:32:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xqSR/WIibWxjPzbM/fInE4GQ5Ia5KdvlhfUV4UVZew=; b=S3PbyrujgPSNl5
	Iw+HzDuG0zS0tm3ueZz11blqBEh2iDy2P4I65qGIARX2T0bIH7y72Gv5EyU1VuTH+ZGYJyF77Ylhw
	VIxrR1owqAS80PovSp5KKe6fgCJFvg+4hfDVnDay9nvTgT3wSVu0wvej0KQUMCv6Yy18C/7h+1RNe
	lQ6llImjBcAEOwnNIh8RHTBj6xNsORi87JoQFg8Z+Nxp9u+ul2bCuz9Iphpf+9cE4BTF5GCJy008t
	59wIxvkFW+RzvnIigYhVINrghH/SdKBTiAYuge7uaOAEz4VZjizA+Y53/PPYbBg7St2Y68F0wc+gG
	cPvIzd3QMpXfKVorq5xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJEg-0002cp-Ui; Wed, 07 Aug 2019 10:32:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJES-0002cH-Vj
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:31:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 660B828;
 Wed,  7 Aug 2019 03:31:48 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7D8D73F575;
 Wed,  7 Aug 2019 03:31:46 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:31:44 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 5/5] reset: Add support for resets provided by SCMI
Message-ID: <20190807103144.GH16546@e107155-lin>
References: <20190806170208.6787-1-sudeep.holla@arm.com>
 <20190806170208.6787-6-sudeep.holla@arm.com>
 <1565165066.5048.2.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565165066.5048.2.camel@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_033149_111970_6F7A8C7C 
X-CRM114-Status: GOOD (  26.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, wesleys@xilinx.com,
 aidapala@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Bo Zhang <bozhang.zhang@broadcom.com>, Felix Burton <fburton@xilinx.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, pajay@qti.qualcomm.com,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 10:04:26AM +0200, Philipp Zabel wrote:
> On Tue, 2019-08-06 at 18:02 +0100, Sudeep Holla wrote:
> > On some ARM based systems, a separate Cortex-M based System Control
> > Processor(SCP) provides the overall power, clock, reset and system
> > control. System Control and Management Interface(SCMI) Message Protocol
> > is defined for the communication between the Application Cores(AP)
> > and the SCP.
> >
> > Adds support for the resets provided using SCMI protocol for performing
> > reset management of various devices present on the SoC. Various reset
> > functionalities are achieved by the means of different ARM SCMI device
> > operations provided by the ARM SCMI framework.
> >
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  MAINTAINERS                |   1 +
> >  drivers/reset/Kconfig      |  11 ++++
> >  drivers/reset/Makefile     |   1 +
> >  drivers/reset/reset-scmi.c | 126 +++++++++++++++++++++++++++++++++++++
> >  4 files changed, 139 insertions(+)
> >  create mode 100644 drivers/reset/reset-scmi.c
> >
> > v1->v2:
> > 	- Renamed RESET_ARM_SCMI to RESET_SCMI and reworded Kconfig text
> > 	- Dropped unused struct device pointer from scmi_reset_data
> > 	- Added to_scmi_handle which helped to remove some repetitive code
> > 	- Fixed some doxygen comments
> > 	- Initialised rcdev.nr_resets
> > 	- Fixed MODULE_DESCRIPTION
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 6426db5198f0..f4af5c59c116 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -15545,6 +15545,7 @@ F:	drivers/clk/clk-sc[mp]i.c
> >  F:	drivers/cpufreq/sc[mp]i-cpufreq.c
> >  F:	drivers/firmware/arm_scpi.c
> >  F:	drivers/firmware/arm_scmi/
> > +F:	drivers/reset/reset-scmi.c
> >  F:	include/linux/sc[mp]i_protocol.h
> >
> >  SYSTEM RESET/SHUTDOWN DRIVERS
> > diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> > index 21efb7d39d62..4178ac11ba85 100644
> > --- a/drivers/reset/Kconfig
> > +++ b/drivers/reset/Kconfig
> > @@ -116,6 +116,17 @@ config RESET_QCOM_PDC
> >  	  to control reset signals provided by PDC for Modem, Compute,
> >  	  Display, GPU, Debug, AOP, Sensors, Audio, SP and APPS.
> >
> > +config RESET_SCMI
> > +	tristate "Reset driver controlled via ARM SCMI interface"
> > +	depends on ARM_SCMI_PROTOCOL || COMPILE_TEST
> > +	default ARM_SCMI_PROTOCOL
> > +	help
> > +	  This driver provides support for reset signal/domains that are
> > +	  controlled by firmware that implements the SCMI interface.
> > +
> > +	  This driver uses SCMI Message Protocol to interact with the
> > +	  firmware controlling all the reset signals.
> > +
> >  config RESET_SIMPLE
> >  	bool "Simple Reset Controller Driver" if COMPILE_TEST
> >  	default ARCH_STM32 || ARCH_STRATIX10 || ARCH_SUNXI || ARCH_ZX || ARCH_ASPEED || ARCH_BITMAIN
> > diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> > index 61456b8f659c..cf60ce526064 100644
> > --- a/drivers/reset/Makefile
> > +++ b/drivers/reset/Makefile
> > @@ -18,6 +18,7 @@ obj-$(CONFIG_RESET_OXNAS) += reset-oxnas.o
> >  obj-$(CONFIG_RESET_PISTACHIO) += reset-pistachio.o
> >  obj-$(CONFIG_RESET_QCOM_AOSS) += reset-qcom-aoss.o
> >  obj-$(CONFIG_RESET_QCOM_PDC) += reset-qcom-pdc.o
> > +obj-$(CONFIG_RESET_SCMI) += reset-scmi.o
> >  obj-$(CONFIG_RESET_SIMPLE) += reset-simple.o
> >  obj-$(CONFIG_RESET_STM32MP157) += reset-stm32mp1.o
> >  obj-$(CONFIG_RESET_SOCFPGA) += reset-socfpga.o
> > diff --git a/drivers/reset/reset-scmi.c b/drivers/reset/reset-scmi.c
> > new file mode 100644
> > index 000000000000..5e976a02a6cc
> > --- /dev/null
> > +++ b/drivers/reset/reset-scmi.c
> > @@ -0,0 +1,126 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * ARM System Control and Management Interface (ARM SCMI) reset driver
> > + *
> > + * Copyright (C) 2019 ARM Ltd.
> > + */
> > +
> > +#include <linux/module.h>
> > +#include <linux/mutex.h>
>
> You can drop mutex.h, it is unused.
>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
>
> This is not a platform device driver. Better replace this with
>
> #include <linux/device.h>
>
> > +#include <linux/reset-controller.h>
> > +#include <linux/scmi_protocol.h>
> > +
> > +/**
> > + * struct scmi_reset_data - reset controller information structure
> > + * @rcdev: reset controller entity
> > + * @handle: ARM SCMI handle used for communication with system controller
> > + * @dev: reset controller device pointer
>
> Drop this line, dev has been removed from struct scmi_reset_data.
>

All the above 3 are now fixed.

> > + */
> > +struct scmi_reset_data {
> > +	struct reset_controller_dev rcdev;
> > +	const struct scmi_handle *handle;
> > +};
> > +
> > +#define to_scmi_reset_data(p)	container_of((p), struct scmi_reset_data, rcdev)
> > +#define to_scmi_handle(p)	(to_scmi_reset_data(p)->handle)
> [...]
>
> Apart from these,
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
>

Thanks

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
