Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7131791ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 15:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gG042kkCbGtaiaO2IjfJn+LsTGnVmfGCjkYDqaemxm0=; b=Gu1K6ucXLn/tkd
	D7VMBYTC0utfiJpHQ5G3bVONG8EfnSsFu31npbCTAeKo+sc7bcbIti6U93hqVO3YO5ykzwwMeAYiy
	gvV+ZqX42Yj+SB6yEvvweI3zgBqXaUot21a2mVWLqtouyULO1Uz2BlQbmBrxprhp+oo0KTLN/Bb1f
	gOizsrKjhN1p5lDHQLCZvt5TmxRhBTC1rV4GIyl4i6vUvIPFIXEaqXsqO4Z+P1RF67/YCzVZaHyFm
	dBAQHp+TP9CMfZTuVrTCvTbpZgQntL46qfLJBxY/4pkY2NtcJs0hkLsXjSzWLZQZNGT6TlFrfvBr8
	JPHorLu0qDlcOEMxlxTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Uhe-0005ky-Eo; Wed, 04 Mar 2020 14:08:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9UhX-0005kM-EH
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 14:08:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id n7so2529647wrt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 06:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TdUvMeA1bV5hMUNi9Uc9NGFwMrBhsdhhT6ZmBGFQFek=;
 b=ziaLQQMTnCJ7YSxd5sV95qsFJ5sMZH3rtvhOIq0q24OYVAeSN/juNgdJKUXVth7dmC
 +1cTjWWP/8vKz1/4KANL8PnAFbMAGOTkEIQvePO7fVK5ahr5EsdFhICYSslnU6Q/U3YP
 eaY+UNIzqcl1QfHqCD3sojdDlJ5DGbhtfT0Zz1unRHzAIht9z91VeCVs9QSOLqrFrm47
 yYvlbSX/dMxmGH7JaXW06sQkDqq+gICORzdo63QS61gI1f3znBgEbBwZYbXIUzNXW34m
 9I41VXjpTFujhXGbhcU+sCmTSxEf+GPlgeOR7llOnK3kpBjcJOHvuvpYAM84w3umrZVW
 WibQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TdUvMeA1bV5hMUNi9Uc9NGFwMrBhsdhhT6ZmBGFQFek=;
 b=N6IPxuMpKVn/B5MWnRsodTv0piJNcubb8RZs2IA+0Y6s/hLOs/WA6v/eHE9EX01bhM
 eQa6q/v6qgVdsGDM2xAkrk+vlMRNITd5DGpwXHyB3UpxQLlWIAR9Jx3edbh7r0VgGNjL
 rL5RX9hjmV0950cfY+fCgq7uIfUpRUsWps813Lr84pvyjp8e0zzuSPXIv6SNQpVfdagU
 w6DfaWY57bwtLUeO6wdHAWnOSlzp19Keac7l1QjTFXz7gyYAGpUYSDQp9OmzOoqk+UCy
 m99w+UjWiQFgfAOSlGq/hrenVnPj/uVS4zHo5D0w88SjpeLxVeW9iueWTTaCS3Loq2uS
 ookA==
X-Gm-Message-State: ANhLgQ1GrXHGRPr+6TeGSzgbdQJyNllWmEX3Bvi4BqumGLfKf0Cw55HE
 IbQBNLaVehWHZhoWjdKo5waN1A==
X-Google-Smtp-Source: ADFU+vv0sKAwmtjvye94x9YIogv5zw/a9rZvkYsOZEBQWXGc8PUw1JEbwM9HPDBC/WwH/q9h2REFKg==
X-Received: by 2002:a5d:4b82:: with SMTP id b2mr4303504wrt.102.1583330920810; 
 Wed, 04 Mar 2020 06:08:40 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id p17sm36750450wre.89.2020.03.04.06.08.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 06:08:39 -0800 (PST)
Date: Wed, 4 Mar 2020 15:08:33 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: Re: [PATCH v4 23/26] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <20200304140833.GB646000@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-24-jean-philippe@linaro.org>
 <20200227181726.00007c9a@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227181726.00007c9a@Huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_060843_488333_939BC85E 
X-CRM114-Status: GOOD (  26.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, Feb 27, 2020 at 06:17:26PM +0000, Jonathan Cameron wrote:
> On Mon, 24 Feb 2020 19:23:58 +0100
> Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:
> 
> > From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
> > 
> > The SMMU provides a Stall model for handling page faults in platform
> > devices. It is similar to PCI PRI, but doesn't require devices to have
> > their own translation cache. Instead, faulting transactions are parked and
> > the OS is given a chance to fix the page tables and retry the transaction.
> > 
> > Enable stall for devices that support it (opt-in by firmware). When an
> > event corresponds to a translation error, call the IOMMU fault handler. If
> > the fault is recoverable, it will call us back to terminate or continue
> > the stall.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> One question inline.
> 
> Thanks,
> 
> > ---
> >  drivers/iommu/arm-smmu-v3.c | 271 ++++++++++++++++++++++++++++++++++--
> >  drivers/iommu/of_iommu.c    |   5 +-
> >  include/linux/iommu.h       |   2 +
> >  3 files changed, 269 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> > index 6a5987cce03f..da5dda5ba26a 100644
> > --- a/drivers/iommu/arm-smmu-v3.c
> > +++ b/drivers/iommu/arm-smmu-v3.c
> > @@ -374,6 +374,13 @@
> 
> 
> > +/*
> > + * arm_smmu_flush_evtq - wait until all events currently in the queue have been
> > + *                       consumed.
> > + *
> > + * Wait until the evtq thread finished a batch, or until the queue is empty.
> > + * Note that we don't handle overflows on q->batch. If it occurs, just wait for
> > + * the queue to be empty.
> > + */
> > +static int arm_smmu_flush_evtq(void *cookie, struct device *dev, int pasid)
> > +{
> > +	int ret;
> > +	u64 batch;
> > +	struct arm_smmu_device *smmu = cookie;
> > +	struct arm_smmu_queue *q = &smmu->evtq.q;
> > +
> > +	spin_lock(&q->wq.lock);
> > +	if (queue_sync_prod_in(q) == -EOVERFLOW)
> > +		dev_err(smmu->dev, "evtq overflow detected -- requests lost\n");
> > +
> > +	batch = q->batch;
> 
> So this is trying to be sure we have advanced the queue 2 spots?

So we call arm_smmu_flush_evtq() before decommissioning a PASID, to make
sure that there aren't any pending event for this PASID languishing in the
fault queues.

The main test is queue_empty(). If that succeeds then we know that there
aren't any pending event (and the PASID is safe to reuse). But if new
events are constantly added to the queue then we wait for the evtq thread
to handle a full batch, where one batch corresponds to the queue size. For
that we take the batch number when entering flush(), and wait for the evtq
thread to increment it twice.

> Is there a potential race here?  q->batch could have updated before we take
> a local copy.

Yes we're just checking on the progress of the evtq thread. All accesses
to batch are made while holding the wq lock.

Flush is a rare event so the lock isn't contended, but the wake_up() that
this patch introduces in arm_smmu_evtq_thread() does add some overhead
(0.85% of arm_smmu_evtq_thread(), according to perf). It would be nice to
get rid of it but I haven't found anything clever yet.

Thanks,
Jean

> 
> > +	ret = wait_event_interruptible_locked(q->wq, queue_empty(&q->llq) ||
> > +					      q->batch >= batch + 2);
> > +	spin_unlock(&q->wq.lock);
> > +
> > +	return ret;
> > +}
> > +
> ...
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
