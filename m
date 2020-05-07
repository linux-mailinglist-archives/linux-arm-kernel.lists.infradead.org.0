Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AFB1C967B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGr5O1EeB6KMzwhmuVikqv/GdYbOvmUYXWwqUGP4sKg=; b=lvmx/gdV1YB+tO
	OlZ+1IqBGOs3e+YZsLkbPN8PGB2EP8+UNSOS+XKptFZmdo9A2q6vimWXXhnaJIX7VIPLIdmysgURF
	SZO0q6iXhZZm1SWc+XdpHg4TUEHj1pOdhb3HjpbYMoHqA/20u9LOxj1dU0B1YfcziXVRBRF4LP5Li
	6LHUTxCT/yZnlcGgQ50PwzN7+r4Z1ZjCzlfDgmuurTzyKw5aAHp0SBRGp/GdtGJ/H1oEk+ytIv0nq
	MJauGsuLv/vxBwcFxu0RzKXAiXsnAiEjoP7nq1x0ibuRFvnGbIHgW8UElsdu/qwNuOuu9JYXzEavY
	wxqafq0cAQpJq1NkC14g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjNK-0004Pf-JS; Thu, 07 May 2020 16:27:54 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjNC-0003fZ-2l
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 16:27:47 +0000
IronPort-SDR: gCbj2BmxGrIUEVGAxRDrDSG+KBBK6N8c15dKuwtGzdiJ94qLplJjLalebk7dxqqF2bBgi2Vo2Q
 IPuuHftDxJ5Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 09:25:44 -0700
IronPort-SDR: UI2DdPDFZfRj74OALBpuW41w58LXZwgsjf3LGqDj+vALiCsEHXQU/Sa9YbL1TRdZwaxVQulhgj
 S1oqukCmHM3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="278651044"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga002.jf.intel.com with ESMTP; 07 May 2020 09:25:43 -0700
Date: Thu, 7 May 2020 09:31:50 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200507093150.6da9d6fb@jacob-builder>
In-Reply-To: <20200505091531.GA203922@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200430141617.6ad4be4c@jacob-builder>
 <20200504164351.GJ170104@myrica>
 <20200504134723.54e2ebcd@jacob-builder>
 <20200505091531.GA203922@myrica>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092746_132962_11A1FABB 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

On Tue, 5 May 2020 11:15:31 +0200
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> On Mon, May 04, 2020 at 01:47:23PM -0700, Jacob Pan wrote:
> > > > > +	arm_smmu_write_ctx_desc(smmu_domain, mm->pasid,
> > > > > &invalid_cd); +
> > > > > +	arm_smmu_tlb_inv_asid(smmu_domain->smmu,
> > > > > smmu_mn->cd->asid);
> > > > > +	/* TODO: invalidate ATS */
> > > > > +    
> > > > If mm release is called after tlb invalidate range, is it still
> > > > necessary to invalidate again?    
> > > 
> > > No, provided all mappings from the address space are unmapped and
> > > invalidated. I'll double check, but in my tests invalidate range
> > > didn't seem to be called for all mappings on mm exit, so I
> > > believe we do need this.
> > >   
> > I think it is safe to invalidate again. There was a concern that mm
> > release may delete IOMMU driver from the notification list and miss
> > tlb invalidate range. I had a hard time to confirm that with ftrace
> > while killing a process, many lost events.
> >   
> 
> If it helps, I have a test that generates small DMA transactions on a
> SMMU model. This is the trace for a job on a 8kB mmap'd buffer:
> 
>   smmu_bind_alloc: dev=0000:00:03.0 pasid=1
>   dev_fault: IOMMU:0000:00:03.0 type=2 reason=0
> addr=0x0000ffff860e6000 pasid=1 group=74 flags=3 prot=2
> dev_page_response: IOMMU:0000:00:03.0 code=0 pasid=1 group=74
> dev_fault: IOMMU:0000:00:03.0 type=2 reason=0 addr=0x0000ffff860e7000
> pasid=1 group=143 flags=3 prot=2 dev_page_response:
> IOMMU:0000:00:03.0 code=0 pasid=1 group=143 smmu_mm_invalidate:
> pasid=1 start=0xffff860e6000 end=0xffff860e8000 smmu_mm_invalidate:
> pasid=1 start=0xffff860e6000 end=0xffff860e8000 smmu_mm_invalidate:
> pasid=1 start=0xffff860e8000 end=0xffff860ea000 smmu_mm_invalidate:
> pasid=1 start=0xffff860e8000 end=0xffff860ea000 smmu_unbind_free:
> dev=0000:00:03.0 pasid=1
> 
> And this is the same job, but the process immediately kills itself
> after launching it.
> 
>   smmu_bind_alloc: dev=0000:00:03.0 pasid=1
>   dev_fault: IOMMU:0000:00:03.0 type=2 reason=0
> addr=0x0000ffffb9d15000 pasid=1 group=259 flags=3 prot=2
> smmu_mm_release: pasid=1 dev_page_response: IOMMU:0000:00:03.0 code=0
> pasid=1 group=259 dev_fault: IOMMU:0000:00:03.0 type=2 reason=0
> addr=0x0000ffffb9d15000 pasid=1 group=383 flags=3 prot=2
> dev_page_response: IOMMU:0000:00:03.0 code=1 pasid=1 group=383
> smmu_unbind_free: dev=0000:00:03.0 pasid=1
> 
> We don't get any invalidate_range notification in this case.
> 
Thanks for the confirmation. We do need to invalidate here.

> Thanks,
> Jean

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
