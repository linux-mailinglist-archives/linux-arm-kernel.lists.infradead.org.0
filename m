Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ED61D18AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxfCSptglvH4kkxkEqn/kkazF0oo2Znr2LXxlrGoWVw=; b=f/vvLbgaOBA3wL
	4uDh5EI2aJ823hpeeNKFWn7d/GVVKe0D08UWDQ2OgfGRPkNnssPpHDknigsHCfA1OhH0W1v48Wtzu
	ze3OQhsqB+hTMKJYzjUjYmikmVpW6dSAxsFkGKO8s4iksyRKMp75XH0JKW5lKcJvzFtzAeqnbFuRx
	Wr4qRM1N9yHJs9MTeLkb5PqiDQz0jggXMFdMpBx6s00+rbpLqtP8QHHb2eCNRD1Nz2zncNHiFUHT6
	mL4YpWd5e9MO2S4looJR1ovYFpU8VzttUOmgBjFRAHKkuokDPGxS+oHTzhdS+4dSiysFk8wDAbZZt
	xVCQpYaRi23ThWaxOv2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsx6-0005ko-Qi; Wed, 13 May 2020 15:05:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsvb-0001xe-Vi
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:04:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B69831B;
 Wed, 13 May 2020 08:04:11 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4CBA3F305;
 Wed, 13 May 2020 08:04:09 -0700 (PDT)
Date: Wed, 13 May 2020 16:04:07 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/cpuinfo: Move HWCAP name arrays alongside their
 bit definitions
