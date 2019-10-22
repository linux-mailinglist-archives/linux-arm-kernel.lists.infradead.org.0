Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C82D3E0B00
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 19:52:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=auxKzKdPFcrRywyGeJPtrj469UVp5SDfoK/aG8OmJHg=; b=LNNc4SMLaVkHlmFl4RJEbKKPH
	bY1wkIyY0tCB+xxBOgdfSPfuAx73lFrDJtMlWjwPlJvl+Tx3tSDqxkw/Sn0et2IY+epURFM8sDxuN
	hjsf3ahrzTk2SvnUXkeFK31/zBLdn0BwLNK8uBl+TsptxlGaL97RK8sK5IILazvcFN/28y+46Qvia
	KH/JhN835q/NxlxnJGyIJsoAGKcU2XEXqK0QadZUiEp5EHJ/iGNObjn4znw1RY4KMxW3TO5SllXbh
	jej5qNcwcShC2DLCLyEcHlqT/6YplxZ9a+KQlV4KAox/yIMEFHm0bp2+NRQDs1Lo+YtZiP1XbEKok
	IFMyyNKlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMyKi-0004Jd-Mg; Tue, 22 Oct 2019 17:52:36 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMyKY-0004Hr-2I
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 17:52:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A342431F;
 Tue, 22 Oct 2019 10:52:14 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 81FE23F718;
 Tue, 22 Oct 2019 10:52:12 -0700 (PDT)
Subject: Re: [PATCH v3 0/7] Nvidia Arm SMMUv2 Implementation
To: Krishna Reddy <vdumpa@nvidia.com>, will@kernel.org
References: <1571441492-21919-1-git-send-email-vdumpa@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6d9e6425-fa69-9b76-b477-1fe50c459ca5@arm.com>
Date: Tue, 22 Oct 2019 18:52:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1571441492-21919-1-git-send-email-vdumpa@nvidia.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_105226_153330_01508D12 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: snikam@nvidia.com, thomasz@nvidia.com, jtukkinen@nvidia.com,
 mperttunen@nvidia.com, joro@8bytes.org, linux-kernel@vger.kernel.org,
 praithatha@nvidia.com, talho@nvidia.com, olof@lixom.net,
 iommu@lists.linux-foundation.org, nicolinc@nvidia.com,
 linux-tegra@vger.kernel.org, yhsu@nvidia.com, treding@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krishna,

On 19/10/2019 00:31, Krishna Reddy wrote:
> Changes in v3:
> Rebased on top of https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git/ next.
> Resolved compile error seen with tegra194.dtsi changes after rebase.

Apologies for crossed wires, but I had a series getting rid of 
arm_smmu_flush_ops which was also meant to end up making things a bit 
easier for you:

https://lore.kernel.org/linux-iommu/cover.1568820087.git.robin.murphy@arm.com/

Will, did you have any plans to push out an updates or iommu/devel 
branch for Krishna to base on?

Robin.

> 
> v2 - https://lkml.org/lkml/2019/9/2/980
> v1 - https://lkml.org/lkml/2019/8/29/1588
> 
> Krishna Reddy (7):
>    iommu/arm-smmu: prepare arm_smmu_flush_ops for override
>    iommu/arm-smmu: add NVIDIA implementation for dual ARM MMU-500 usage
>    dt-bindings: arm-smmu: Add binding for Tegra194 SMMU
>    iommu/arm-smmu: Add global/context fault implementation hooks
>    arm64: tegra: Add Memory controller DT node on T194
>    arm64: tegra: Add DT node for T194 SMMU
>    arm64: tegra: enable SMMU for SDHCI and EQOS on T194
> 
>   .../devicetree/bindings/iommu/arm,smmu.txt         |   4 +
>   MAINTAINERS                                        |   2 +
>   arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi     |   4 +
>   arch/arm64/boot/dts/nvidia/tegra194.dtsi           |  88 +++++++
>   drivers/iommu/Makefile                             |   2 +-
>   drivers/iommu/arm-smmu-impl.c                      |   3 +
>   drivers/iommu/arm-smmu-nvidia.c                    | 287 +++++++++++++++++++++
>   drivers/iommu/arm-smmu.c                           |  27 +-
>   drivers/iommu/arm-smmu.h                           |   8 +-
>   9 files changed, 413 insertions(+), 12 deletions(-)
>   create mode 100644 drivers/iommu/arm-smmu-nvidia.c
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
