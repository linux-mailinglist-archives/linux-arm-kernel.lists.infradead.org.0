Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 711641C2A34
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 07:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sXSmRwEoTBcYY0SYHP52oWSVlot3jxUBDnVdm4hu8QQ=; b=I9bphdApb/JCiW+xhgo1HUdoc
	RjbxnJU685KYzFEW6j73l1pLDjkpBrb0KfjLEdq2DRY/hV3yGQNJtnZ8eVKfDY0vinrb/hF5ddXzj
	9dvda5e+PafljKZ6op/n4VAoGbOo5t8ZupsvCh4l34lQPbAreb9LzH8EBUOpmuf3QSZoCDhyq3hyC
	JvsUP20+I3lpujgST4Ei5s2KXDuDjTdKsj/RmDwVP3qjSJGQUktdL2mTT0bC+djM9S8PBz7ui7Quo
	k3+KdWFTrbnE0GjVWU2wxg+i0CUWqFOrsbtDs6JMPwx4NLv/Hof3BvD8uTfsmLfZ2BbklX6zZPdze
	8VvcaMlQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV7aU-00043G-A5; Sun, 03 May 2020 05:54:50 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV7aN-00042s-FU
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 05:54:44 +0000
IronPort-SDR: ayyoPqai6a2L2EIlQaqEBJ7Yg6HvRmCYsJ/IPvG3VD1ekF6R/8MIDwmH9vchYcW8whymOZroIe
 61Skh2jzAirA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2020 22:54:42 -0700
IronPort-SDR: +m3RPXc/Y0Y2CJLTk7XvK3Pu9JreO+a4GkC6jhpJ8BxzkiBUrrsa0mDhQLO4R2+ooT2MnggdJ9
 /V775V/cq/pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,346,1583222400"; d="scan'208";a="250352199"
Received: from blu2-mobl3.ccr.corp.intel.com (HELO [10.255.29.41])
 ([10.255.29.41])
 by fmsmga008.fm.intel.com with ESMTP; 02 May 2020 22:54:37 -0700
