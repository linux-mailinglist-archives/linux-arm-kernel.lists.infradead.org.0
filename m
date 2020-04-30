Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227931C04E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 20:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXjldyo7wi/NrQ4INOiv205SGWZeSPJap7d8JHRoFr8=; b=nKIg3Et+8gEZXI
	McIqiYeVijOr9l+VTdD35hAIvyOMGLhnQMD7UTJFbmDALH9c0C0O2S5Oo/yt8WvnDn76vA4GqSjar
	AhT4sYNx/KCHMQtsIOnkfH275aSLshdHvqkEtdi7dFiSSzatiA2lrOyjgV/pmTnWXGvqNgq4vL0GX
	FfMDQhgeLtMv07jh1rRRVDiYutKI6nzuYZ6j3m7MFmVVg+4ksEN87C+gCUCzmBRImlqCqza+WCiuj
	FrQfb1FjtgkMPFDpLG42gmeoC73QDGdnfjT9GPfv1tSGYkV1jSY8DejZAhL2QQh5gUdbcftVA1iBs
	hA1EfpInealkYQRLIWDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUE0D-0003In-6g; Thu, 30 Apr 2020 18:33:41 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUE04-0003Gq-RI
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 18:33:34 +0000
IronPort-SDR: ygBwuaCObsQ5fYvZv3l1RTJfgqlTxpEClFv2/D+t6pkTN7WWpdI4aFFREvhnybeo0L2M/NM3+G
 Mvs3abVsfcrg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 11:33:29 -0700
IronPort-SDR: J48xY2cKJPAK1NVryygQbF/nagAXDIYz1I6SC3AHIW5UHcqfCG66Luu3iM/N/zRymWaoSl5F24
 9Hf1OxKC5PKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,336,1583222400"; d="scan'208";a="433056299"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga005.jf.intel.com with ESMTP; 30 Apr 2020 11:33:28 -0700
Date: Thu, 30 Apr 2020 11:39:31 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v6 02/25] iommu/ioasid: Add ioasid references
Message-ID: <20200430113931.0fbf7a37@jacob-builder>
In-Reply-To: <20200430143424.2787566-3-jean-philippe@linaro.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-3-jean-philippe@linaro.org>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_113333_115817_A6B54611 
X-CRM114-Status: GOOD (  21.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 30 Apr 2020 16:34:01 +0200
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> Let IOASID users take references to existing ioasids with
> ioasid_get(). ioasid_free() drops a reference and only frees the
> ioasid when its reference number is zero. It returns whether the
> ioasid was freed.
> 
Looks good to me, I was planning to do the same for VT-d use. Just a
couple of points for potential extension. I can rebase on top of this.


> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  include/linux/ioasid.h | 10 ++++++++--
>  drivers/iommu/ioasid.c | 30 +++++++++++++++++++++++++++++-
>  2 files changed, 37 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/ioasid.h b/include/linux/ioasid.h
> index 6f000d7a0ddcd..609ba6f15b9e3 100644
> --- a/include/linux/ioasid.h
> +++ b/include/linux/ioasid.h
> @@ -34,7 +34,8 @@ struct ioasid_allocator_ops {
>  #if IS_ENABLED(CONFIG_IOASID)
>  ioasid_t ioasid_alloc(struct ioasid_set *set, ioasid_t min, ioasid_t
> max, void *private);
> -void ioasid_free(ioasid_t ioasid);
> +void ioasid_get(ioasid_t ioasid);
> +bool ioasid_free(ioasid_t ioasid);
>  void *ioasid_find(struct ioasid_set *set, ioasid_t ioasid,
>  		  bool (*getter)(void *));
>  int ioasid_register_allocator(struct ioasid_allocator_ops
> *allocator); @@ -48,10 +49,15 @@ static inline ioasid_t
> ioasid_alloc(struct ioasid_set *set, ioasid_t min, return
> INVALID_IOASID; }
>  
> -static inline void ioasid_free(ioasid_t ioasid)
> +static inline void ioasid_get(ioasid_t ioasid)
>  {
>  }
>  
> +static inline bool ioasid_free(ioasid_t ioasid)
> +{
> +	return false;
> +}
> +
>  static inline void *ioasid_find(struct ioasid_set *set, ioasid_t
> ioasid, bool (*getter)(void *))
>  {
> diff --git a/drivers/iommu/ioasid.c b/drivers/iommu/ioasid.c
> index 0f8dd377aada3..46511ac53e0c8 100644
> --- a/drivers/iommu/ioasid.c
> +++ b/drivers/iommu/ioasid.c
> @@ -15,6 +15,7 @@ struct ioasid_data {
>  	struct ioasid_set *set;
>  	void *private;
>  	struct rcu_head rcu;
> +	refcount_t refs;
>  };
>  
>  /*
> @@ -314,6 +315,7 @@ ioasid_t ioasid_alloc(struct ioasid_set *set,
> ioasid_t min, ioasid_t max, 
>  	data->set = set;
>  	data->private = private;
> +	refcount_set(&data->refs, 1);
>  
>  	/*
>  	 * Custom allocator needs allocator data to perform platform
> specific @@ -345,12 +347,33 @@ ioasid_t ioasid_alloc(struct
> ioasid_set *set, ioasid_t min, ioasid_t max, }
>  EXPORT_SYMBOL_GPL(ioasid_alloc);
>  
> +/**
> + * ioasid_get - obtain a reference to the IOASID
> + */
> +void ioasid_get(ioasid_t ioasid)
why void? what if the ioasid is not valid.

> +{
> +	struct ioasid_data *ioasid_data;
> +
> +	spin_lock(&ioasid_allocator_lock);
> +	ioasid_data = xa_load(&active_allocator->xa, ioasid);
> +	if (ioasid_data)
> +		refcount_inc(&ioasid_data->refs);
> +	spin_unlock(&ioasid_allocator_lock);
> +}
> +EXPORT_SYMBOL_GPL(ioasid_get);
> +
>  /**
>   * ioasid_free - Free an IOASID
>   * @ioasid: the ID to remove
> + *
> + * Put a reference to the IOASID, free it when the number of
> references drops to
> + * zero.
> + *
> + * Return: %true if the IOASID was freed, %false otherwise.
>   */
> -void ioasid_free(ioasid_t ioasid)
> +bool ioasid_free(ioasid_t ioasid)
>  {
> +	bool free = false;
>  	struct ioasid_data *ioasid_data;
>  
>  	spin_lock(&ioasid_allocator_lock);
> @@ -360,6 +383,10 @@ void ioasid_free(ioasid_t ioasid)
>  		goto exit_unlock;
>  	}
>  
> +	free = refcount_dec_and_test(&ioasid_data->refs);
> +	if (!free)
> +		goto exit_unlock;
> +
Just FYI, we may need to add states for the IOASID, i.g. mark the IOASID
inactive after free. And prohibit ioasid_get() after freed. For VT-d,
this is useful when KVM queries the IOASID.

>  	active_allocator->ops->free(ioasid,
> active_allocator->ops->pdata); /* Custom allocator needs additional
> steps to free the xa element */ if (active_allocator->flags &
> IOASID_ALLOCATOR_CUSTOM) { @@ -369,6 +396,7 @@ void
> ioasid_free(ioasid_t ioasid) 
>  exit_unlock:
>  	spin_unlock(&ioasid_allocator_lock);
> +	return free;
>  }
>  EXPORT_SYMBOL_GPL(ioasid_free);
>  

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
