Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5191DA817
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MWUnJRLSuHn40dn8w08Tn12XXbSnScUyDL5WXs0y7Js=; b=ZwCFTmdMS5Lbnkdf4A6PtrTvU
	j0kAcbGpEfxDz/qOExMk2/FsLxy75t0q4tEcFcYE6fR4lWa/P5nlqmCEr7GaXnsxCZH0XYU0chkoa
	aUNOuEaqNNsgU0Bw7eZ0XDKs6gGY/bVF12zT0/69TpwEv4XAigiHaHiQfSPXcxM8E6Iu6L68KX6ho
	VyWf3gE9T8h4RNaV88WqdcLI4dksfx3GBsbLT8R2g6A/QSOExOqoruNvxtwT4npDXvppj8GtyXIIf
	X0R9/td59R5gFHkMZb6EHSt6YvUxskUSBLJIJTc4QPg813DGLzz4BVI59djeRNEJfUnkWHEdG2eiR
	F4sTq2u6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEZl-0005ke-D5; Wed, 20 May 2020 02:35:21 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEZN-0005jD-Fw
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:35:00 +0000
IronPort-SDR: vO/mYzMwdkr1qLPSyCygoHSeh8x5wNFFGgIIXo7IXyh2FhlvWeiH/mrMSh73kTDjtpP5QqFCu8
 0DIDHjGOLcow==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 19:34:54 -0700
IronPort-SDR: y2u51+kwTFswQRFD6YmX6PzgJ0no4jnfWp3CT42vA9s1EqU6bKcHcmk2wdtTnrchSOQF0tPwEo
 FBXqOrvwrjLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,412,1583222400"; d="scan'208";a="282526388"
Received: from allen-box.sh.intel.com (HELO [10.239.159.139])
 ([10.239.159.139])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2020 19:34:49 -0700
