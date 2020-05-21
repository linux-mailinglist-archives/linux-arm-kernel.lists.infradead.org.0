Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E151DD7B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 21:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Ymua+b8airZI/KlNvxh08ZQ52U2gRxDQD8l1oq3eXDY=; b=IJ5T05hyCVKWLM
	VbTxWPhA6UHn+cyY5uxnGNiIjbRt9NYDpxYGrfySNBZlboO1mpvF+rU9lZH58je9BM5hjeku7ybTf
	IksUuYzmo7VnJD8RDZurNQo91vvXi6NFnSlyHys0AB7Vwl1IV7pWPjFcBwYw3iimWLNNfjanjBBxt
	VMhE5/zsI6YfsK7ZcSTvuahs6nF4iHjOif5BiSLZcuCwdlvtmLDBbXT0iupZvI63dcXoA4ovmYEjc
	im+IuC+/XpmAH6OCEvlM1ZpqVAPC1zG/ThWlufBpuR7R8JCRt1Xa2wVX4UsfyvfL7xKxkkcUhrrtR
	evbn7hRY0+zL2f9Ur05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbrJI-00044p-QD; Thu, 21 May 2020 19:56:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbrJ9-00043j-AG
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 19:56:48 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 226AE20829;
 Thu, 21 May 2020 19:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590091006;
 bh=3pPxhsoMN8AFg9ooaYG2vkfeO0yylrZ+Y4cUkEkWdkk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ZEHVBYHLP72nxe38Sw3h1kSXw8ATmk0v5q21R9wchW+xahwMzGbEsDbJgb9EZnlnh
 v7ZanNXBfhlz6GdwVLqNlJXzxGPRQvEBqIMn57kkP7P7rFZALfVOjFui0msOei15uL
 FR4uSaRrm7XQSfofT1IQKrYTYOGx9AwA5sXJqQIE=
Date: Thu, 21 May 2020 14:56:44 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 02/12] ACPI/IORT: Make iort_get_device_domain IRQ domain
 agnostic
Message-ID: <20200521195644.GA1171134@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200521130008.8266-3-lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_125647_396251_89E30073 
X-CRM114-Status: GOOD (  21.14  )
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
Cc: Marc Zyngier <maz@kernel.org>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Robin Murphy <robin.murphy@arm.com>,
 linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, Makarand Pawagi <makarand.pawagi@nxp.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 21, 2020 at 01:59:58PM +0100, Lorenzo Pieralisi wrote:
> iort_get_device_domain() is PCI specific but it need not be,
> since it can be used to retrieve IRQ domain nexus of any kind
> by adding an irq_domain_bus_token input to it.
> 
> Make it PCI agnostic by also renaming the requestor ID input
> to a more generic ID name.
> 
> Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Hanjun Guo <guohanjun@huawei.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
> Cc: Marc Zyngier <maz@kernel.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>	# pci/msi.c

