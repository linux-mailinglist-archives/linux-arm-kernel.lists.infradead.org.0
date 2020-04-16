Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE831AC75A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XdfyeU/QytU/CwJUJfSHUmaMmKIjZo9ZgUsT1p+QFoY=; b=ZolqpUGk9aVMNBt4cQO5/HqlV
	5rClVhyC9A7GaDuAgryzIaQ8RgCWEbd2vXkwodhWY34am/y3na/4aMDrtgDtviJh8LAN5p131Jbcx
	ug2iPSm5yl2NRay6ursoGCHQxgyhyXD+IQ2pAFAV8oiaKFdEFA9mPw8IlPFSQn1RDI1+7o00pGL0u
	Euo7cY89P2KkDX5KkEH3dM+AhjrjOk6pBZwtoOL8gqlhFnUBA31ZhejmsN7ErLt4wH9fmE2TE9ziM
	rubqR0AehChNTUhVIFK+bZRihWl8xjOUgv4pijMBNsfWzZ2Arp4M9y5HWp90zSEHe4/ewhVQdGi+B
	pUh4Eky8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5v3-0005tP-9H; Thu, 16 Apr 2020 14:55:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5un-0005sQ-VW
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:54:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DF521FB;
 Thu, 16 Apr 2020 07:54:51 -0700 (PDT)
Received: from [10.37.12.32] (unknown [10.37.12.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E0AEE3F237;
 Thu, 16 Apr 2020 07:54:48 -0700 (PDT)
Subject: Re: [PATCH 8/8] arm64: cpufeature: Add an overview comment for the
 cpufeature framework
To: will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20200414213114.2378-1-will@kernel.org>
 <20200414213114.2378-9-will@kernel.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <96dd797d-ccfe-c867-0a70-65eccacde3cd@arm.com>
Date: Thu, 16 Apr 2020 15:59:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200414213114.2378-9-will@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_075454_101007_5BE08CAC 
X-CRM114-Status: GOOD (  28.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, saiprakash.ranjan@codeaurora.org,
 anshuman.khandual@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 dianders@chromium.org, catalin.marinas@arm.com, kernel-team@android.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 04/14/2020 10:31 PM, Will Deacon wrote:
> Now that Suzuki isn't within throwing distance, I thought I'd better add
> a rough overview comment to cpufeature.c so that it doesn't take me days
> to remember how it works next time.
> 
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>   arch/arm64/kernel/cpufeature.c | 43 ++++++++++++++++++++++++++++++++++
>   1 file changed, 43 insertions(+)
> 
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 680a453ca8c4..421ca99dc8fc 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -3,6 +3,49 @@
>    * Contains CPU feature definitions
>    *
>    * Copyright (C) 2015 ARM Ltd.
> + *
> + * A note for the weary kernel hacker: the code here is confusing and hard to
> + * follow! That's partly because it's solving a nasty problem, but also because
> + * there's a little bit of over-abstraction that tends to obscure what's going
> + * on behind a maze of helper functions and macros.

Thanks for writing this up !

> + *
> + * The basic problem is that hardware folks have started gluing together CPUs
> + * with distinct architectural features; in some cases even creating SoCs where
> + * user-visible instructions are available only on a subset of the available
> + * cores. We try to address this by snapshotting the feature registers of the
> + * boot CPU and comparing these with the feature registers of each secondary
> + * CPU when bringing them up. If there is a mismatch, then we update the
> + * snapshot state to indicate the lowest-common denominator of the feature,
> + * known as the "safe" value. This snapshot state can be queried to view the

I am not sure if the following is implied above.

   1) Against the "snapshot" state, where mismatches triggers updating
      the "snapshot" state to reflect the "safe" value.

   2) Compared against the CPU feature registers of *the boot CPU* for
     "FTR_STRICT" fields and any mismatch triggers TAINT_CPU_OUT_OF_SPEC.
      This makes sure that warning is generated for each OUT_OF_SPEC
      secondary CPU.

> + * "sanitised" value of a feature register.
> + *
> + * The sanitised register values are used to decide which capabilities we
> + * have in the system. These may be in the form of traditional "hwcaps"
> + * advertised to userspace or internal "cpucaps" which are used to configure
> + * things like alternative patching and static keys. While a feature mismatch
> + * may result in a TAINT_CPU_OUT_OF_SPEC kernel taint, a capability mismatch
> + * may prevent a CPU from being onlined at all.
> + *
> + * Some implementation details worth remembering:
> + *
> + * - Mismatched features are *always* sanitised to a "safe" value, which
> + *   usually indicates that the feature is not supported.
> + *
> + * - A mismatched feature marked with FTR_STRICT will cause a "SANITY CHECK"
> + *   warning when onlining an offending CPU and the kernel will be tainted
> + *   with TAINT_CPU_OUT_OF_SPEC.

As mentioned above, this check is against that of the "boot CPU"
register state, which may not be implicit from the statement.

> + *
> + * - Features marked as FTR_VISIBLE have their sanitised value visible to
> + *   userspace. FTR_VISIBLE features in registers that are only visible
> + *   to EL0 by trapping *must* have a corresponding HWCAP so that late
> + *   onlining of CPUs cannot lead to features disappearing at runtime.
> + *

As you mentioned in the other response we could add information about
the guest view, something like :

       - KVM exposes the sanitised value of the feature registers to the
	guests and is not affected by the FTR_VISIBLE. However,
	depending on the individual feature support in the hypervisor,
	some of the fields may be capped/limited.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
