Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2973BA3436
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqcRadk/zmwh+V4BkxnrnqfEbwcDjk3jGfj5WmbfhnM=; b=TDfR/Sckxro7vc
	lhU6oMF+U0OH33oIg8I4i8Bb71tnmiYJ288iNAjexHMfJJ+iRs8sEeOR/gnx2tRxKf1G+U5BLoHdI
	1VFOprLoObAwdCJYwQAAjv3HYeU82uIgFhl5lRHQOYlzjU/5DjkgqnysHEUZcIwErNH108mnQNmP/
	LoNhPfeol6HAqxmhWcgmVXO0hldk0P83bfkkPsYVUgu1bteItQbFxpviyZWKOg2hGkYe0H5VoInTH
	6rnGh2I3V6vjIRslOxrvlW4nflv0+VmK9VJv9HVYXf8+IXh5+pB14GUQQ0YNpNx3gKoTXeXjDF2FC
	grn+IqSQoV8+BPxj9gVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dOi-0002JP-JQ; Fri, 30 Aug 2019 09:40:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dOK-00027k-6D
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:40:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54972344;
 Fri, 30 Aug 2019 02:40:23 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 014993F718;
 Fri, 30 Aug 2019 02:40:21 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:40:19 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 04/44] arm64: Make USER_DS an inclusive limit
Message-ID: <20190830094019.GD46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <55f8561f1ee207237fdcfbc8c5dc043be06d3de6.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55f8561f1ee207237fdcfbc8c5dc043be06d3de6.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024024_403348_4D6C0F44 
X-CRM114-Status: GOOD (  22.58  )
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

On Thu, Aug 29, 2019 at 05:03:49PM +0530, Viresh Kumar wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> commit 51369e398d0d33e8f524314e672b07e8cf870e79 upstream.
> 
> Currently, USER_DS represents an exclusive limit while KERNEL_DS is
> inclusive. In order to do some clever trickery for speculation-safe
> masking, we need them both to behave equivalently - there aren't enough
> bits to make KERNEL_DS exclusive, so we have precisely one option. This
> also happens to correct a longstanding false negative for a range
> ending on the very top byte of kernel memory.
> 
> Mark Rutland points out that we've actually got the semantics of
> addresses vs. segments muddled up in most of the places we need to
> amend, so shuffle the {USER,KERNEL}_DS definitions around such that we
> can correct those properly instead of just pasting "-1"s everywhere.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Will Deacon <will.deacon@arm.com>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> [ 4.4: Dropped changes from fault.c and fixed minor rebase conflict ]
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  arch/arm64/include/asm/processor.h |  3 ++
>  arch/arm64/include/asm/uaccess.h   | 45 +++++++++++++++++-------------
>  arch/arm64/kernel/entry.S          |  4 +--
>  3 files changed, 31 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 75d9ef6c457c..ff1449c25bf4 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -21,6 +21,9 @@
>  
>  #define TASK_SIZE_64		(UL(1) << VA_BITS)
>  
> +#define KERNEL_DS	UL(-1)
> +#define USER_DS		(TASK_SIZE_64 - 1)
> +
>  #ifndef __ASSEMBLY__
>  
>  /*
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 829fa6d3e561..c625cc5531fc 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -56,10 +56,7 @@ struct exception_table_entry
>  
>  extern int fixup_exception(struct pt_regs *regs);
>  
> -#define KERNEL_DS	(-1UL)
>  #define get_ds()	(KERNEL_DS)
> -
> -#define USER_DS		TASK_SIZE_64
>  #define get_fs()	(current_thread_info()->addr_limit)
>  
>  static inline void set_fs(mm_segment_t fs)
> @@ -87,22 +84,32 @@ static inline void set_fs(mm_segment_t fs)
>   * Returns 1 if the range is valid, 0 otherwise.
>   *
>   * This is equivalent to the following test:
> - * (u65)addr + (u65)size <= current->addr_limit
> - *
> - * This needs 65-bit arithmetic.
> + * (u65)addr + (u65)size <= (u65)current->addr_limit + 1
>   */
> -#define __range_ok(addr, size)						\
> -({									\
> -	unsigned long __addr = (unsigned long __force)(addr);		\
> -	unsigned long flag, roksum;					\
> -	__chk_user_ptr(addr);						\
> -	asm("adds %1, %1, %3; ccmp %1, %4, #2, cc; cset %0, ls"		\
> -		: "=&r" (flag), "=&r" (roksum)				\
> -		: "1" (__addr), "Ir" (size),				\
> -		  "r" (current_thread_info()->addr_limit)		\
> -		: "cc");						\
> -	flag;								\
> -})
> +static inline unsigned long __range_ok(unsigned long addr, unsigned long size)
> +{
> +	unsigned long limit = current_thread_info()->addr_limit;
> +
> +	__chk_user_ptr(addr);
> +	asm volatile(
> +	// A + B <= C + 1 for all A,B,C, in four easy steps:
> +	// 1: X = A + B; X' = X % 2^64
> +	"	adds	%0, %0, %2\n"
> +	// 2: Set C = 0 if X > 2^64, to guarantee X' > C in step 4
> +	"	csel	%1, xzr, %1, hi\n"
> +	// 3: Set X' = ~0 if X >= 2^64. For X == 2^64, this decrements X'
> +	//    to compensate for the carry flag being set in step 4. For
> +	//    X > 2^64, X' merely has to remain nonzero, which it does.
> +	"	csinv	%0, %0, xzr, cc\n"
> +	// 4: For X < 2^64, this gives us X' - C - 1 <= 0, where the -1
> +	//    comes from the carry in being clear. Otherwise, we are
> +	//    testing X' - C == 0, subject to the previous adjustments.
> +	"	sbcs	xzr, %0, %1\n"
> +	"	cset	%0, ls\n"
> +	: "+r" (addr), "+r" (limit) : "Ir" (size) : "cc");
> +
> +	return addr;
> +}
>  
>  /*
>   * When dealing with data aborts, watchpoints, or instruction traps we may end
> @@ -111,7 +118,7 @@ static inline void set_fs(mm_segment_t fs)
>   */
>  #define untagged_addr(addr)		sign_extend64(addr, 55)
>  
> -#define access_ok(type, addr, size)	__range_ok(addr, size)
> +#define access_ok(type, addr, size)	__range_ok((unsigned long)(addr), size)
>  #define user_addr_max			get_fs
>  
>  /*
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index c849be9231bb..4c5013b09dcb 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -96,10 +96,10 @@
>  	.else
>  	add	x21, sp, #S_FRAME_SIZE
>  	get_thread_info tsk
> -	/* Save the task's original addr_limit and set USER_DS (TASK_SIZE_64) */
> +	/* Save the task's original addr_limit and set USER_DS */
>  	ldr	x20, [tsk, #TI_ADDR_LIMIT]
>  	str	x20, [sp, #S_ORIG_ADDR_LIMIT]
> -	mov	x20, #TASK_SIZE_64
> +	mov	x20, #USER_DS
>  	str	x20, [tsk, #TI_ADDR_LIMIT]
>  	.endif /* \el == 0 */
>  	mrs	x22, elr_el1
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
