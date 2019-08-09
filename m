Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D57880FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 19:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=phQWAmtZ4gdvnSrOOG072J8m0gtgMDP08fWLOuOMaWc=; b=jl6Afb1sCj5ksyZNRMhDVTFnF
	EgoSezdRu1KkPnpvU1mHtoTzeY6Ih/AAvTNNEL2F9ACB8CJ2uwnu+MA7c9cwyiTSRukj/VOKsINky
	paB6F0nUNQpvmwRcrtBZ274QKy3bLae/tBRXFrLLk+/RcJxMfi9zIX9axsuHLCyeN5qb2UXq7Xf7C
	hAHvfICHfhkze5lFEAH1K+BNBKI/aLiP8dOPfgimozy83lkO4w4UrQJsjGF6DbMq5slUokk35OhPT
	NKgnLBk0bLLk/twFTWCp82njTEO3W2GowvfBcsHM8cenq5vN+VD1Lbwxo0ckxU2DTZhmUabWsQMQb
	NsEVsQIow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw8Qn-0006Ot-DS; Fri, 09 Aug 2019 17:11:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw8Q8-0005oY-Qz
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 17:11:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7122415A2;
 Fri,  9 Aug 2019 10:11:16 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F9E03F575;
 Fri,  9 Aug 2019 10:11:13 -0700 (PDT)
Subject: Re: [PATCH 00/15] Arm SMMU refactoring
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org
References: <cover.1565369764.git.robin.murphy@arm.com>
Message-ID: <92ded198-4bee-2440-0f31-da590c9bf0d2@arm.com>
Date: Fri, 9 Aug 2019 18:11:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <cover.1565369764.git.robin.murphy@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_101116_989074_C920BA86 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: gregory.clement@bootlin.com, iommu@lists.linux-foundation.org,
 bjorn.andersson@linaro.org, robdclark@gmail.com, vivek.gautam@codeaurora.org,
 Jordan Crouse <jcrouse@codeaurora.org>, joro@8bytes.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

...and of course I had to forget someone's cc - sorry Jordan! :(

Robin.

On 09/08/2019 18:07, Robin Murphy wrote:
> Hi all,
> 
> This is a big refactoring of arm-smmu in order to help cope with the
> various divergent implementation details currently flying around. So
> far we've been accruing various quirks and errata workarounds within
> the main flow of the driver, but given that it's written to an
> architecture rather than any particular hardware implementation, after
> a point these start to become increasingly invasive and potentially
> conflict with each other.
> 
> These patches clean up the existing quirks handled by the driver to
> lay a foundation on which we can continue to add more in a maintainable
> fashion. The idea is that major vendor customisations can then be kept
> in arm-smmu-<vendor>.c implementation files out of each others' way.
> 
> A branch is available at:
> 
>    git://linux-arm.org/linux-rm  iommu/smmu-impl
> 
> which I'll probably keep tweaking until I'm happy with the names of
> things; I just didn't want to delay this initial posting any lomnger.
> 
> Robin.
> 
> 
> Robin Murphy (15):
>    iommu/arm-smmu: Convert GR0 registers to bitfields
>    iommu/arm-smmu: Convert GR1 registers to bitfields
>    iommu/arm-smmu: Convert context bank registers to bitfields
>    iommu/arm-smmu: Rework cb_base handling
>    iommu/arm-smmu: Split arm_smmu_tlb_inv_range_nosync()
>    iommu/arm-smmu: Get rid of weird "atomic" write
>    iommu/arm-smmu: Abstract GR1 accesses
>    iommu/arm-smmu: Abstract context bank accesses
>    iommu/arm-smmu: Abstract GR0 accesses
>    iommu/arm-smmu: Rename arm-smmu-regs.h
>    iommu/arm-smmu: Add implementation infrastructure
>    iommu/arm-smmu: Move Secure access quirk to implementation
>    iommu/arm-smmu: Add configuration implementation hook
>    iommu/arm-smmu: Add reset implementation hook
>    iommu/arm-smmu: Add context init implementation hook
> 
>   MAINTAINERS                   |   3 +-
>   drivers/iommu/Makefile        |   2 +-
>   drivers/iommu/arm-smmu-impl.c | 165 ++++++++++
>   drivers/iommu/arm-smmu-regs.h | 210 -------------
>   drivers/iommu/arm-smmu.c      | 570 +++++++++++-----------------------
>   drivers/iommu/arm-smmu.h      | 386 +++++++++++++++++++++++
>   drivers/iommu/qcom_iommu.c    |  15 +-
>   7 files changed, 743 insertions(+), 608 deletions(-)
>   create mode 100644 drivers/iommu/arm-smmu-impl.c
>   delete mode 100644 drivers/iommu/arm-smmu-regs.h
>   create mode 100644 drivers/iommu/arm-smmu.h
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
