Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEEC4D71D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WblhMIYEx59P9Cxl0GHB/xM2FWGDXiCUnxdpxA3ssn8=; b=DcJHCCG3VEW35HfzBDPbBYdZo
	K0l9CZn7D9v5EQ2vrS0UdguVxjpvbUK9d3U7xIySovZxyxzaFqZjgxE+PyjwI7lgqycRvFoLw2JZh
	EeTirKgBMbDg66iAfjxLMF5TohR1A5fUK8m2uw2GjuOnvlg0aXConnE+ueEryGaYop0gEQMoUUqgS
	6TuCseKU3luwmQRdpnw7GAbzmgLUmFXV5G0wpjP0uslE5jroo1YXlSjteP2ACUiQ7xId7On8HqLq4
	U92nk4jxCN1lMBqoQ+BJpnSTE3x1wDIvGcmZ3/tAs3ucv44ZvhVE9fwzBstkFYKHg+7AAXNGIDm5Y
	OZ7h6KieA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKIoZ-0003PH-EP; Tue, 15 Oct 2019 09:08:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKIoP-0003Ob-RJ
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 09:08:15 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E49F951A1DF59C7F64F8;
 Tue, 15 Oct 2019 17:08:10 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 15 Oct 2019 17:08:01 +0800
Subject: Re: [RFC PATCH 1/6] ACPI/IORT: Set PMCG device parent
To: Hanjun Guo <guohanjun@huawei.com>, <lorenzo.pieralisi@arm.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
 <1569854031-237636-2-git-send-email-john.garry@huawei.com>
 <ae9a1c8a-d84b-95ab-9a6b-87a7c89c68d9@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <c7bfc6ac-71a1-50d2-e18f-4d352837b93b@huawei.com>
Date: Tue, 15 Oct 2019 10:07:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <ae9a1c8a-d84b-95ab-9a6b-87a7c89c68d9@huawei.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_020814_043949_DE1041F1 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hanjun,

Thanks for checking this.

>>   */
>>  static int __init iort_add_platform_device(struct acpi_iort_node *node,
>> -					   const struct iort_dev_config *ops)
>> +					   const struct iort_dev_config *ops, struct device *parent)
>
> Since you added a input for this function, could you please update
> the comments of this function as well?

Right, that can be updated. Indeed, the current comment omit the @ops 
argument also.

>
>>  {
>>  	struct fwnode_handle *fwnode;
>>  	struct platform_device *pdev;
>> @@ -1466,6 +1466,8 @@ static int __init iort_add_platform_device(struct acpi_iort_node *node,
>>  	if (!pdev)
>>  		return -ENOMEM;
>>
>> +	pdev->dev.parent = parent;
>> +
>>  	if (ops->dev_set_proximity) {
>>  		ret = ops->dev_set_proximity(&pdev->dev, node);
>>  		if (ret)
>> @@ -1573,6 +1575,11 @@ static void __init iort_enable_acs(struct acpi_iort_node *iort_node)
>>  static inline void iort_enable_acs(struct acpi_iort_node *iort_node) { }
>>  #endif
>>
>> +static int iort_fwnode_match(struct device *dev, const void *fwnode)
>> +{
>> +	return dev->fwnode == fwnode;
>> +}
>> +
>>  static void __init iort_init_platform_devices(void)
>>  {
>>  	struct acpi_iort_node *iort_node, *iort_end;
>> @@ -1594,11 +1601,34 @@ static void __init iort_init_platform_devices(void)
>>  				iort_table->length);
>>
>>  	for (i = 0; i < iort->node_count; i++) {
>> +		struct device *parent = NULL;
>> +
>>  		if (iort_node >= iort_end) {
>>  			pr_err("iort node pointer overflows, bad table\n");
>>  			return;
>>  		}
>>
>> +		/* Fixme: handle parent declared in IORT after PMCG */
>> +		if (iort_node->type == ACPI_IORT_NODE_PMCG) {
>> +			struct acpi_iort_node *iort_assoc_node;
>> +			struct acpi_iort_pmcg *pmcg;
>> +			u32 node_reference;
>> +
>> +			pmcg = (struct acpi_iort_pmcg *)iort_node->node_data;
>> +
>> +			node_reference = pmcg->node_reference;
>> +			iort_assoc_node = ACPI_ADD_PTR(struct acpi_iort_node, iort,
>> +				 node_reference);
>> +
>> +			if (iort_assoc_node->type == ACPI_IORT_NODE_SMMU_V3) {
>> +				struct fwnode_handle *assoc_fwnode;
>> +
>> +				assoc_fwnode = iort_get_fwnode(iort_assoc_node);
>> +
>> +				parent = bus_find_device(&platform_bus_type, NULL,
>> +				      assoc_fwnode, iort_fwnode_match);
>> +			}
>> +		}
>
> How about using a function to include those new added code to make this
> function (iort_init_platform_devices()) a bit cleaner?
>

Can do. But I still need to add code to deal with the scenario of the 
parent PMCG not being an SMMU, which is supported in the spec as I recall.

Note that I would not have FW to test that, so maybe can omit support 
for now as long as there's no regression.

>>  		iort_enable_acs(iort_node);
>>
>>  		ops = iort_get_dev_cfg(iort_node);
>> @@ -1609,7 +1639,7 @@ static void __init iort_init_platform_devices(void)
>>
>>  			iort_set_fwnode(iort_node, fwnode);
>>
>> -			ret = iort_add_platform_device(iort_node, ops);
>> +			ret = iort_add_platform_device(iort_node, ops, parent);
>
> This function is called if ops is valid, so retrieve the parent
> can be done before this function I think.

Ah, yes

Thanks,
John

>

> Thanks
> Hanjun
>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
