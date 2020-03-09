Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8E217DDEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 11:49:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzcjIpErqW9mr0al3fmu2M6qpxNXusKECPWqZW0dMdU=; b=GY1t7VNvw2FdsB
	9Efzo7K5Al6jaVhlz6lWkV/3HLi86o8k9DXNFxHtFGiQk1J+q+Sb9jK0InktOxiualIuT8dDXg11Q
	YgpFyO5HOhdmF0TXkSTcF6iVaqVmvWruzBBOC0d7xXRQqSRcPBZsUxbpQoUAxYb+Z9kMOHxZE2/e7
	ZMn2Z7tv2JVcwr0flZ3g8JQmmavdc133AZamZ/Lpj1RViqQ8V/DZODtm8zkGnhDer31eaMLZnTPAv
	/1KzEuj2AQ7KHdxjOqn3++JSkNnILSrRhwWu3hox46nq6q6Jl9mBm8eRkTpnw+JE5gbsetcCpE1hr
	+RGEMkMmcq19vefQ3LLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBFy3-0004n5-5U; Mon, 09 Mar 2020 10:49:03 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBFxt-0004ly-OX
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 10:48:56 +0000
Received: from LHREML714-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id E289F9BDFECA97C73EEA;
 Mon,  9 Mar 2020 10:48:39 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 LHREML714-CAH.china.huawei.com (10.201.108.37) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Mon, 9 Mar 2020 10:48:39 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5; Mon, 9 Mar 2020
 10:48:39 +0000
Date: Mon, 9 Mar 2020 10:48:26 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 23/26] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <20200309104826.000052c1@Huawei.com>
In-Reply-To: <20200304140833.GB646000@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-24-jean-philippe@linaro.org>
 <20200227181726.00007c9a@Huawei.com>
 <20200304140833.GB646000@myrica>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml706-chm.china.huawei.com (10.201.108.55) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_034853_945643_6EB864A7 
X-CRM114-Status: GOOD (  29.04  )
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

On Wed, 4 Mar 2020 15:08:33 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> On Thu, Feb 27, 2020 at 06:17:26PM +0000, Jonathan Cameron wrote:
> > On Mon, 24 Feb 2020 19:23:58 +0100
> > Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> >   
> > > From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> > > 
> > > The SMMU provides a Stall model for handling page faults in platform
> > > devices. It is similar to PCI PRI, but doesn't require devices to have
> > > their own translation cache. Instead, faulting transactions are parked and
> > > the OS is given a chance to fix the page tables and retry the transaction.
> > > 
> > > Enable stall for devices that support it (opt-in by firmware). When an
> > > event corresponds to a translation error, call the IOMMU fault handler. If
> > > the fault is recoverable, it will call us back to terminate or continue
> > > the stall.
> > > 
> > > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>  
> > One question inline.
> > 
> > Thanks,
> >   
> > > ---
> > >  drivers/iommu/arm-smmu-v3.c | 271 ++++++++++++++++++++++++++++++++++--
> > >  drivers/iommu/of_iommu.c    |   5 +-
> > >  include/linux/iommu.h       |   2 +
> > >  3 files changed, 269 insertions(+), 9 deletions(-)
> > > 
> > > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > > index 6a5987cce03f..da5dda5ba26a 100644
> > > --- a/drivers/iommu/arm-smmu-v3.c
> > > +++ b/drivers/iommu/arm-smmu-v3.c
> > > @@ -374,6 +374,13 @@  
> > 
> >   
> > > +/*
> > > + * arm_smmu_flush_evtq - wait until all events currently in the queue have been
> > > + *                       consumed.
> > > + *
> > > + * Wait until the evtq thread finished a batch, or until the queue is empty.
> > > + * Note that we don't handle overflows on q->batch. If it occurs, just wait for
> > > + * the queue to be empty.
> > > + */
> > > +static int arm_smmu_flush_evtq(void *cookie, struct device *dev, int pasid)
> > > +{
> > > +	int ret;
> > > +	u64 batch;
> > > +	struct arm_smmu_device *smmu = cookie;
> > > +	struct arm_smmu_queue *q = &smmu->evtq.q;
> > > +
> > > +	spin_lock(&q->wq.lock);
> > > +	if (queue_sync_prod_in(q) == -EOVERFLOW)
> > > +		dev_err(smmu->dev, "evtq overflow detected -- requests lost\n");
> > > +
> > > +	batch = q->batch;  
> > 
> > So this is trying to be sure we have advanced the queue 2 spots?  
> 
> So we call arm_smmu_flush_evtq() before decommissioning a PASID, to make
> sure that there aren't any pending event for this PASID languishing in the
> fault queues.
> 
> The main test is queue_empty(). If that succeeds then we know that there
> aren't any pending event (and the PASID is safe to reuse). But if new
> events are constantly added to the queue then we wait for the evtq thread
> to handle a full batch, where one batch corresponds to the queue size. For
> that we take the batch number when entering flush(), and wait for the evtq
> thread to increment it twice.
> 
> > Is there a potential race here?  q->batch could have updated before we take
> > a local copy.  
> 
> Yes we're just checking on the progress of the evtq thread. All accesses
> to batch are made while holding the wq lock.
> 
> Flush is a rare event so the lock isn't contended, but the wake_up() that
> this patch introduces in arm_smmu_evtq_thread() does add some overhead
> (0.85% of arm_smmu_evtq_thread(), according to perf). It would be nice to
> get rid of it but I haven't found anything clever yet.
> 

Thanks.  Maybe worth a few comments in the code as this is a bit esoteric.

Thanks,

Jonathan

> Thanks,
> Jean
> 
> >   
> > > +	ret = wait_event_interruptible_locked(q->wq, queue_empty(&q->llq) ||
> > > +					      q->batch >= batch + 2);
> > > +	spin_unlock(&q->wq.lock);
> > > +
> > > +	return ret;
> > > +}
> > > +  
> > ...
> >   



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