Subject: Re: [PATCH v6 05/25] iommu/iopf: Handle mm faults
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-6-jean-philippe@linaro.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <9fc0e4cc-1242-bf96-5328-cc9039dcc9b6@linux.intel.com>
Date: Sun, 3 May 2020 13:54:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200430143424.2787566-6-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_225443_529470_350387E3 
X-CRM114-Status: GOOD (  25.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/4/30 22:34, Jean-Philippe Brucker wrote:
> When a recoverable page fault is handled by the fault workqueue, find the
> associated mm and call handle_mm_fault.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> v5->v6: select CONFIG_IOMMU_SVA
> ---
>   drivers/iommu/Kconfig      |  1 +
>   drivers/iommu/io-pgfault.c | 79 +++++++++++++++++++++++++++++++++++++-
>   2 files changed, 78 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index 4f33e489f0726..1e64ee6592e16 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -109,6 +109,7 @@ config IOMMU_SVA
>   
>   config IOMMU_PAGE_FAULT
>   	bool
> +	select IOMMU_SVA

It would be better to move this to the previous patch.

>   
>   config FSL_PAMU
>   	bool "Freescale IOMMU support"
> diff --git a/drivers/iommu/io-pgfault.c b/drivers/iommu/io-pgfault.c
> index 38732e97faac1..09a71dc4de20a 100644
> --- a/drivers/iommu/io-pgfault.c
> +++ b/drivers/iommu/io-pgfault.c
> @@ -7,9 +7,12 @@
>   
>   #include <linux/iommu.h>
>   #include <linux/list.h>
> +#include <linux/sched/mm.h>
>   #include <linux/slab.h>
>   #include <linux/workqueue.h>
>   
> +#include "iommu-sva.h"
> +
>   /**
>    * struct iopf_queue - IO Page Fault queue
>    * @wq: the fault workqueue
> @@ -68,8 +71,57 @@ static int iopf_complete_group(struct device *dev, struct iopf_fault *iopf,
>   static enum iommu_page_response_code
>   iopf_handle_single(struct iopf_fault *iopf)
>   {
> -	/* TODO */
> -	return -ENODEV;
> +	vm_fault_t ret;
> +	struct mm_struct *mm;
> +	struct vm_area_struct *vma;
> +	unsigned int access_flags = 0;
> +	unsigned int fault_flags = FAULT_FLAG_REMOTE;
> +	struct iommu_fault_page_request *prm = &iopf->fault.prm;
> +	enum iommu_page_response_code status = IOMMU_PAGE_RESP_INVALID;
> +
> +	if (!(prm->flags & IOMMU_FAULT_PAGE_REQUEST_PASID_VALID))
> +		return status;
> +
> +	mm = iommu_sva_find(prm->pasid);
> +	if (IS_ERR_OR_NULL(mm))
> +		return status;
> +
> +	down_read(&mm->mmap_sem);
> +
> +	vma = find_extend_vma(mm, prm->addr);
> +	if (!vma)
> +		/* Unmapped area */
> +		goto out_put_mm;
> +
> +	if (prm->perm & IOMMU_FAULT_PERM_READ)
> +		access_flags |= VM_READ;
> +
> +	if (prm->perm & IOMMU_FAULT_PERM_WRITE) {
> +		access_flags |= VM_WRITE;
> +		fault_flags |= FAULT_FLAG_WRITE;
> +	}
> +
> +	if (prm->perm & IOMMU_FAULT_PERM_EXEC) {
> +		access_flags |= VM_EXEC;
> +		fault_flags |= FAULT_FLAG_INSTRUCTION;
> +	}
> +
> +	if (!(prm->perm & IOMMU_FAULT_PERM_PRIV))
> +		fault_flags |= FAULT_FLAG_USER;
> +
> +	if (access_flags & ~vma->vm_flags)
> +		/* Access fault */
> +		goto out_put_mm;
> +
> +	ret = handle_mm_fault(vma, prm->addr, fault_flags);
> +	status = ret & VM_FAULT_ERROR ? IOMMU_PAGE_RESP_INVALID :
> +		IOMMU_PAGE_RESP_SUCCESS;
> +
> +out_put_mm:
> +	up_read(&mm->mmap_sem);
> +	mmput(mm);
> +
> +	return status;
>   }
>   
>   static void iopf_handle_group(struct work_struct *work)
> @@ -104,6 +156,29 @@ static void iopf_handle_group(struct work_struct *work)
>    *
>    * Add a fault to the device workqueue, to be handled by mm.
>    *
> + * This module doesn't handle PCI PASID Stop Marker; IOMMU drivers must discard
> + * them before reporting faults. A PASID Stop Marker (LRW = 0b100) doesn't
> + * expect a response. It may be generated when disabling a PASID (issuing a
> + * PASID stop request) by some PCI devices.
> + *
> + * The PASID stop request is issued by the device driver before unbind(). Once
> + * it completes, no page request is generated for this PASID anymore and
> + * outstanding ones have been pushed to the IOMMU (as per PCIe 4.0r1.0 - 6.20.1
> + * and 10.4.1.2 - Managing PASID TLP Prefix Usage). Some PCI devices will wait
> + * for all outstanding page requests to come back with a response before
> + * completing the PASID stop request. Others do not wait for page responses, and
> + * instead issue this Stop Marker that tells us when the PASID can be
> + * reallocated.
> + *
> + * It is safe to discard the Stop Marker because it is an optimization.
> + * a. Page requests, which are posted requests, have been flushed to the IOMMU
> + *    when the stop request completes.
> + * b. We flush all fault queues on unbind() before freeing the PASID.
> + *
> + * So even though the Stop Marker might be issued by the device *after* the stop
> + * request completes, outstanding faults will have been dealt with by the time
> + * we free the PASID.
> + *
>    * Return: 0 on success and <0 on error.
>    */
>   int iommu_queue_iopf(struct iommu_fault *fault, void *cookie)
> 

The same for the comments.

Best regards,
baolu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
