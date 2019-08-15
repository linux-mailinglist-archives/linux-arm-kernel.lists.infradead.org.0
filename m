Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48DC8EF12
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 17:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xchwvhChpJvCWizRzIW0H00ZL/V+TaPWsSTdCKktzj8=; b=mWB/ESsFMWRMqd
	c+40JV+VG3KUJpxJ8WOjTBHvXk+hM26VMAOkRHzVBCZRpKo9dktReBLxLEOMvfA2Al/pDYiD5Vm7j
	lhz/m5BwBFLcuHV/s8Ew37yg6IN873wmrFo6x4ANcLLjL2mDFkQspbccgSmf0DLg/FMXAI6vJrKlA
	sldmI6nQ4lMYqs8u2Z0vk8OVrZjOvp77ENoEZAnAn0Erq0AuX6gF6F21aIbMMx3gZMkm+XAGy+gVP
	cF3UIlAQS8xGQomTWeuLDmhajR7x6odQLMQrzc5CR0B6tjql3++uaqgx58vOAfx9JgS7VOBZglrAO
	g2YUs8BLDBRbLQ0WrMbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyHNg-0007EO-Qw; Thu, 15 Aug 2019 15:09:36 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyHNS-0007E5-VI
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 15:09:28 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id D0780606DB; Thu, 15 Aug 2019 15:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565881761;
 bh=ulEp37vZIYb7RpfEODC0xQ2HnFf2Z9Y8oXYkAhW1NbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZzGhp8SQk1FSPn1+qrhXy2jlZhkPskEinRH22IOJHOR0ljub0INk1RoL3CjltKP3M
 yHQRrPdVRPLzjJK76uj91ZIjyQscNBp/kJLTNkPF8VbyQiuyQ6Xwku6CleB2PVT/3G
 WZqZBdfBFqjg2/3/t/Ok0IDEPcL11yJOxoL/v06c=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from jcrouse1-lnx.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: jcrouse@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 4CBB1602DB;
 Thu, 15 Aug 2019 15:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565881760;
 bh=ulEp37vZIYb7RpfEODC0xQ2HnFf2Z9Y8oXYkAhW1NbI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RCQe7DiN1Y9rY8ondccIXXB3zf7TeggJkaZqwIih0ygAcv5EdA5kPpJr0G3aTQbhM
 kfrw7dX6wsw5nLWT8geCdgd/3QJtRFtNTyAyqF7px9ajRmhp/yVyMbFj8P7xW5O7LE
 1RnfHPpGbMCu6/d96rgEPf0THaTPz4lGL5y8YSJM=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4CBB1602DB
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=jcrouse@codeaurora.org
Date: Thu, 15 Aug 2019 09:09:18 -0600
From: Jordan Crouse <jcrouse@codeaurora.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 15/15] iommu/arm-smmu: Add context init implementation hook
Message-ID: <20190815150918.GC28465@jcrouse1-lnx.qualcomm.com>
Mail-Followup-To: Robin Murphy <robin.murphy@arm.com>,
 Will Deacon <will@kernel.org>, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, gregory.clement@bootlin.com,
 linux-arm-kernel@lists.infradead.org
References: <cover.1565369764.git.robin.murphy@arm.com>
 <6adbec8e4757f3b6c9f47135544a0302f8e7c55c.1565369764.git.robin.murphy@arm.com>
 <20190815105621.vt2gsuppjqgesrho@willie-the-truck>
 <7acdf5fb-3516-efbb-7c8c-7f84c02faad7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7acdf5fb-3516-efbb-7c8c-7f84c02faad7@arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_080923_056641_AD2D59A9 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: iommu@lists.linux-foundation.org, Will Deacon <will@kernel.org>,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org,
 bjorn.andersson@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 01:09:07PM +0100, Robin Murphy wrote:
