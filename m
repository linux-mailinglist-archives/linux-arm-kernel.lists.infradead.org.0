Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10221708FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 20:34:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2b/vz9UwxJgxCEMUrmgecArhWNpft9/2s/6BlmKHFC4=; b=cLdLI3MsdQVDRG
	/KiqkRWBeySZja8y9J6NzG68YlUhyLNoHFk7bjUdrVgvwkTcMVwfHNktcKbgR6deW0nng/B778k2D
	YJr/aedvLiDHAKbxK87DyGt/zf/9sTYaQFn0OAdzdkaDoDPn00XnnMHDiozLQbMMcPVNA4iK+aww5
	FdD28jITK6516XLw6Lo6NXYV98DgRnh2R3IcyLLDe2Fcl7RBUWLEClzOE9V8HOFtk9juFT4q6Xf9f
	u+7dgTfz4AYvZp8y75a8FPIn+dijeI/K8G0rQqIXOHEImblmd1qjDhWIBxDABgsvYiu85yczC6xyu
	J+nRkyPvn8NpC1sR1upQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j72S9-0006ye-9T; Wed, 26 Feb 2020 19:34:41 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j72Ry-0006yH-VM
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 19:34:32 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 11:34:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="231514911"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga008.jf.intel.com with ESMTP; 26 Feb 2020 11:34:29 -0800
Date: Wed, 26 Feb 2020 11:39:59 -0800
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 06/26] iommu/sva: Register page fault handler
Message-ID: <20200226113959.62621098@jacob-builder>
In-Reply-To: <20200224182401.353359-7-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-7-jean-philippe@linaro.org>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_113431_022882_A07B52AB 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 yi.l.liu@intel.com, jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 19:23:41 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> 
> When enabling SVA, register the fault handler. Device driver will
> register an I/O page fault queue before or after calling
> iommu_sva_enable. The fault queue must be flushed before any io_mm is
> freed, to make sure that its PASID isn't used in any fault queue, and
> can be reallocated. Add iopf_queue_flush() calls in a few strategic
> locations.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/Kconfig     |  1 +
>  drivers/iommu/iommu-sva.c | 16 ++++++++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index e4a42e1708b4..211684e785ea 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -106,6 +106,7 @@ config IOMMU_DMA
>  config IOMMU_SVA
>  	bool
>  	select IOASID
> +	select IOMMU_PAGE_FAULT
>  	select IOMMU_API
>  	select MMU_NOTIFIER
>  
> diff --git a/drivers/iommu/iommu-sva.c b/drivers/iommu/iommu-sva.c
> index bfd0c477f290..494ca0824e4b 100644
> --- a/drivers/iommu/iommu-sva.c
> +++ b/drivers/iommu/iommu-sva.c
> @@ -366,6 +366,8 @@ static void io_mm_release(struct mmu_notifier
> *mn, struct mm_struct *mm) dev_WARN(dev, "possible leak of PASID %u",
>  				 io_mm->pasid);
>  
> +		iopf_queue_flush_dev(dev, io_mm->pasid);
> +
>  		/* unbind() frees the bond, we just detach it */
>  		io_mm_detach_locked(bond);
>  	}
> @@ -442,11 +444,20 @@ static void iommu_sva_unbind_locked(struct
> iommu_bond *bond) 
>  void iommu_sva_unbind_generic(struct iommu_sva *handle)
>  {
> +	int pasid;
>  	struct iommu_param *param = handle->dev->iommu_param;
>  
>  	if (WARN_ON(!param))
>  		return;
>  
> +	/*
> +	 * Caller stopped the device from issuing PASIDs, now make
> sure they are
> +	 * out of the fault queue.
> +	 */
> +	pasid = iommu_sva_get_pasid_generic(handle);
> +	if (pasid != IOMMU_PASID_INVALID)
> +		iopf_queue_flush_dev(handle->dev, pasid);
> +
I have an ordering concern.
The caller can only stop the device issuing page request but there will
be in-flight request inside the IOMMU. If we flush here before clearing
the PASID context, there might be new request coming in before the
detach.
How about detach first then flush? Then anything come after the detach
would be faults. Flush will be clean.

>  	mutex_lock(&param->sva_lock);
>  	mutex_lock(&iommu_sva_lock);
>  	iommu_sva_unbind_locked(to_iommu_bond(handle));
> @@ -484,6 +495,10 @@ int iommu_sva_enable(struct device *dev, struct
> iommu_sva_param *sva_param) goto err_unlock;
>  	}
>  
> +	ret = iommu_register_device_fault_handler(dev,
> iommu_queue_iopf, dev);
> +	if (ret)
> +		goto err_unlock;
> +
>  	dev->iommu_param->sva_param = new_param;
>  	mutex_unlock(&param->sva_lock);
>  	return 0;
> @@ -521,6 +536,7 @@ int iommu_sva_disable(struct device *dev)
>  		goto out_unlock;
>  	}
>  
> +	iommu_unregister_device_fault_handler(dev);
>  	kfree(param->sva_param);
>  	param->sva_param = NULL;
>  out_unlock:

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
