Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECA31C3F62
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFChnvlsyq2YkWE186fiqEIRHeOV+FLeXBA4mFnCrD0=; b=ojaEqEAxAmDwXo
	E+oU1AHDcKA9pQBvKqzPYm4NF0KnQ5y5x6YFDnZ0qDoIRNBkUiS2FGGEBGauAX0RZNbd03+XzLJq6
	bLyUhjg57jNegKBJvUci6q1zwzFJwhOPtyRZus1aosyu+JgU1JCeMZT8LazmfffAiWyYtTV8tFuKg
	6ycnsQEAKI5MorD3zFWJisoMtBCOnMVQ+hGmkIalqvxLB9gGHeoqtanuFiSmx/7seE1E7PEolMEer
	Yu+kdrLk9OuPcxRBsw/RXy1Xz/IysgL/yBmDWxgoDdkCXuv5gFMJhA/GSNtCWZYajXb1foglMGUbH
	aYS0pok/SWoQCAYVojlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdcS-0002gz-DU; Mon, 04 May 2020 16:07:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdcK-0002fl-SQ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:06:54 +0000
Received: by mail-wm1-x343.google.com with SMTP id 188so90089wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 09:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bp4AZOmEDFlGnUKxwTpEGrX9Ywb+/ercU9RXG60YpkA=;
 b=Dw8xcNvj2qmOKxxn59CPRrnhgYrQ5x4sBPM8qK0pmcxzWd1aH/YyCVxlXW3TIWT8Fw
 tx++cxMdi9+OTPqOJQ0MUb+cNtf6m3SYTI32z98924olcf+4nnXYi+IsldgCldMoIM07
 4h4F+MxzAqq6y91AHErfmlevgojJiWj+WryxD4tS6DchG+1L3m2rsTys97s7V6H+LEdC
 LCsZJU4jP6ekqf6cSccjS9Se5DU1Jiz5dlTN66yFFKaWMHEZyAdh3cs63tmpeqdXo7uR
 T2cb+IBgx5aIR71N/OxSIdsY99sFfZqoNjBPUH6CNGyQrSLxrlGkp1kmGkSQF8YKLWZh
 DMTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bp4AZOmEDFlGnUKxwTpEGrX9Ywb+/ercU9RXG60YpkA=;
 b=o55TfALKJxaKTdYPzffBJKpNOSpDFrgNY2+gvAvsjHp79mEN/8Y+ZEN8FR+jZ3pMa3
 eKLCO13WIHso+bcs2ca/2T3CmBSlMFeoikDwuNW5bKEhpfIRkqpiOzC6ErwONRVTDlzP
 YYNE+d6N8Jn8zfVz4fcrk0g/Qgu9nh4cMbrD1dPDH3dLPR0CbzbNhLRgdNNilJZpOmTA
 l65OwB9rRTvem8zeETyhS0t94bJZacg1tDjF074OnHiUNLgoxftzUYTXocWRZWJREgty
 yJJhJ31W9xxqcQgu23WppDvZZ+Ur4L2IXliwPqV2FTfWabr5RQeE9Gu4+kVQGzys0bhW
 9UyA==
X-Gm-Message-State: AGi0PuZSHfeHqMAXXRBGC/Aa7U6IVvbkpZKVpiUPPqU/hPvabwXEkLCL
 s5c3E0+bnNgXwDM8YrK4QLP7lA==
X-Google-Smtp-Source: APiQypKPyLr9D3x5aJJfh1E5/6u+cb8JP6Qo0I2a/ao2kDBpvQii1AZTwUzgtbi+yEe+qplCF2lrWg==
X-Received: by 2002:a1c:3182:: with SMTP id x124mr16738870wmx.54.1588608410123; 
 Mon, 04 May 2020 09:06:50 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id b66sm15224708wmh.12.2020.05.04.09.06.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 09:06:48 -0700 (PDT)
Date: Mon, 4 May 2020 18:06:39 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v6 17/25] iommu/arm-smmu-v3: Implement
 iommu_sva_bind/unbind()
Message-ID: <20200504160639.GD170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-18-jean-philippe@linaro.org>
 <20200501121552.GA6012@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501121552.GA6012@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_090653_084749_4EA7C3C4 
X-CRM114-Status: GOOD (  15.93  )
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com, will@kernel.org,
 fenghua.yu@intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 felix.kuehling@amd.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 catalin.marinas@arm.com, zhangfei.gao@linaro.org, robin.murphy@arm.com,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 05:15:52AM -0700, Christoph Hellwig wrote:
> > @@ -432,6 +432,7 @@ config ARM_SMMU_V3
> >  	tristate "ARM Ltd. System MMU Version 3 (SMMUv3) Support"
> >  	depends on ARM64
> >  	select IOMMU_API
> > +	select IOMMU_SVA
> >  	select IOMMU_IO_PGTABLE_LPAE
> >  	select GENERIC_MSI_IRQ_DOMAIN
> 
> Doesn't this need to select MMU_NOTIFIER now?

Yes, will fix

> > +	struct mmu_notifier_ops		mn_ops;
> 
> Note: not a pointer.
> 
> > +	/* If bind() was already called for this (dev, mm) pair, reuse it. */
> > +	list_for_each_entry(bond, &master->bonds, list) {
> > +		if (bond->mm == mm) {
> > +			refcount_inc(&bond->refs);
> > +			return &bond->sva;
> > +		}
> > +	}
> > +
> > +	mn = mmu_notifier_get(&smmu_domain->mn_ops, mm);
> > +	if (IS_ERR(mn))
> > +		return ERR_CAST(mn);
> 
> Which seems to be to avoid mmu_notifier_get reusing notifiers registered
> by other arm_smmu_master instance right?

Yes, although I'm registering a single mmu notifier per (domain, mm) pair,
not (master, mm), because the SMMU driver keeps one set of PASID tables
per IOMMU domain.

> Either you could just use plain old mmu_notifier_register to avoid
> the reuse.  Or we could enhance the mmu_notifier_get to pass a private
> oaque instance ID pointer, which is checked in addition to the ops,
> and you could probably kill off the bonds list and lookup.

Going back to mmu_notifier_register() seems better for now. I don't want
to change the core APIs just for this driver, because it's likely to
change again when more hardware starts appearing and we optimize it.

Thanks,
Jean


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