Subject: Re: [PATCH v7 02/24] iommu/ioasid: Add ioasid references
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-3-jean-philippe@linaro.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <ac1a1220-dce0-aac2-9c2c-6fb158c576db@linux.intel.com>
Date: Wed, 20 May 2020 10:31:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519175502.2504091-3-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_193457_578571_E888B6B5 
X-CRM114-Status: GOOD (  26.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 5/20/20 1:54 AM, Jean-Philippe Brucker wrote:
> Let IOASID users take references to existing ioasids with ioasid_get().
> ioasid_put() drops a reference and only frees the ioasid when its
> reference number is zero. It returns true if the ioasid was freed.
> For drivers that don't call ioasid_get(), ioasid_put() is the same as
> ioasid_free().
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> v6->v7: rename ioasid_free() to ioasid_put(), add WARN in ioasid_get()
> ---
>   include/linux/ioasid.h      | 10 ++++++++--
>   drivers/iommu/intel-iommu.c |  4 ++--
>   drivers/iommu/intel-svm.c   |  6 +++---
>   drivers/iommu/ioasid.c      | 38 +++++++++++++++++++++++++++++++++----
>   4 files changed, 47 insertions(+), 11 deletions(-)
> 
> diff --git a/include/linux/ioasid.h b/include/linux/ioasid.h
> index 6f000d7a0ddc..e9dacd4b9f6b 100644
> --- a/include/linux/ioasid.h
> +++ b/include/linux/ioasid.h
> @@ -34,7 +34,8 @@ struct ioasid_allocator_ops {
>   #if IS_ENABLED(CONFIG_IOASID)
>   ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
>   		      void *private);
> -void ioasid_free(ioasid_t ioasid);
> +void ioasid_get(ioasid_t ioasid);
> +bool ioasid_put(ioasid_t ioasid);
>   void *ioasid_find(struct ioasid_set *set, ioasid_t ioasid,
>   		  bool (*getter)(void *));
>   int ioasid_register_allocator(struct ioasid_allocator_ops *allocator);
> @@ -48,10 +49,15 @@ static inline ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min,
>   	return INVALID_IOASID;
>   }
>   
> -static inline void ioasid_free(ioasid_t ioasid)
> +static inline void ioasid_get(ioasid_t ioasid)
>   {
>   }
>   
> +static inline bool ioasid_put(ioasid_t ioasid)
> +{
> +	return false;
> +}
> +
>   static inline void *ioasid_find(struct ioasid_set *set, ioasid_t ioasid,
>   				bool (*getter)(void *))
>   {
> diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
> index ed21ce6d1238..0230f35480ee 100644
> --- a/drivers/iommu/intel-iommu.c
> +++ b/drivers/iommu/intel-iommu.c
> @@ -5432,7 +5432,7 @@ static void auxiliary_unlink_device(struct dmar_domain *domain,
>   	domain->auxd_refcnt--;
>   
>   	if (!domain->auxd_refcnt && domain->default_pasid > 0)
> -		ioasid_free(domain->default_pasid);
> +		ioasid_put(domain->default_pasid);
>   }
>   
>   static int aux_domain_add_dev(struct dmar_domain *domain,
> @@ -5494,7 +5494,7 @@ static int aux_domain_add_dev(struct dmar_domain *domain,
>   	spin_unlock(&iommu->lock);
>   	spin_unlock_irqrestore(&device_domain_lock, flags);
>   	if (!domain->auxd_refcnt && domain->default_pasid > 0)
> -		ioasid_free(domain->default_pasid);
> +		ioasid_put(domain->default_pasid);
>   
>   	return ret;
>   }
> diff --git a/drivers/iommu/intel-svm.c b/drivers/iommu/intel-svm.c
> index 2998418f0a38..86f1264bd07c 100644
> --- a/drivers/iommu/intel-svm.c
> +++ b/drivers/iommu/intel-svm.c
> @@ -353,7 +353,7 @@ int intel_svm_bind_mm(struct device *dev, int *pasid, int flags, struct svm_dev_
>   		if (mm) {
>   			ret = mmu_notifier_register(&svm->notifier, mm);
>   			if (ret) {
> -				ioasid_free(svm->pasid);
> +				ioasid_put(svm->pasid);
>   				kfree(svm);
>   				kfree(sdev);
>   				goto out;
> @@ -371,7 +371,7 @@ int intel_svm_bind_mm(struct device *dev, int *pasid, int flags, struct svm_dev_
>   		if (ret) {
>   			if (mm)
>   				mmu_notifier_unregister(&svm->notifier, mm);
> -			ioasid_free(svm->pasid);
> +			ioasid_put(svm->pasid);
>   			kfree(svm);
>   			kfree(sdev);
>   			goto out;
> @@ -447,7 +447,7 @@ int intel_svm_unbind_mm(struct device *dev, int pasid)
>   			kfree_rcu(sdev, rcu);
>   
>   			if (list_empty(&svm->devs)) {
> -				ioasid_free(svm->pasid);
> +				ioasid_put(svm->pasid);
>   				if (svm->mm)
>   					mmu_notifier_unregister(&svm->notifier, svm->mm);
>   				list_del(&svm->list);
> diff --git a/drivers/iommu/ioasid.c b/drivers/iommu/ioasid.c
> index 0f8dd377aada..50ee27bbd04e 100644
> --- a/drivers/iommu/ioasid.c
> +++ b/drivers/iommu/ioasid.c
> @@ -2,7 +2,7 @@
>   /*
>    * I/O Address Space ID allocator. There is one global IOASID space, split into
>    * subsets. Users create a subset with DECLARE_IOASID_SET, then allocate and
> - * free IOASIDs with ioasid_alloc and ioasid_free.
> + * free IOASIDs with ioasid_alloc and ioasid_put.
>    */
>   #include <linux/ioasid.h>
>   #include <linux/module.h>
> @@ -15,6 +15,7 @@ struct ioasid_data {
>   	struct ioasid_set *set;
>   	void *private;
>   	struct rcu_head rcu;
> +	refcount_t refs;
>   };
>   
>   /*
> @@ -314,6 +315,7 @@ ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
>   
>   	data->set = set;
>   	data->private = private;
> +	refcount_set(&data->refs, 1);
>   
>   	/*
>   	 * Custom allocator needs allocator data to perform platform specific
> @@ -346,11 +348,34 @@ ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t max,
>   EXPORT_SYMBOL_GPL(ioasid_alloc);
>   
>   /**
> - * ioasid_free - Free an IOASID
> + * ioasid_get - obtain a reference to the IOASID
> + */
> +void ioasid_get(ioasid_t ioasid)
> +{
> +	struct ioasid_data *ioasid_data;
> +
> +	spin_lock(&ioasid_allocator_lock);
> +	ioasid_data = xa_load(&active_allocator->xa, ioasid);
> +	if (ioasid_data)
> +		refcount_inc(&ioasid_data->refs);
> +	else
> +		WARN_ON(1);
> +	spin_unlock(&ioasid_allocator_lock);
> +}
> +EXPORT_SYMBOL_GPL(ioasid_get);
> +
> +/**
> + * ioasid_put - Release a reference to an ioasid
>    * @ioasid: the ID to remove
> + *
> + * Put a reference to the IOASID, free it when the number of references drops to
> + * zero.
> + *
> + * Return: %true if the IOASID was freed, %false otherwise.
>    */
> -void ioasid_free(ioasid_t ioasid)
> +bool ioasid_put(ioasid_t ioasid)
>   {
> +	bool free = false;
>   	struct ioasid_data *ioasid_data;
>   
>   	spin_lock(&ioasid_allocator_lock);
> @@ -360,6 +385,10 @@ void ioasid_free(ioasid_t ioasid)
>   		goto exit_unlock;
>   	}
>   
> +	free = refcount_dec_and_test(&ioasid_data->refs);
> +	if (!free)
> +		goto exit_unlock;
> +
>   	active_allocator->ops->free(ioasid, active_allocator->ops->pdata);
>   	/* Custom allocator needs additional steps to free the xa element */
>   	if (active_allocator->flags & IOASID_ALLOCATOR_CUSTOM) {
> @@ -369,8 +398,9 @@ void ioasid_free(ioasid_t ioasid)
>   
>   exit_unlock:
>   	spin_unlock(&ioasid_allocator_lock);
> +	return free;
>   }
> -EXPORT_SYMBOL_GPL(ioasid_free);
> +EXPORT_SYMBOL_GPL(ioasid_put);
>   
>   /**
>    * ioasid_find - Find IOASID data
> 

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
