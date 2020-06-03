Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6ADF1ECAB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 09:39:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUKFh3R7RaMN2mYKqZL+67CDXldu/baOs3ccFc+hh38=; b=U11DDMXpBoqtXa
	+yPiUFXWVMDkqTmBb6XUW2II2s50AC/xDmTTgJ0RdD7QhtpdO7eSbxPxvlSCGBPrVP+/PxlRs7z9T
	FIvQnLseEFeHY+hly/8h1d9hWLSwm5ZZ0sf/e13UIxB9EPLdk1wlvtMIqEazGIATHPJE4lAc41Qi/
	TlBvN0YyRAo4R2CXVqtQKKUPDq0EiEjea0CCVk9SwzbJmROCcnUM6IS9GNpoA6q8RZ+Oj5IX2ethC
	FvvwEIGXX3RC3YxLbXs05p/1dnTzGdMt6iCLKnRNrUQWyV+VDmyC+GCFMcCe8V3yTq434Y43UdeAS
	WfWuHTNzqbOtdiuw9pwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgNzW-0001yq-A8; Wed, 03 Jun 2020 07:39:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNzM-0001xg-AG
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 07:39:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id u26so3880431wmn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 00:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=hLQ9Ov0eKr85gKa7olFwe6f0SlVLYGl5nrVG5b+LzPg=;
 b=BaA7HqoJAJJh2tIRtyNtCnJJ+ARabjO7t5qWHkwfey6v8O/bYqibUoJb7g2lNYfNoZ
 ifRC05Pi1fFsLS0xec3/ZwWH5HsiqKmSLEV1fLmRpATey18HMYDmWin9n3Lkz4IawUOQ
 xlEYpZp5UmMhs18ikzeusxNZVkL8Zx3ToEbKvsz7PW6G3ARdQwBq0YY+pC+k6oMkgPG9
 WS33Jb4rH9VdYT1yaXMb7+k5Kf1kqlPXl8+BOa8wlHnCW3navM5sN6dA2DpyHeZobAy9
 jaGeJhzWEgaTqAFNlLtfzmz/6tmkY5sIGP7K7i1KqYqmIFqvLzdVzqj+ASM+V0Ps5U09
 v7mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hLQ9Ov0eKr85gKa7olFwe6f0SlVLYGl5nrVG5b+LzPg=;
 b=rhvZ+SI3rdVL1QcLL3YSJGwuLs0EuwABDmDs9/GwXhDKWyI1lag33VTSFGzWd+t8un
 2KyxrOoAIa1jwQI5H6U4WHbXpEmRx9HMwF0hbf4P8cdnLBlv/34pace30X8RWZRF4++Z
 8qP3T0v8/2snZe2OyoZ0tYFDw3B0+goB6UEGMLSG/t89tocY6yqQeOSYEImUYGaTFT06
 /ygYqhBi9WvdBFTxIROOzunQl7KqErXTL6rJ9pt6+ADYhJlEWuvl3oLO995OtqfgtGns
 Fj5oL+KyGsZGCqlLKMewuFSp9JUFltbVt8D8WCo3FW4qzF8UF4lknWeTjdZJtceDITMp
 tJFg==
X-Gm-Message-State: AOAM53121Vyyqb+GBkWgsTB2nSMWv6SLdatU8x2yzPN0rJgzXyUkE8/t
 o0BbfsmhfdunHNtO78Cszkb/tinhq00=
X-Google-Smtp-Source: ABdhPJx2CVWTxoCwkjfPm8H6OgQs2Q+1IKumvn68jhcLFzJkSHw/NXJvs00yy3+6Xok2VEhmklRBbQ==
X-Received: by 2002:a1c:5a0b:: with SMTP id o11mr7245089wmb.74.1591169941832; 
 Wed, 03 Jun 2020 00:39:01 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id t129sm1796108wmf.41.2020.06.03.00.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2020 00:39:01 -0700 (PDT)
Date: Wed, 3 Jun 2020 09:38:51 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
Subject: Re: [PATCH v7 21/24] iommu/arm-smmu-v3: Add stall support for
 platform devices
