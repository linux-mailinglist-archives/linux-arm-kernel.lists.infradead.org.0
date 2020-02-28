Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2418C173CDA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:27:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qHAxvleJRycbTk00ajiqkjrlyu9DtZv3AvAXJT+33sQ=; b=rNAh+R6+B/GpI/
	menM88CPovT8+AcpVtxvD4v8EC4NRq5WFP7+aFWA0hSR5yNL/rxHXrfd+xUqvQrXdcacdDjyk1FaA
	Q3zKWp036UlBWiPkqJ3ck+NAbvp+xYG9x9xYO8343xLKd9pQMODv8XZQE10K5ebNz0Lm8HUlx5ouz
	fSOVc9MEuWxYpwXL/i5CI5VkB336xZaexa3CzuEOtWeTEXnF1RLTx3fmQtlslm+b5/P/ERdfylaCN
	WsXPTxVBzDytDDdDwj3H7VHMVxbSmotuWyw68ND1aDaAGC4qxrjOQ5Cfv/HfkvyxQmCt98pko2gLo
	aX2X0l69kZF+SFVSqg2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7iTZ-0001FB-HW; Fri, 28 Feb 2020 16:26:57 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7iTP-0001D6-IM
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:26:49 +0000
Received: from lhreml704-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 0714367CCA21321329BA;
 Fri, 28 Feb 2020 16:26:41 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 lhreml704-cah.china.huawei.com (10.201.108.45) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 28 Feb 2020 16:26:40 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 28 Feb
 2020 16:26:40 +0000
Date: Fri, 28 Feb 2020 16:26:37 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 02/26] iommu/sva: Manage process address spaces
Message-ID: <20200228162637.00007f4c@Huawei.com>
In-Reply-To: <20200228144304.GC2156@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-3-jean-philippe@linaro.org>
 <20200226123506.000076fb@Huawei.com> <20200228144304.GC2156@myrica>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml727-chm.china.huawei.com (10.201.108.78) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_082647_911218_DE6FDE5E 
X-CRM114-Status: GOOD (  28.72  )
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

On Fri, 28 Feb 2020 15:43:04 +0100
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> On Wed, Feb 26, 2020 at 12:35:06PM +0000, Jonathan Cameron wrote:
> > > + * A single Process Address Space ID (PASID) is allocated for each mm. In the
> > > + * example, devices use PASID 1 to read/write into address space X and PASID 2
> > > + * to read/write into address space Y. Calling iommu_sva_get_pasid() on bond 1
> > > + * returns 1, and calling it on bonds 2-4 returns 2.
> > > + *
> > > + * Hardware tables describing this configuration in the IOMMU would typically
> > > + * look like this:
> > > + *
> > > + *                                PASID tables
> > > + *                                 of domain A
> > > + *                              .->+--------+
> > > + *                             / 0 |        |-------> io_pgtable
> > > + *                            /    +--------+
> > > + *            Device tables  /   1 |        |-------> pgd X
> > > + *              +--------+  /      +--------+
> > > + *      00:00.0 |      A |-'     2 |        |--.
> > > + *              +--------+         +--------+   \
> > > + *              :        :       3 |        |    \
> > > + *              +--------+         +--------+     --> pgd Y
> > > + *      00:01.0 |      B |--.                    /
> > > + *              +--------+   \                  |
> > > + *      00:01.1 |      B |----+   PASID tables  |
> > > + *              +--------+     \   of domain B  |
> > > + *                              '->+--------+   |
> > > + *                               0 |        |-- | --> io_pgtable
> > > + *                                 +--------+   |
> > > + *                               1 |        |   |
> > > + *                                 +--------+   |
> > > + *                               2 |        |---'
> > > + *                                 +--------+
> > > + *                               3 |        |
> > > + *                                 +--------+
> > > + *
> > > + * With this model, a single call binds all devices in a given domain to an
> > > + * address space. Other devices in the domain will get the same bond implicitly.
> > > + * However, users must issue one bind() for each device, because IOMMUs may
> > > + * implement SVA differently. Furthermore, mandating one bind() per device
> > > + * allows the driver to perform sanity-checks on device capabilities.  
> >   
> > > + *
> > > + * In some IOMMUs, one entry of the PASID table (typically the first one) can
> > > + * hold non-PASID translations. In this case PASID 0 is reserved and the first
> > > + * entry points to the io_pgtable pointer. In other IOMMUs the io_pgtable
> > > + * pointer is held in the device table and PASID 0 is available to the
> > > + * allocator.  
> > 
> > Is it worth hammering home in here that we can only do this because the PASID space
> > is global (with exception of PASID 0)?  It's a convenient simplification but not
> > necessarily a hardware restriction so perhaps we should remind people somewhere in here?  
> 
> I could add this four paragraphs up:
> 
> "A single Process Address Space ID (PASID) is allocated for each mm. It is
> a choice made for the Linux SVA implementation, not a hardware
> restriction."

