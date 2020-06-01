Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BE51EA4B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 15:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QQbwGWJfoQk+boqW03mPjc9XIzcLnjRB7qIQ5ZQirag=; b=QK00pp52rZgvxkzn7hSbpY1bO
	DBEOMcnKkup7PcMFvRGWp/XsyM8tYWRYk5E34VfrjxibLBBC3LJ/RnQCl52DuMfvCjpF70bakMH6R
	MQASzbeeMzM7BbrtHqFCzO7o5e9r9HFyyFB4jhtgk6kp83gU0PO56dNqKLyTo9dTRqT3poO0WMF34
	JpOh6iKA0zmply8hj3lLQOrSCOAQNwqfzDBk+7LloT7wWONorPCEztyIov8Y3h8lL+uAtL0Tce8oL
	qKykMZCTNvMX4Un9YPuSOxO29tdAXX7FUtD2tOMhf/J9AIb/bgnbHViHDOlS6jQK+hkWLqt9Fq8Aw
	mU0JizE8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfkGS-0007Tm-W4; Mon, 01 Jun 2020 13:14:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfkGL-0007TK-Bk
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 13:14:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75F2055D;
 Mon,  1 Jun 2020 06:13:54 -0700 (PDT)
Received: from [10.57.29.3] (unknown [10.57.29.3])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA0E93F52E;
 Mon,  1 Jun 2020 06:13:52 -0700 (PDT)
Subject: Re: [PATCH] iommu/arm-smmu-v3: expose numa_node attribute to users in
 sysfs
To: Barry Song <song.bao.hua@hisilicon.com>, will@kernel.org, hch@lst.de,
 m.szyprowski@samsung.com, iommu@lists.linux-foundation.org
References: <20200530091505.56664-1-song.bao.hua@hisilicon.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4e902884-7ac3-9e79-ec01-f56f2fc5ebad@arm.com>
Date: Mon, 1 Jun 2020 14:13:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200530091505.56664-1-song.bao.hua@hisilicon.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_061359_938485_47073260 
X-CRM114-Status: GOOD (  21.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linuxarm@huawei.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-30 10:15, Barry Song wrote:
> As tests show the latency of dma_unmap can increase dramatically while
> calling them cross NUMA nodes, especially cross CPU packages, eg.
> 300ns vs 800ns while waiting for the completion of CMD_SYNC in an
> empty command queue. The large latency causing by remote node will
> in turn make contention of the command queue more serious, and enlarge
> the latency of DMA users within local NUMA nodes.
> 
> Users might intend to enforce NUMA locality with the consideration of
> the position of SMMU. The patch provides minor benefit by presenting
> this information to users directly, as they might want to know it without
> checking hardware spec at all.

Hmm, given that dev-to_node() is a standard driver model thing, is there 
not already some generic device property that can expose it - and if 
not, should there be? Presumably if userspace cares enough to want to 
know whereabouts in the system an IOMMU is, it probably also cares where 
the actual endpoint devices are too.

At the very least, it doesn't seem right for it to be specific to one 
single IOMMU driver.

Robin.

> Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
> ---
>   drivers/iommu/arm-smmu-v3.c | 40 ++++++++++++++++++++++++++++++++++++-
>   1 file changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 82508730feb7..754c4d59498b 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -4021,6 +4021,44 @@ err_reset_pci_ops: __maybe_unused;
>   	return err;
>   }
>   
> +static ssize_t numa_node_show(struct device *dev,
> +		struct device_attribute *attr, char *buf)
> +{
> +	return sprintf(buf, "%d\n", dev_to_node(dev));
> +}
> +static DEVICE_ATTR_RO(numa_node);
> +
> +static umode_t arm_smmu_numa_attr_visible(struct kobject *kobj, struct attribute *a,
> +		int n)
> +{
> +	struct device *dev = container_of(kobj, typeof(*dev), kobj);
> +
> +	if (!IS_ENABLED(CONFIG_NUMA))
> +		return 0;
> +
> +	if (a == &dev_attr_numa_node.attr &&
> +			dev_to_node(dev) == NUMA_NO_NODE)
> +		return 0;
> +
> +	return a->mode;
> +}
> +
> +static struct attribute *arm_smmu_dev_attrs[] = {
> +	&dev_attr_numa_node.attr,
> +	NULL
> +};
> +
> +static struct attribute_group arm_smmu_dev_attrs_group = {
> +	.attrs          = arm_smmu_dev_attrs,
> +	.is_visible     = arm_smmu_numa_attr_visible,
> +};
> +
> +
> +static const struct attribute_group *arm_smmu_dev_attrs_groups[] = {
> +	&arm_smmu_dev_attrs_group,
> +	NULL,
> +};
> +
>   static int arm_smmu_device_probe(struct platform_device *pdev)
>   {
>   	int irq, ret;
> @@ -4097,7 +4135,7 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>   		return ret;
>   
>   	/* And we're up. Go go go! */
> -	ret = iommu_device_sysfs_add(&smmu->iommu, dev, NULL,
> +	ret = iommu_device_sysfs_add(&smmu->iommu, dev, arm_smmu_dev_attrs_groups,
>   				     "smmu3.%pa", &ioaddr);
>   	if (ret)
>   		return ret;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
