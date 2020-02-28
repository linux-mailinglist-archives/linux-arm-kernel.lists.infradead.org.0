Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00267173A27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wS+9ktkEdJHPJjyFqmpVpFAQpav6KsTMeVsMb85d6BI=; b=t4PxkgD0gKtgn6
	3jRDyyeeENaS0zn4EykMKDZY9uC7Y3aDmhIDQfckG2IK6zA6CWuQTiX7xswUGxEGNlvN6pSoZPWmT
	lwz0QYDy4pPTlHxOKzspjunYIicQ2n2YUc7/hkmUk7gdF5a2zrqgLgOBEOu+pxo1fM/vHeNengH/S
	w2ixTXhUnu0OX+b6EP9M/aDAzY7h8wY6bZeM6iYcGHGcHoyaTEHfKlES74cw7oFsX3y9Yuni/wNfd
	lTDcB1rdVpFDXZ9eSFBEFE3vxCUmVlIAoovaYZaHoiBYPs1oqs/ofOiptT3oLI4Q+ByrptLOY7xLG
	s5bFDuUbT1MwEc2sjKGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gsL-0001LB-Kk; Fri, 28 Feb 2020 14:44:25 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gs8-0001K9-Hr
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:44:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id e10so1783829wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 06:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QMl+VBaGMao7gyBNUaUbW1tLbhMPTZJMdvofJak/bmM=;
 b=Eyk6vY0Af0pgRHDvnoOLJKEE9DaGoa+4z0NJ0t/WaE+0vf6ERLTI5+gCSTL4JKeEc7
 arJUIl26vcb7lA32WK3mE1Z9pObCrTyBu370u//nTiHn54Qsk9vtBAlncLuZo9K0V9Bo
 few19oXa3fshNwMeLE1X36r0Kl70yyi9UUOxcD7HXOQk57UJt7R/uONrD0jw5QwBKUEP
 XNLUCyENocPiBEBMYBsa65NNpXfx1bwVRSoKhuPD+Y1BFMRjqLFWjj7Bjg+11i79QgS1
 AuuGvqPiln8Z0uHDmfdS0ONpDj/sxIKSFG/mkvrKTjD2nZHB7B4UWE1XulydcVQDQVxM
 5WkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QMl+VBaGMao7gyBNUaUbW1tLbhMPTZJMdvofJak/bmM=;
 b=njGWUdAdyj2NQBXiS0ynXTspMT/ubLFbceRRSAr0Jk1ln8Q0GwYHdPIYd+oYxR0I5x
 6igYVCs0AJabZwLlwg8/ktOm8kA0/KcY4l+cpN37U1HcZtRhJxmZuTKHGiu9XQTs/PYm
 UNz7j0GbXi2bzX/iefIS4UtuLapotaI/ahKT2lHA18Fvf1byGfGaXmgwX6YYMRRrHUrQ
 yOR+8DRJtWwPNI5adgAiSIOW6e0BdJDenrgmQOKpDw2kR9E8vGmvGM5JjTLeB7Mk6VR3
 nFVYXLY2HhYyoG6N6sqQLGNVKXdVBeEuqz3UsX8sQWndAES0AxLfLlKduusY8jy98q5l
 y1ug==
X-Gm-Message-State: APjAAAVc4pMam0VCJDkk/MH/8lqxNalH4xVwgSgIAoySlhCA0L/Y/FlK
 vHE203x8344INOFvsJKNqhIDVw==
X-Google-Smtp-Source: APXvYqw6DykiBE32SqEJ+HnRwk8TuEFmQqrz2Fb4Wvuo7oVY88B0FHH4nfUvdWL5pnDIWaqbqIxz+g==
X-Received: by 2002:adf:f648:: with SMTP id x8mr5477186wrp.198.1582901051368; 
 Fri, 28 Feb 2020 06:44:11 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id o27sm13045012wro.27.2020.02.28.06.44.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 06:44:10 -0800 (PST)
Date: Fri, 28 Feb 2020 15:44:04 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v4 03/26] iommu: Add a page fault handler
Message-ID: <20200228144404.GD2156@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-4-jean-philippe@linaro.org>
 <20200226135933.000061a0@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226135933.000061a0@Huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_064415_119310_E9515577 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Feb 26, 2020 at 01:59:33PM +0000, Jonathan Cameron wrote:
> > +static int iopf_complete(struct device *dev, struct iopf_fault *iopf,
> > +			 enum iommu_page_response_code status)
> 
> This is called once per group.  Should name reflect that?

Ok

