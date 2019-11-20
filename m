Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F1710413D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hyRNwXyygUWSka7FLRNGhxwSzdunolOA6IgM2ZXRYCo=; b=jSVAuli8FDVzGb
	ags82FabMF2qmMkDIZNrmBF1ULM83d/Guwcq+5D1ab+72tFkKTgbTX6x6sEimnExr7Sv8NwLFJyvr
	AbOQDITHZFLVT8Q4G4eeM5SGDNVM0/Yy7pAAI0qJnu19hQ+D7VyXdm9BeA+WeIE/7NlbLh1+AMIGC
	WPUAUIZ/afkIViTfXwVAoDFSyz0pyO5UexqjeVs9HmcFcIKt1xMTKvjwgpADZ/fCpwgKNoNctUzf6
	0sYYY6NEBLAEsCAm6VgG9N1uPxTLa1lVNOKSffKHfayw9xYNupMc2i5JUGHNXzn8Tt+5G5JNy+fd+
	XTCj3JjtZtDzzEketXNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXT7H-0005gq-8w; Wed, 20 Nov 2019 16:46:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXT4Y-000261-8q
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:43:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 254A81FB;
 Wed, 20 Nov 2019 08:43:15 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2973A3F703;
 Wed, 20 Nov 2019 08:43:13 -0800 (PST)
Date: Wed, 20 Nov 2019 16:43:08 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH] arm64: kernel: memory corruptions due non-disabled PAN
Message-ID: <20191120164307.GA19681@lakrids.cambridge.arm.com>
References: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119221006.1021520-1-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_084318_428353_E34F5506 
X-CRM114-Status: GOOD (  25.20  )
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
Cc: sashal@kernel.org, info@metux.net, vladimir.murzin@arm.com,
 steve.capper@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 jmorris@namei.org, linux-kernel@vger.kernel.org, alexios.zavras@intel.com,
 james.morse@arm.com, allison@lohutok.net, gregkh@linuxfoundation.org,
 tglx@linutronix.de, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On Tue, Nov 19, 2019 at 05:10:06PM -0500, Pavel Tatashin wrote:
> Userland access functions (__arch_clear_user, __arch_copy_from_user,
> __arch_copy_in_user, __arch_copy_to_user), enable and disable PAN
> for the duration of copy. However, when copy fails for some reason,
> i.e. access violation the code is transferred to fixedup section,
> where we do not disable PAN.

Thanks for reporting this. This is a very nasty bug.

> The bug is a security violation as the access to userland is still
> open when it should be disabled, but it also causes memory corruptions
> when software emulated PAN is used: CONFIG_ARM64_SW_TTBR0_PAN=y.

I see that with CONFIG_ARM64_SW_TTBR0_PAN=y, this means that we may
leave the stale TTBR0 value installed across a context-switch (and have
reproduced that locally), but I'm having some difficulty reproducing the
corruption that you see.

> I was able to reproduce memory corruption problem on Broadcom's SoC
> ARMv8-A like this:
> 
> Enable software perf-events with PERF_SAMPLE_CALLCHAIN so userland's
> stack is accessed and copied.

IIUC this tickles the issue by performing a faulting uaccess in IRQ
context. On the path to returnign from the exception, it directly calls
into the scheduler as part of el1_preempt, erroneously passing the TTBR0
value to the next task. Note that a preemption would remove the stale
TTBR0 value as part of kernel entry.

It looks like if we're in this state, and return from an exception taken
from EL1 with SW PAN enabled, we'll also leave the stale TTBR0 value
installed. If PAN was disabled (e.g. in the middle of a uaccess region),
then we'll restore the correct TTBR0.

> The test program performed the following on every CPU and forking many
> processes:
> 
> 	unsigned long *map = mmap(NULL, PAGE_SIZE, PROT_READ|PROT_WRITE,
> 				  MAP_SHARED | MAP_ANONYMOUS, -1, 0);
> 	map[0] = getpid();
> 	sched_yield();
> 	if (map[0] != getpid()) {
> 		fprintf(stderr, "Corruption detected!");
> 	}
> 	munmap(map, PAGE_SIZE);

Can you provide the whole test, please? And precisely how you're
launching it?

I've tried turning the above into a main() function, and spawning a
number of instances in parallel while perf is running, but I haven't
been able to reproduce the issue locally, and I'm concerned that I'm
missing something.

> From time to time I was getting map[0] to contain pid for a different
> process.

How often is "from time to time"? How many processes are you running,
across how many CPUs?

> 
> Fixes: 338d4f49d6f7114 ("arm64: kernel: Add support for Privileged...")
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> ---
>  arch/arm64/lib/clear_user.S     | 1 +
>  arch/arm64/lib/copy_from_user.S | 1 +
>  arch/arm64/lib/copy_in_user.S   | 1 +
>  arch/arm64/lib/copy_to_user.S   | 1 +
>  4 files changed, 4 insertions(+)

FWIW, the diff below looks correct to me, but we might want to fold this
into the C wrappers, so that this is consistent with the other uaccess
cases (and done in one place in the code).

Thanks,
Mark.

> 
> diff --git a/arch/arm64/lib/clear_user.S b/arch/arm64/lib/clear_user.S
> index 10415572e82f..322b55664cca 100644
> --- a/arch/arm64/lib/clear_user.S
> +++ b/arch/arm64/lib/clear_user.S
> @@ -48,5 +48,6 @@ EXPORT_SYMBOL(__arch_clear_user)
>  	.section .fixup,"ax"
>  	.align	2
>  9:	mov	x0, x2			// return the original size
> +	uaccess_disable_not_uao x2, x3
>  	ret
>  	.previous
> diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
> index 680e74409ff9..8472dc7798b3 100644
> --- a/arch/arm64/lib/copy_from_user.S
> +++ b/arch/arm64/lib/copy_from_user.S
> @@ -66,5 +66,6 @@ EXPORT_SYMBOL(__arch_copy_from_user)
>  	.section .fixup,"ax"
>  	.align	2
>  9998:	sub	x0, end, dst			// bytes not copied
> +	uaccess_disable_not_uao x3, x4
>  	ret
>  	.previous
> diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
> index 0bedae3f3792..8e0355c1e318 100644
> --- a/arch/arm64/lib/copy_in_user.S
> +++ b/arch/arm64/lib/copy_in_user.S
> @@ -68,5 +68,6 @@ EXPORT_SYMBOL(__arch_copy_in_user)
>  	.section .fixup,"ax"
>  	.align	2
>  9998:	sub	x0, end, dst			// bytes not copied
> +	uaccess_disable_not_uao x3, x4
>  	ret
>  	.previous
> diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
> index 2d88c736e8f2..6085214654dc 100644
> --- a/arch/arm64/lib/copy_to_user.S
> +++ b/arch/arm64/lib/copy_to_user.S
> @@ -65,5 +65,6 @@ EXPORT_SYMBOL(__arch_copy_to_user)
>  	.section .fixup,"ax"
>  	.align	2
>  9998:	sub	x0, end, dst			// bytes not copied
> +	uaccess_disable_not_uao x3, x4
>  	ret
>  	.previous
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