Message-ID: <20200513150405.GS21779@arm.com>
References: <1588858150-26823-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588858150-26823-1-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_080412_234463_140484EA 
X-CRM114-Status: GOOD (  17.92  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 06:59:10PM +0530, Anshuman Khandual wrote:
> All HWCAP name arrays (i.e hwcap_str, compat_hwcap_str, compat_hwcap2_str)
> that are scanned for /proc/cpuinfo output are detached from their bit fild
> definitions making it difficult to corelate. This is also bit problematic
> because during /proc/cpuinfo dump these arrays get traversed sequentially
> assuming that they reflect and match HWCAP bit sequence, to test various
> features for a given CPU.
> 
> This moves all HWCAP name arrays near their bit definitions. But first it
> defines all missing COMPAT_HWCAP_XXX that are present in the name string.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Ard Biesheuvel <ardb@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> 
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> ---
> This applies on 5.7-rc4
> 
> Changes in V2:
> 
> - Defined COMPAT_KERNEL_HWCAP[2] and updated the name arrays per Mark
> - Updated the commit message as required
> 
> Changes in V1: (https://patchwork.kernel.org/patch/11532945/)
> 
>  arch/arm64/include/asm/hwcap.h | 101 +++++++++++++++++++++++++++++++++
>  arch/arm64/kernel/cpuinfo.c    |  90 -----------------------------
>  2 files changed, 101 insertions(+), 90 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
> index 0f00265248b5..589ac02e1ddd 100644
> --- a/arch/arm64/include/asm/hwcap.h
> +++ b/arch/arm64/include/asm/hwcap.h
> @@ -8,18 +8,27 @@
>  #include <uapi/asm/hwcap.h>
>  #include <asm/cpufeature.h>
>  
> +#define COMPAT_HWCAP_SWP	(1 << 0)
>  #define COMPAT_HWCAP_HALF	(1 << 1)
>  #define COMPAT_HWCAP_THUMB	(1 << 2)
> +#define COMPAT_HWCAP_26BIT	(1 << 3)
>  #define COMPAT_HWCAP_FAST_MULT	(1 << 4)
> +#define COMPAT_HWCAP_FPA	(1 << 5)
>  #define COMPAT_HWCAP_VFP	(1 << 6)
>  #define COMPAT_HWCAP_EDSP	(1 << 7)
> +#define COMPAT_HWCAP_JAVA	(1 << 8)
> +#define COMPAT_HWCAP_IWMMXT	(1 << 9)
> +#define COMPAT_HWCAP_CRUNCH	(1 << 10)
> +#define COMPAT_HWCAP_THUMBEE	(1 << 11)
>  #define COMPAT_HWCAP_NEON	(1 << 12)
>  #define COMPAT_HWCAP_VFPv3	(1 << 13)
> +#define COMPAT_HWCAP_VFPV3D16	(1 << 14)
>  #define COMPAT_HWCAP_TLS	(1 << 15)
>  #define COMPAT_HWCAP_VFPv4	(1 << 16)
>  #define COMPAT_HWCAP_IDIVA	(1 << 17)
>  #define COMPAT_HWCAP_IDIVT	(1 << 18)
>  #define COMPAT_HWCAP_IDIV	(COMPAT_HWCAP_IDIVA|COMPAT_HWCAP_IDIVT)
> +#define COMPAT_HWCAP_VFPD32	(1 << 19)
>  #define COMPAT_HWCAP_LPAE	(1 << 20)
>  #define COMPAT_HWCAP_EVTSTRM	(1 << 21)

With the possible exception of SWP (does the swp emulation allow us to
report this as supported?), I think all these weren't mentioned because
they aren't included in ARMv8 and so can never be reported.

If we find ourselves reporting them, there's a bug somewhere.

So, can we just default all obsolete string entries to NULL?

When generating the cpuinfo strings we could WARN and just emit an empty
string for that hwcap.

Cheers
---Dave

[...]

> +#ifdef CONFIG_COMPAT
> +#define COMPAT_KERNEL_HWCAP(x)	const_ilog2(COMPAT_HWCAP_ ## x)
> +static const char *const compat_hwcap_str[] = {
> +	[COMPAT_KERNEL_HWCAP(SWP)]	= "swp",
> +	[COMPAT_KERNEL_HWCAP(HALF)]	= "half",
> +	[COMPAT_KERNEL_HWCAP(THUMB)]	= "thumb",
> +	[COMPAT_KERNEL_HWCAP(26BIT)]	= "26bit",
> +	[COMPAT_KERNEL_HWCAP(FAST_MULT)] = "fastmult",
> +	[COMPAT_KERNEL_HWCAP(FPA)]	= "fpa",
> +	[COMPAT_KERNEL_HWCAP(VFP)]	= "vfp",
> +	[COMPAT_KERNEL_HWCAP(EDSP)]	= "edsp",
> +	[COMPAT_KERNEL_HWCAP(JAVA)]	= "java",
> +	[COMPAT_KERNEL_HWCAP(IWMMXT)]	= "iwmmxt",
> +	[COMPAT_KERNEL_HWCAP(CRUNCH)]	= "crunch",
> +	[COMPAT_KERNEL_HWCAP(THUMBEE)]	= "thumbee",
> +	[COMPAT_KERNEL_HWCAP(NEON)]	= "neon",
> +	[COMPAT_KERNEL_HWCAP(VFPv3)]	= "vfpv3",
> +	[COMPAT_KERNEL_HWCAP(VFPV3D16)]	= "vfpv3d16",
> +	[COMPAT_KERNEL_HWCAP(TLS)]	= "tls",
> +	[COMPAT_KERNEL_HWCAP(VFPv4)]	= "vfpv4",
> +	[COMPAT_KERNEL_HWCAP(IDIVA)]	= "idiva",
> +	[COMPAT_KERNEL_HWCAP(IDIVT)]	= "idivt",
> +	[COMPAT_KERNEL_HWCAP(VFPD32)]	= "vfpd32",
> +	[COMPAT_KERNEL_HWCAP(LPAE)]	= "lpae",
> +	[COMPAT_KERNEL_HWCAP(EVTSTRM)]	= "evtstrm",
> +	NULL
> +};
> +
> +#define COMPAT_KERNEL_HWCAP2(x)	const_ilog2(COMPAT_HWCAP2_ ## x)
> +static const char *const compat_hwcap2_str[] = {
> +	[COMPAT_KERNEL_HWCAP2(AES)]	= "aes",
> +	[COMPAT_KERNEL_HWCAP2(PMULL)]	= "pmull",
> +	[COMPAT_KERNEL_HWCAP2(SHA1)]	= "sha1",
> +	[COMPAT_KERNEL_HWCAP2(SHA2)]	= "sha2",
> +	[COMPAT_KERNEL_HWCAP2(CRC32)]	= "crc32",
> +	NULL,
> +};
> +#endif /* CONFIG_COMPAT */
> +

[...]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