> On 15/08/2019 11:56, Will Deacon wrote:
> >On Fri, Aug 09, 2019 at 06:07:52PM +0100, Robin Murphy wrote:
> >>Allocating and initialising a context for a domain is another point
> >>where certain implementations are known to want special behaviour.
> >>Currently the other half of the Cavium workaround comes into play here,
> >>so let's finish the job to get the whole thing right out of the way.
> >>
> >>Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> >>---
> >>  drivers/iommu/arm-smmu-impl.c | 39 +++++++++++++++++++++++++--
> >>  drivers/iommu/arm-smmu.c      | 51 +++++++----------------------------
> >>  drivers/iommu/arm-smmu.h      | 42 +++++++++++++++++++++++++++--
> >>  3 files changed, 86 insertions(+), 46 deletions(-)
> >>
> >>diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> >>index c8904da08354..7a657d47b6ec 100644
> >>--- a/drivers/iommu/arm-smmu-impl.c
> >>+++ b/drivers/iommu/arm-smmu-impl.c
> >>@@ -48,6 +48,12 @@ const struct arm_smmu_impl calxeda_impl = {
> >>  };
> >>+struct cavium_smmu {
> >>+	struct arm_smmu_device smmu;
> >>+	u32 id_base;
> >>+};
> >>+#define to_csmmu(s)	container_of(s, struct cavium_smmu, smmu)
> >
> >To be honest with you, I'd just use container_of directly for the two
> >callsites that need it. "to_csmmu" isn't a great name when we're also got
> >the calxeda thing in here.
> 
> Sure, by this point I was mostly just going for completeness in terms of
> sketching out an example for subclassing arm_smmu_device. The Tegra patches
> will now serve as a more complete example anyway, so indeed we can live
> without it here.
> 
> >>  static int cavium_cfg_probe(struct arm_smmu_device *smmu)
> >>  {
> >>  	static atomic_t context_count = ATOMIC_INIT(0);
> >>@@ -56,17 +62,46 @@ static int cavium_cfg_probe(struct arm_smmu_device *smmu)
> >>  	 * Ensure ASID and VMID allocation is unique across all SMMUs in
> >>  	 * the system.
> >>  	 */
> >>-	smmu->cavium_id_base = atomic_fetch_add(smmu->num_context_banks,
> >>+	to_csmmu(smmu)->id_base = atomic_fetch_add(smmu->num_context_banks,
> >>  						   &context_count);
> >>  	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
> >>  	return 0;
> >>  }
> >>+int cavium_init_context(struct arm_smmu_domain *smmu_domain)
> >>+{
> >>+	u32 id_base = to_csmmu(smmu_domain->smmu)->id_base;
> >>+
> >>+	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
> >>+		smmu_domain->cfg.vmid += id_base;
> >>+	else
> >>+		smmu_domain->cfg.asid += id_base;
> >>+
> >>+	return 0;
> >>+}
> >>+
> >>  const struct arm_smmu_impl cavium_impl = {
> >>  	.cfg_probe = cavium_cfg_probe,
> >>+	.init_context = cavium_init_context,
> >>  };
> >>+struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
> >>+{
> >>+	struct cavium_smmu *csmmu;
> >>+
> >>+	csmmu = devm_kzalloc(smmu->dev, sizeof(*csmmu), GFP_KERNEL);
> >>+	if (!csmmu)
> >>+		return ERR_PTR(-ENOMEM);
> >>+
> >>+	csmmu->smmu = *smmu;
> >>+	csmmu->smmu.impl = &cavium_impl;
> >>+
> >>+	devm_kfree(smmu->dev, smmu);
> >>+
> >>+	return &csmmu->smmu;
> >>+}
> >>+
> >>  #define ARM_MMU500_ACTLR_CPRE		(1 << 1)
> >>@@ -121,7 +156,7 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
> >>  		smmu->impl = &calxeda_impl;
> >>  	if (smmu->model == CAVIUM_SMMUV2)
> >>-		smmu->impl = &cavium_impl;
> >>+		return cavium_smmu_impl_init(smmu);
> >>  	if (smmu->model == ARM_MMU500)
> >>  		smmu->impl = &arm_mmu500_impl;
> >
> >Maybe rework this so we do the calxeda detection first (and return if we
> >match), followed by a switch on smmu->model to make it crystal clear that
> >we match only one?
> 
> As I see it, "match only one" is really only a short-term thing, though, so
> I didn't want to get *too* hung up on it. Ultimately we're going to have
> cases where we need to combine e.g. MMU-500 implementation quirks with
> platform integration quirks - I've been mostly planning on coming back to
> think about that (and potentially rework this whole logic) later, but I
> guess it wouldn't hurt to plan out a bit more structure from the start.

I was going to ask something similar. I'm guessing that the intent is that
we'll eventually we'll have a couple of arm-smmu-<vendor>.c files
and we'll need some sort of centralized place to set up the smmu->impl pointer.
I had figured that it would be table based or something, but you make a good
point about mixing and matching different workarounds. I don't really have 
a solution, just something I'm pondering while I'm thinking about how to start
merging some of the qcom stuff into this.

Jordan 

-- 
The Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
