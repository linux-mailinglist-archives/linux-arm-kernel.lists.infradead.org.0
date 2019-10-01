Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C355C4145
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 21:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=+GLRConi1SWbVv19pHubiAoQQRxtDc3guse7Khq61Us=; b=btdGFm1Ua+3y98
	il8FqnKeeqkjVDnRPJoIBgLUFksDtYeRqLNGd1JTXVf6DgZNZ034jHS7sxUNh7eCPDCeTrbxtxRQZ
	k3cPvbzAkwl2SnAPNCcNh03ZagmddxgGxzxHKQX/sph95zGC6kbT/6Mhzgr5ajg2FUyVKbXjYM92Y
	DzZ0AnldmjHOsKp0knZGt1cwyeTCOlRJfmPXj525TXKUBnjmhnmsPbXpdvcQe5thYqfgyfhHJN/SZ
	HikgBRAiXejYNqA+fqyPd8SApDX6+UIkowvape2jJLmwO1r40zirWWyOzzWxZArR52U4Lqr2c8Xk7
	jA/rnnXu0gOIIHJV+7Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFO5V-0005L3-3b; Tue, 01 Oct 2019 19:45:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFO5M-0005K5-Sp
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 19:45:26 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26F8A205C9;
 Tue,  1 Oct 2019 19:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569959121;
 bh=iuEl0oG1KnkC1p6/E5Wz2uBIvJyfmGalS5kJrSPDlLw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=2hV/mPBtGU8oBcPBQvxE26QUIPzRLboN1a7KAwOaOZE1lpPoyVJG5/4rv3CiYrDzN
 uL1kVj4B0TKChZ7oBo9O48OKM+XZkxEg8M7raFz6GnIiuzvq+gO1KpkNu9loHUiJwF
 6tlzF/Y34Z2JKakjjPqBmUkb5VodKqlwihN5ekVs=
Date: Tue, 1 Oct 2019 14:45:19 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof Wilczynski <kw@linux.com>
Subject: Re: [PATCH v2] PCI: Remove unused includes and superfluous struct
 declaration
Message-ID: <20191001194519.GA63059@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903113059.2901-1-kw@linux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_124524_976175_9AEBF406 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jingoo Han <jingoohan1@gmail.com>, Joerg Roedel <joro@8bytes.org>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 01:30:59PM +0200, Krzysztof Wilczynski wrote:
> Remove <linux/pci.h> and <linux/msi.h> from being included
> directly as part of the include/linux/of_pci.h, and remove
> superfluous declaration of struct of_phandle_args.
> 
> Move users of include <linux/of_pci.h> to include <linux/pci.h>
> and <linux/msi.h> directly rather than rely on both being
> included transitively through <linux/of_pci.h>.
> 
> Signed-off-by: Krzysztof Wilczynski <kw@linux.com>

Applied with Rob's reviewed-by to pci/misc for v5.5, thanks!

