Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9A91AA110
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7bp687S0ABFss2XS5VYMTzY8I2QUNAiPFM2YG/krgM=; b=tLWCoAHtdiiBNh
	insmABWSRXZwj/1b8/cVz7YBJITY3xr6dJ4rVEFC/bzbqWwcwiDsmRgK7QmzxSS2ChidigQaphgfw
	eWrHcpbDathHAm2QMDdLGRbdf0QfnaXkByuBGnVMjlN60tgzZ2hDcTYzHqXp1P2Hm6d28dLKFxSGW
	5rF77qXavVEd2pvahdzV13fCSUTd55GdTOsdMgZAnYYCCdVqDyYbqXf4a537jFBTkKA7ukziaLSTt
	VRgRWUCZ+jCLfH5qsNJLRln6osTlwpdrk3cijxV7qTLwUsOksB6Q5BQvxmV3MYomNtq0fZkr90TjG
	YVN+/zgwdh3nBcF9ijyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhPJ-0007u1-TX; Wed, 15 Apr 2020 12:44:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhP9-0007t3-2m
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:44:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52E4A1063;
 Wed, 15 Apr 2020 05:44:34 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E44413F68F;
 Wed, 15 Apr 2020 05:44:30 -0700 (PDT)
Date: Wed, 15 Apr 2020 13:44:27 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Alex Belits <abelits@marvell.com>
Subject: Re: [PATCH v3 03/13] task_isolation: add instruction synchronization
 memory barrier
Message-ID: <20200415124427.GB28304@C02TD0UTHF1T.local>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
 <d995795c731d6ecceb36bdf1c1df3d72fefd023d.camel@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d995795c731d6ecceb36bdf1c1df3d72fefd023d.camel@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054435_165331_38EAFA82 
X-CRM114-Status: GOOD (  14.22  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 03:17:40PM +0000, Alex Belits wrote:
> Some architectures implement memory synchronization instructions for
> instruction cache. Make a separate kind of barrier that calls them.

Modifying the instruction caches requries more than an ISB, and the
'IMB' naming implies you're trying to order against memory accesses,
which isn't what ISB (generally) does.

What exactly do you want to use this for?

As-is, I don't think this makes sense as a generic barrier.

Thanks,
Mark.

> 
> Signed-off-by: Alex Belits <abelits@marvell.com>
> ---
>  arch/arm/include/asm/barrier.h   | 2 ++
>  arch/arm64/include/asm/barrier.h | 2 ++
>  include/asm-generic/barrier.h    | 4 ++++
>  3 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm/include/asm/barrier.h b/arch/arm/include/asm/barrier.h
> index 83ae97c049d9..6def62c95937 100644
> --- a/arch/arm/include/asm/barrier.h
> +++ b/arch/arm/include/asm/barrier.h
> @@ -64,12 +64,14 @@ extern void arm_heavy_mb(void);
>  #define mb()		__arm_heavy_mb()
>  #define rmb()		dsb()
>  #define wmb()		__arm_heavy_mb(st)
> +#define imb()		isb()
>  #define dma_rmb()	dmb(osh)
>  #define dma_wmb()	dmb(oshst)
>  #else
>  #define mb()		barrier()
>  #define rmb()		barrier()
>  #define wmb()		barrier()
> +#define imb()		barrier()
>  #define dma_rmb()	barrier()
>  #define dma_wmb()	barrier()
>  #endif
> diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
> index 7d9cc5ec4971..12a7dbd68bed 100644
> --- a/arch/arm64/include/asm/barrier.h
> +++ b/arch/arm64/include/asm/barrier.h
> @@ -45,6 +45,8 @@
>  #define rmb()		dsb(ld)
>  #define wmb()		dsb(st)
>  
> +#define imb()		isb()
> +
>  #define dma_rmb()	dmb(oshld)
>  #define dma_wmb()	dmb(oshst)
>  
> diff --git a/include/asm-generic/barrier.h b/include/asm-generic/barrier.h
> index 85b28eb80b11..d5a822fb3e92 100644
> --- a/include/asm-generic/barrier.h
> +++ b/include/asm-generic/barrier.h
> @@ -46,6 +46,10 @@
>  #define dma_wmb()	wmb()
>  #endif
>  
> +#ifndef imb
> +#define imb		barrier()
> +#endif
> +
>  #ifndef read_barrier_depends
>  #define read_barrier_depends()		do { } while (0)
>  #endif
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
