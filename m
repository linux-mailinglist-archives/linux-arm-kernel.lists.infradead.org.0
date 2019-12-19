Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B41125967
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 02:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GzNAsJmgOxlW/+s2JSl7v5Pkgud85lC0PBnf1n11aUo=; b=HJs+FXljobrxobZn9jtEUpRtT
	kL/1AjDc2WXnE0ymeZBZxwLKIk70C9LEJtkhpOsKrE3Jj1OEGptHFKbct+ydTSI147yAYDKeX7Czz
	1y34k/l4akuq7l+NusFZZPheUkZkkB6to2azOvBiRfzSMRHzD50Bh42g7tbxgw1ZoHfq7pvc2bsHG
	i3YBjbOCLFtexyrPf345rSrOTDGPf2VPdNK8fYvDJaraN5SrMTMxaxsOSEgyDJhGDJ7MtMR52remp
	mbabfqBEuTLLbiZIOdc3OIJbM5GvXRux+ExF2OglSTCMq+TECRFScFBZPm5ZFNxIdsLMrnpSencPp
	twmfw+aWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihl1H-0003rn-CL; Thu, 19 Dec 2019 01:54:27 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihl18-0003rQ-Hy
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 01:54:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 17:54:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="228087471"
Received: from allen-box.sh.intel.com (HELO [10.239.159.136])
 ([10.239.159.136])
 by orsmga002.jf.intel.com with ESMTP; 18 Dec 2019 17:54:15 -0800
Subject: Re: [PATCH v3 4/5] iommu: intel: Use generic_iommu_put_resv_regions()
To: Thierry Reding <thierry.reding@gmail.com>, Joerg Roedel <joro@8bytes.org>
References: <20191218134205.1271740-1-thierry.reding@gmail.com>
 <20191218134205.1271740-5-thierry.reding@gmail.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <2b3020a1-221c-f86b-6440-e9ef65f0c12e@linux.intel.com>
Date: Thu, 19 Dec 2019 09:53:22 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191218134205.1271740-5-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_175418_605245_C4CF3D9A 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, iommu@lists.linux-foundation.org,
 Will Deacon <will@kernel.org>, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Please tweak the title to

"iommu/vt-d: Use generic_iommu_put_resv_regions()"

then,

Acked-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

On 12/18/19 9:42 PM, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Use the new standard function instead of open-coding it.
> 
> Cc: David Woodhouse <dwmw2@infradead.org>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>   drivers/iommu/intel-iommu.c | 11 +----------
>   1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> index 42966611a192..a6d5b7cf9183 100644
> --- a/drivers/iommu/intel-iommu.c
> +++ b/drivers/iommu/intel-iommu.c
> @@ -5744,15 +5744,6 @@ static void intel_iommu_get_resv_regions(struct device *device,
>   	list_add_tail(&reg->list, head);
>   }
>   
> -static void intel_iommu_put_resv_regions(struct device *dev,
> -					 struct list_head *head)
> -{
> -	struct iommu_resv_region *entry, *next;
> -
> -	list_for_each_entry_safe(entry, next, head, list)
> -		kfree(entry);
> -}
> -
>   int intel_iommu_enable_pasid(struct intel_iommu *iommu, struct device *dev)
>   {
>   	struct device_domain_info *info;
> @@ -5987,7 +5978,7 @@ const struct iommu_ops intel_iommu_ops = {
>   	.add_device		= intel_iommu_add_device,
>   	.remove_device		= intel_iommu_remove_device,
>   	.get_resv_regions	= intel_iommu_get_resv_regions,
> -	.put_resv_regions	= intel_iommu_put_resv_regions,
> +	.put_resv_regions	= generic_iommu_put_resv_regions,
>   	.apply_resv_region	= intel_iommu_apply_resv_region,
>   	.device_group		= pci_device_group,
>   	.dev_has_feat		= intel_iommu_dev_has_feat,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