> ---
>  drivers/iommu/of_iommu.c                          | 2 ++
>  drivers/irqchip/irq-gic-v2m.c                     | 1 +
>  drivers/irqchip/irq-gic-v3-its-pci-msi.c          | 1 +
>  drivers/pci/controller/dwc/pcie-designware-host.c | 1 +
>  drivers/pci/controller/pci-aardvark.c             | 1 +
>  drivers/pci/controller/pci-thunder-pem.c          | 1 +
>  drivers/pci/pci.c                                 | 1 +
>  drivers/pci/probe.c                               | 1 +
>  include/linux/of_pci.h                            | 5 ++---
>  9 files changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/of_iommu.c b/drivers/iommu/of_iommu.c
> index 614a93aa5305..026ad2b29dcd 100644
> --- a/drivers/iommu/of_iommu.c
> +++ b/drivers/iommu/of_iommu.c
> @@ -8,6 +8,8 @@
>  #include <linux/export.h>
>  #include <linux/iommu.h>
>  #include <linux/limits.h>
> +#include <linux/pci.h>
> +#include <linux/msi.h>
>  #include <linux/of.h>
>  #include <linux/of_iommu.h>
>  #include <linux/of_pci.h>
> diff --git a/drivers/irqchip/irq-gic-v2m.c b/drivers/irqchip/irq-gic-v2m.c
> index e88e75c22b6a..fbec07d634ad 100644
> --- a/drivers/irqchip/irq-gic-v2m.c
> +++ b/drivers/irqchip/irq-gic-v2m.c
> @@ -17,6 +17,7 @@
>  #include <linux/irq.h>
>  #include <linux/irqdomain.h>
>  #include <linux/kernel.h>
> +#include <linux/pci.h>
>  #include <linux/msi.h>
>  #include <linux/of_address.h>
>  #include <linux/of_pci.h>
> diff --git a/drivers/irqchip/irq-gic-v3-its-pci-msi.c b/drivers/irqchip/irq-gic-v3-its-pci-msi.c
> index 229d586c3d7a..87711e0f8014 100644
> --- a/drivers/irqchip/irq-gic-v3-its-pci-msi.c
> +++ b/drivers/irqchip/irq-gic-v3-its-pci-msi.c
> @@ -5,6 +5,7 @@
>   */
>  
>  #include <linux/acpi_iort.h>
> +#include <linux/pci.h>
>  #include <linux/msi.h>
>  #include <linux/of.h>
>  #include <linux/of_irq.h>
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index d3156446ff27..7a9bef993e57 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -10,6 +10,7 @@
>  
>  #include <linux/irqchip/chained_irq.h>
>  #include <linux/irqdomain.h>
> +#include <linux/msi.h>
>  #include <linux/of_address.h>
>  #include <linux/of_pci.h>
>  #include <linux/pci_regs.h>
> diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> index fc0fe4d4de49..3a05f6ca95b0 100644
> --- a/drivers/pci/controller/pci-aardvark.c
> +++ b/drivers/pci/controller/pci-aardvark.c
> @@ -16,6 +16,7 @@
>  #include <linux/pci.h>
>  #include <linux/init.h>
>  #include <linux/platform_device.h>
> +#include <linux/msi.h>
>  #include <linux/of_address.h>
>  #include <linux/of_pci.h>
>  
> diff --git a/drivers/pci/controller/pci-thunder-pem.c b/drivers/pci/controller/pci-thunder-pem.c
> index f127ce8bd4ef..9491e266b1ea 100644
> --- a/drivers/pci/controller/pci-thunder-pem.c
> +++ b/drivers/pci/controller/pci-thunder-pem.c
> @@ -6,6 +6,7 @@
>  #include <linux/bitfield.h>
>  #include <linux/kernel.h>
>  #include <linux/init.h>
> +#include <linux/pci.h>
>  #include <linux/of_address.h>
>  #include <linux/of_pci.h>
>  #include <linux/pci-acpi.h>
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index 484e35349565..571e7e00984b 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -13,6 +13,7 @@
>  #include <linux/delay.h>
>  #include <linux/dmi.h>
>  #include <linux/init.h>
> +#include <linux/msi.h>
>  #include <linux/of.h>
>  #include <linux/of_pci.h>
>  #include <linux/pci.h>
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 169943f17a4c..11b11a652d18 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -7,6 +7,7 @@
>  #include <linux/delay.h>
>  #include <linux/init.h>
>  #include <linux/pci.h>
> +#include <linux/msi.h>
>  #include <linux/of_device.h>
>  #include <linux/of_pci.h>
>  #include <linux/pci_hotplug.h>
> diff --git a/include/linux/of_pci.h b/include/linux/of_pci.h
> index 21a89c4880fa..29658c0ee71f 100644
> --- a/include/linux/of_pci.h
> +++ b/include/linux/of_pci.h
> @@ -2,11 +2,10 @@
>  #ifndef __OF_PCI_H
>  #define __OF_PCI_H
>  
> -#include <linux/pci.h>
> -#include <linux/msi.h>
> +#include <linux/types.h>
> +#include <linux/errno.h>
>  
>  struct pci_dev;
> -struct of_phandle_args;
>  struct device_node;
>  
>  #if IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_PCI)
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
