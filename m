Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C719B1DA829
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=INy45NCSYEIzDl/7Wvq/BWkpigJN6WGzgqNxAEIAQN4=; b=UYvAqwsbSCZqUNdlc+f5/e094
	Vs6yMeipPTaVWCKFthMpPKKHSLOEq05FqUPYrFTMq+QTibAELYcBn84NWgTHBxJpyTIpHashUol48
	ItSIGl1ZPNccaCQ9f8gosLDMBZ5uCATKQKe2RxMGxOSdSzmIz7+4aJSNUtL9CavE7YL2RnlS06qk9
	rJCiOHDzO+yKdNm5vTMnouDLObkYqPGBfajFKQGtcxwKfMmK6KO4IwkVGIQ9KH5+DCebOd1evzTPF
	WojJ7EBlEnCRmTlWpEYefyscNLhpd7ug4cpbYjt3opZMY7hM2wREYvS8MapmF62sQrcsq7p9OYrfg
	snM4CNppg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEj1-0003dG-0g; Wed, 20 May 2020 02:44:55 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEip-0003cO-4W
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 02:44:44 +0000
IronPort-SDR: 38+iARklUaP6jqaETrDQNv5WBFVYVQFbauD6fbeJEhV6Altjofj3wZsrQfWwDvHqMq94xPnLwe
 n0eiqWpBkmSQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 19:44:42 -0700
IronPort-SDR: naRP1FHHVgQRi2pg4BIZBPfHHMYPwM8oOUtgy9YPkYlpXFq9lEIF8UwlQ7xuOTgxO5XifUYTeT
 baK9gMqjn7jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,412,1583222400"; d="scan'208";a="282530639"
Received: from allen-box.sh.intel.com (HELO [10.239.159.139])
 ([10.239.159.139])
 by orsmga002.jf.intel.com with ESMTP; 19 May 2020 19:44:37 -0700
Subject: Re: [PATCH v7 03/24] iommu/sva: Add PASID helpers
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-4-jean-philippe@linaro.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <543f7add-d4cf-e2b2-a7d2-e36f1fa8c4e2@linux.intel.com>
Date: Wed, 20 May 2020 10:41:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200519175502.2504091-4-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_194443_219551_4C944171 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
> Let IOMMU drivers allocate a single PASID per mm. Store the mm in the
> IOASID set to allow refcounting and searching mm by PASID, when handling
> an I/O page fault.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>   drivers/iommu/Kconfig     |  5 +++
>   drivers/iommu/Makefile    |  1 +
>   drivers/iommu/iommu-sva.h | 15 +++++++
>   drivers/iommu/iommu-sva.c | 85 +++++++++++++++++++++++++++++++++++++++
>   4 files changed, 106 insertions(+)
>   create mode 100644 drivers/iommu/iommu-sva.h
>   create mode 100644 drivers/iommu/iommu-sva.c
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index 2ab07ce17abb..d9fa5b410015 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -102,6 +102,11 @@ config IOMMU_DMA
>   	select IRQ_MSI_IOMMU
>   	select NEED_SG_DMA_LENGTH
>   
> +# Shared Virtual Addressing library
> +config IOMMU_SVA

This looks too generic. It doesn't match the code it actually controls.

How about IOMMU_SVA_LIB?

