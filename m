Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 074551B531F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 05:29:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wrW8mgFsVLKZl+VtnLat3TbO2FtD751JGZhAk/JKuF0=; b=dJUDdcp75cUc/g
	rjdKS8lqLR5jB6mUux7EbNLgLAPcryuwHx8rIGylQlXl5ynoc8eK37lcuVPPoRvnX2InEcDhc9zJM
	D1IeoFAzK2UIqzun+cWEoEPfQfMtwF8oJSKCS8IRNoEbG5rA41krModrUTfWjuRTT5nTACTAqC/m/
	doWMzLjMVwV14r8BCIROBFkmUrAs5z+vIq/HeAj1q9uHd0uyQXv8f1GXMGF+wPFpOJVgImgtvF5Zt
	O3Acdd+9SKYh8XPLbdvK4hXcC9GpnYG0B7c6qxGDVNsDmGhZEwh6B16AFfXdY9RqcJdXPiWdHzS/A
	0DG1XjuxJMKyx8DZTzCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRSY5-0000hj-QC; Thu, 23 Apr 2020 03:29:13 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRSXs-0000h1-Rs
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 03:29:02 +0000
Received: by mail-pg1-f195.google.com with SMTP id p8so2187837pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 20:28:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=q9aHQgMVMcmk9+d/1S5Kv3tLB8kkTIYxTds5dyRg+eE=;
 b=cb00Sm4WYxCeaF1HW6QrIIAAPEpmlzo7uREjg8s8Qcr7dU7r1GRwouT083KmPD5IKP
 GTPDEyexguQFZo1huRkjD7dBqFNRFz4sAYUnBQcAeTLqqYRsPpLUJQwnRlvAXCSq3s2Y
 yzz9C6i7AsVPR38CHl3krK9BDJCUsthqSBF/CLnOd8BuD2pxl/DTcQEeyeciJ3nHSTgI
 QzB7v7PAME3gBnPA5+AA6fXiHzCtLT90hf1mSwibjGru8o6k2Id8VS+2YXfIgqqrJLwZ
 Ji0X/q2nyZtkTD6+7BEF/MZ2Xe2dPAIBVLaM5Wnjo+tVFWx/WjGWu/JTGlxGZ4yfbmI2
 GzFw==
X-Gm-Message-State: AGi0PuY/vIwTR7cgFYOatq8LWCQlZOyPbXme7FphXlP+RMFENmuUaPdD
 rZqWvapJDa1WUP/HFejyIZo=
X-Google-Smtp-Source: APiQypJJMTrWfMhnTklxFhSEYE4Tj1frBEa4Zq1sFq7KuRzVD8gHe3OVKINmK9VNNnsNYqSBJQRmUw==
X-Received: by 2002:a63:4cc:: with SMTP id 195mr2139378pge.196.1587612536594; 
 Wed, 22 Apr 2020 20:28:56 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
 by smtp.gmail.com with ESMTPSA id r9sm1052111pfg.2.2020.04.22.20.28.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 20:28:55 -0700 (PDT)
