Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBC42002D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 09:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UmYlD9pPEh1DuK3zqxPR+A7wwvbyeb5GtsVnL/DiQB0=; b=KwFiAm637JaLuvcV9rJ8yHRFw
	d15CSFcsGYTdxtAuKzI12o+eXJrQM6ORDDH1g9PUDcNPKzcHZpWgYAnKI1tfI+x3ucjnWySsEDDs4
	AIlKNXnOI/dzf/RtCXQ/4Pk/YERLPmrbXzrqvE4uROhxMFW5E2Pw5OD2Gtw+YUiIyIOc2fW+7Jt10
	/Xc+XR0eep59clFsX5oEk8H+yY8KunOpRV3UoL4YjjKlm/5jP2ZTPPTM+K2ArnQiO/6RnceJuTphX
	VOz378FLB0hKk2xLXn9xfF85oHDT+dcwonY8Yv9L1FJ/i5Y/CZGS5QnAQ/fqB7PHCv1ZfmV6OVKQu
	/b5OefCcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBb4-00026S-Ml; Fri, 19 Jun 2020 07:37:58 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBaw-00025e-Lc
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:37:52 +0000
IronPort-SDR: 9uvMBidwC3yA5p0WKqO1Cby3/HnJtxkW1ofLg1HkHGOZWH7QFK3F/q8fjviMPiYMi20mhPXoz7
 JEA6fXxayzIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="122609130"
X-IronPort-AV: E=Sophos;i="5.75,254,1589266800"; d="scan'208";a="122609130"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2020 00:37:44 -0700
IronPort-SDR: XYZWdVGYUe/61m4AmPuMZ44LKzT8q3wgxhCQMZc/etz3ldN7EQtZqDxkLnynU90uCPGu4AfgJ1
 d1FLThvGm/+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,254,1589266800"; d="scan'208";a="262240443"
Received: from blu2-mobl3.ccr.corp.intel.com (HELO [10.249.173.221])
 ([10.249.173.221])
 by fmsmga007.fm.intel.com with ESMTP; 19 Jun 2020 00:37:31 -0700
Subject: Re: [PATCH v8 03/12] iommu/sva: Add PASID helpers
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-mm@kvack.org
References: <20200618155125.1548969-1-jean-philippe@linaro.org>
 <20200618155125.1548969-4-jean-philippe@linaro.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <e2363732-e891-8263-16f1-c60b70d46ebc@linux.intel.com>
Date: Fri, 19 Jun 2020 15:37:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200618155125.1548969-4-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_003750_720210_689B4114 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: fenghua.yu@intel.com, jacob.jun.pan@linux.intel.com,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhengxiang9@huawei.com, Jonathan.Cameron@huawei.com,
 zhangfei.gao@linaro.org, will@kernel.org, xuzaibo@huawei.com,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jean,

On 2020/6/18 23:51, Jean-Philippe Brucker wrote:
> Let IOMMU drivers allocate a single PASID per mm. Store the mm in the
> IOASID set to allow refcounting and searching mm by PASID, when handling
> an I/O page fault.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

> ---
> v7->v8: rename to IOMMU_SVA_LIB (Lu Baolu)
> ---
>   drivers/iommu/Kconfig         |  5 +++
>   drivers/iommu/Makefile        |  1 +
>   drivers/iommu/iommu-sva-lib.h | 15 +++++++
>   drivers/iommu/iommu-sva-lib.c | 85 +++++++++++++++++++++++++++++++++++
>   4 files changed, 106 insertions(+)
>   create mode 100644 drivers/iommu/iommu-sva-lib.h
>   create mode 100644 drivers/iommu/iommu-sva-lib.c
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index b510f67dfa499..74a10e7a8d082 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -102,6 +102,11 @@ config IOMMU_DMA
>   	select IRQ_MSI_IOMMU
>   	select NEED_SG_DMA_LENGTH
>   
> +# Shared Virtual Addressing library
> +config IOMMU_SVA_LIB
> +	bool
> +	select IOASID
> +
>   config FSL_PAMU
>   	bool "Freescale IOMMU support"
>   	depends on PCI
> diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
> index 342190196dfb0..0fe5a7f9bc69c 100644
> --- a/drivers/iommu/Makefile
> +++ b/drivers/iommu/Makefile
> @@ -38,3 +38,4 @@ obj-$(CONFIG_S390_IOMMU) += s390-iommu.o
>   obj-$(CONFIG_QCOM_IOMMU) += qcom_iommu.o
>   obj-$(CONFIG_HYPERV_IOMMU) += hyperv-iommu.o
>   obj-$(CONFIG_VIRTIO_IOMMU) += virtio-iommu.o
> +obj-$(CONFIG_IOMMU_SVA_LIB) += iommu-sva-lib.o
> diff --git a/drivers/iommu/iommu-sva-lib.h b/drivers/iommu/iommu-sva-lib.h
> new file mode 100644
> index 0000000000000..b40990aef3fde
> --- /dev/null
> +++ b/drivers/iommu/iommu-sva-lib.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * SVA library for IOMMU drivers
> + */
> +#ifndef _IOMMU_SVA_LIB_H
> +#define _IOMMU_SVA_LIB_H
> +
> +#include <linux/ioasid.h>
> +#include <linux/mm_types.h>
> +
> +int iommu_sva_alloc_pasid(struct mm_struct *mm, ioasid_t min, ioasid_t max);
> +void iommu_sva_free_pasid(struct mm_struct *mm);
> +struct mm_struct *iommu_sva_find(ioasid_t pasid);
> +
> +#endif /* _IOMMU_SVA_LIB_H */
> diff --git a/drivers/iommu/iommu-sva-lib.c b/drivers/iommu/iommu-sva-lib.c
> new file mode 100644
> index 0000000000000..db7e6c104d6b0
> --- /dev/null
> +++ b/drivers/iommu/iommu-sva-lib.c
> @@ -0,0 +1,85 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Helpers for IOMMU drivers implementing SVA
> + */
> +#include <linux/mutex.h>
> +#include <linux/sched/mm.h>
> +
> +#include "iommu-sva-lib.h"
> +
> +static DEFINE_MUTEX(iommu_sva_lock);
> +static DECLARE_IOASID_SET(iommu_sva_pasid);
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
> +		pasid = ioasid_alloc(&iommu_sva_pasid, min, max, mm);
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
> +	return ioasid_find(&iommu_sva_pasid, pasid, __mmget_not_zero);
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_find);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