> +	bool
> +	select IOASID > +
>   config FSL_PAMU
>   	bool "Freescale IOMMU support"
>   	depends on PCI
> diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
> index 9f33fdb3bb05..40c800dd4e3e 100644
> --- a/drivers/iommu/Makefile
> +++ b/drivers/iommu/Makefile
> @@ -37,3 +37,4 @@ obj-$(CONFIG_S390_IOMMU) += s390-iommu.o
>   obj-$(CONFIG_QCOM_IOMMU) += qcom_iommu.o
>   obj-$(CONFIG_HYPERV_IOMMU) += hyperv-iommu.o
>   obj-$(CONFIG_VIRTIO_IOMMU) += virtio-iommu.o
> +obj-$(CONFIG_IOMMU_SVA) += iommu-sva.o
> diff --git a/drivers/iommu/iommu-sva.h b/drivers/iommu/iommu-sva.h
> new file mode 100644
> index 000000000000..78f806fcacbe
> --- /dev/null
> +++ b/drivers/iommu/iommu-sva.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * SVA library for IOMMU drivers
> + */
> +#ifndef _IOMMU_SVA_H
> +#define _IOMMU_SVA_H
> +
> +#include <linux/ioasid.h>
> +#include <linux/mm_types.h>
> +
> +int iommu_sva_alloc_pasid(struct mm_struct *mm, ioasid_t min, ioasid_t max);
> +void iommu_sva_free_pasid(struct mm_struct *mm);
> +struct mm_struct *iommu_sva_find(ioasid_t pasid);
> +
> +#endif /* _IOMMU_SVA_H */
> diff --git a/drivers/iommu/iommu-sva.c b/drivers/iommu/iommu-sva.c
> new file mode 100644
> index 000000000000..442644a1ade0
> --- /dev/null
> +++ b/drivers/iommu/iommu-sva.c
> @@ -0,0 +1,85 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Helpers for IOMMU drivers implementing SVA
> + */
> +#include <linux/mutex.h>
> +#include <linux/sched/mm.h>
> +
> +#include "iommu-sva.h"
> +
> +static DEFINE_MUTEX(iommu_sva_lock);
> +static DECLARE_IOASID_SET(shared_pasid);

NIT: how about iommu_sva_pasid?

> +
> +/**
> + * iommu_sva_alloc_pasid - Allocate a PASID for the mm
> + * @mm: the mm
> + * @min: minimum PASID value (inclusive)
> + * @max: maximum PASID value (inclusive)
> + *
> + * Try to allocate a PASID for this mm, or take a reference to the existing one
> + * provided it fits within the [min, max] range. On success the PASID is
> + * available in mm->pasid, and must be released with iommu_sva_free_pasid().
> + *
> + * Returns 0 on success and < 0 on error.
> + */
> +int iommu_sva_alloc_pasid(struct mm_struct *mm, ioasid_t min, ioasid_t max)
> +{
> +	int ret = 0;
> +	ioasid_t pasid;
> +
> +	if (min == INVALID_IOASID || max == INVALID_IOASID ||
> +	    min == 0 || max < min)
> +		return -EINVAL;
> +
> +	mutex_lock(&iommu_sva_lock);
> +	if (mm->pasid) {
> +		if (mm->pasid >= min && mm->pasid <= max)
> +			ioasid_get(mm->pasid);
> +		else
> +			ret = -EOVERFLOW;
> +	} else {
> +		pasid = ioasid_alloc(&shared_pasid, min, max, mm);
> +		if (pasid == INVALID_IOASID)
> +			ret = -ENOMEM;
> +		else
> +			mm->pasid = pasid;
> +	}
> +	mutex_unlock(&iommu_sva_lock);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_alloc_pasid);
> +
> +/**
> + * iommu_sva_free_pasid - Release the mm's PASID
> + * @mm: the mm.
> + *
> + * Drop one reference to a PASID allocated with iommu_sva_alloc_pasid()
> + */
> +void iommu_sva_free_pasid(struct mm_struct *mm)
> +{
> +	mutex_lock(&iommu_sva_lock);
> +	if (ioasid_put(mm->pasid))
> +		mm->pasid = 0;
> +	mutex_unlock(&iommu_sva_lock);
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_free_pasid);
> +
> +/* ioasid wants a void * argument */
> +static bool __mmget_not_zero(void *mm)
> +{
> +	return mmget_not_zero(mm);
> +}
> +
> +/**
> + * iommu_sva_find() - Find mm associated to the given PASID
> + * @pasid: Process Address Space ID assigned to the mm
> + *
> + * On success a reference to the mm is taken, and must be released with mmput().
> + *
> + * Returns the mm corresponding to this PASID, or an error if not found.
> + */
> +struct mm_struct *iommu_sva_find(ioasid_t pasid)
> +{
> +	return ioasid_find(&shared_pasid, pasid, __mmget_not_zero);
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_find);
> 

Best regards,
baolu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
