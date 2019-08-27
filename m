Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F089ECB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N2llzIpiqGwwemmvEiYC5b4jl1a3GnlUlaYZGeuxP/k=; b=Hd0sIbAmMonpul
	I5PqGrfk9zd/h5gU/h+cJDDezYssq7yMyv/13BSrVQ2BQ74nqxYtoc2/OZB2brF6xAsUVliH7LtTd
	wGGI8vJeHVCzV/wUGNF2TE81RnnVMKozcv6PGMq0eCgTyzH0Xsw0/tiQeGFWEGBt1c+X7Lefpq10h
	xDRl7GVlJkxNpFRKJLwRIOHoLkb7CJg+2ovWyxbJpkpn4MEG4l1m3XTLHyPtdyTvJ/ududSsnZfkt
	r7lOaa+Qs1rhbc7Wb1cQGVnNg5H6IMnbLrw4yEBdwn5qBBjnmiLt8YEem+GDZ9mJpuEJVZcuB+ZR4
	oJ1C02UQy+Bz2yrEfgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dQe-00052Q-V6; Tue, 27 Aug 2019 15:30:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dQW-0004tm-VG
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:30:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDB94337;
 Tue, 27 Aug 2019 08:30:31 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28B733F59C;
 Tue, 27 Aug 2019 08:30:31 -0700 (PDT)
Date: Tue, 27 Aug 2019 16:30:29 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 3/6] PCI: tegra: Add support to configure sideband pins
Message-ID: <20190827153029.GO14582@e119886-lin.cambridge.arm.com>
References: <20190826073143.4582-1-vidyas@nvidia.com>
 <20190826073143.4582-4-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826073143.4582-4-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_083033_056089_3F4D94C8 
X-CRM114-Status: GOOD (  14.63  )
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

On Mon, Aug 26, 2019 at 01:01:40PM +0530, Vidya Sagar wrote:
> Add support to configure sideband signal pins when information is present
> in respective controller's device-tree node.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  drivers/pci/controller/dwc/pcie-tegra194.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
> index fc0dbeb31d78..8a27b25893c9 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -1308,6 +1308,12 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
>  		return ret;
>  	}
>  
> +	ret = pinctrl_pm_select_default_state(pcie->dev);
> +	if (ret < 0) {
> +		dev_err(pcie->dev, "Failed to configure sideband pins\n");

I think you can just use dev instead of pcie->dev here.

> +		return ret;

Don't you need to pm_runtime_put_sync and pm_runtime_disable here?

Thanks,

Andrew Murray

> +	}
> +
>  	tegra_pcie_init_controller(pcie);
>  
>  	pcie->link_state = tegra_pcie_dw_link_up(&pcie->pci);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
