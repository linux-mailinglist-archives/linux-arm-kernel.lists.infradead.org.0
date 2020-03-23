Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091D118F3A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 12:28:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uxn9xI8Vmfdwgwv+/8sMCX12N/bildBLCa8Gd3Q3AOI=; b=QPs6kQAoBlLW+1
	cmB/jENI8FmZ8LcU2WZ5BBhkHM4o3W8usjt43jR+gnskw4PjAlsrltjDz0EZeLsieYAZlTXC73ALM
	5VRyeskDud9LVme+Rs1UKNhRblis1OIgjEOsRnwSeOxrmUyBs0Qv28GMrl++prfGuT61gcImrYXb9
	a/5pxjoVljgzsjfmwR09LqrDhoK0y3v8UBs0xL0FjVrZhX/tD9tQSx5Ke548wvrFDSLSfSkvAJC1u
	u/IwpAL0EaZ/Sw3M8lgnrRrudjBwq0QFqpKBvTeJcqJ5FvaQuIYFiGg2I/+rG174PoZKY9r56k1Hy
	E7+sVNHAYFBCyxqyuNBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGLFn-0006Ea-MW; Mon, 23 Mar 2020 11:28:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGLFf-0006Dx-LD
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 11:28:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 169241FB;
 Mon, 23 Mar 2020 04:28:12 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DBDA3F52E;
 Mon, 23 Mar 2020 04:28:10 -0700 (PDT)
Date: Mon, 23 Mar 2020 11:28:05 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH 1/1] arm64: Simplify __range_ok
Message-ID: <20200323112613.GA2011@C02TD0UTHF1T.local>
References: <20200321051352.16484-1-richard.henderson@linaro.org>
 <20200321051352.16484-2-richard.henderson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200321051352.16484-2-richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_042815_782320_8C9EBE20 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 20, 2020 at 10:13:52PM -0700, Richard Henderson wrote:
> The general case is not quite as compact as the inline assembly,
> but with a sufficiently advanced compiler it is only 6 insns vs 5.
> 
> The real improvement comes from assuming that limit is never tiny,
> and using __builtin_constant_p to make sure the constant folding
> does not go awry.  This produces a 2 insn sequence even for older
> compilers.

Neat; thanks for putting this together!

Do you happen to have numbers for the impact on a defconfig Image size
(or vmlinux .text size)?

> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> ---
>  arch/arm64/include/asm/uaccess.h | 31 +++++++++++++------------------
>  1 file changed, 13 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 32fc8061aa76..683727696dc3 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -60,7 +60,8 @@ static inline void set_fs(mm_segment_t fs)
>   */
>  static inline unsigned long __range_ok(const void __user *addr, unsigned long size)
>  {
> -	unsigned long ret, limit = current_thread_info()->addr_limit;
> +	unsigned long limit = current_thread_info()->addr_limit;
> +	unsigned long iaddr;

Trivial: could we move the initialisation here, please?

>  
>  	/*
>  	 * Asynchronous I/O running in a kernel thread does not have the
> @@ -72,24 +73,18 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>  		addr = untagged_addr(addr);
>  
>  	__chk_user_ptr(addr);
> -	asm volatile(
> -	// A + B <= C + 1 for all A,B,C, in four easy steps:
> -	// 1: X = A + B; X' = X % 2^64
> -	"	adds	%0, %3, %2\n"
> -	// 2: Set C = 0 if X > 2^64, to guarantee X' > C in step 4
> -	"	csel	%1, xzr, %1, hi\n"
> -	// 3: Set X' = ~0 if X >= 2^64. For X == 2^64, this decrements X'
> -	//    to compensate for the carry flag being set in step 4. For
> -	//    X > 2^64, X' merely has to remain nonzero, which it does.
> -	"	csinv	%0, %0, xzr, cc\n"
> -	// 4: For X < 2^64, this gives us X' - C - 1 <= 0, where the -1
> -	//    comes from the carry in being clear. Otherwise, we are
> -	//    testing X' - C == 0, subject to the previous adjustments.
> -	"	sbcs	xzr, %0, %1\n"
> -	"	cset	%0, ls\n"
> -	: "=&r" (ret), "+r" (limit) : "Ir" (size), "0" (addr) : "cc");
>  
> -	return ret;
> +	/*
> +	 * Quite a lot of range checks use sizeof(some_type), and are
> +	 * therefore constant.  If we can assume that limit is never unusably
> +	 * small, then we can rearrange the computation to avoid the need for
> +	 * 65-bit arithmetic.  Arbitrary choice for size limit of 1MiB.
> +	 */
> +	iaddr = (unsigned long)addr;
> +	if (__builtin_constant_p(size) && size > 0 && size < 0x100000)
> +		return iaddr <= limit + 1 - size;

The limit should be either USER_DS or KERNEL_DS, where USER_DS is
smaller than KERNEL_DS, so we could derive a less arbitrary bound from
USER_DS.

Thanks,
Mark.

> +
> +	return (__uint128_t)iaddr + size <= (__uint128_t)limit + 1;
>  }
>  
>  #define access_ok(addr, size)	__range_ok(addr, size)
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