Perfect.

> 
> > > + */
> > > +
> > > +struct io_mm {
> > > +	struct list_head		devices;
> > > +	struct mm_struct		*mm;
> > > +	struct mmu_notifier		notifier;
> > > +
> > > +	/* Late initialization */
> > > +	const struct io_mm_ops		*ops;
> > > +	void				*ctx;
> > > +	int				pasid;
> > > +};
> > > +
> > > +#define to_io_mm(mmu_notifier)	container_of(mmu_notifier, struct io_mm, notifier)
> > > +#define to_iommu_bond(handle)	container_of(handle, struct iommu_bond, sva)  
> > 
> > Code ordering wise, do we want this after the definition of iommu_bond?
> > 
> > For both of these it's a bit non obvious what they come 'from'.
> > I wouldn't naturally assume to_io_mm gets me from notifier to the io_mm
> > for example.  Not sure it matters though if these are only used in a few
> > places.  
> 
> Right, I can rename the first one to mn_to_io_mm(). The second one I think
> might be good enough.

Agreed. The second one does feel more natural.

> 
> 
> > > +static struct iommu_sva *
> > > +io_mm_attach(struct device *dev, struct io_mm *io_mm, void *drvdata)
> > > +{
> > > +	int ret = 0;  
> > 
> > I'm fairly sure this is set in all paths below.  Now, of course the
> > compiler might not think that in which case fair enough :)
> >   
> > > +	bool attach_domain = true;
> > > +	struct iommu_bond *bond, *tmp;
> > > +	struct iommu_domain *domain, *other;
> > > +	struct iommu_sva_param *param = dev->iommu_param->sva_param;
> > > +
> > > +	domain = iommu_get_domain_for_dev(dev);
> > > +
> > > +	bond = kzalloc(sizeof(*bond), GFP_KERNEL);
> > > +	if (!bond)
> > > +		return ERR_PTR(-ENOMEM);
> > > +
> > > +	bond->sva.dev	= dev;
> > > +	bond->drvdata	= drvdata;
> > > +	refcount_set(&bond->refs, 1);
> > > +	RCU_INIT_POINTER(bond->io_mm, io_mm);
> > > +
> > > +	mutex_lock(&iommu_sva_lock);
> > > +	/* Is it already bound to the device or domain? */
> > > +	list_for_each_entry(tmp, &io_mm->devices, mm_head) {
> > > +		if (tmp->sva.dev != dev) {
> > > +			other = iommu_get_domain_for_dev(tmp->sva.dev);
> > > +			if (domain == other)
> > > +				attach_domain = false;
> > > +
> > > +			continue;
> > > +		}
> > > +
> > > +		if (WARN_ON(tmp->drvdata != drvdata)) {
> > > +			ret = -EINVAL;
> > > +			goto err_free;
> > > +		}
> > > +
> > > +		/*
> > > +		 * Hold a single io_mm reference per bond. Note that we can't
> > > +		 * return an error after this, otherwise the caller would drop
> > > +		 * an additional reference to the io_mm.
> > > +		 */
> > > +		refcount_inc(&tmp->refs);
> > > +		io_mm_put(io_mm);
> > > +		kfree(bond);  
> > 
> > Free outside the lock would be ever so slightly more logical given we allocated
> > before taking the lock.
> >   
> > > +		mutex_unlock(&iommu_sva_lock);
> > > +		return &tmp->sva;
> > > +	}
> > > +
> > > +	list_add_rcu(&bond->mm_head, &io_mm->devices);
> > > +	param->nr_bonds++;
> > > +	mutex_unlock(&iommu_sva_lock);
> > > +
> > > +	ret = io_mm->ops->attach(bond->sva.dev, io_mm->pasid, io_mm->ctx,
> > > +				 attach_domain);
> > > +	if (ret)
> > > +		goto err_remove;
> > > +
> > > +	return &bond->sva;
> > > +
> > > +err_remove:
> > > +	/*
> > > +	 * At this point concurrent threads may have started to access the
> > > +	 * io_mm->devices list in order to invalidate address ranges, which
> > > +	 * requires to free the bond via kfree_rcu()
> > > +	 */
> > > +	mutex_lock(&iommu_sva_lock);
> > > +	param->nr_bonds--;
> > > +	list_del_rcu(&bond->mm_head);
> > > +
> > > +err_free:
> > > +	mutex_unlock(&iommu_sva_lock);
> > > +	kfree_rcu(bond, rcu_head);  
> > 
> > I don't suppose it matters really but we don't need the rcu free if
> > we follow the err_free goto.  Perhaps we are cleaner in this case
> > to not use a unified exit path but do that case inline?  
> 
> Agreed, though I moved the kzalloc() later as suggested by Jacob, I think
> it looks a little better and simplifies the error paths
> 
> Thanks,
> Jean
Jonathan


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