> ---
>  drivers/acpi/arm64/iort.c | 14 +++++++-------
>  drivers/pci/msi.c         |  3 ++-
>  include/linux/acpi_iort.h |  7 ++++---
>  3 files changed, 13 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 7cfd77b5e6e8..8f2a961c1364 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -567,7 +567,6 @@ static struct acpi_iort_node *iort_find_dev_node(struct device *dev)
>  		node = iort_get_iort_node(dev->fwnode);
>  		if (node)
>  			return node;
> -
>  		/*
>  		 * if not, then it should be a platform device defined in
>  		 * DSDT/SSDT (with Named Component node in IORT)
> @@ -658,13 +657,13 @@ static int __maybe_unused iort_find_its_base(u32 its_id, phys_addr_t *base)
>  /**
>   * iort_dev_find_its_id() - Find the ITS identifier for a device
>   * @dev: The device.
> - * @req_id: Device's requester ID
> + * @id: Device's ID
>   * @idx: Index of the ITS identifier list.
>   * @its_id: ITS identifier.
>   *
>   * Returns: 0 on success, appropriate error value otherwise
>   */
> -static int iort_dev_find_its_id(struct device *dev, u32 req_id,
> +static int iort_dev_find_its_id(struct device *dev, u32 id,
>  				unsigned int idx, int *its_id)
>  {
>  	struct acpi_iort_its_group *its;
> @@ -674,7 +673,7 @@ static int iort_dev_find_its_id(struct device *dev, u32 req_id,
>  	if (!node)
>  		return -ENXIO;
>  
> -	node = iort_node_map_id(node, req_id, NULL, IORT_MSI_TYPE);
> +	node = iort_node_map_id(node, id, NULL, IORT_MSI_TYPE);
>  	if (!node)
>  		return -ENXIO;
>  
> @@ -697,19 +696,20 @@ static int iort_dev_find_its_id(struct device *dev, u32 req_id,
>   *
>   * Returns: the MSI domain for this device, NULL otherwise
>   */
> -struct irq_domain *iort_get_device_domain(struct device *dev, u32 req_id)
> +struct irq_domain *iort_get_device_domain(struct device *dev, u32 id,
> +					  enum irq_domain_bus_token bus_token)
>  {
>  	struct fwnode_handle *handle;
>  	int its_id;
>  
> -	if (iort_dev_find_its_id(dev, req_id, 0, &its_id))
> +	if (iort_dev_find_its_id(dev, id, 0, &its_id))
>  		return NULL;
>  
>  	handle = iort_find_domain_token(its_id);
>  	if (!handle)
>  		return NULL;
>  
> -	return irq_find_matching_fwnode(handle, DOMAIN_BUS_PCI_MSI);
> +	return irq_find_matching_fwnode(handle, bus_token);
>  }
>  
>  static void iort_set_device_domain(struct device *dev,
> diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
> index 6b43a5455c7a..74a91f52ecc0 100644
> --- a/drivers/pci/msi.c
> +++ b/drivers/pci/msi.c
> @@ -1558,7 +1558,8 @@ struct irq_domain *pci_msi_get_device_domain(struct pci_dev *pdev)
>  	pci_for_each_dma_alias(pdev, get_msi_id_cb, &rid);
>  	dom = of_msi_map_get_device_domain(&pdev->dev, rid);
>  	if (!dom)
> -		dom = iort_get_device_domain(&pdev->dev, rid);
> +		dom = iort_get_device_domain(&pdev->dev, rid,
> +					     DOMAIN_BUS_PCI_MSI);
>  	return dom;
>  }
>  #endif /* CONFIG_PCI_MSI_IRQ_DOMAIN */
> diff --git a/include/linux/acpi_iort.h b/include/linux/acpi_iort.h
> index 8e7e2ec37f1b..08ec6bd2297f 100644
> --- a/include/linux/acpi_iort.h
> +++ b/include/linux/acpi_iort.h
> @@ -29,7 +29,8 @@ struct fwnode_handle *iort_find_domain_token(int trans_id);
>  #ifdef CONFIG_ACPI_IORT
>  void acpi_iort_init(void);
>  u32 iort_msi_map_rid(struct device *dev, u32 req_id);
> -struct irq_domain *iort_get_device_domain(struct device *dev, u32 req_id);
> +struct irq_domain *iort_get_device_domain(struct device *dev, u32 id,
> +					  enum irq_domain_bus_token bus_token);
>  void acpi_configure_pmsi_domain(struct device *dev);
>  int iort_pmsi_get_dev_id(struct device *dev, u32 *dev_id);
>  /* IOMMU interface */
> @@ -40,8 +41,8 @@ int iort_iommu_msi_get_resv_regions(struct device *dev, struct list_head *head);
>  static inline void acpi_iort_init(void) { }
>  static inline u32 iort_msi_map_rid(struct device *dev, u32 req_id)
>  { return req_id; }
> -static inline struct irq_domain *iort_get_device_domain(struct device *dev,
> -							u32 req_id)
> +static inline struct irq_domain *iort_get_device_domain(
> +	struct device *dev, u32 id, enum irq_domain_bus_token bus_token)
>  { return NULL; }
>  static inline void acpi_configure_pmsi_domain(struct device *dev) { }
>  /* IOMMU interface */
> -- 
> 2.26.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
