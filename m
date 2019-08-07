Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0940D84A20
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phiNgWiQlQBxSv03yuBvzPuzbkFZeaPFf8OiAjcgTrI=; b=iMJ+bPmvOEqqz8
	Zw5hQB5ilH70jQqfuYUaFDhRS+R3vvfl0ll8wg6g4DZBKxlE5aBYbcP39UPjr49WzI+LBTnz6htUm
	rjSjE2Wv7ycOxd2sErGa3eueIEtHryslNcPAjuS1Iy0frjQutUoZyXTJCrU4AaXeSWkqLSLC6zZJj
	lHjTlrttsx/VKAHywqYM5lq50VeiNEXDEBa42TECc4j29GQEMHcb0oQpYGmJugJ3PCwuItfPxd+xz
	bl6Srj9exqpk2sXEhsJCOBk1Y2yaO5wB9qg6N7mzhlqw0r1nXG+uePF5b+B92dqXDxFhlHRl0N3ed
	GUpSmSF9+h757XYbD/Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJZL-0004LG-OF; Wed, 07 Aug 2019 10:53:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJZ8-0004Kp-PS
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:53:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49F7828;
 Wed,  7 Aug 2019 03:53:10 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7942A3F575;
 Wed,  7 Aug 2019 03:53:09 -0700 (PDT)
Date: Wed, 7 Aug 2019 11:53:07 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH v2] arm64/cache: fix -Woverride-init compiler warnings
Message-ID: <20190807105307.GB54191@lakrids.cambridge.arm.com>
References: <20190806193434.965-1-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806193434.965-1-cai@lca.pw>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_035310_919300_37391432 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 03:34:34PM -0400, Qian Cai wrote:
> The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> VIVT I-caches") introduced some compiation warnings from GCC (and
> Clang),
> 
> arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> overwritten [-Woverride-init]
>  [ICACHE_POLICY_VIPT]  = "VIPT",
>                          ^~~~~~
> arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> 'icache_policy_str[2]')
> arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> overwritten [-Woverride-init]
>  [ICACHE_POLICY_PIPT]  = "PIPT",
>                          ^~~~~~
> arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> 'icache_policy_str[3]')
> arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> overwritten [-Woverride-init]
>  [ICACHE_POLICY_VPIPT]  = "VPIPT",
>                           ^~~~~~~
> arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> 'icache_policy_str[0]')
> 
> because it initializes icache_policy_str[0 ... 3] twice. Since the array
> is only used in cpuinfo_detect_icache_policy(), fix it by initializing
> a specific field there just before using.
> 
> Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> Signed-off-by: Qian Cai <cai@lca.pw>

Rather than trying to "fix" correct code like this (and making it harder
to read), could you instead look into where/whether the warning is
actually useful?

I had a look at an arm64 defconfig, where I see:

[mark@lakrids:~/src/linux]% grep override-init err.log | grep -o '^[^[:space:]:]\+' | sort | uniq -c | sort -rn
    434 arch/arm64/kernel/sys32.c			// all benign
    291 arch/arm64/kernel/sys.c				// all benign
     48 ./arch/arm64/include/asm/perf_event.h		// all benign
     37 arch/arm64/kernel/traps.c			// all benign
     21 arch/arm64/kvm/handle_exit.c			// all benign
     12 drivers/ata/ahci.h				// all benign
      6 arch/arm64/kernel/perf_event.c			// all benign
      4 kernel/time/hrtimer.c				// all benign
      3 arch/arm64/kernel/cpuinfo.c			// all benign
      2 drivers/pinctrl/tegra/pinctrl-tegra194.c	// unclear to me
      1 ./include/linux/blkdev.h			// all benign
      1 drivers/gpu/drm/sun4i/sun4i_drv.c		// all benign
      1 drivers/ata/sata_sil24.c			// all benign
      1 ./arch/arm64/include/asm/mmu.h			// all benign

... so that's 862 warnings where at least 860 are unhelpful (and I
suspect those last two are also fine, but I haven't untangled the set of
macros).

Given that, what's the point in enabling this warning? It forces us to
write worse code that's harder to maintain, and it doesn't spot anything
useful.

> ---
> 
> v2: Initialize a specific field in cpuinfo_detect_icache_policy().
> 
>  arch/arm64/kernel/cpuinfo.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
> index 876055e37352..a0c495a3f4fd 100644
> --- a/arch/arm64/kernel/cpuinfo.c
> +++ b/arch/arm64/kernel/cpuinfo.c
> @@ -34,10 +34,7 @@ DEFINE_PER_CPU(struct cpuinfo_arm64, cpu_data);
>  static struct cpuinfo_arm64 boot_cpu_data;
>  
>  static char *icache_policy_str[] = {
> -	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN",
> -	[ICACHE_POLICY_VIPT]		= "VIPT",
> -	[ICACHE_POLICY_PIPT]		= "PIPT",
> -	[ICACHE_POLICY_VPIPT]		= "VPIPT",
> +	[0 ... ICACHE_POLICY_PIPT]	= "RESERVED/UNKNOWN"
>  };
>  
>  unsigned long __icache_flags;
> @@ -310,13 +307,16 @@ static void cpuinfo_detect_icache_policy(struct cpuinfo_arm64 *info)
>  
>  	switch (l1ip) {
>  	case ICACHE_POLICY_PIPT:
> +		icache_policy_str[ICACHE_POLICY_PIPT] = "PIPT";
>  		break;
>  	case ICACHE_POLICY_VPIPT:
> +		icache_policy_str[ICACHE_POLICY_VPIPT] = "VPIPT";
>  		set_bit(ICACHEF_VPIPT, &__icache_flags);
>  		break;
>  	default:
>  		/* Fallthrough */
>  	case ICACHE_POLICY_VIPT:
> +		icache_policy_str[ICACHE_POLICY_VIPT] = "VIPT";
>  		/* Assume aliasing */
>  		set_bit(ICACHEF_ALIASING, &__icache_flags);

NAK to this. Please leave this code as-is.

Thanks,
Mark.

>  	}
> -- 
> 2.20.1 (Apple Git-117)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
