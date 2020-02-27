Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C71381726D8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 19:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+CA20iXS2DhPxRCFiiuZqtvXxk1FkTswCs5dNX8hDk=; b=imgXbJJNJslF7J
	XPVoljmbi2M8rnWG0YTyYGElhi4YpFaOHF9xir5hBnANpGv47ng85ygbJTFSYf+Uu7+tDyMmvlTGw
	MtjurZI95M/sEymWtp/A79lBq094yc8HLqsgeBvj7WVrI695FevKSP5vrsBj4Uw7zbYETZgFxGBYK
	45uy1Iu+3pqMYokMXSF4q70tK69O5tk9481g9nsYuOmquU1pxC2bUbohD8irKYz/UrshwaU/o0tzS
	NNZ/8407uhABvLOLiOKsKLVG3rCCdi0qqK86K/zOxXj1YLxrzBnrCO6kO8vvcf4XXs8SUhSGhtwGt
	xGchliQwk5oBiJ3uLp+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7NjE-0004E1-Nc; Thu, 27 Feb 2020 18:17:44 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Nj2-0004CK-DF
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 18:17:34 +0000
Received: from lhreml705-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 8117685ABD52B5BBCA42;
 Thu, 27 Feb 2020 18:17:28 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml705-cah.china.huawei.com (10.201.108.46) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Thu, 27 Feb 2020 18:17:27 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 27 Feb
 2020 18:17:27 +0000
Date: Thu, 27 Feb 2020 18:17:26 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 23/26] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <20200227181726.00007c9a@Huawei.com>
In-Reply-To: <20200224182401.353359-24-jean-philippe@linaro.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-24-jean-philippe@linaro.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_101732_595215_4EF98DE9 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 jacob.jun.pan@linux.intel.com,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 linux-pci@vger.kernel.org, joro@8bytes.org, robin.murphy@arm.com,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 yi.l.liu@intel.com, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 24 Feb 2020 19:23:58 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> 
> The SMMU provides a Stall model for handling page faults in platform
> devices. It is similar to PCI PRI, but doesn't require devices to have
> their own translation cache. Instead, faulting transactions are parked and
> the OS is given a chance to fix the page tables and retry the transaction.
> 
> Enable stall for devices that support it (opt-in by firmware). When an
> event corresponds to a translation error, call the IOMMU fault handler. If
> the fault is recoverable, it will call us back to terminate or continue
> the stall.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
One question inline.

Thanks,

> ---
>  drivers/iommu/arm-smmu-v3.c | 271 ++++++++++++++++++++++++++++++++++--
>  drivers/iommu/of_iommu.c    |   5 +-
>  include/linux/iommu.h       |   2 +
>  3 files changed, 269 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 6a5987cce03f..da5dda5ba26a 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -374,6 +374,13 @@


> +/*
> + * arm_smmu_flush_evtq - wait until all events currently in the queue have been
> + *                       consumed.
> + *
> + * Wait until the evtq thread finished a batch, or until the queue is empty.
> + * Note that we don't handle overflows on q->batch. If it occurs, just wait for
> + * the queue to be empty.
> + */
> +static int arm_smmu_flush_evtq(void *cookie, struct device *dev, int pasid)
> +{
> +	int ret;
> +	u64 batch;
> +	struct arm_smmu_device *smmu = cookie;
> +	struct arm_smmu_queue *q = &smmu->evtq.q;
> +
> +	spin_lock(&q->wq.lock);
> +	if (queue_sync_prod_in(q) == -EOVERFLOW)
> +		dev_err(smmu->dev, "evtq overflow detected -- requests lost\n");
> +
> +	batch = q->batch;

So this is trying to be sure we have advanced the queue 2 spots?

Is there a potential race here?  q->batch could have updated before we take
a local copy.

> +	ret = wait_event_interruptible_locked(q->wq, queue_empty(&q->llq) ||
> +					      q->batch >= batch + 2);
> +	spin_unlock(&q->wq.lock);
> +
> +	return ret;
> +}
> +
...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
