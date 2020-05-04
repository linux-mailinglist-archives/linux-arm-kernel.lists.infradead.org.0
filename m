Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C4E1C487E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 22:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJB60gqt22wNGjX5ll8QXLHltL+3Q5QkHsKjQtMaVns=; b=VJzuLJcJaUYHYK
	YBiCqsLXW/GrC5tm/u6LzfVwDAcv5dPjV86l1JIjNHvVRAriPFITXbhiXHIyScOTDpJapH+urOr/p
	oX9abfDrd0+WxWw0e1UO4rikSZvoZCJZfOT0vNEGjmxuLBYI+A95ZUWnGRH8BHkFHAxnuDpdm4BzS
	ky1I/5UBHIVmEFNlFhdBP+3IGig55raf6nB36JsC8X2joI6+GnNx+n79ibTtE1LeM0Fq3v1TaC500
	A46sWV+lHovdSFs9Dh1VyqMVteoNFc1LFfwqN+MsY2IEWdZtSNuVduWnRQzk6AGq5EtzzDMzlYvVl
	hbNCaYkfvHBZWlhTt5sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVhu8-0002RQ-UX; Mon, 04 May 2020 20:41:32 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVhtv-0002QD-GR
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 20:41:26 +0000
IronPort-SDR: hsHft0v+s59+tkYbJ3hTzOBvddLOkflOGcbBXwEPTCrtVCu4V8AyK1yNXtfaSPbcqupBCb/SFP
 vTFOmJ0qZOtg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 13:41:19 -0700
IronPort-SDR: b4DyWmhiDhy4qxtR8Pb8m1iBlCjvqLUinJbs4j14tT12w8H1CCchpLkLEJWAuUWDjBBLTawzxM
 Tb80S8PufxpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,353,1583222400"; d="scan'208";a="338437724"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga001.jf.intel.com with ESMTP; 04 May 2020 13:41:18 -0700
Date: Mon, 4 May 2020 13:47:23 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200504134723.54e2ebcd@jacob-builder>
In-Reply-To: <20200504164351.GJ170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200430141617.6ad4be4c@jacob-builder>
 <20200504164351.GJ170104@myrica>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_134124_635183_A3CB1726 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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

On Mon, 4 May 2020 18:43:51 +0200
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> On Thu, Apr 30, 2020 at 02:16:17PM -0700, Jacob Pan wrote:
> > > +static void arm_smmu_mm_invalidate_range(struct mmu_notifier *mn,
> > > +					 struct mm_struct *mm,
> > > +					 unsigned long start,
> > > unsigned long end) +{
> > > +	/* TODO: invalidate ATS */
> > > +}
> > > +
> > > +static void arm_smmu_mm_release(struct mmu_notifier *mn, struct
> > > mm_struct *mm) +{
> > > +	struct arm_smmu_mmu_notifier *smmu_mn = mn_to_smmu(mn);
> > > +	struct arm_smmu_domain *smmu_domain;
> > > +
> > > +	mutex_lock(&arm_smmu_sva_lock);
> > > +	if (smmu_mn->cleared) {
> > > +		mutex_unlock(&arm_smmu_sva_lock);
> > > +		return;
> > > +	}
> > > +
> > > +	smmu_domain = smmu_mn->domain;
> > > +
> > > +	/*
> > > +	 * DMA may still be running. Keep the cd valid but
> > > disable
> > > +	 * translation, so that new events will still result in
> > > stall.
> > > +	 */  
> > Does "disable translation" also disable translated requests?  
> 
> No it doesn't disable translated requests, it only prevents the SMMU
> from accessing the pgd.
> 
OK. same as VT-d.

> > I guess
> > release is called after tlb invalidate range, so assuming no more
> > devTLB left to generate translated request?  
> 
> I'm counting on the invalidate below (here a TODO, implemented in next
> patch) to drop all devTLB entries. After that invalidate, the device:
> * issues a Translation Request, returns with R=W=0 because we disabled
>   translation (and it isn't present in the SMMU TLB).
> * issues a Page Request, returns with InvalidRequest because
>   mmget_not_zero() fails.
> 
Same flow. Thanks for the explanation.

> >   
> > > +	arm_smmu_write_ctx_desc(smmu_domain, mm->pasid,
> > > &invalid_cd); +
> > > +	arm_smmu_tlb_inv_asid(smmu_domain->smmu,
> > > smmu_mn->cd->asid);
> > > +	/* TODO: invalidate ATS */
> > > +  
> > If mm release is called after tlb invalidate range, is it still
> > necessary to invalidate again?  
> 
> No, provided all mappings from the address space are unmapped and
> invalidated. I'll double check, but in my tests invalidate range
> didn't seem to be called for all mappings on mm exit, so I believe we
> do need this.
> 
I think it is safe to invalidate again. There was a concern that mm
release may delete IOMMU driver from the notification list and miss tlb
invalidate range. I had a hard time to confirm that with ftrace while
killing a process, many lost events.


> Thanks,
> Jean
> 

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