Message-ID: <20200603073851.GA3198@myrica>
References: <20200519175502.2504091-1-jean-philippe@linaro.org>
 <20200519175502.2504091-22-jean-philippe@linaro.org>
 <4741b6c45d1a43b69041ecb5ce0be0d5@huawei.com>
 <20200602093836.GA1029680@myrica>
 <1517c4d97b5849e6b6d32e7d7ed35289@huawei.com>
 <20200602114611.GB1029680@myrica>
 <c165fe41230f49baba991f1a416a4739@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c165fe41230f49baba991f1a416a4739@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_003904_393537_D36E794E 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kevin.tian@intel.com" <kevin.tian@intel.com>,
 "will@kernel.org" <will@kernel.org>,
 "fenghua.yu@intel.com" <fenghua.yu@intel.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "felix.kuehling@amd.com" <felix.kuehling@amd.com>,
 "hch@infradead.org" <hch@infradead.org>, "jgg@ziepe.ca" <jgg@ziepe.ca>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "zhangfei.gao@linaro.org" <zhangfei.gao@linaro.org>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "christian.koenig@amd.com" <christian.koenig@amd.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 12:12:30PM +0000, Shameerali Kolothum Thodi wrote:
> > > > > > +		if (ssid_valid)
> > > > > > +			flt->prm.flags |=
> > > > IOMMU_FAULT_PAGE_REQUEST_PASID_VALID;
> > > > >
> > > > > Do we need to set this for STALL mode only support? I had an issue
> > > > > with this being set on a vSVA POC based on our D06 zip
> > > > > device(which is a "fake " pci dev that supports STALL mode but no
> > > > > PRI). The issue is, CMDQ_OP_RESUME doesn't have any ssid or SSV
> > > > > params and works on sid
> > > > and stag only.
> > > >
> > > > I don't understand the problem, arm_smmu_page_response() doesn't set
> > > > SSID or SSV when sending a CMDQ_OP_RESUME. Could you detail the flow
> > > > of a stall event and RESUME command in your prototype?  Are you
> > > > getting issues with the host driver or the guest driver?
> > >
> > > The issue is on the host side iommu_page_response(). The flow is
> > > something like below.
> > >
> > > Stall: Host:-
> > >
> > > arm_smmu_handle_evt()
> > >   iommu_report_device_fault()
> > >     vfio_pci_iommu_dev_fault_handler()
> > >
> > > Stall: Qemu:-
> > >
> > > vfio_dma_fault_notifier_handler()
> > >   inject_faults()
> > >     smmuv3_inject_faults()
> > >
> > > Stall: Guest:-
> > >
> > > arm_smmu_handle_evt()
> > >   iommu_report_device_fault()
> > >     iommu_queue_iopf
> > >   ...
> > >   iopf_handle_group()
> > >     iopf_handle_single()
> > >       handle_mm_fault()
> > >         iopf_complete()
> > >            iommu_page_response()
> > >              arm_smmu_page_response()
> > >                arm_smmu_cmdq_issue_cmd(CMDQ_OP_RESUME)
> > >
> > > Resume: Qemu:-
> > >
> > > smmuv3_cmdq_consume(SMMU_CMD_RESUME)
> > >   smmuv3_notify_page_resp()
> > >     vfio:ioctl(page_response)  --> struct iommu_page_response is filled
> > >                              with only version, grpid and code.
> > >
> > > Resume: Host:-
> > >   ioctl(page_response)
> > >     iommu_page_response()  --> fails as the pending req has PASID_VALID
> > flag
> > >                              set and it checks for a match.
> > 
> > I believe the fix needs to be here. It's also wrong for PRI since not all PCIe
> > endpoint require a PASID in the page response. Could you try the attached
> > patch?
> 
> Going through the patch, yes, that will definitely fix the issue. But isn't it better if
> the request itself indicate whether it expects a response msg with a valid pasid or
> not? The response msg can come from userspace as well(vSVA) and if for some reason
> doesn't set it for a req that expects pasid then it should be an error, right? In the temp
> fix I had, I introduced another flag to indicate the endpoint has PRI support or not and
> used that to verify the pasid requirement. But for the PRI case you mentioned 
> above, not sure it is easy to get that information or not. May be I am complicating things
> here :)

No you're right, we shouldn't send back malformed responses to the SMMU. I
suppose we can store a flag "PASID required" in the fault and check that
against the response. If we have to discard the guest's response, then we
can either fake a response (abort the stall) right away, or wait for the
response timeout to kick, which will do the same.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
