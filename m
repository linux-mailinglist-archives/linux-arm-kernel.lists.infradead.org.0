Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7DA13125D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 13:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDntEHsXHVIWilLThOyFyL+NbuKqbZuqlzyvbwRBdnI=; b=F47RD1RxVQykkv
	+XvqvMw8my9hvnNwTd+Ol0CD4qccp2pApVNAhQgRsHdnf6CkuYfPme2CntffWgLs2e9YQZ8gpBcEI
	haIJGR1/HpXZVrzI6k/BjPosVqNdT4JYmZ1dtjorUK+O1eRaLnEH6wa/vZV7NT0+3d5gZU6dj7ODR
	8sVRn0AWJuam5FDpbmWkFFA2pLon6NzNXK2fAZxGGplx2/1YWBb/Vcw5qkdgtfZCM6YO1dUTCzyak
	bfeiYKUJF3JUv5cbeXuxTxlRz2XPuVG40tP6rNV+z92iK8KzZMHy4GnVV5QgWos9UVlV6F1a4T7tN
	Z1gAik60VhzyiLEy3GnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioRul-0004uX-5K; Mon, 06 Jan 2020 12:55:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioRud-0004tg-66
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 12:55:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69F6B328;
 Mon,  6 Jan 2020 04:55:13 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E15993F534;
 Mon,  6 Jan 2020 04:55:12 -0800 (PST)
Date: Mon, 6 Jan 2020 12:55:11 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH v2] PCI: uniphier: remove module code from built-in driver
Message-ID: <20200106125511.GT42593@e119886-lin.cambridge.arm.com>
References: <20191215223937.19619-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215223937.19619-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_045515_314579_8ECA910A 
X-CRM114-Status: GOOD (  20.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 07:39:37AM +0900, Masahiro Yamada wrote:
> builtin_platform_driver() and MODULE_* are always odd combination.
> 
> This file is not compiled as a module by anyone because
> CONFIG_PCIE_UNIPHIER is a bool option.
> 
> Let's remove the modular code that is essentially orphaned, so that
> when reading the driver there is no doubt it is builtin-only.
> 
> We explicitly disallow a driver unbind, since that doesn't have a
> sensible use case anyway, and it allows us to drop the ".remove" code.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
> 
> Changes in v2:
>   - update commit description
>   - remove Reviewed-by
> 
>  drivers/pci/controller/dwc/pcie-uniphier.c | 31 +---------------------
>  1 file changed, 1 insertion(+), 30 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
> index 8fd7badd59c2..a5401a0b1e58 100644
> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
> @@ -9,11 +9,11 @@
>  #include <linux/bitfield.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/init.h>
>  #include <linux/interrupt.h>
>  #include <linux/iopoll.h>
>  #include <linux/irqchip/chained_irq.h>
>  #include <linux/irqdomain.h>
> -#include <linux/module.h>
>  #include <linux/of_irq.h>
>  #include <linux/pci.h>
>  #include <linux/phy/phy.h>
> @@ -171,12 +171,6 @@ static void uniphier_pcie_irq_enable(struct uniphier_pcie_priv *priv)
>  	writel(PCL_RCV_INTX_ALL_ENABLE, priv->base + PCL_RCV_INTX);
>  }
>  
> -static void uniphier_pcie_irq_disable(struct uniphier_pcie_priv *priv)
> -{
> -	writel(0, priv->base + PCL_RCV_INT);
> -	writel(0, priv->base + PCL_RCV_INTX);
> -}
> -
>  static void uniphier_pcie_irq_ack(struct irq_data *d)
>  {
>  	struct pcie_port *pp = irq_data_get_irq_chip_data(d);
> @@ -397,14 +391,6 @@ static int uniphier_pcie_host_enable(struct uniphier_pcie_priv *priv)
>  	return ret;
>  }
>  
> -static void uniphier_pcie_host_disable(struct uniphier_pcie_priv *priv)
> -{
> -	uniphier_pcie_irq_disable(priv);
> -	phy_exit(priv->phy);
> -	reset_control_assert(priv->rst);
> -	clk_disable_unprepare(priv->clk);
> -}
> -
>  static const struct dw_pcie_ops dw_pcie_ops = {
>  	.start_link = uniphier_pcie_establish_link,
>  	.stop_link = uniphier_pcie_stop_link,
> @@ -456,31 +442,16 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
>  	return uniphier_add_pcie_port(priv, pdev);
>  }
>  
> -static int uniphier_pcie_remove(struct platform_device *pdev)
> -{
> -	struct uniphier_pcie_priv *priv = platform_get_drvdata(pdev);
> -
> -	uniphier_pcie_host_disable(priv);
> -
> -	return 0;
> -}
> -
>  static const struct of_device_id uniphier_pcie_match[] = {
>  	{ .compatible = "socionext,uniphier-pcie", },
>  	{ /* sentinel */ },
>  };
> -MODULE_DEVICE_TABLE(of, uniphier_pcie_match);
>  
>  static struct platform_driver uniphier_pcie_driver = {
>  	.probe  = uniphier_pcie_probe,
> -	.remove = uniphier_pcie_remove,
>  	.driver = {
>  		.name = "uniphier-pcie",
>  		.of_match_table = uniphier_pcie_match,
>  	},
>  };
>  builtin_platform_driver(uniphier_pcie_driver);
> -
> -MODULE_AUTHOR("Kunihiko Hayashi <hayashi.kunihiko@socionext.com>");
> -MODULE_DESCRIPTION("UniPhier PCIe host controller driver");
> -MODULE_LICENSE("GPL v2");
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
