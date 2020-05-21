Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354291DD7BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Tx4bY1ip3CXqKpWuA3JeB6CuRy0ByrkVpjAUjasF8Y0=; b=LPhmaZA5FQZcXh
	UQJvQZ0mqNDqRak7ivw4IssuCH73soau7ix5OuDu4RNDPZ/x/Qvv3pmP4oJKqyoJ9RpmHSKK/r1XN
	U8wSoKZyGX7HYeoVMiLotcs5EM+eRjuxExPmroeu7zVnkG9q2N22E6UiRnno/xyga+VIazy7lHFU5
	L0rxCHTgkMyW2vEznqMCAPbX45jBlQaTgHQkxdCARMPIL+sKRq67rkKw4zfwkndKlQT2UJFwOKpAB
	mbUzgeg+t5AJ3Olgqtt+qvAJ/817k+VyF6PFxsGo3BFx1Lf8Zj0bLdMeas+Iq9fLB+1l9tsUawAn4
	6DVSbckxS2zqOCvA+fww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrJr-0004Sa-Di; Thu, 21 May 2020 19:57:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrJd-0004R1-KD
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:57:21 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E75DF20738;
 Thu, 21 May 2020 19:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590091037;
 bh=3GAvSfAMUddifLPCHvTDvFY432iF5D80Ue+hjq5ma/k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=gLbu0zhdPVgG7Aa7IJPzjZ012leZ59yB44+hm4Djnqe8e9igB7XrDDOqwRrCvIVps
 VGzPP6kAzLHPckkBWX0D0Xq9iZwTRZN5nDCIv9E4wOlxFcjK/Q0L66P9VnXc+BbvIF
 b1FuHaozN67QS9jwH61wycwEOTtGQA/LP4ZnnrZo=
Date: Thu, 21 May 2020 14:57:15 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 08/12] of/irq: make of_msi_map_get_device_domain() bus
 agnostic
Message-ID: <20200521195715.GA1171267@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521130008.8266-9-lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_125717_698073_8AC6F4B3 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 linux-pci@vger.kernel.org, Makarand Pawagi <makarand.pawagi@nxp.com>,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Diana Craciun <diana.craciun@oss.nxp.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 02:00:04PM +0100, Lorenzo Pieralisi wrote:
> From: Diana Craciun <diana.craciun@oss.nxp.com>
> 
> of_msi_map_get_device_domain() is PCI specific but it need not be and
> can be easily changed to be bus agnostic in order to be used by other
> busses by adding an IRQ domain bus token as an input parameter.
> 
> Signed-off-by: Diana Craciun <diana.craciun@oss.nxp.com>
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Marc Zyngier <maz@kernel.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>	# pci/msi.c

> ---
>  drivers/of/irq.c       | 8 +++++---
>  drivers/pci/msi.c      | 2 +-
>  include/linux/of_irq.h | 5 +++--
>  3 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/of/irq.c b/drivers/of/irq.c
> index a296eaf52a5b..48a40326984f 100644
> --- a/drivers/of/irq.c
> +++ b/drivers/of/irq.c
> @@ -613,18 +613,20 @@ u32 of_msi_map_rid(struct device *dev, struct device_node *msi_np, u32 rid_in)
>   * of_msi_map_get_device_domain - Use msi-map to find the relevant MSI domain
>   * @dev: device for which the mapping is to be done.
>   * @rid: Requester ID for the device.
> + * @bus_token: Bus token
>   *
>   * Walk up the device hierarchy looking for devices with a "msi-map"
>   * property.
>   *
>   * Returns: the MSI domain for this device (or NULL on failure)
>   */
> -struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 rid)
> +struct irq_domain *of_msi_map_get_device_domain(struct device *dev, u32 id,
> +						u32 bus_token)
>  {
>  	struct device_node *np = NULL;
>  
> -	__of_msi_map_rid(dev, &np, rid);
> -	return irq_find_matching_host(np, DOMAIN_BUS_PCI_MSI);
> +	__of_msi_map_rid(dev, &np, id);
> +	return irq_find_matching_host(np, bus_token);
>  }
>  
>  /**
> diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
> index 74a91f52ecc0..9532e1d12d3f 100644
> --- a/drivers/pci/msi.c
> +++ b/drivers/pci/msi.c
> @@ -1556,7 +1556,7 @@ struct irq_domain *pci_msi_get_device_domain(struct pci_dev *pdev)
>  	u32 rid = pci_dev_id(pdev);
>  
>  	pci_for_each_dma_alias(pdev, get_msi_id_cb, &rid);
> -	dom = of_msi_map_get_device_domain(&pdev->dev, rid);
> +	dom = of_msi_map_get_device_domain(&pdev->dev, rid, DOMAIN_BUS_PCI_MSI);
>  	if (!dom)
>  		dom = iort_get_device_domain(&pdev->dev, rid,
>  					     DOMAIN_BUS_PCI_MSI);
> diff --git a/include/linux/of_irq.h b/include/linux/of_irq.h
> index 1214cabb2247..7142a3722758 100644
> --- a/include/linux/of_irq.h
> +++ b/include/linux/of_irq.h
> @@ -52,7 +52,8 @@ extern struct irq_domain *of_msi_get_domain(struct device *dev,
>  					    struct device_node *np,
>  					    enum irq_domain_bus_token token);
>  extern struct irq_domain *of_msi_map_get_device_domain(struct device *dev,
> -						       u32 rid);
> +							u32 id,
> +							u32 bus_token);
>  extern void of_msi_configure(struct device *dev, struct device_node *np);
>  u32 of_msi_map_rid(struct device *dev, struct device_node *msi_np, u32 rid_in);
>  #else
> @@ -85,7 +86,7 @@ static inline struct irq_domain *of_msi_get_domain(struct device *dev,
>  	return NULL;
>  }
>  static inline struct irq_domain *of_msi_map_get_device_domain(struct device *dev,
> -							      u32 rid)
> +						u32 id, u32 bus_token)
>  {
>  	return NULL;
>  }
> -- 
> 2.26.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
