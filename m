Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4B7DAF59
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZzrerZkG0wJGD1qCY0MIcrRRf47c+D7og5dHbaJ6ztQ=; b=gRYV1EdHM6METZxbh1/C97g4I
	DbWGAZIbybjZSoaMcIRZwEYQUxgh9Z0lMrasQQpGdIaesSnwlIa3wSEZQmLao5tY2hIEfdVBNnIyI
	9CKSuCCkwrj7+jh2SotaV3kfDdREkPlU8hIbT7XUjHoFqpCFqUlAcX5VhxoKGdEvXY4tR3FVIOiSq
	PewcR7pmDk9BJkLfPtfIwzEZeK7aIcukzrq1+J23MX32o/Hkms8CKa6SxJ3JBkTlb6n6ciMQS9tVJ
	YBnHeBY8Gtv1jpVGAFiqyEAeCY3I6FtSw5eifbUIsLl2E/boEfcpyUyXm2Y8b4EEx3hzyVQfRhrN0
	hw90Cqlmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6X0-0006ub-LF; Thu, 17 Oct 2019 14:13:34 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6Wp-0006tJ-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:13:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3D81F;
 Thu, 17 Oct 2019 07:13:12 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 422213F6C4;
 Thu, 17 Oct 2019 07:13:11 -0700 (PDT)
Subject: Re: [PATCH 05/11] arm64: enable ptrauth earlier
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
 <1571300065-10236-6-git-send-email-amit.kachhap@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <ee0a5b0a-196f-1cb4-701b-3295f1932e5d@arm.com>
Date: Thu, 17 Oct 2019 15:13:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <1571300065-10236-6-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_071323_804660_4687AA12 
X-CRM114-Status: GOOD (  25.61  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Amit,

On 17/10/2019 09:14, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> When the kernel is compiled with pointer auth instructions, the boot CPU
> needs to start using address auth very early, so change the cpucap to
> account for this.
> 
> Pointer auth must be enabled before we call C functions, because it is
> not possible to enter a function with pointer auth disabled and exit it
> with pointer auth enabled. Note, mismatches between architected and
> IMPDEF algorithms will still be caught by the cpufeature framework (the
> separate *_ARCH and *_IMP_DEF cpucaps).
> 
> Note the change in behavior: if the boot CPU has address auth and a late
> CPU does not, then we offline the late CPU. Until now we would have just
> disabled address auth in this case.
> 
> Leave generic authentication as a "system scope" cpucap for now, since
> initially the kernel will only use address authentication.
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
> Changes since RFC v2:
>   - Moved early enabling from C to assembly, and no longer use the pointer auth
>     C function attribute [Suzuki]
> 
>   arch/arm64/Kconfig                  |  4 ++++
>   arch/arm64/include/asm/cpufeature.h |  9 +++++++
>   arch/arm64/include/asm/smp.h        |  1 +
>   arch/arm64/kernel/cpufeature.c      | 13 +++-------
>   arch/arm64/kernel/head.S            | 48 +++++++++++++++++++++++++++++++++++++
>   arch/arm64/kernel/smp.c             |  2 ++
>   6 files changed, 67 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 41a9b42..253e3c5 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1408,6 +1408,10 @@ config ARM64_PTR_AUTH
>   	  be enabled. However, KVM guest also require VHE mode and hence
>   	  CONFIG_ARM64_VHE=y option to use this feature.
>   
> +	  If the feature is present on the primary CPU but not a secondary CPU,
> +	  then the secondary CPU will be offlined. On such a system, this
> +	  option should not be selected.

We don't offline the CPU, but simply park them. You may want to update this to
reflect the reality.

> +
>   endmenu
>   
>   config ARM64_SVE
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 011a665..5d61749 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -291,6 +291,15 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
>   #define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE		\
>   	(ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PANIC_ON_CONFLICT)
>   
> +/*
> + * CPU feature used early in the boot based on the boot CPU. It is safe for a
> + * late CPU to have this feature even though the boot CPU hasn't enabled it,
> + * although the feature will not be used by Linux in this case. If the boot CPU
> + * has enabled this feature already, then every late CPU must have it.
> + */
> +#define ARM64_CPUCAP_BOOT_CPU_FEATURE			\
> +	 (ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU)

As mentioned in the previous patch, I think this must panic the system if ever a
CPU turns up without the ptr_auth.

Otherwise looks fine to me.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
