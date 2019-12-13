Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EB411E2DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 12:37:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XDdCPZhrWx76eRDmmsJlr4ouZBQo7JrSYHPyhOVw04E=; b=uegzCbaWSzkNOV
	Uz2JmZO0mfODgkjdJPCCeDuHvfSALTQk3h81cDpy33SCFwLIb+4CIemXVs/hCW6MF7UU+WzMjyjsk
	RbyqJ88HBX2b/W/sXgUkrx+xPearydG1kgcs1a8ZiUZU6VeAq0/CLjOeoEJv6zl/z6bQMoC4tX6EH
	GI6sqo55d0MCvQGAECDP9Bzbv44AbAG7KO/Fk18jrH8bf5JRd3G4LndFDE+G2R897aCjERZuZrMz4
	xYf8eRD3XorvRrfeGn27B2HJYCQ8NGH0eseoq3uQFM5lE7IW3c9tGBnb+P2XG/geupnBBXCFc/5Vi
	GQlNLqVEEeYdc5JEGiQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifjFv-0000Pi-6K; Fri, 13 Dec 2019 11:37:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifjFn-0000OV-Eb
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 11:37:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BADB51045;
 Fri, 13 Dec 2019 03:37:00 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 332B73F718;
 Fri, 13 Dec 2019 03:37:00 -0800 (PST)
Date: Fri, 13 Dec 2019 11:36:58 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] PCI: uniphier: remove module code from built-in driver
Message-ID: <20191213113657.GM24359@e119886-lin.cambridge.arm.com>
References: <20191114122654.1490-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191114122654.1490-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_033703_576018_E5BA1519 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Paul Gortmaker <paul.gortmaker@windriver.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 14, 2019 at 09:26:54PM +0900, Masahiro Yamada wrote:
> builtin_platform_driver() and MODULE_* are always odd combination.
> 
> The MODULE_* tags are never populated since CONFIG_PCIE_UNIPHIER is
> a bool option.
> 
> You can see similar cleanups by:
>   git log --grep='explicitly non-modular'

Thanks for the justification, it's helpful - however this doesn't belong
on the commit message so please remove that.


> 
> Following those commits, remove all the MODULE_* tags and the driver
> detach code.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> Reviewed-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Please remove Reviewed-by tags that were not given on the public lists,
reviews should be performed on list (as per [1]).

[1] https://lore.kernel.org/linux-arm-kernel/20191015164303.GC25674@e121166-lin.cambridge.arm.com/

The patch looks OK to me - however can you update the commit message
to better describe this (take inspiration from the examples you gave)?
And there is no need to make any reference to similar commits in the
history.

Thanks,

Andrew Murray

> ---
> 
>  drivers/pci/controller/dwc/pcie-uniphier.c | 31 +---------------------
>  1 file changed, 1 insertion(+), 30 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
> index 3f30ee4a00b3..8c92b660a0f6 100644
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
> @@ -161,12 +161,6 @@ static void uniphier_pcie_irq_enable(struct uniphier_pcie_priv *priv)
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
> @@ -387,14 +381,6 @@ static int uniphier_pcie_host_enable(struct uniphier_pcie_priv *priv)
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
> @@ -446,31 +432,16 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
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
