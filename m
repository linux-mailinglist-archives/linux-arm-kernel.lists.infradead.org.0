Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D950118E2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 17:51:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BwdIBdb/A4ofuRYQJB0zOWnO7dr9J+0BZ4BHZiuNRtE=; b=mh1Y3W6KwYckWMwVmnw7PkecW
	zc4kLNlC3qGQ2Dvy2ZJaZMA2W4csM7OSQaND8zDFEoH4VkiBhwfxnVeJxlae9qYT40JHsYUSM3khd
	K2WXaOtUG9sYlvD5CEEcc+m2E2LAWDJ6W+TT1nSxORHNEfp+Nmb/HahGW2x1MFTMtC/kA1qnyLmBJ
	S7PPalARhJOhkfCCyHkAl0OyoJwd01kmBbFFiPidsAwnnVYO3EoB24IrMzj2mzkmKgEJFN2xy2oSk
	LpHKmNLoSXhMbIYH11z40IK8+bzV21OKdjCQ/7WzhhASuR2/DTrun9ilQBx3lb9Rp5z56otULmSbm
	hgq9Yq2Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieije-0000Md-L1; Tue, 10 Dec 2019 16:51:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieijV-0000LI-Rq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 16:51:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A03B81FB;
 Tue, 10 Dec 2019 08:51:29 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0B6993F6CF;
 Tue, 10 Dec 2019 08:51:28 -0800 (PST)
Subject: Re: [PATCH v9 2/4] arm64: Factor out checks for KASLR in KPTI code
 into separate function
To: Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>
References: <20191209181217.44890-1-broonie@kernel.org>
 <20191209181217.44890-3-broonie@kernel.org>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <9aa8eafd-64ff-39fc-e3c0-9187d1154167@arm.com>
Date: Tue, 10 Dec 2019 16:51:28 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191209181217.44890-3-broonie@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_085133_943003_3BD3B338 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/12/2019 18:12, Mark Brown wrote:
> In preparation for integrating E0PD support with KASLR factor out the
> checks for interaction between KASLR and KPTI done in boot context into
> a new function kaslr_requires_kpti(), in the process clarifying the
> distinction between what we do in boot context and what we do at
> runtime.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>   arch/arm64/include/asm/mmu.h   | 62 ++++++++++++++++++++++++----------
>   arch/arm64/kernel/cpufeature.c |  2 +-
>   2 files changed, 46 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index f217e3292919..2a93d34cc0ca 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -35,10 +35,46 @@ static inline bool arm64_kernel_unmapped_at_el0(void)
>   	       cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
>   }
>   
> -static inline bool arm64_kernel_use_ng_mappings(void)
> +/*
> + * This check is triggered during the early boot before the cpufeature
> + * is initialised. Checking the status on the local CPU allows the boot
> + * CPU to detect the need for non-global mappings and thus avoiding a
> + * pagetable re-write after all the CPUs are booted. This check will be
> + * anyway run on individual CPUs, allowing us to get the consistent
> + * state once the SMP CPUs are up and thus make the switch to non-global
> + * mappings if required.
> + */

Looks good to me. Thanks for your patience

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
