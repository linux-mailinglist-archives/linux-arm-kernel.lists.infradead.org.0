Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5DE1B09F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+rqALYFhV97Nt+yjC+JUuEeoAdIhHq3gzmx+QrmlIk=; b=NNqCV/OIFLT3K/
	uBpkXPgEiSF2/0siPcbBPszZlggnAISl2C1TeF9BPIAQWjE31tfkqnzbVjDVwBFiy3/AaaJcTg08/
	iDNo0Fs4t/2xPUCJe3/lrj0AJN+/6rqbaEYfLxynmGKOcVvw6IYt/a4Xl2OuKHQgBwqmRO89zfyGK
	61ohc+m1gqjgWCLkeKxiMJxnR4bjttCCEG3qnLyldlwnD37dYoMNXoZBul2ydekuirTsE4jsXE+gT
	d9WVm8t+vrQe5wo/Vapb0PsPImRg4cYxV3NmQip+Ek60oDuuY88nTYy5hr2J/wVpL5zV0X7ogtcjU
	nRJACMESpXuXc0i5JtuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVnx-00062z-No; Mon, 20 Apr 2020 12:45:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVnh-0005zi-9N
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:45:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C5011FB;
 Mon, 20 Apr 2020 05:45:24 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.55])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1C8243F237;
 Mon, 20 Apr 2020 05:45:20 -0700 (PDT)
Date: Mon, 20 Apr 2020 13:45:18 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Alex Belits <abelits@marvell.com>
Subject: Re: [EXT] Re: [PATCH v3 03/13] task_isolation: add instruction
 synchronization memory barrier
Message-ID: <20200420124518.GC69441@C02TD0UTHF1T.local>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
 <d995795c731d6ecceb36bdf1c1df3d72fefd023d.camel@marvell.com>
 <20200415124427.GB28304@C02TD0UTHF1T.local>
 <e4d2cda6f011e80a0d8e482b85bca1c57665fcfd.camel@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e4d2cda6f011e80a0d8e482b85bca1c57665fcfd.camel@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054525_440231_EDFCA271 
X-CRM114-Status: GOOD (  29.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "peterz@infradead.org" <peterz@infradead.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Prasun Kapoor <pkapoor@marvell.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "will@kernel.org" <will@kernel.org>, "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 05:02:01AM +0000, Alex Belits wrote:
> 
> On Wed, 2020-04-15 at 13:44 +0100, Mark Rutland wrote:
> > External Email
> > 
> > -------------------------------------------------------------------
> > ---
> > On Thu, Apr 09, 2020 at 03:17:40PM +0000, Alex Belits wrote:
> > > Some architectures implement memory synchronization instructions
> > > for
> > > instruction cache. Make a separate kind of barrier that calls them.
> > 
> > Modifying the instruction caches requries more than an ISB, and the
> > 'IMB' naming implies you're trying to order against memory accesses,
> > which isn't what ISB (generally) does.
> > 
> > What exactly do you want to use this for?
> 
> I guess, there should be different explanation and naming.
> 
> The intention is to have a separate barrier that causes cache
> synchronization event, for use in architecture-independent code. I am
> not sure, what exactly it should do to be implemented in architecture-
> independent manner, so it probably only makes sense along with a
> regular memory barrier.
> 
> The particular place where I had to use is the code that has to run
> after isolated task returns to the kernel. In the model that I propose
> for task isolation, remote context synchronization is skipped while
> task is in isolated in userspace (it doesn't run kernel, and kernel
> does not modify its userspace code, so it's harmless until entering the
> kernel). So it will skip the results of kick_all_cpus_sync() that was
> that was called from flush_icache_range() and other similar places.
> This means that once it's out of userspace, it should only run
> some "safe" kernel entry code, and then synchronize in some manner that
> avoids race conditions with possible IPIs intended for context
> synchronization that may happen at the same time. My next patch in the
> series uses it in that one place.
> 
> Synchronization will have to be implemented without a mandatory
> interrupt because it may be triggered locally, on the same CPU. On ARM,
> ISB is definitely necessary there, however I am not sure, how this
> should look like on x86 and other architectures. On ARM this probably
> still should be combined with a real memory barrier and cache
> synchronization, however I am not entirely sure about details. Would
> it make more sense to run DMB, IC and ISB? 

For the cases you mention above this really depends on how the new CPU
first synchronizes with the others, and what the scope of the "safe"
kernel entry code is.

Given that this is context-dependent, I think it would make more sense
for this to be an arch hook specific to task isolation rather than a
low-level common barrier.

Thanks,
Mark.

> 
> > 
> As-is, I don't think this makes sense as a generic barrier.
> 
> Thanks,
> Mark.
> 
> Signed-off-by: Alex Belits <abelits@marvell.com>
> ---
>  arch/arm/include/asm/barrier.h   | 2 ++
>  arch/arm64/include/asm/barrier.h | 2 ++
>  include/asm-generic/barrier.h    | 4 ++++
>  3 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm/include/asm/barrier.h
> b/arch/arm/include/asm/barrier.h
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
> diff --git a/arch/arm64/include/asm/barrier.h
> b/arch/arm64/include/asm/barrier.h
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
> diff --git a/include/asm-generic/barrier.h b/include/asm-
> generic/barrier.h
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
> 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
