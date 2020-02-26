Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6789E17087A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 20:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mu9uJe4ivlWHrPY4E5GjCmZ41aZqW7LaU8ncZWifVFs=; b=t91sQqIsdXwYNH
	p5Qvw+EoBJQa5lBmkxlGNsag2ybJUGilMlZxe4ABE4qFLLmxgWuzYpwitjDIVYeFnYiUiv2rYVhgU
	bZjEQVs2uerhDCFCzN10wMI6mBnMG80yAZJFDa+m/O4BGL9vnYGeRobNVeCnIFTvms2/sw2PoI+QW
	8RUgKRBUGqhnIMxojby9NubpZ42nAE2/qWMNFUy6mYVriAb/konQOeBxWfEECYSVuUSRznMqxhFEc
	twiT2ejRt/Sd0RVlRBY+3M9D3KgU69gNShJAFjoWHnxRkCMoTaOUr0DtZxlMI2oHuEVUcANVl6hKG
	PQ7N2e1il3er0/CKr+HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j722Q-0005TV-8x; Wed, 26 Feb 2020 19:08:06 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j722F-0005Sn-8H
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 19:07:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 11:07:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="256431520"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga002.jf.intel.com with ESMTP; 26 Feb 2020 11:07:51 -0800
Date: Wed, 26 Feb 2020 11:13:20 -0800
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 02/26] iommu/sva: Manage process address spaces
Message-ID: <20200226111320.3b6e6d3d@jacob-builder>
In-Reply-To: <20200224182401.353359-3-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-3-jean-philippe@linaro.org>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_110755_359473_5408F200 
X-CRM114-Status: GOOD (  39.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

Hi Jean,

A few comments inline. I am also trying to converge to the common sva
APIs. I sent out the first step w/o iopage fault and the generic ops
you have here.

On Mon, 24 Feb 2020 19:23:37 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> 
> Add a small library to help IOMMU drivers manage process address
> spaces bound to their devices. Register an MMU notifier to track
> modification on each address space bound to one or more devices.
> 
> IOMMU drivers must implement the io_mm_ops and can then use the
> helpers provided by this library to easily implement the SVA API
> introduced by commit 26b25a2b98e4. The io_mm_ops are:
> 
> void *alloc(struct mm_struct *)
>   Allocate a PASID context private to the IOMMU driver. There is a
>   single context per mm. IOMMU drivers may perform arch-specific
>   operations in there, for example pinning down a CPU ASID (on Arm).
> 
> int attach(struct device *, int pasid, void *ctx, bool attach_domain)
>   Attach a context to the device, by setting up the PASID table entry.
> 
> int invalidate(struct device *, int pasid, void *ctx,
>                unsigned long vaddr, size_t size)
>   Invalidate TLB entries for this address range.
> 
> int detach(struct device *, int pasid, void *ctx, bool detach_domain)
>   Detach a context from the device, by clearing the PASID table entry
>   and invalidating cached entries.
> 
> void free(void *ctx)
you meant release()?

>   Free a context.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
>  drivers/iommu/Kconfig     |   7 +
>  drivers/iommu/Makefile    |   1 +
>  drivers/iommu/iommu-sva.c | 561
> ++++++++++++++++++++++++++++++++++++++ drivers/iommu/iommu-sva.h |
> 64 +++++ drivers/iommu/iommu.c     |   1 +
>  include/linux/iommu.h     |   3 +
>  6 files changed, 637 insertions(+)
>  create mode 100644 drivers/iommu/iommu-sva.c
>  create mode 100644 drivers/iommu/iommu-sva.h
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index d2fade984999..acca20e2da2f 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -102,6 +102,13 @@ config IOMMU_DMA
>  	select IRQ_MSI_IOMMU
>  	select NEED_SG_DMA_LENGTH
>  
> +# Shared Virtual Addressing library
> +config IOMMU_SVA
> +	bool
> +	select IOASID
> +	select IOMMU_API
> +	select MMU_NOTIFIER
> +
>  config FSL_PAMU
>  	bool "Freescale IOMMU support"
>  	depends on PCI
> diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
> index 9f33fdb3bb05..40c800dd4e3e 100644
> --- a/drivers/iommu/Makefile
> +++ b/drivers/iommu/Makefile
> @@ -37,3 +37,4 @@ obj-$(CONFIG_S390_IOMMU) += s390-iommu.o
>  obj-$(CONFIG_QCOM_IOMMU) += qcom_iommu.o
>  obj-$(CONFIG_HYPERV_IOMMU) += hyperv-iommu.o
>  obj-$(CONFIG_VIRTIO_IOMMU) += virtio-iommu.o
> +obj-$(CONFIG_IOMMU_SVA) += iommu-sva.o
> diff --git a/drivers/iommu/iommu-sva.c b/drivers/iommu/iommu-sva.c
> new file mode 100644
> index 000000000000..64f1d1c82383
> --- /dev/null
> +++ b/drivers/iommu/iommu-sva.c
> @@ -0,0 +1,561 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Manage PASIDs and bind process address spaces to devices.
> + *
> + * Copyright (C) 2018 ARM Ltd.
> + */
> +
> +#include <linux/idr.h>
> +#include <linux/ioasid.h>
> +#include <linux/iommu.h>
> +#include <linux/sched/mm.h>
> +#include <linux/slab.h>
> +#include <linux/spinlock.h>
> +
> +#include "iommu-sva.h"
> +
> +/**
> + * DOC: io_mm model
> + *
> + * The io_mm keeps track of process address spaces shared between
> CPU and IOMMU.
> + * The following example illustrates the relation between structures
> + * iommu_domain, io_mm and iommu_sva. The iommu_sva struct is a bond
> between
> + * io_mm and device. A device can have multiple io_mm and an io_mm
> may be bound
> + * to multiple devices.
> + *              ___________________________
> + *             |  IOMMU domain A           |
> + *             |  ________________         |
> + *             | |  IOMMU group   |        +------- io_pgtables
> + *             | |                |        |
> + *             | |   dev 00:00.0 ----+------- bond 1 --- io_mm X
> + *             | |________________|   \    |
> + *             |                       '----- bond 2 ---.
> + *             |___________________________|             \
> + *              ___________________________               \
> + *             |  IOMMU domain B           |             io_mm Y
> + *             |  ________________         |             / /
> + *             | |  IOMMU group   |        |            / /
> + *             | |                |        |           / /
> + *             | |   dev 00:01.0 ------------ bond 3 -' /
> + *             | |   dev 00:01.1 ------------ bond 4 --'
> + *             | |________________|        |
> + *             |                           +------- io_pgtables
> + *             |___________________________|
> + *
> + * In this example, device 00:00.0 is in domain A, devices 00:01.*
> are in domain
> + * B. All devices within the same domain access the same address
> spaces.
Hmm, devices in domain A has access to both X & Y, isn't it
contradictory?

> Device
> + * 00:00.0 accesses address spaces X and Y, each corresponding to an
> mm_struct.
> + * Devices 00:01.* only access address space Y. In addition each
> + * IOMMU_DOMAIN_DMA domain has a private address space, io_pgtable,
> that is
> + * managed with iommu_map()/iommu_unmap(), and isn't shared with the
> CPU MMU.
So this would allow IOVA and SVA co-exist in the same address space?
I guess this is the PASID 0 for DMA request w/o PASID. If that is the
case, perhaps needs more explanation since the private address space
also has a private PASID within the domain.

> + *
> + * To obtain the above configuration, users would for instance issue
> the
> + * following calls:
> + *
> + *     iommu_sva_bind_device(dev 00:00.0, mm X, ...) -> bond 1
> + *     iommu_sva_bind_device(dev 00:00.0, mm Y, ...) -> bond 2
> + *     iommu_sva_bind_device(dev 00:01.0, mm Y, ...) -> bond 3
> + *     iommu_sva_bind_device(dev 00:01.1, mm Y, ...) -> bond 4
> + *
> + * A single Process Address Space ID (PASID) is allocated for each
> mm. In the
> + * example, devices use PASID 1 to read/write into address space X
> and PASID 2
> + * to read/write into address space Y. Calling iommu_sva_get_pasid()
> on bond 1
> + * returns 1, and calling it on bonds 2-4 returns 2.
> + *
> + * Hardware tables describing this configuration in the IOMMU would
> typically
> + * look like this:
> + *
> + *                                PASID tables
> + *                                 of domain A
> + *                              .->+--------+
> + *                             / 0 |        |-------> io_pgtable
> + *                            /    +--------+
> + *            Device tables  /   1 |        |-------> pgd X
> + *              +--------+  /      +--------+
> + *      00:00.0 |      A |-'     2 |        |--.
> + *              +--------+         +--------+   \
> + *              :        :       3 |        |    \
> + *              +--------+         +--------+     --> pgd Y
> + *      00:01.0 |      B |--.                    /
> + *              +--------+   \                  |
> + *      00:01.1 |      B |----+   PASID tables  |
> + *              +--------+     \   of domain B  |
> + *                              '->+--------+   |
> + *                               0 |        |-- | --> io_pgtable
> + *                                 +--------+   |
> + *                               1 |        |   |
> + *                                 +--------+   |
> + *                               2 |        |---'
> + *                                 +--------+
> + *                               3 |        |
> + *                                 +--------+
> + *
> + * With this model, a single call binds all devices in a given
> domain to an
> + * address space. Other devices in the domain will get the same bond
> implicitly.
> + * However, users must issue one bind() for each device, because
> IOMMUs may
> + * implement SVA differently. Furthermore, mandating one bind() per
> device
> + * allows the driver to perform sanity-checks on device capabilities.
> + *
> + * In some IOMMUs, one entry of the PASID table (typically the first
> one) can
> + * hold non-PASID translations. In this case PASID 0 is reserved and
> the first
> + * entry points to the io_pgtable pointer. In other IOMMUs the
> io_pgtable
> + * pointer is held in the device table and PASID 0 is available to
> the
> + * allocator.
> + */
> +
> +struct io_mm {
> +	struct list_head		devices;
> +	struct mm_struct		*mm;
> +	struct mmu_notifier		notifier;
> +
> +	/* Late initialization */
> +	const struct io_mm_ops		*ops;
> +	void				*ctx;
> +	int				pasid;
> +};
> +
> +#define to_io_mm(mmu_notifier)	container_of(mmu_notifier,
> struct io_mm, notifier) +#define to_iommu_bond(handle)
> container_of(handle, struct iommu_bond, sva) +
> +struct iommu_bond {
> +	struct iommu_sva		sva;
> +	struct io_mm __rcu		*io_mm;
> +
> +	struct list_head		mm_head;
> +	void				*drvdata;
> +	struct rcu_head			rcu_head;
> +	refcount_t			refs;
> +};
> +
> +static DECLARE_IOASID_SET(shared_pasid);
> +
> +static struct mmu_notifier_ops iommu_mmu_notifier_ops;
> +
> +/*
> + * Serializes modifications of bonds.
> + * Lock order: Device SVA mutex; global SVA mutex; IOASID lock
> + */
> +static DEFINE_MUTEX(iommu_sva_lock);
> +
> +struct io_mm_alloc_params {
> +	const struct io_mm_ops *ops;
> +	int min_pasid, max_pasid;
> +};
> +
> +static struct mmu_notifier *io_mm_alloc(struct mm_struct *mm, void
> *privdata) +{
> +	int ret;
> +	struct io_mm *io_mm;
> +	struct io_mm_alloc_params *params = privdata;
> +
> +	io_mm = kzalloc(sizeof(*io_mm), GFP_KERNEL);
> +	if (!io_mm)
> +		return ERR_PTR(-ENOMEM);
> +
> +	io_mm->mm = mm;
> +	io_mm->ops = params->ops;
> +	INIT_LIST_HEAD(&io_mm->devices);
> +
> +	io_mm->pasid = ioasid_alloc(&shared_pasid, params->min_pasid,
> +				    params->max_pasid, io_mm->mm);
> +	if (io_mm->pasid == INVALID_IOASID) {
> +		ret = -ENOSPC;
> +		goto err_free_io_mm;
> +	}
> +
> +	io_mm->ctx = params->ops->alloc(mm);
> +	if (IS_ERR(io_mm->ctx)) {
> +		ret = PTR_ERR(io_mm->ctx);
> +		goto err_free_pasid;
> +	}
> +	return &io_mm->notifier;
> +
> +err_free_pasid:
> +	ioasid_free(io_mm->pasid);
> +err_free_io_mm:
> +	kfree(io_mm);
> +	return ERR_PTR(ret);
> +}
> +
> +static void io_mm_free(struct mmu_notifier *mn)
> +{
> +	struct io_mm *io_mm = to_io_mm(mn);
> +
> +	WARN_ON(!list_empty(&io_mm->devices));
> +
> +	io_mm->ops->release(io_mm->ctx);
> +	ioasid_free(io_mm->pasid);
> +	kfree(io_mm);
> +}
> +
> +/*
> + * io_mm_get - Allocate an io_mm or get the existing one for the
> given mm
> + * @mm: the mm
> + * @ops: callbacks for the IOMMU driver
> + * @min_pasid: minimum PASID value (inclusive)
> + * @max_pasid: maximum PASID value (inclusive)
> + *
> + * Returns a valid io_mm or an error pointer.
> + */
> +static struct io_mm *io_mm_get(struct mm_struct *mm,
> +			       const struct io_mm_ops *ops,
> +			       int min_pasid, int max_pasid)
> +{
> +	struct io_mm *io_mm;
> +	struct mmu_notifier *mn;
> +	struct io_mm_alloc_params params = {
> +		.ops		= ops,
> +		.min_pasid	= min_pasid,
> +		.max_pasid	= max_pasid,
> +	};
> +
> +	/*
> +	 * A single notifier can exist for this (ops, mm) pair.
> Allocate it if
> +	 * necessary.
> +	 */
> +	mn = mmu_notifier_get(&iommu_mmu_notifier_ops, mm, &params);
> +	if (IS_ERR(mn))
> +		return ERR_CAST(mn);
> +	io_mm = to_io_mm(mn);
> +
> +	if (WARN_ON(io_mm->ops != ops)) {
> +		mmu_notifier_put(mn);
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	return io_mm;
> +}
> +
> +static void io_mm_put(struct io_mm *io_mm)
> +{
> +	mmu_notifier_put(&io_mm->notifier);
> +}
> +
> +static struct iommu_sva *
> +io_mm_attach(struct device *dev, struct io_mm *io_mm, void *drvdata)
> +{
> +	int ret = 0;
> +	bool attach_domain = true;
> +	struct iommu_bond *bond, *tmp;
> +	struct iommu_domain *domain, *other;
> +	struct iommu_sva_param *param = dev->iommu_param->sva_param;
> +
> +	domain = iommu_get_domain_for_dev(dev);
> +
> +	bond = kzalloc(sizeof(*bond), GFP_KERNEL);
> +	if (!bond)
> +		return ERR_PTR(-ENOMEM);
> +
> +	bond->sva.dev	= dev;
> +	bond->drvdata	= drvdata;
> +	refcount_set(&bond->refs, 1);
> +	RCU_INIT_POINTER(bond->io_mm, io_mm);
> +
> +	mutex_lock(&iommu_sva_lock);
> +	/* Is it already bound to the device or domain? */
> +	list_for_each_entry(tmp, &io_mm->devices, mm_head) {
> +		if (tmp->sva.dev != dev) {
> +			other =
> iommu_get_domain_for_dev(tmp->sva.dev);
> +			if (domain == other)
> +				attach_domain = false;
> +
> +			continue;
At this point, we already know this is a new device trying to attach to
one of io_mm's existing domains. So there is no need to continue
checking, right? Perhaps check like this?
-               if (tmp->sva.dev != dev) {
+               if (tmp->sva.dev != dev && attach_domain) {


> +		}
> +
> +		if (WARN_ON(tmp->drvdata != drvdata)) {
> +			ret = -EINVAL;
> +			goto err_free;
> +		}
> +
> +		/*
> +		 * Hold a single io_mm reference per bond. Note that
> we can't
> +		 * return an error after this, otherwise the caller
> would drop
> +		 * an additional reference to the io_mm.
> +		 */
> +		refcount_inc(&tmp->refs);
> +		io_mm_put(io_mm);
> +		kfree(bond);
Can bond be allocated after searching for existing bond or domain? If
so, we can avoid free bond here.

> +		mutex_unlock(&iommu_sva_lock);
> +		return &tmp->sva;
> +	}
> +
> +	list_add_rcu(&bond->mm_head, &io_mm->devices);
> +	param->nr_bonds++;
> +	mutex_unlock(&iommu_sva_lock);
> +
> +	ret = io_mm->ops->attach(bond->sva.dev, io_mm->pasid,
> io_mm->ctx,
> +				 attach_domain);
For VT-d, if a device trying to do SVA bind, there would not be a DMA
domain. SVA should own the entire address space, no IOVA. So this
attach() call is for VT-d driver to setup the first PASID table entry
regardless attach_domain is true or false?

> +	if (ret)
> +		goto err_remove;
> +
> +	return &bond->sva;
> +
> +err_remove:
> +	/*
> +	 * At this point concurrent threads may have started to
> access the
> +	 * io_mm->devices list in order to invalidate address
> ranges, which
> +	 * requires to free the bond via kfree_rcu()
> +	 */
> +	mutex_lock(&iommu_sva_lock);
> +	param->nr_bonds--;
> +	list_del_rcu(&bond->mm_head);
> +
> +err_free:
> +	mutex_unlock(&iommu_sva_lock);
> +	kfree_rcu(bond, rcu_head);
> +	return ERR_PTR(ret);
> +}
> +
> +static void io_mm_detach_locked(struct iommu_bond *bond)
> +{
> +	struct io_mm *io_mm;
> +	struct iommu_bond *tmp;
> +	bool detach_domain = true;
> +	struct iommu_domain *domain, *other;
> +
> +	io_mm = rcu_dereference_protected(bond->io_mm,
> +
> lockdep_is_held(&iommu_sva_lock));
> +	if (!io_mm)
> +		return;
> +
> +	domain = iommu_get_domain_for_dev(bond->sva.dev);
> +
> +	/* Are other devices in the same domain still attached to
> this mm? */
> +	list_for_each_entry(tmp, &io_mm->devices, mm_head) {
> +		if (tmp == bond)
> +			continue;
> +		other = iommu_get_domain_for_dev(tmp->sva.dev);
> +		if (domain == other) {
> +			detach_domain = false;
> +			break;
> +		}
> +	}
> +
> +	io_mm->ops->detach(bond->sva.dev, io_mm->pasid, io_mm->ctx,
> +			   detach_domain);
> +
> +	list_del_rcu(&bond->mm_head);
> +	RCU_INIT_POINTER(bond->io_mm, NULL);
> +
> +	/* Free after RCU grace period */
> +	io_mm_put(io_mm);
> +}
> +
> +/*
> + * io_mm_release - release MMU notifier
> + *
> + * Called when the mm exits. Some devices may still be bound to the
> io_mm. A few
> + * things need to be done before it is safe to release:
> + *
> + * - Tell the device driver to stop using this PASID.
> + * - Clear the PASID table and invalidate TLBs.
> + * - Drop all references to this io_mm.
> + */
> +static void io_mm_release(struct mmu_notifier *mn, struct mm_struct
> *mm) +{
> +	struct iommu_bond *bond, *next;
> +	struct io_mm *io_mm = to_io_mm(mn);
> +
> +	mutex_lock(&iommu_sva_lock);
> +	list_for_each_entry_safe(bond, next, &io_mm->devices,
> mm_head) {
> +		struct device *dev = bond->sva.dev;
> +		struct iommu_sva *sva = &bond->sva;
> +
> +		if (sva->ops && sva->ops->mm_exit &&
> +		    sva->ops->mm_exit(dev, sva, bond->drvdata))
> +			dev_WARN(dev, "possible leak of PASID %u",
> +				 io_mm->pasid);
> +
> +		/* unbind() frees the bond, we just detach it */
> +		io_mm_detach_locked(bond);
> +	}
> +	mutex_unlock(&iommu_sva_lock);
> +}
> +
> +static void io_mm_invalidate_range(struct mmu_notifier *mn,
> +				   struct mm_struct *mm, unsigned
> long start,
> +				   unsigned long end)
> +{
> +	struct iommu_bond *bond;
> +	struct io_mm *io_mm = to_io_mm(mn);
> +
> +	rcu_read_lock();
> +	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head)
> +		io_mm->ops->invalidate(bond->sva.dev, io_mm->pasid,
> io_mm->ctx,
> +				       start, end - start);
> +	rcu_read_unlock();
> +}
> +
> +static struct mmu_notifier_ops iommu_mmu_notifier_ops = {
> +	.alloc_notifier		= io_mm_alloc,
> +	.free_notifier		= io_mm_free,
> +	.release		= io_mm_release,
> +	.invalidate_range	= io_mm_invalidate_range,
> +};
> +
> +struct iommu_sva *
> +iommu_sva_bind_generic(struct device *dev, struct mm_struct *mm,
> +		       const struct io_mm_ops *ops, void *drvdata)
> +{
> +	struct io_mm *io_mm;
> +	struct iommu_sva *handle;
> +	struct iommu_param *param = dev->iommu_param;
> +
> +	if (!param)
> +		return ERR_PTR(-ENODEV);
> +
> +	mutex_lock(&param->sva_lock);
> +	if (!param->sva_param) {
> +		handle = ERR_PTR(-ENODEV);
> +		goto out_unlock;
> +	}
> +
> +	io_mm = io_mm_get(mm, ops, param->sva_param->min_pasid,
> +			  param->sva_param->max_pasid);
> +	if (IS_ERR(io_mm)) {
> +		handle = ERR_CAST(io_mm);
> +		goto out_unlock;
> +	}
> +
> +	handle = io_mm_attach(dev, io_mm, drvdata);
> +	if (IS_ERR(handle))
> +		io_mm_put(io_mm);
> +
> +out_unlock:
> +	mutex_unlock(&param->sva_lock);
> +	return handle;
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_bind_generic);
> +
> +static void iommu_sva_unbind_locked(struct iommu_bond *bond)
> +{
> +	struct device *dev = bond->sva.dev;
> +	struct iommu_sva_param *param = dev->iommu_param->sva_param;
> +
> +	if (!refcount_dec_and_test(&bond->refs))
> +		return;
> +
dont you need to free bond here?

> +	io_mm_detach_locked(bond);
> +	param->nr_bonds--;
> +	kfree_rcu(bond, rcu_head);
> +}
> +
> +void iommu_sva_unbind_generic(struct iommu_sva *handle)
> +{
> +	struct iommu_param *param = handle->dev->iommu_param;
> +
> +	if (WARN_ON(!param))
> +		return;
> +
> +	mutex_lock(&param->sva_lock);
> +	mutex_lock(&iommu_sva_lock);
> +	iommu_sva_unbind_locked(to_iommu_bond(handle));
> +	mutex_unlock(&iommu_sva_lock);
> +	mutex_unlock(&param->sva_lock);
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_unbind_generic);
> +
> +/**
> + * iommu_sva_enable() - Enable Shared Virtual Addressing for a device
> + * @dev: the device
> + * @sva_param: the parameters.
> + *
> + * Called by an IOMMU driver to setup the SVA parameters
> + * @sva_param is duplicated and can be freed when this function
> returns.
> + *
> + * Return 0 if initialization succeeded, or an error.
> + */
IOMMU vendor driver usually dont know when the device SVA feature will
be used until bind call. So we pretty much have to call this for every
device during init time?

> +int iommu_sva_enable(struct device *dev, struct iommu_sva_param
> *sva_param) +{
> +	int ret;
> +	struct iommu_sva_param *new_param;
> +	struct iommu_param *param = dev->iommu_param;
> +
> +	if (!param)
> +		return -ENODEV;
> +
> +	new_param = kmemdup(sva_param, sizeof(*new_param),
> GFP_KERNEL);
> +	if (!new_param)
> +		return -ENOMEM;
> +
> +	mutex_lock(&param->sva_lock);
> +	if (param->sva_param) {
> +		ret = -EEXIST;
> +		goto err_unlock;
> +	}
> +
> +	dev->iommu_param->sva_param = new_param;
> +	mutex_unlock(&param->sva_lock);
> +	return 0;
> +
> +err_unlock:
> +	mutex_unlock(&param->sva_lock);
> +	kfree(new_param);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_enable);
> +
> +/**
> + * iommu_sva_disable() - Disable Shared Virtual Addressing for a
> device
> + * @dev: the device
> + *
> + * IOMMU drivers call this to disable SVA.
> + */
> +int iommu_sva_disable(struct device *dev)
> +{
> +	int ret = 0;
> +	struct iommu_param *param = dev->iommu_param;
> +
> +	if (!param)
> +		return -EINVAL;
> +
> +	mutex_lock(&param->sva_lock);
> +	if (!param->sva_param) {
> +		ret = -ENODEV;
> +		goto out_unlock;
> +	}
> +
> +	/* Require that all contexts are unbound */
> +	if (param->sva_param->nr_bonds) {
> +		ret = -EBUSY;
> +		goto out_unlock;
> +	}
> +
> +	kfree(param->sva_param);
> +	param->sva_param = NULL;
> +out_unlock:
> +	mutex_unlock(&param->sva_lock);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_disable);
> +
> +bool iommu_sva_enabled(struct device *dev)
> +{
> +	bool enabled;
> +	struct iommu_param *param = dev->iommu_param;
> +
> +	if (!param)
> +		return false;
> +
> +	mutex_lock(&param->sva_lock);
> +	enabled = !!param->sva_param;
> +	mutex_unlock(&param->sva_lock);
> +	return enabled;
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_enabled);
> +
> +int iommu_sva_get_pasid_generic(struct iommu_sva *handle)
> +{
> +	struct io_mm *io_mm;
> +	int pasid = IOMMU_PASID_INVALID;
> +	struct iommu_bond *bond = to_iommu_bond(handle);
> +
> +	rcu_read_lock();
> +	io_mm = rcu_dereference(bond->io_mm);
> +	if (io_mm)
> +		pasid = io_mm->pasid;
> +	rcu_read_unlock();
> +	return pasid;
> +}
> +EXPORT_SYMBOL_GPL(iommu_sva_get_pasid_generic);
> diff --git a/drivers/iommu/iommu-sva.h b/drivers/iommu/iommu-sva.h
> new file mode 100644
> index 000000000000..dd55c2db0936
> --- /dev/null
> +++ b/drivers/iommu/iommu-sva.h
> @@ -0,0 +1,64 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * SVA library for IOMMU drivers
> + */
> +#ifndef _IOMMU_SVA_H
> +#define _IOMMU_SVA_H
> +
> +#include <linux/iommu.h>
> +#include <linux/kref.h>
> +#include <linux/mmu_notifier.h>
> +
> +struct io_mm_ops {
> +	/* Allocate a PASID context for an mm */
> +	void *(*alloc)(struct mm_struct *mm);
> +
> +	/*
> +	 * Attach a PASID context to a device. Write the entry into
> the PASID
> +	 * table.
> +	 *
> +	 * @attach_domain is true when no other device in the IOMMU
> domain is
> +	 *   already attached to this context. IOMMU drivers that
> share the
> +	 *   PASID tables within a domain don't need to write the
> PASID entry
> +	 *   when @attach_domain is false.
> +	 */
If we have per device PASID table, then we need to set up PASID table
entry regardless of the domain sharing. What is confusing to me is that
domain is for DMA isolation on request w/o PASID, but with SVA we don't
really care about domains. Sorry, it has been a long time since we
discussed this. I think will work for VT-d but just wanted to make sure
I understand the intentions.

> +	int (*attach)(struct device *dev, int pasid, void *ctx,
> +		      bool attach_domain);
> +
> +	/*
> +	 * Detach a PASID context from a device. Clear the entry
> from the PASID
> +	 * table and invalidate if necessary.
> +	 *
> +	 * @detach_domain is true when no other device in the IOMMU
> domain is
> +	 *   still attached to this context. IOMMU drivers that
> share the PASID
> +	 *   table within a domain don't need to clear the PASID
> entry when
> +	 *   @detach_domain is false, only invalidate the caches.
> +	 */
> +	void (*detach)(struct device *dev, int pasid, void *ctx,
> +		       bool detach_domain);
> +
> +	/* Invalidate a range of addresses. Cannot sleep. */
> +	void (*invalidate)(struct device *dev, int pasid, void *ctx,
> +			   unsigned long vaddr, size_t size);
> +
> +	/* Free a context. Cannot sleep. */
> +	void (*release)(void *ctx);
> +};
> +
> +struct iommu_sva_param {
> +	u32			min_pasid;
> +	u32			max_pasid;
> +	int			nr_bonds;
> +};
> +
> +struct iommu_sva *
> +iommu_sva_bind_generic(struct device *dev, struct mm_struct *mm,
> +		       const struct io_mm_ops *ops, void *drvdata);
> +void iommu_sva_unbind_generic(struct iommu_sva *handle);
> +int iommu_sva_get_pasid_generic(struct iommu_sva *handle);
> +
> +int iommu_sva_enable(struct device *dev, struct iommu_sva_param
> *sva_param); +int iommu_sva_disable(struct device *dev);
> +bool iommu_sva_enabled(struct device *dev);
> +
> +#endif /* _IOMMU_SVA_H */
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 3e3528436e0b..c8bd972c1788 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -164,6 +164,7 @@ static struct iommu_param
> *iommu_get_dev_param(struct device *dev) return NULL;
>  
>  	mutex_init(&param->lock);
> +	mutex_init(&param->sva_lock);
>  	dev->iommu_param = param;
>  	return param;
>  }
> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index 1739f8a7a4b4..83397ae88d2d 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -368,6 +368,7 @@ struct iommu_fault_param {
>   * struct iommu_param - collection of per-device IOMMU data
>   *
>   * @fault_param: IOMMU detected device fault reporting data
> + * @sva_param: IOMMU parameter for SVA
>   *
>   * TODO: migrate other per device data pointers under
> iommu_dev_data, e.g.
>   *	struct iommu_group	*iommu_group;
> @@ -376,6 +377,8 @@ struct iommu_fault_param {
>  struct iommu_param {
>  	struct mutex lock;
>  	struct iommu_fault_param *fault_param;
> +	struct mutex sva_lock;
> +	struct iommu_sva_param *sva_param;
>  };
>  
>  int  iommu_device_register(struct iommu_device *iommu);

Thanks,

Jacob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
