Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1961D420B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 16:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPCmUhelPBW4KfpsrU9VdA3mt0aPVxi4u3O2Qc476N8=; b=gI/pIFs9mGc3kH
	JnObOZR8NUUBft+L9EWXDjLkApjmu2ZqD+/GxkzpWLsuojUZMmRrQ+os+GBHazhb7JIGa2WLVeit1
	WRv9k4ccpak5UEal7kDMaXsGrWkNI44O2o5tRlDUVhHoMpNeQU+2XNUjV1cQhXkbzgbrwnY9rOgQz
	eL+AS2/8IpSXAVLgcWtBCT44uj4t0phEZ3qRrQ6uk2ULNNTbzXMAY0Lv5H+HMMslGYDJxLnRyqHPZ
	n8j4ASroFF1kHg3mQzTaPDmfzEfwsD7hCY9ktRxu30s6Js5dR09Yg38psjlHW0jpzDCA0kfKXPVd5
	iuWr5QBelcvmwnvvD2jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvVg-0000mF-OW; Fri, 11 Oct 2019 14:03:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvVW-0000lj-SV
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 14:03:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF965142F;
 Fri, 11 Oct 2019 07:03:01 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 5B9E53F68E; Fri, 11 Oct 2019 07:03:00 -0700 (PDT)
Date: Fri, 11 Oct 2019 15:02:58 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCHv3 3/6] arm: spectre-v2: use arm_smccc_1_1_get_conduit()
Message-ID: <20191011140258.GA3607@arrakis.emea.arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
 <20190809132245.43505-4-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809132245.43505-4-mark.rutland@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_070302_960913_B8DB765C 
X-CRM114-Status: GOOD (  17.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, lorenzo.pieralisi@arm.com,
 suzuki.poulose@arm.com, marc.zyngier@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, james.morse@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

Are you ok with the arm patch below to go in via the arm64 tree? I'd
like patches 1-5 from [1] to go into 5.5 but patches 4, 5 depend on
patch 3 also being queued.

If you'd rather merge it separately, I can provide a stable branch with
patch 1 so that you can merge it and apply patch 3 on top (or any other
option that works for you).

Thanks,

Catalin

[1] http://lkml.kernel.org/r/20190809132245.43505-1-mark.rutland@arm.com

On Fri, Aug 09, 2019 at 02:22:42PM +0100, Mark Rutland wrote:
> Now that we have arm_smccc_1_1_get_conduit(), we can hide the PSCI
> implementation details from the arm spectre-v2 code, so let's do so.
> 
> As arm_smccc_1_1_get_conduit() implicitly checks that the SMCCC version
> is at least SMCCC_VERSION_1_1, we no longer need to check this
> explicitly where switch statements have a default case.
> 
> There should be no functional change as a result of this patch.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Russell King <linux@armlinux.org.uk>
> ---
>  arch/arm/mm/proc-v7-bugs.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
> index 9a07916af8dd..54d87506d3b5 100644
> --- a/arch/arm/mm/proc-v7-bugs.c
> +++ b/arch/arm/mm/proc-v7-bugs.c
> @@ -1,7 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include <linux/arm-smccc.h>
>  #include <linux/kernel.h>
> -#include <linux/psci.h>
>  #include <linux/smp.h>
>  
>  #include <asm/cp15.h>
> @@ -75,11 +74,8 @@ static void cpu_v7_spectre_init(void)
>  	case ARM_CPU_PART_CORTEX_A72: {
>  		struct arm_smccc_res res;
>  
> -		if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
> -			break;
> -
> -		switch (psci_ops.conduit) {
> -		case PSCI_CONDUIT_HVC:
> +		switch (arm_smccc_1_1_get_conduit()) {
> +		case SMCCC_CONDUIT_HVC:
>  			arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
>  					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
>  			if ((int)res.a0 != 0)
> @@ -90,7 +86,7 @@ static void cpu_v7_spectre_init(void)
>  			spectre_v2_method = "hypervisor";
>  			break;
>  
> -		case PSCI_CONDUIT_SMC:
> +		case SMCCC_CONDUIT_SMC:
>  			arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
>  					  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
>  			if ((int)res.a0 != 0)
> -- 
> 2.11.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
