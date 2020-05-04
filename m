Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8D11C3FBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:23:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFjyg7TReAZvkSIvNuXXRDW2WSmm+zX/hEbcRmYQwrg=; b=fxIiGHdZo7otTI
	hWf5OgeKfsw32ayuA4HeCnfgJ4ZLBIxbzXrkdYZmkOzVgpOBouL/Z2XOtPHwL1n8uLX9BWfv5P1o8
	k6KE4VvGVb/McSQxVn1n0m9ZeSnIwQFIiB2yjLw1/901svRrk4/r1r4NwEVRRN0oaCb2laBPgCdgB
	+Mw1BzrwmM+pfQPZeTKkiQZmvjXr9YJPUZSePT/2R8EHDT2FH/Ziwf174jjWHGbjOPBkMCbuTnzV6
	XAYVbXcd4/Pvj2d0VkKSe0AhtGDDmrVWtDxt+a01xcOS97vr4IPTP0lGqhNjX/pZ9pOFBzLTX+TTt
	hJN7dVHZFJb7DgJoSJVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdry-00051A-CB; Mon, 04 May 2020 16:23:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdrq-00050S-RX
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:22:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id e26so131906wmk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=MCHVg2/8+pArsDEcibsWYzrGnqgIsL6O2tKqGg2boGQ=;
 b=iSM+uzVb/Wm9o2OFV1sl72Hl6D+zeT7joT4vOaOlq68PXnFwe/TAk2ttWj8v9dU1dp
 pnF/omBOpYMJB4/th5D32NG9HLmrLVMes4cCMc8VMzYdg2qLFT6vSgmCDp0Aw1nUm0uZ
 zskO35wWlL+RbvHkboG5mUQ/L/n+3y61s2o0w7CQDO57+OpdcBSazwAbkdt1PSVLTLBo
 UV1pf09sh92pKqxAH7nSVA1ZYxhO3wvKQTlkwY+OI6YzOkNriXNcGNotaZCNb5aVlTZL
 xKffUZeH5WhVXFHQFh1APhUCIeRsfiN64kn4VSmarUHBvmY+F0QmpO3mbkXMwkZKQxvG
 rmfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MCHVg2/8+pArsDEcibsWYzrGnqgIsL6O2tKqGg2boGQ=;
 b=kuwgtwbUce7tlocxV9CSNs4vcKfObSk+/T42nZrO3j0FhwF1N/8ojNwvmbVDSzFlOl
 R5Iq6e21pd6XgI0kILPhWEuhwL3tbZWVzb6lF+pfLqnhwP5Jab9YJj1OAHRMQPZjVTPc
 qT0u8ogQdHAFaYSkn0FLLhJXIJixpzxqwo0T6Us6omdYwTLPVzwzBP474Z93ZL77paH/
 DKEQqcTpNM0S5iA+YoLVRANjJildB5oK4q6qyzi2ay1WtjCVbjcDgdllR6Ybvj5aXivi
 EGH1FKM0ORgifmNWW63ETlvKDA8Dq6aVUexklNdTi6/tC6xSCba3x3gTULGdko2TL5RI
 Mn6A==
X-Gm-Message-State: AGi0PuY4xGMTNKdPsHkAxeU+7mN0c3TksLv1HwqXjNsrqF4ZAYP1+BcJ
 odloC062Oj3RVlpePStQ7Jp2Tw==
X-Google-Smtp-Source: APiQypIIfd6fa9/u+aeLTQxZQ97zHXvpxVqHN8qn939cucwqFuaXUhEBZSvGLYaIJPT3wr7V8s6L9Q==
X-Received: by 2002:a7b:c14b:: with SMTP id z11mr15041535wmi.44.1588609373077; 
 Mon, 04 May 2020 09:22:53 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id s8sm16208905wrt.69.2020.05.04.09.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:22:52 -0700 (PDT)
Date: Mon, 4 May 2020 18:22:42 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v6 04/25] iommu: Add a page fault handler
Message-ID: <20200504162242.GF170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-5-jean-philippe@linaro.org>
 <9a8ec004-0a9c-d772-8e7a-f839002a40b5@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a8ec004-0a9c-d772-8e7a-f839002a40b5@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_092254_947352_91923D24 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 03, 2020 at 01:49:01PM +0800, Lu Baolu wrote:
> > +static void iopf_handle_group(struct work_struct *work)
> > +{
> > +	struct iopf_group *group;
> > +	struct iopf_fault *iopf, *next;
> > +	enum iommu_page_response_code status = IOMMU_PAGE_RESP_SUCCESS;
> > +
> > +	group = container_of(work, struct iopf_group, work);
> > +
> > +	list_for_each_entry_safe(iopf, next, &group->faults, head) {
> > +		/*
> > +		 * For the moment, errors are sticky: don't handle subsequent
> > +		 * faults in the group if there is an error.
> > +		 */
> > +		if (status == IOMMU_PAGE_RESP_SUCCESS)
> > +			status = iopf_handle_single(iopf);
> > +
> > +		if (!(iopf->fault.prm.flags &
> > +		      IOMMU_FAULT_PAGE_REQUEST_LAST_PAGE))
> > +			kfree(iopf);
> 
> The iopf is freed,but not removed from the list. This will cause wild
> pointer in code.

We free the list with the group below, so this one is fine.

> 
> > +	}
> > +
> > +	iopf_complete_group(group->dev, &group->last_fault, status);
> > +	kfree(group);
> > +}
> > +
> 
> [...]
> 
> > +/**
> > + * iopf_queue_flush_dev - Ensure that all queued faults have been processed
> > + * @dev: the endpoint whose faults need to be flushed.
> > + * @pasid: the PASID affected by this flush
> > + *
> > + * The IOMMU driver calls this before releasing a PASID, to ensure that all
> > + * pending faults for this PASID have been handled, and won't hit the address
> > + * space of the next process that uses this PASID. The driver must make sure
> > + * that no new fault is added to the queue. In particular it must flush its
> > + * low-level queue before calling this function.
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iopf_queue_flush_dev(struct device *dev, int pasid)
> > +{
> > +	int ret = 0;
> > +	struct iopf_device_param *iopf_param;
> > +	struct dev_iommu *param = dev->iommu;
> > +
> > +	if (!param)
> > +		return -ENODEV;
> > +
> > +	mutex_lock(&param->lock);
> > +	iopf_param = param->iopf_param;
> > +	if (iopf_param)
> > +		flush_workqueue(iopf_param->queue->wq);
> 
> There may be other pasid iopf in the workqueue. Flush all tasks in
> the workqueue will hurt other pasids. I might lose any context.

Granted this isn't optimal because we don't take the PASID argument into
account (I think I'll remove it, don't know how to use it). But I don't
think it affects other PASIDs, because all flush_workqueue() does is wait
until all faults currently in the worqueue are processed. So it only
blocks the current thread, but nothing is lost.

> 
> > +	else
> > +		ret = -ENODEV;
> > +	mutex_unlock(&param->lock);
> > +
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(iopf_queue_flush_dev);
> > +
> > +/**
> > + * iopf_queue_discard_partial - Remove all pending partial fault
> > + * @queue: the queue whose partial faults need to be discarded
> > + *
> > + * When the hardware queue overflows, last page faults in a group may have been
> > + * lost and the IOMMU driver calls this to discard all partial faults. The
> > + * driver shouldn't be adding new faults to this queue concurrently.
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iopf_queue_discard_partial(struct iopf_queue *queue)
> > +{
> > +	struct iopf_fault *iopf, *next;
> > +	struct iopf_device_param *iopf_param;
> > +
> > +	if (!queue)
> > +		return -EINVAL;
> > +
> > +	mutex_lock(&queue->lock);
> > +	list_for_each_entry(iopf_param, &queue->devices, queue_list) {
> > +		list_for_each_entry_safe(iopf, next, &iopf_param->partial, head)
> > +			kfree(iopf);
> 
> iopf is freed but not removed from the list.

Ouch yes this is wrong, will fix.

> 
> > +	}
> > +	mutex_unlock(&queue->lock);
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(iopf_queue_discard_partial);
> > +
> > +/**
> > + * iopf_queue_add_device - Add producer to the fault queue
> > + * @queue: IOPF queue
> > + * @dev: device to add
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iopf_queue_add_device(struct iopf_queue *queue, struct device *dev)
> > +{
> > +	int ret = -EBUSY;
> > +	struct iopf_device_param *iopf_param;
> > +	struct dev_iommu *param = dev->iommu;
> > +
> > +	if (!param)
> > +		return -ENODEV;
> > +
> > +	iopf_param = kzalloc(sizeof(*iopf_param), GFP_KERNEL);
> > +	if (!iopf_param)
> > +		return -ENOMEM;
> > +
> > +	INIT_LIST_HEAD(&iopf_param->partial);
> > +	iopf_param->queue = queue;
> > +	iopf_param->dev = dev;
> > +
> > +	mutex_lock(&queue->lock);
> > +	mutex_lock(&param->lock);
> > +	if (!param->iopf_param) {
> > +		list_add(&iopf_param->queue_list, &queue->devices);
> > +		param->iopf_param = iopf_param;
> > +		ret = 0;
> > +	}
> > +	mutex_unlock(&param->lock);
> > +	mutex_unlock(&queue->lock);
> > +
> > +	if (ret)
> > +		kfree(iopf_param);
> > +
> > +	return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(iopf_queue_add_device);
> > +
> > +/**
> > + * iopf_queue_remove_device - Remove producer from fault queue
> > + * @queue: IOPF queue
> > + * @dev: device to remove
> > + *
> > + * Caller makes sure that no more faults are reported for this device.
> > + *
> > + * Return: 0 on success and <0 on error.
> > + */
> > +int iopf_queue_remove_device(struct iopf_queue *queue, struct device *dev)
> > +{
> > +	int ret = 0;
> > +	struct iopf_fault *iopf, *next;
> > +	struct iopf_device_param *iopf_param;
> > +	struct dev_iommu *param = dev->iommu;
> > +
> > +	if (!param || !queue)
> > +		return -EINVAL;
> > +
> > +	mutex_lock(&queue->lock);
> > +	mutex_lock(&param->lock);
> > +	iopf_param = param->iopf_param;
> > +	if (iopf_param && iopf_param->queue == queue) {
> > +		list_del(&iopf_param->queue_list);
> > +		param->iopf_param = NULL;
> > +	} else {
> > +		ret = -EINVAL;
> > +	}
> > +	mutex_unlock(&param->lock);
> > +	mutex_unlock(&queue->lock);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Just in case some faults are still stuck */
> > +	list_for_each_entry_safe(iopf, next, &iopf_param->partial, head)
> > +		kfree(iopf);
> 
> The same here.

Here is fine, we free the iopf_param below

Thanks,
Jean

> 
> > +
> > +	kfree(iopf_param);
> > +
> > +	return 0;
> > +}
> > +EXPORT_SYMBOL_GPL(iopf_queue_remove_device);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