Date: Wed, 22 Apr 2020 20:28:54 -0700
From: Moritz Fischer <mdf@kernel.org>
To: Nava kishore Manne <nava.manne@xilinx.com>
Subject: Re: [PATCH 2/2] fpga: zynq: Add AFI config driver
Message-ID: <20200423032854.GB2430@epycbox.lan>
References: <1586946290-7280-1-git-send-email-nava.manne@xilinx.com>
 <1586946290-7280-2-git-send-email-nava.manne@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586946290-7280-2-git-send-email-nava.manne@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_202900_903343_63106137 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritz.fischer.private[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.195 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-fpga@vger.kernel.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, mdf@kernel.org,
 linux-arm-kernel@lists.infradead.org, chinnikishore369@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nava,

On Wed, Apr 15, 2020 at 03:54:50PM +0530, Nava kishore Manne wrote:
> This patch Adds AFI config driver. This is useful for
> the PS to PL configuration for the fpga manager On zynq
> platform.
> 
> Signed-off-by: Nava kishore Manne <nava.manne@xilinx.com>
> ---
>  drivers/fpga/Kconfig    |  8 +++++
>  drivers/fpga/Makefile   |  1 +
>  drivers/fpga/zynq-afi.c | 81 +++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 90 insertions(+)
>  create mode 100644 drivers/fpga/zynq-afi.c
> 
> diff --git a/drivers/fpga/Kconfig b/drivers/fpga/Kconfig
> index 474f304e..60982a0 100644
> --- a/drivers/fpga/Kconfig
> +++ b/drivers/fpga/Kconfig
> @@ -214,4 +214,12 @@ config FPGA_MGR_ZYNQMP_FPGA
>  	  to configure the programmable logic(PL) through PS
>  	  on ZynqMP SoC.
>  
> +config FPGA_MGR_ZYNQ_AFI_FPGA
> +	bool "Xilinx AFI FPGA"
> +	depends on FPGA_MGR_ZYNQ_FPGA
Curious. How does this dependency play in here?
> +	help
> +	  Zynq AFI driver support for writing to the AFI registers
> +	  for configuring the PS_PL interface. For some of the bitstream
> +	  or designs to work the PS to PL interfaces need to be configured
> +	  like the data bus-width etc.
>  endif # FPGA
> diff --git a/drivers/fpga/Makefile b/drivers/fpga/Makefile
> index 312b937..d115e29 100644
> --- a/drivers/fpga/Makefile
> +++ b/drivers/fpga/Makefile
> @@ -26,6 +26,7 @@ obj-$(CONFIG_FPGA_BRIDGE)		+= fpga-bridge.o
>  obj-$(CONFIG_SOCFPGA_FPGA_BRIDGE)	+= altera-hps2fpga.o altera-fpga2sdram.o
>  obj-$(CONFIG_ALTERA_FREEZE_BRIDGE)	+= altera-freeze-bridge.o
>  obj-$(CONFIG_XILINX_PR_DECOUPLER)	+= xilinx-pr-decoupler.o
> +obj-$(CONFIG_FPGA_MGR_ZYNQ_AFI_FPGA)	+= zynq-afi.o
>  
>  # High Level Interfaces
>  obj-$(CONFIG_FPGA_REGION)		+= fpga-region.o
> diff --git a/drivers/fpga/zynq-afi.c b/drivers/fpga/zynq-afi.c
> new file mode 100644
> index 0000000..7ce0d08
> --- /dev/null
> +++ b/drivers/fpga/zynq-afi.c
> @@ -0,0 +1,81 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Xilinx FPGA AFI driver.
> + * Copyright (c) 2018 Xilinx Inc.
> + */
> +
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +
> +/* Registers and special values for doing register-based operations */
> +#define AFI_RDCHAN_CTRL_OFFSET	0x00
> +#define AFI_WRCHAN_CTRL_OFFSET	0x14
> +
> +#define AFI_BUSWIDTH_MASK	0x01
> +
> +/**
> + * struct afi_fpga - AFI register description
> + * @membase:	pointer to register struct
> + * @afi_width:	AFI bus width to be written
> + */
> +struct zynq_afi_fpga {
> +	void __iomem	*membase;
> +	u32		afi_width;
> +};
> +
> +static int zynq_afi_fpga_probe(struct platform_device *pdev)
> +{
> +	struct zynq_afi_fpga *afi_fpga;
> +	struct resource *res;
> +	u32 reg_val;
> +	u32 val;
> +
> +	afi_fpga = devm_kzalloc(&pdev->dev, sizeof(*afi_fpga), GFP_KERNEL);
> +	if (!afi_fpga)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	afi_fpga->membase = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(afi_fpga->membase))
> +		return PTR_ERR(afi_fpga->membase);
> +
> +	val = device_property_read_u32(&pdev->dev, "xlnx,afi-width",
> +				       &afi_fpga->afi_width);
> +	if (val) {
> +		dev_err(&pdev->dev, "Fail to get the afi bus width\n");
> +		return -EINVAL;
> +	}
> +
> +	reg_val = readl(afi_fpga->membase + AFI_RDCHAN_CTRL_OFFSET);
> +	reg_val &= ~AFI_BUSWIDTH_MASK;
> +	writel(reg_val | afi_fpga->afi_width,
> +	       afi_fpga->membase + AFI_RDCHAN_CTRL_OFFSET);
> +	reg_val = readl(afi_fpga->membase + AFI_WRCHAN_CTRL_OFFSET);
> +	reg_val &= ~AFI_BUSWIDTH_MASK;
> +	writel(reg_val | afi_fpga->afi_width,
> +	       afi_fpga->membase + AFI_WRCHAN_CTRL_OFFSET);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id zynq_afi_fpga_ids[] = {
> +	{ .compatible = "xlnx,zynq-afi-fpga" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, zynq_afi_fpga_ids);
> +
> +static struct platform_driver zynq_afi_fpga_driver = {
> +	.driver = {
> +		.name = "zynq-afi-fpga",
> +		.of_match_table = zynq_afi_fpga_ids,
> +	},
> +	.probe = zynq_afi_fpga_probe,
> +};
> +module_platform_driver(zynq_afi_fpga_driver);
> +
> +MODULE_DESCRIPTION("ZYNQ FPGA AFI module");
> +MODULE_AUTHOR("Nava kishore Manne <nava.manne@xilinx.com>");
> +MODULE_LICENSE("GPL v2");
> -- 
> 2.7.4
> 

It looks like all the driver does is writing two registers? How does
that fit into FPGA Manager as a framework. Should this maybe be eithe
for Zynq architecture or a Misc driver instead?

Is the idea here to create the device via an overlay?

Cheers,
Moritz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
