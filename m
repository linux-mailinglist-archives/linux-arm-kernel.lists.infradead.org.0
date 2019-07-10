Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDFC6453D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 12:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xV3GUhDRjt2uKh+LGbQa2jj9/8y2XdMePesRuLHCK/M=; b=a8JxEsO1IxNyNl
	bhIAmOdms2dAwsHp4Wp1ICfEu9jI/fdBvE6CkivDZO0//1DxtCB9vsmAoSyrmDr2NDCYFE42xW/DW
	UlS03TIVTUjtn3Ck87/5dgKEjqbVSheTIjJ0Rfcn+4p9CSkigbwC7pDGaqZcl3PkV5dCghHWGB9QL
	GT4Uos4KfCAGedOU6kxegSA3QbP5J/y98Y2NZqhEkMMLXRPlYltWhyJOy15HrXxAWfjym94gIzE2r
	mMTkOv9eR/HoTBwCfHNJ2mP98fgsCek0R1124Ajsc+UKkeAMqKW3+ctekm7DrZkr2nYM/B5pGrWe9
	Wtp4giap1eB2yVyYgRyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9yW-0006PU-2B; Wed, 10 Jul 2019 10:37:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9yP-0006P6-5p
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 10:37:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 987C4344;
 Wed, 10 Jul 2019 03:37:16 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0DEAB3F738;
 Wed, 10 Jul 2019 03:37:13 -0700 (PDT)
Date: Wed, 10 Jul 2019 11:37:09 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V13 05/12] PCI: dwc: Add ext config space capability
 search API
Message-ID: <20190710103709.GA4063@e121166-lin.cambridge.arm.com>
References: <20190710062212.1745-1-vidyas@nvidia.com>
 <20190710062212.1745-6-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710062212.1745-6-vidyas@nvidia.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_033717_313558_E6320D98 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, linux-pci@vger.kernel.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, kthota@nvidia.com,
 kishon@ti.com, linux-tegra@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 11:52:05AM +0530, Vidya Sagar wrote:
> Add extended configuration space capability search API using struct dw_pcie *
> pointer

Sentences are terminated with a period and this is v13 not v1, which
proves that you do not read the commit logs you write.

I need you guys to understand that I can't rewrite commit logs all
the time, I do not want to go as far as not accepting your patches
anymore so please do pay attention to commit log details they
are as important as the code itself.

https://lore.kernel.org/linux-pci/20171026223701.GA25649@bhelgaas-glaptop.roam.corp.google.com/

Thanks,
Lorenzo

> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> Acked-by: Thierry Reding <treding@nvidia.com>
> ---
> V13:
> * None
> 
> V12:
> * None
> 
> V11:
> * None
> 
> V10:
> * None
> 
> V9:
> * Added Acked-by from Thierry
> 
> V8:
> * Changed data types of return and arguments to be inline with data being returned
>   and passed.
> 
> V7:
> * None
> 
> V6:
> * None
> 
> V5:
> * None
> 
> V4:
> * None
> 
> V3:
> * None
> 
> V2:
> * This is a new patch in v2 series
> 
>  drivers/pci/controller/dwc/pcie-designware.c | 41 ++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h |  1 +
>  2 files changed, 42 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
> index 7818b4febb08..181449e342f1 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -53,6 +53,47 @@ u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap)
>  }
>  EXPORT_SYMBOL_GPL(dw_pcie_find_capability);
>  
> +static u16 dw_pcie_find_next_ext_capability(struct dw_pcie *pci, u16 start,
> +					    u8 cap)
> +{
> +	u32 header;
> +	int ttl;
> +	int pos = PCI_CFG_SPACE_SIZE;
> +
> +	/* minimum 8 bytes per capability */
> +	ttl = (PCI_CFG_SPACE_EXP_SIZE - PCI_CFG_SPACE_SIZE) / 8;
> +
> +	if (start)
> +		pos = start;
> +
> +	header = dw_pcie_readl_dbi(pci, pos);
> +	/*
> +	 * If we have no capabilities, this is indicated by cap ID,
> +	 * cap version and next pointer all being 0.
> +	 */
> +	if (header == 0)
> +		return 0;
> +
> +	while (ttl-- > 0) {
> +		if (PCI_EXT_CAP_ID(header) == cap && pos != start)
> +			return pos;
> +
> +		pos = PCI_EXT_CAP_NEXT(header);
> +		if (pos < PCI_CFG_SPACE_SIZE)
> +			break;
> +
> +		header = dw_pcie_readl_dbi(pci, pos);
> +	}
> +
> +	return 0;
> +}
> +
> +u16 dw_pcie_find_ext_capability(struct dw_pcie *pci, u8 cap)
> +{
> +	return dw_pcie_find_next_ext_capability(pci, 0, cap);
> +}
> +EXPORT_SYMBOL_GPL(dw_pcie_find_ext_capability);
> +
>  int dw_pcie_read(void __iomem *addr, int size, u32 *val)
>  {
>  	if (!IS_ALIGNED((uintptr_t)addr, size)) {
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index d8c66a6827dc..11c223471416 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -252,6 +252,7 @@ struct dw_pcie {
>  		container_of((endpoint), struct dw_pcie, ep)
>  
>  u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap);
> +u16 dw_pcie_find_ext_capability(struct dw_pcie *pci, u8 cap);
>  
>  int dw_pcie_read(void __iomem *addr, int size, u32 *val);
>  int dw_pcie_write(void __iomem *addr, int size, u32 val);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