[...]
> > +/**
> > + * iommu_queue_iopf - IO Page Fault handler
> > + * @evt: fault event
> > + * @cookie: struct device, passed to iommu_register_device_fault_handler.
> > + *
> > + * Add a fault to the device workqueue, to be handled by mm.
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iommu_queue_iopf(struct iommu_fault *fault, void *cookie)
> > +{
> > +	int ret;
> > +	struct iopf_group *group;
> > +	struct iopf_fault *iopf, *next;
> > +	struct iopf_device_param *iopf_param;
> > +
> > +	struct device *dev = cookie;
> > +	struct iommu_param *param = dev->iommu_param;
> > +
> > +	if (WARN_ON(!mutex_is_locked(&param->lock)))
> > +		return -EINVAL;
> 
> Just curious...
> 
> Why do we always need a runtime check on this rather than say,
> using lockdep_assert_held or similar?

I probably didn't know about lockdep_assert at the time :)

> > +	/*
> > +	 * It is incredibly easy to find ourselves in a deadlock situation if
> > +	 * we're not careful, because we're taking the opposite path as
> > +	 * iommu_queue_iopf:
> > +	 *
> > +	 *   iopf_queue_flush_dev()   |  PRI queue handler
> > +	 *    lock(&param->lock)      |   iommu_queue_iopf()
> > +	 *     queue->flush()         |    lock(&param->lock)
> > +	 *      wait PRI queue empty  |
> > +	 *
> > +	 * So we can't hold the device param lock while flushing. Take a
> > +	 * reference to the device param instead, to prevent the queue from
> > +	 * going away.
> > +	 */
> > +	mutex_lock(&param->lock);
> > +	iopf_param = param->iopf_param;
> > +	if (iopf_param) {
> > +		queue = param->iopf_param->queue;
> > +		iopf_param->busy = true;
> 
> Describing this as taking a reference is not great...
> I'd change the comment to set a flag or something like that.
> 
> Is there any potential of multiple copies of this running against
> each other?  I've not totally gotten my head around when this
> might be called yet.

Yes it's allowed, this should be a refcount

[...]
> > +int iopf_queue_remove_device(struct iopf_queue *queue, struct device *dev)
> > +{
> > +	int ret = -EINVAL;
> > +	struct iopf_fault *iopf, *next;
> > +	struct iopf_device_param *iopf_param;
> > +	struct iommu_param *param = dev->iommu_param;
> > +
> > +	if (!param || !queue)
> > +		return -EINVAL;
> > +
> > +	do {
> > +		mutex_lock(&queue->lock);
> > +		mutex_lock(&param->lock);
> > +		iopf_param = param->iopf_param;
> > +		if (iopf_param && iopf_param->queue == queue) {
> > +			if (iopf_param->busy) {
> > +				ret = -EBUSY;
> > +			} else {
> > +				list_del(&iopf_param->queue_list);
> > +				param->iopf_param = NULL;
> > +				ret = 0;
> > +			}
> > +		}
> > +		mutex_unlock(&param->lock);
> > +		mutex_unlock(&queue->lock);
> > +
> > +		/*
> > +		 * If there is an ongoing flush, wait for it to complete and
> > +		 * then retry. iopf_param isn't going away since we're the only
> > +		 * thread that can free it.
> > +		 */
> > +		if (ret == -EBUSY)
> > +			wait_event(iopf_param->wq_head, !iopf_param->busy);
> > +		else if (ret)
> > +			return ret;
> > +	} while (ret == -EBUSY);
> 
> I'm in two minds about the next comment (so up to you)...
> 
> Currently this looks a bit odd.  Would you be better off just having a separate
> parameter for busy and explicit separate handling for the error path?
> 
> 	bool busy;
> 	int ret = 0;
> 
> 	do {
> 		mutex_lock(&queue->lock);
> 		mutex_lock(&param->lock);
> 		iopf_param = param->iopf_param;
> 		if (iopf_param && iopf_param->queue == queue) {
> 			busy = iopf_param->busy;
> 			if (!busy) {
> 				list_del(&iopf_param->queue_list);
> 				param->iopf_param = NULL;
> 			}
> 		} else {
> 			ret = -EINVAL;
> 		}
> 		mutex_unlock(&param->lock);
> 		mutex_unlock(&queue->lock);
> 		if (ret)
> 			return ret;
> 		if (busy)
> 			wait_event(iopf_param->wq_head, !iopf_param->busy);
> 		
> 	} while (busy);
> 
> 	..

Sure, I think it looks better

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
