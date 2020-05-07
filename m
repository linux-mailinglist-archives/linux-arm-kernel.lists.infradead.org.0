Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06D01C86BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1yb7Ah1OPIFgBh/LXcC5zCoXWbaAuXNQKn4yvqhwfo=; b=R7DuVnpex5Ga+x
	PYTyxYHmaON7rbmpUQ2tRRQRiRKYRsjaAwEzYAvrIVRjWdDL0joY9azJsPOUzzt9mIaZx+rxKR70T
	TLs6nPpon8j9tOqtyNmLFpBiAmkwUBm6PVXOhzt3qb0Nn+m+hcAH3OvbuV6PI5DXDaeJhicwX4TeV
	4Ch57bohqWjj6CFOlNvVQk1GstreJZUY7dCIU7GZ0WEITQ1uRUhBDAA9MAWap1Yi62BPdFABzuWhG
	LChRkYdMev5pPfZgVYbDkaEAUE9M+2avWhXFPUlvEjNeMDGcxEbU/BODnOBNnJRWFazwM7oy7yxko
	1ANgNIQFuME1T/9BZyZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdoj-0007jb-9P; Thu, 07 May 2020 10:31:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdoW-0007iB-6K
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:31:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3EE15207DD;
 Thu,  7 May 2020 10:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588847495;
 bh=RTSm4kdRgeWc+RyZlG1E78GC90cFNav4NdQnUzi52rQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zrL54q9y/iG40sCchowlpbj1cSUFUrH4BmLWyfzvLXO5aO9nI4q/SkI51IEcOqNP3
 REymdcG4+Skc3w+VdctU0Dns+1uaZrLY+de4e0oZemLRLd6awdttfqf2n8kml7QTan
 ELNMyjNlcCI1CWldZ/TGq3q7px8vHbuEk/VTjnJA=
Date: Thu, 7 May 2020 11:31:29 +0100
From: Will Deacon <will@kernel.org>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: [PATCHv4 0/6] iommu/arm-smmu: Allow client devices to select
 identity mapping
Message-ID: <20200507103129.GA29541@willie-the-truck>
References: <cover.1587407458.git.saiprakash.ranjan@codeaurora.org>
 <aa54fd00a6d353c72664e41b7a4a4e3d@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa54fd00a6d353c72664e41b7a4a4e3d@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_033136_256203_72521316 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jroedel@suse.de, linux-kernel@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Jordan Crouse <jcrouse@codeaurora.org>,
 iommu@lists.linux-foundation.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Clark <robdclark@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Evan Green <evgreen@chromium.org>, Sibi Sankar <sibis@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-msm-owner@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 03:58:06PM +0530, Sai Prakash Ranjan wrote:
> Hi Will, Joerg
> 
> On 2020-04-21 00:03, Sai Prakash Ranjan wrote:
> > This series allows DRM, Modem devices to set a default
> > identity mapping in qcom smmu implementation.
> > 
> > Patch 1 is cleanup to support other SoCs to call into
> > QCOM specific  implementation.
> > Patch 2 sets the default identity domain for DRM devices.
> > Patch 3 implements def_domain_type callback for arm-smmu.
> > Patch 4 sets the default identity domain for modem device.
> > Patch 5-6 adds the iommus property for mss pil.
> > 
> > This is based on Joerg's tree:
> >  -
> > https://git.kernel.org/pub/scm/linux/kernel/git/joro/linux.git/log/?h=iommu-probe-device-v2
> > 
> > v4:
> >  * Updated commit msg for mss pil requesting direct mapping
> > 
> > v3:
> >  * Use arm_smmu_master_cfg to get impl instead of long way as per Robin.
> >  * Use def_domain_type name for the callback in arm_smmu_imp as per
> > Robin
> > 
> > Jordan Crouse (1):
> >   iommu/arm-smmu: Allow client devices to select direct mapping
> > 
> > Sai Prakash Ranjan (2):
> >   iommu: arm-smmu-impl: Convert to a generic reset implementation
> >   iommu/arm-smmu: Implement iommu_ops->def_domain_type call-back
> > 
> > Sibi Sankar (3):
> >   iommu/arm-smmu-qcom: Request direct mapping for modem device
> >   dt-bindings: remoteproc: qcom: Add iommus property
> >   arm64: dts: qcom: sdm845-cheza: Add iommus property
> > 
> >  .../bindings/remoteproc/qcom,q6v5.txt         |  3 ++
> >  arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi    |  5 +++
> >  drivers/iommu/arm-smmu-impl.c                 |  8 ++--
> >  drivers/iommu/arm-smmu-qcom.c                 | 37 +++++++++++++++++--
> >  drivers/iommu/arm-smmu.c                      | 12 ++++++
> >  drivers/iommu/arm-smmu.h                      |  1 +
> >  6 files changed, 60 insertions(+), 6 deletions(-)
> 
> This series is reviewed by Robin.
> Any chance this series can make it to 5.8?

I'm planning to queue smmu stuff next week, been busy with arm64 stuff
so far, sorry.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
