Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5FB413C3C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 14:54:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tQoum1KHDUncjmy7eSrsY4TuZXSn3J8dKifgdZgzDfs=; b=ZbCPXOIENUzTWT
	IVLEYte+u1PX23Fu78Zo0KWhrUFhJ9ZLVQt5Pj+iCl0kmN0uYn3RnwCZXMurPKhvlt7efX9WjFRjZ
	V4JDjPr3zLG0D2PRoJp2EB1z+qizYN4C+gskniku1LKfYRC5kfz2azrJEm/X1PlTuoj6Vo2eNMVb3
	USIpBjZivkhpZtES/+s8MlKB/SbVqpatjhdHxD/kr9mfudr7ijliF7WIcosIz+gXqSaQF6G5/DyQs
	wLZr8QNd1w956txgdovChf2b/ZyXgTNmEs5QOAxcQk9rKDwTAHd/KAWfHAT/UJiGWmR679B/uWcX2
	0TLhAKdJrQjeNOil3E1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irj89-0008Io-54; Wed, 15 Jan 2020 13:54:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irj7v-0008Fu-D7
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 13:54:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47B102187F;
 Wed, 15 Jan 2020 13:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579096471;
 bh=VBir6e3nrOgRiXq6cS5RpCHgNPjVq6Oy5cHdcdKixoQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z4KWrxMO3THFb8sedrmSPG7Ms2PTe5VzuQtfQAL5PC4EvlKtZuI6w/2MSvjxOb0Ze
 bbDP+adlVv5f5C1SMRRhVhBOXfFsA8cm9q9YiYWsSFHK8+80TzBt2XwVO3zOC+cojT
 pS4vxmuUe2wJ50t1vsA4yKOX483YtEmegRhwcQCs=
Date: Wed, 15 Jan 2020 13:54:27 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v9 1/4] arm64: Add initial support for E0PD
Message-ID: <20200115135426.GB27473@willie-the-truck>
References: <20191111185243.42638-1-broonie@kernel.org>
 <20191111185243.42638-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111185243.42638-2-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_055431_479981_15054145 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 06:52:40PM +0000, Mark Brown wrote:
> Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
> based security issues by ensuring that the kernel is not mapped when
> userspace is running but this approach is expensive and is incompatible
> with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
> alternative to this which ensures that accesses from userspace to the
> kernel's half of the memory map to always fault with constant time,
> preventing timing attacks without requiring constant unmapping and
> remapping or preventing legitimate accesses.
> 
> Currently this feature will only be enabled if all CPUs in the system
> support E0PD, if some CPUs do not support the feature at boot time then
> the feature will not be enabled and in the unlikely event that a late
> CPU is the first CPU to lack the feature then we will reject that CPU.
> 
> This initial patch does not yet integrate with KPTI, this will be dealt
> with in followup patches.  Ideally we could ensure that by default we
> don't use KPTI on CPUs where E0PD is present.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  arch/arm64/Kconfig                     | 15 ++++++++++++++
>  arch/arm64/include/asm/cpucaps.h       |  3 ++-
>  arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
>  arch/arm64/include/asm/sysreg.h        |  1 +
>  arch/arm64/kernel/cpufeature.c         | 27 ++++++++++++++++++++++++++
>  5 files changed, 47 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 950a56b71ff0..9f881acb7acf 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1421,6 +1421,21 @@ config ARM64_PTR_AUTH
>  
>  endmenu
>  
> +menu "ARMv8.5 architectural features"
> +
> +config ARM64_E0PD
> +	bool "Enable support for E0PD"
> +	default y
> +	help
> +	   E0PD (part of the ARMv8.5 extensions) allows us to ensure
> +	   that EL0 accesses made via TTBR1 always fault in constant time,
> +	   providing benefits to KPTI with lower overhead and without
> +	   disrupting legitimate access to kernel memory such as SPE.

This doesn't quite make sense to me, since E0PD doesn't really benefit
KPTI. Mind if I fold in the diff below?

Cheers,

Will

--->8

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e4c3ed4e69c3..9cee2008ea9e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1492,8 +1492,9 @@ config ARM64_E0PD
 	help
 	   E0PD (part of the ARMv8.5 extensions) allows us to ensure
 	   that EL0 accesses made via TTBR1 always fault in constant time,
-	   providing benefits to KPTI with lower overhead and without
-	   disrupting legitimate access to kernel memory such as SPE.
+	   providing similar benefits to KASLR as those provided by KPTI, but
+	   with lower overhead and without disrupting legitimate access to
+	   kernel memory such as SPE.
 
 	   This option enables E0PD for TTBR1 where available.
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
