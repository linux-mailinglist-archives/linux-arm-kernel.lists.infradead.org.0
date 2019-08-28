Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80B5A05B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tU8xc786q8aH4erS+wGO87OmZ8K3ZqtYiurDogn9SIA=; b=miQcL+Wh7SIpFq
	9XmmNXvtQ8Hc6ZwQiSEkQvlemQmOsEj8NEOZxpkfMehmg5i82pfA3x50ed2uPB244J/Be48c6FU0p
	uBMdYPXXLRE9VyuE/MjBT3AZ4914GOpe00YUwRyRCoHc6wCCDEy5zQIotlABxfFc5IZeIwKhoVulj
	+oBuyuHjjn5FvWsP6PfKAW1PPY24F9PlbVQWCXuaiPLU5nNhDCXIirXy6sMCRT3E0nzrGiPJi4WSS
	UqhSMX8mHyqmVtggarhgDhMy6Ba78u9dMnI/p+Y1DTJzaWvzAgzljx11QdqIqjhfaiJWesqLenyeY
	btGltimtI8ksMCmA4HFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zYr-0004dx-Ka; Wed, 28 Aug 2019 15:08:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zY2-0004OC-J3
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 15:07:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FAC628;
 Wed, 28 Aug 2019 08:07:42 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DF093F59C;
 Wed, 28 Aug 2019 08:07:41 -0700 (PDT)
Date: Wed, 28 Aug 2019 16:07:40 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V2 3/6] PCI: tegra: Add support to configure sideband pins
Message-ID: <20190828150739.GX14582@e119886-lin.cambridge.arm.com>
References: <20190828131505.28475-1-vidyas@nvidia.com>
 <20190828131505.28475-4-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828131505.28475-4-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_080746_670784_CDAEAB6F 
X-CRM114-Status: GOOD (  15.31  )
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 06:45:02PM +0530, Vidya Sagar wrote:
> Add support to configure sideband signal pins when information is present
> in respective controller's device-tree node.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Addressed review comment from Andrew Murray
> * Handled failure case of pinctrl_pm_select_default_state() cleanly
> 
>  drivers/pci/controller/dwc/pcie-tegra194.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> index fc0dbeb31d78..057ba4f9fbcd 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -1304,8 +1304,13 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
>  	if (ret < 0) {
>  		dev_err(dev, "Failed to get runtime sync for PCIe dev: %d\n",
>  			ret);
> -		pm_runtime_disable(dev);
> -		return ret;
> +		goto fail_pm_get_sync;
> +	}
> +
> +	ret = pinctrl_pm_select_default_state(pcie->dev);

This patch looks OK, though you're still using pcie->dev here instead of dev.

Thanks,

Andrew Murray

> +	if (ret < 0) {
> +		dev_err(dev, "Failed to configure sideband pins: %d\n", ret);
> +		goto fail_pinctrl;
>  	}
>  
>  	tegra_pcie_init_controller(pcie);
> @@ -1332,7 +1337,9 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
>  
>  fail_host_init:
>  	tegra_pcie_deinit_controller(pcie);
> +fail_pinctrl:
>  	pm_runtime_put_sync(dev);
> +fail_pm_get_sync:
>  	pm_runtime_disable(dev);
>  	return ret;
>  }
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
