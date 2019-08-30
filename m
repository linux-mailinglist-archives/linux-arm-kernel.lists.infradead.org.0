Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB37A342B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDl4hRFdx4/SBD/zUv34lGCq2K/qp60L68af26KUjyU=; b=P4a3y60mJyc/PD
	VgZB5BPX0Z4qQ7y4OeqVG048hPYmj9TNEE2uZdY4xKMuhoPCzC5/mMG/NTgI+Wf6OhBSX7Knq2KYx
	K2QvVLDP/zlDYTx/NBX9akYMI5wDUtlTwZ2Z1CJpStOWwTEGoXQm4pyWa4bIxE3LNnx+Un4/Jhrm8
	eQ7Gboz5sFD3T8f862A1ftUTJ2y8UVi7TUTK4MkDl6T/v+pu4YQawGXlkFh3dkEAFNwdcNk2QBIOO
	e5H67vSur7zkq/PddZI43FuhTcaMTtjBWlyEGZ8V5ZZIV9H35Z0m6sZYaClqn8isSzbC49J3L98id
	utwfMaBS/74HrGuBhFZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dNz-0000Wn-3R; Fri, 30 Aug 2019 09:40:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dNo-0000WU-52
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:39:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3D48F344;
 Fri, 30 Aug 2019 02:39:51 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC1A33F718;
 Fri, 30 Aug 2019 02:39:49 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:39:44 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 01/44] arm64: barrier: Add CSDB macros to
 control data-value prediction
Message-ID: <20190830093943.GA46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <4ba4e0d015f2e044e3eaf57e1239ae3e12d5a80e.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ba4e0d015f2e044e3eaf57e1239ae3e12d5a80e.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_023952_234817_2FDE06F2 
X-CRM114-Status: GOOD (  14.02  )
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:03:46PM +0530, Viresh Kumar wrote:
> From: Will Deacon <will.deacon@arm.com>
> 
> commit 669474e772b952b14f4de4845a1558fd4c0414a4 upstream.
> 
> For CPUs capable of data value prediction, CSDB waits for any outstanding
> predictions to architecturally resolve before allowing speculative execution
> to continue. Provide macros to expose it to the arch code.
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/assembler.h | 7 +++++++
>  arch/arm64/include/asm/barrier.h   | 2 ++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> index f68abb17aa4b..683c2875278f 100644
> --- a/arch/arm64/include/asm/assembler.h
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -95,6 +95,13 @@
>  	dmb	\opt
>  	.endm
>  
> +/*
> + * Value prediction barrier
> + */
> +	.macro	csdb
> +	hint	#20
> +	.endm
> +
>  #define USER(l, x...)				\
>  9999:	x;					\
>  	.section __ex_table,"a";		\
> diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
> index f2d2c0bbe21b..574486634c62 100644
> --- a/arch/arm64/include/asm/barrier.h
> +++ b/arch/arm64/include/asm/barrier.h
> @@ -28,6 +28,8 @@
>  #define dmb(opt)	asm volatile("dmb " #opt : : : "memory")
>  #define dsb(opt)	asm volatile("dsb " #opt : : : "memory")
>  
> +#define csdb()		asm volatile("hint #20" : : : "memory")
> +
>  #define mb()		dsb(sy)
>  #define rmb()		dsb(ld)
>  #define wmb()		dsb(st)
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
