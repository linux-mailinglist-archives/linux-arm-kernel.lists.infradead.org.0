Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72AEE16109C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RP1gxb7x8EZxWE8nA2zgmbYzEcDszNc2IedA8maPZs=; b=CHVPLJO8s6Xvpa
	E0gpuzn1wzBBM7NE5PoFzSih8l+zVCl1ZuTXB2bdsZ9O94iArxNjbBBF5SsZpz7QPIoL5PV5A4OmJ
	x7453Ip3hobtxkLyFgTOFM+KsbAxPxlvtP/mjUsElLHJLRjY+F9yF7ZOXIghvHPRVCzefkDKgajGp
	pcWxXEPIMQX4+fjiFTz9fr8AKYmF1VneXAj4RdVy2gHta/giI2TKBdastiuVudRuNZXH9OQ4jEjGz
	+ayFB0tuj2xXj99BfJDFn7NbQaew912g97dtZEDwYhqGXvGCO05XJWXuB+u0XMibC5UsDqTyUFaMT
	QmIszgPhGPxzXhekbosw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eCj-0001Y6-3V; Mon, 17 Feb 2020 11:04:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eCa-0001XG-Og
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:04:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F20D030E;
 Mon, 17 Feb 2020 03:04:33 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BDB463F6CF;
 Mon, 17 Feb 2020 03:04:32 -0800 (PST)
Date: Mon, 17 Feb 2020 11:04:21 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Pankaj Bansal <pankaj.bansal@nxp.com>
Subject: Re: [PATCH] ACPI/IORT: fix output id retrieval for platform devices
Message-ID: <20200217110413.GA27550@e121166-lin.cambridge.arm.com>
References: <20200217141504.4183-1-pankaj.bansal@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217141504.4183-1-pankaj.bansal@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_030436_889735_D8F50587 
X-CRM114-Status: GOOD (  23.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Hanjun Guo <guohanjun@huawei.com>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 Varun Sethi <V.Sethi@nxp.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 07:45:04PM +0530, Pankaj Bansal wrote:
> As per IORT spec if Single mapping flag is not defined for
> a node, the output id ought to to be retrieved using input
> id from an ID mapping.
> 
> Current code of output id retrieval for platform devices
> ignored this case. fixed the same.

This patch fixes nothing, if anything it may break existing
platforms. Please answer the question I asked:

https://lore.kernel.org/lkml/20200214174949.GA30484@e121166-lin.cambridge.arm.com/

> Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
> ---
>  drivers/acpi/arm64/iort.c | 36 +++++++++++++++++-------------------
>  1 file changed, 17 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index ed3d2d1a7ae9..00e562dadd2a 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -358,7 +358,9 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>  	/* Single mapping does not care for input id */
>  	if (map->flags & ACPI_IORT_ID_SINGLE_MAPPING) {
>  		if (type == ACPI_IORT_NODE_NAMED_COMPONENT ||
> -		    type == ACPI_IORT_NODE_PCI_ROOT_COMPLEX) {
> +		    type == ACPI_IORT_NODE_PCI_ROOT_COMPLEX ||
> +		    type == ACPI_IORT_NODE_SMMU_V3 ||
> +		    type == ACPI_IORT_NODE_PMCG) {
>  			*rid_out = map->output_base;
>  			return 0;
>  		}
> @@ -376,7 +378,8 @@ static int iort_id_map(struct acpi_iort_id_mapping *map, u8 type, u32 rid_in,
>  }
>  
>  static struct acpi_iort_node *iort_node_get_id(struct acpi_iort_node *node,
> -					       u32 *id_out, int index)
> +					       u32 id_in, u32 *id_out,
> +					       int index)
>  {
>  	struct acpi_iort_node *parent;
>  	struct acpi_iort_id_mapping *map;
> @@ -398,15 +401,8 @@ static struct acpi_iort_node *iort_node_get_id(struct acpi_iort_node *node,
>  	parent = ACPI_ADD_PTR(struct acpi_iort_node, iort_table,
>  			       map->output_reference);
>  
> -	if (map->flags & ACPI_IORT_ID_SINGLE_MAPPING) {
> -		if (node->type == ACPI_IORT_NODE_NAMED_COMPONENT ||
> -		    node->type == ACPI_IORT_NODE_PCI_ROOT_COMPLEX ||
> -		    node->type == ACPI_IORT_NODE_SMMU_V3 ||
> -		    node->type == ACPI_IORT_NODE_PMCG) {
> -			*id_out = map->output_base;
> -			return parent;
> -		}
> -	}
> +	if (!iort_id_map(map, node->type, id_in, id_out))
> +		return parent;
>  
>  	return NULL;
>  }
> @@ -510,14 +506,14 @@ static struct acpi_iort_node *iort_node_map_id(struct acpi_iort_node *node,
>  }
>  
>  static struct acpi_iort_node *iort_node_map_platform_id(
> -		struct acpi_iort_node *node, u32 *id_out, u8 type_mask,
> -		int index)
> +		struct acpi_iort_node *node, u32 id_in, u32 *id_out,
> +		u8 type_mask, int index)
>  {
>  	struct acpi_iort_node *parent;
>  	u32 id;
>  
>  	/* step 1: retrieve the initial dev id */
> -	parent = iort_node_get_id(node, &id, index);
> +	parent = iort_node_get_id(node, id_in, &id, index);
>  	if (!parent)
>  		return NULL;
>  
> @@ -592,7 +588,8 @@ u32 iort_msi_map_rid(struct device *dev, u32 req_id)
>  /**
>   * iort_pmsi_get_dev_id() - Get the device id for a device
>   * @dev: The device for which the mapping is to be done.
> - * @dev_id: The device ID found.
> + * @dev_id: On function entry the input id for device.
> + *          On successful function exit, the output device ID found.
>   *
>   * Returns: 0 for successful find a dev id, -ENODEV on error
>   */
> @@ -608,11 +605,11 @@ int iort_pmsi_get_dev_id(struct device *dev, u32 *dev_id)
>  	index = iort_get_id_mapping_index(node);
>  	/* if there is a valid index, go get the dev_id directly */
>  	if (index >= 0) {
> -		if (iort_node_get_id(node, dev_id, index))
> +		if (iort_node_get_id(node, *dev_id, dev_id, index))
>  			return 0;
>  	} else {
>  		for (i = 0; i < node->mapping_count; i++) {
> -			if (iort_node_map_platform_id(node, dev_id,
> +			if (iort_node_map_platform_id(node, *dev_id, dev_id,
>  						      IORT_MSI_TYPE, i))
>  				return 0;
>  		}
> @@ -761,7 +758,7 @@ static struct irq_domain *iort_get_platform_device_domain(struct device *dev)
>  
>  	/* then find its msi parent node */
>  	for (i = 0; i < node->mapping_count; i++) {
> -		msi_parent = iort_node_map_platform_id(node, NULL,
> +		msi_parent = iort_node_map_platform_id(node, 0, NULL,
>  						       IORT_MSI_TYPE, i);
>  		if (msi_parent)
>  			break;
> @@ -1038,7 +1035,8 @@ const struct iommu_ops *iort_iommu_configure(struct device *dev)
>  			return NULL;
>  
>  		do {
> -			parent = iort_node_map_platform_id(node, &streamid,
> +			parent = iort_node_map_platform_id(node, streamid,
> +							   &streamid,
>  							   IORT_IOMMU_TYPE,
>  							   i++);
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
