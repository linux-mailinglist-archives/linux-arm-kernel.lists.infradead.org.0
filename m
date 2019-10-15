Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71183D6D40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 04:36:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CTgsfP3txuqhoFsoBACvRGdkspjC/DzYfFUXd/5Lw0=; b=i9mkzhieAI0+YP
	vFG9pJkKq9uaIBsq1gLZN6Ygn2Xx9B9i7ShemnOpgdwlOHuf+VsyV8n4g7E5CNeGgoUFSDI8DqddA
	U+ZPoatF8tb9KcoLspCK4OOrrKwOjEsS/cV/4pKeTzP4lBpC9iEV4sY99vrmF6zGFuoIvjnKrazXv
	sr69iQslESAGw5IQsHvWnO27UW3qp9O4ZTwY2X/+lvojBeqn7e1rKDq9nAqw8M+0OWF3bnP6i96bO
	SGsEOtTm1dvMeWz49U5qclicBUY/HdaXdWLdIXPhjf+HYmUxbPCDmSi1WILJU1UlqfgRQ33wyhC3Z
	btfSpVPjOn2qHxqJUVtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKCh0-0005bp-Af; Tue, 15 Oct 2019 02:36:10 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKCgk-0005bE-5m
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 02:35:59 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 12163C3C80012EDBF0CF;
 Tue, 15 Oct 2019 10:35:48 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Tue, 15 Oct 2019
 10:35:40 +0800
Subject: Re: [RFC PATCH 1/6] ACPI/IORT: Set PMCG device parent
To: John Garry <john.garry@huawei.com>, <lorenzo.pieralisi@arm.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
 <1569854031-237636-2-git-send-email-john.garry@huawei.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <ae9a1c8a-d84b-95ab-9a6b-87a7c89c68d9@huawei.com>
Date: Tue, 15 Oct 2019 10:35:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <1569854031-237636-2-git-send-email-john.garry@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_193557_716728_E3341501 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: nleeder@codeaurora.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On 2019/9/30 22:33, John Garry wrote:
> In the IORT, a PMCG node includes a node reference to its associated
> device.
> 
> Set the PMCG platform device parent device for future referencing.
> 
> For now, we only consider setting for when the associated component is an
> SMMUv3.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  drivers/acpi/arm64/iort.c | 34 ++++++++++++++++++++++++++++++++--
>  1 file changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/acpi/arm64/iort.c b/drivers/acpi/arm64/iort.c
> index 8569b79e8b58..0b687520c3e7 100644
> --- a/drivers/acpi/arm64/iort.c
> +++ b/drivers/acpi/arm64/iort.c
> @@ -1455,7 +1455,7 @@ static __init const struct iort_dev_config *iort_get_dev_cfg(
>   * Returns: 0 on success, <0 failure

...

>   */
>  static int __init iort_add_platform_device(struct acpi_iort_node *node,
> -					   const struct iort_dev_config *ops)
> +					   const struct iort_dev_config *ops, struct device *parent)

Since you added a input for this function, could you please update
the comments of this function as well?

>  {
>  	struct fwnode_handle *fwnode;
>  	struct platform_device *pdev;
> @@ -1466,6 +1466,8 @@ static int __init iort_add_platform_device(struct acpi_iort_node *node,
>  	if (!pdev)
>  		return -ENOMEM;
>  
> +	pdev->dev.parent = parent;
> +
>  	if (ops->dev_set_proximity) {
>  		ret = ops->dev_set_proximity(&pdev->dev, node);
>  		if (ret)
> @@ -1573,6 +1575,11 @@ static void __init iort_enable_acs(struct acpi_iort_node *iort_node)
>  static inline void iort_enable_acs(struct acpi_iort_node *iort_node) { }
>  #endif
>  
> +static int iort_fwnode_match(struct device *dev, const void *fwnode)
> +{
> +	return dev->fwnode == fwnode;
> +}
> +
>  static void __init iort_init_platform_devices(void)
>  {
>  	struct acpi_iort_node *iort_node, *iort_end;
> @@ -1594,11 +1601,34 @@ static void __init iort_init_platform_devices(void)
>  				iort_table->length);
>  
>  	for (i = 0; i < iort->node_count; i++) {
> +		struct device *parent = NULL;
> +
>  		if (iort_node >= iort_end) {
>  			pr_err("iort node pointer overflows, bad table\n");
>  			return;
>  		}
>  
> +		/* Fixme: handle parent declared in IORT after PMCG */
> +		if (iort_node->type == ACPI_IORT_NODE_PMCG) {
> +			struct acpi_iort_node *iort_assoc_node;
> +			struct acpi_iort_pmcg *pmcg;
> +			u32 node_reference;
> +
> +			pmcg = (struct acpi_iort_pmcg *)iort_node->node_data;
> +
> +			node_reference = pmcg->node_reference;
> +			iort_assoc_node = ACPI_ADD_PTR(struct acpi_iort_node, iort,
> +				 node_reference);
> +
> +			if (iort_assoc_node->type == ACPI_IORT_NODE_SMMU_V3) {
> +				struct fwnode_handle *assoc_fwnode;
> +
> +				assoc_fwnode = iort_get_fwnode(iort_assoc_node);
> +
> +				parent = bus_find_device(&platform_bus_type, NULL,
> +				      assoc_fwnode, iort_fwnode_match);
> +			}
> +		}

How about using a function to include those new added code to make this
function (iort_init_platform_devices()) a bit cleaner?

>  		iort_enable_acs(iort_node);
>  
>  		ops = iort_get_dev_cfg(iort_node);
> @@ -1609,7 +1639,7 @@ static void __init iort_init_platform_devices(void)
>  
>  			iort_set_fwnode(iort_node, fwnode);
>  
> -			ret = iort_add_platform_device(iort_node, ops);
> +			ret = iort_add_platform_device(iort_node, ops, parent);

This function is called if ops is valid, so retrieve the parent
can be done before this function I think.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
