Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C09E913ADD7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtLKPNDuowzuoqf4DOD9RQ4lb2vZ9dpmVU9KhVQKfLg=; b=Wpr1pvH5SAreu6
	A1imoF1hDd7Sg7OLCtR6DyOKizbZxefOjZK8V0rAtRoszjxTp7HzggsPFrwQqGUn7lPaxP4uYLmPv
	yhb6lsdmAwVx7CjWbbgmIIn4lCsgciHiboFb9Ma4NDgLqT/0edAEjZreUkGvp0Azfq8hETb5WVHjd
	/nNXcwEysiRvLDAzucxScoikzSJR59tXwrSYE8osHU6j96HWlRfuhc6CKKCaPJnJiqs4sX0WfzkeF
	oP/ksKI29Fq/wxNZyIVGFxQHgLQYbJ/hNM/PmvowVHs0dvQyp9IqG5SRMxLiYxddNcX4Nhwq28mQO
	gD1p2gJcWqoKJ0s9o8ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irOIu-0004Oz-6N; Tue, 14 Jan 2020 15:40:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irOIh-0004Np-OA
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 15:40:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0347B24672;
 Tue, 14 Jan 2020 15:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579016414;
 bh=Scmn4FCA0QfCQbkxnkpuG+cd4jIF88weR9x4vuOXxyY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gFNR/cA6IMsPOxcO2Es5EXCXzP/RoXRHPogu0/vZloph2th4hE/fDSssbR+DDMqFX
 FarFFXlJyEiW6iDxZ/CBxreszI3AyzmBT3DlXxlqs6qtCGkxpyfcRBSswoLsp0yaQq
 TeZJQV80X6NjbqmlAA/eCgQBDxHaMD0xYA+EiYNU=
Date: Tue, 14 Jan 2020 15:40:07 +0000
From: Will Deacon <will@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 00/13] iommu: Add PASID support to Arm SMMUv3
Message-ID: <20200114154007.GC2579@willie-the-truck>
References: <20191219163033.2608177-1-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219163033.2608177-1-jean-philippe@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_074015_829309_DEDC022F 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 eric.auger@redhat.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-acpi@vger.kernel.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 jonathan.cameron@huawei.com, guohanjun@huawei.com, bhelgaas@google.com,
 zhangfei.gao@linaro.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 05:30:20PM +0100, Jean-Philippe Brucker wrote:
> Add support for Substream ID and PASIDs to the SMMUv3 driver. Since v3
> [1], I added review and tested tags where appropriate and applied the
> suggested changes, shown in the diff below. Thanks all!
> 
> I'm testing using the zip accelerator on the Hisilicon KunPeng920 and
> Zhangfei's uacce module [2]. The full SVA support, which I'll send out
> early next year, is available on my branch sva/zip-devel at
> https://jpbrucker.net/git/linux/
> 
> [1] https://lore.kernel.org/linux-iommu/20191209180514.272727-1-jean-philippe@linaro.org/
> [2] https://lore.kernel.org/linux-iommu/1576465697-27946-1-git-send-email-zhangfei.gao@linaro.org/
> 
> Jean-Philippe Brucker (13):
>   iommu/arm-smmu-v3: Drop __GFP_ZERO flag from DMA allocation
>   dt-bindings: document PASID property for IOMMU masters
>   iommu/arm-smmu-v3: Parse PASID devicetree property of platform devices
>   ACPI/IORT: Parse SSID property of named component node
>   iommu/arm-smmu-v3: Prepare arm_smmu_s1_cfg for SSID support
>   iommu/arm-smmu-v3: Add context descriptor tables allocators
>   iommu/arm-smmu-v3: Add support for Substream IDs
>   iommu/arm-smmu-v3: Propagate ssid_bits
>   iommu/arm-smmu-v3: Prepare for handling arm_smmu_write_ctx_desc()
>     failure
>   iommu/arm-smmu-v3: Add second level of context descriptor table
>   iommu/arm-smmu-v3: Improve add_device() error handling
>   PCI/ATS: Add PASID stubs
>   iommu/arm-smmu-v3: Add support for PCI PASID
> 
>  .../devicetree/bindings/iommu/iommu.txt       |   6 +
>  drivers/acpi/arm64/iort.c                     |  18 +
>  drivers/iommu/arm-smmu-v3.c                   | 467 +++++++++++++++---
>  drivers/iommu/of_iommu.c                      |   6 +-
>  include/linux/iommu.h                         |   2 +
>  include/linux/pci-ats.h                       |   3 +
>  6 files changed, 442 insertions(+), 60 deletions(-)

This is close, and I've replied to all of the patches I have comments on.
To summarise:

  1-5	I could queue these now
  6	I can make the small change we discussed
  7	I can make the changes if you agree (but I'd prefer you to change to
  	batch submission since I can't test this)
  8	Good to go once above is solved
  9	Need your opinion
  10	Some refactoring needed (sorry)
  11	Needs Robin's input
  12	Good to go once above is solved
  13	Need clarification on PCIe behaviour from you

In other words, I could probably take the first 8 or 9 patches for 5.6 if
you can resolve those issues asap.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
