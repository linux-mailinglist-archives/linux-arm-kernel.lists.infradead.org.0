Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F314D3DBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARzGIpgbsYgUBarKSLHLW1d83W54/RHcNs4Sq5X8jWw=; b=rvjAApEt5/yxks
	5Fzi7MNW66bnX9iVxokS62qa8U28yXoN94UiQgRPk/REJSYsU/6rgKIau91BH8ZTecP/XjvYIsaSS
	ULw3LHpNZIOznLxlWP4m2gmXuzgWpd3sBAoi78Ic+yfXdb3ocJiKxxWwVFSlJ5NnRmaOtMwrvo5vO
	feHcckhwnKWCjEyRCLMqnhW02EdF01dyA9EKB7vu1yySvhm6ogMRFFAeNtv0vhRyhK5iHMR3l1yAi
	MsuXPJTEYmb+SKrcXgC9kOquKRjwaNh+qd+ozdFie3F4ja6h7qL3nwIi8C5Bi2HDZRAzpTlPRl55V
	euWqNlVnbEJK1RYnFtcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsVU-0001zU-8t; Fri, 11 Oct 2019 10:50:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsVL-0001yz-IC
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:50:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E3FF28;
 Fri, 11 Oct 2019 03:50:38 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 039E23F703;
 Fri, 11 Oct 2019 03:50:36 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:50:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
Subject: Re: Relax CPU features sanity checking on heterogeneous architectures
Message-ID: <20191011105010.GA29364@lakrids.cambridge.arm.com>
References: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3606e76af42f7ecf65b1bfc2a5ed30a@codeaurora.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_035039_687201_4534D8D7 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: rnayak@codeaurora.org, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 andrew.murray@arm.com, will@kernel.org, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Oct 11, 2019 at 11:19:00AM +0530, Sai Prakash Ranjan wrote:
> On latest QCOM SoCs like SM8150 and SC7180 with big.LITTLE arch, below
> warnings are observed during bootup of big cpu cores.

For reference, which CPUs are in those SoCs?

> SM8150:
> 
> [    0.271177] CPU features: SANITY CHECK: Unexpected variation in
> SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU4: 0x00000011111112

The differing fields are EL3, EL2, and EL1: the boot CPU supports
AArch64 and AArch32 at those exception levels, while the secondary only
supports AArch64.

Do we handle this variation in KVM?

> [    0.271184] CPU features: SANITY CHECK: Unexpected variation in
> SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU4: 0x00000000010142

The differing field is (AArch32) SMC: present on the boot CPU, but
missing on the secondary CPU.

This is mandated to be zero when AArch32 isn' implemented at EL1.

> [    0.271189] CPU features: SANITY CHECK: Unexpected variation in
> SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU4: 0x00000010010000

The differing fields are (AArch32) Virtualization, Security, and
ProgMod: all present on the boot CPU, but missing on the secondary
CPU.

All mandated to be zero when AArch32 isn' implemented at EL1.

> SC7180:
> 
> [    0.812770] CPU features: SANITY CHECK: Unexpected variation in
> SYS_CTR_EL0. Boot CPU: 0x00000084448004, CPU6: 0x0000009444c004

The differing fields are:

* IDC: present only on the secondary CPU. This is a worrying mismatch
  because it could mean that required cache maintenance is missed in
  some cases. Does the secondary CPU definitely broadcast PoU
  maintenance to the boot CPU that requires it?

* L1Ip: VIPT on the boot CPU, PIPT on the secondary CPU.

> [    0.812838] CPU features: SANITY CHECK: Unexpected variation in
> SYS_ID_AA64MMFR2_EL1. Boot CPU: 0x00000000001011, CPU6: 0x00000000000011

The differing field is IESB: presend on the boot CPU, missing on the
secondary CPU.

> [    0.812876] CPU features: SANITY CHECK: Unexpected variation in
> SYS_ID_AA64PFR0_EL1. Boot CPU: 0x00000011112222, CPU6: 0x1100000011111112
> [    0.812924] CPU features: SANITY CHECK: Unexpected variation in
> SYS_ID_ISAR4_EL1. Boot CPU: 0x00000000011142, CPU6: 0x00000000010142
> [    0.812950] CPU features: SANITY CHECK: Unexpected variation in
> SYS_ID_PFR0_EL1. Boot CPU: 0x00000010000131, CPU6: 0x00000010010131
> [    0.812977] CPU features: SANITY CHECK: Unexpected variation in
> SYS_ID_PFR1_EL1. Boot CPU: 0x00000010011011, CPU6: 0x00000010010000

These are the same story as for SM8150.

> Can we relax some sanity checking for these by making it FTR_NONSTRICT or by
> some other means? I just tried below roughly for SM8150 but I guess this is
> not correct,
> maybe for ftr_generic_32bits we should be checking bootcpu and nonboot cpu
> partnum(to identify big.LITTLE) and then make it nonstrict?
> These are all my wild assumptions, please correct me if I am wrong.

Before we make any changes, we need to check whether we do actually
handle this variation in a safe way, and we need to consider what this
means w.r.t. late CPU hotplug.

Even if we can handle variation at boot time, once we've determined the
set of system-wide features we cannot allow those to regress, and I
believe we'll need new code to enforce that. I don't think it's
sufficient to mark these as NONSTRICT, though we might do that with
other changes.

We shouldn't look at the part number at all here. We care about
variation across CPUs regardless of whether this is big.LITTLE or some
variation in tie-offs, etc.

Thanks,
Mark.

> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index cabebf1a7976..207197692caa 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -164,8 +164,8 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
>         S_ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE,
> ID_AA64PFR0_FP_SHIFT, 4, ID_AA64PFR0_FP_NI),
>         /* Linux doesn't care about the EL3 */
>         ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE,
> ID_AA64PFR0_EL3_SHIFT, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE,
> ID_AA64PFR0_EL2_SHIFT, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE,
> ID_AA64PFR0_EL1_SHIFT, 4, ID_AA64PFR0_EL1_64BIT_ONLY),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE,
> ID_AA64PFR0_EL2_SHIFT, 4, 0),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE,
> ID_AA64PFR0_EL1_SHIFT, 4, ID_AA64PFR0_EL1_64BIT_ONLY),
>         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE,
> ID_AA64PFR0_EL0_SHIFT, 4, ID_AA64PFR0_EL0_64BIT_ONLY),
>         ARM64_FTR_END,
>  };
> @@ -345,10 +345,10 @@ static const struct arm64_ftr_bits
> ftr_generic_32bits[] = {
>         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 24, 4, 0),
>         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 20, 4, 0),
>         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 16, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 12, 4, 0),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 12, 4, 0),
>         ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 8, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 4, 4, 0),
> -       ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 0, 4, 0),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 4, 4, 0),
> +       ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, 0, 4, 0),
>         ARM64_FTR_END,
>  };
> 
> 
> Thanks,
> Sai
> 
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
