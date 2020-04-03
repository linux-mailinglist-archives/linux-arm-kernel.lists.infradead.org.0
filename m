Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B1719D545
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 12:51:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvqDbWb2rFCsY54pKCFsUjg2qpXUopa9cXX+u29MbGA=; b=kXBqhpQv6E5Mxk
	q9KgcMyxDHvq3WOf4y4nUwzE4BKqiS5SUYlwFq6XXK56L9wIu5fxUlOAYuXQAD416t2Dravi/daD3
	Mc+5LTOKqiNaSNyQuOMHRXluRJqmQal6hBVlwrrgGgLXIPTFqjmIrq2L+l0+8QnQweGG9a8fDxNmV
	cpu1Mc5T+DZsYHWYLhBXDnT+FQ6smUw/C8fkoATsMuOwbMrbI4ssFyoAoVwUjA19LZszXmGXLgirG
	yTrMvfToEKp2bw9qTCrmoR5Q8nTldV/yBPnWHuYW8SjTIeph0GTDpD0k1LCKK5UDRfG7n41vGb9rW
	6acu503EdIbsU9WYz+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJug-00008z-4M; Fri, 03 Apr 2020 10:51:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJuY-000088-Bo
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 10:50:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E0AAC30E;
 Fri,  3 Apr 2020 03:50:52 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.5])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5ED43F68F;
 Fri,  3 Apr 2020 03:50:51 -0700 (PDT)
Date: Fri, 3 Apr 2020 11:50:45 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v2] arm64: Simplify __range_ok
Message-ID: <20200403105045.GA40940@C02TD0UTHF1T.local>
References: <20200327030918.7292-1-richard.henderson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327030918.7292-1-richard.henderson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_035054_489943_53C10590 
X-CRM114-Status: GOOD (  24.49  )
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
Cc: robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Richard,

On Thu, Mar 26, 2020 at 08:09:18PM -0700, Richard Henderson wrote:
> The general case is not quite as compact as the inline assembly,
> but with a sufficiently advanced compiler it is only 6 insns vs 5.
> 
> The real improvement comes from assuming that limit is never tiny,
> and using __builtin_constant_p to make sure the constant folding
> does not go awry.  This produces a 2 insn sequence even for older
> compilers.
> 
> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>

Thanks for this; it looks good to me, minor comments below.

I believe the const cases capture all realistic contsnt sizes, and
handles those correctly. We miss a couple of constant cases that we
could catch (and might want to do so for completeness) but either way I
think this looks good.

> ---
> 
> Thanks for the v1 review, Mark.
> 
> Text section size change:
> 
>   $ scripts/bloat-o-meter -t vmlinux{-orig,} | tail -1
> 
>   * When built with gcc-10 (master) + cmpti patch set:
>     Total: Before=12820824, After=12774708, chg -0.36%
> 
>   * When built with gcc-7.5.0-3ubuntu1~18.04:
>     Total: Before=13564038, After=13513258, chg -0.37%
> 
> Changes in v2:
>   * Adjust initialization of iaddr.
>   * Use USER_DS as the constant limit and update commentary.
> 
> 
> r~
> 
> ---
>  arch/arm64/include/asm/uaccess.h | 32 +++++++++++++-------------------
>  1 file changed, 13 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 32fc8061aa76..04ef201e6179 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -60,7 +60,8 @@ static inline void set_fs(mm_segment_t fs)
>   */
>  static inline unsigned long __range_ok(const void __user *addr, unsigned long size)
>  {
> -	unsigned long ret, limit = current_thread_info()->addr_limit;
> +	unsigned long limit = current_thread_info()->addr_limit;
> +	unsigned long iaddr = (unsigned long)addr;
>  
>  	/*
>  	 * Asynchronous I/O running in a kernel thread does not have the
> @@ -72,24 +73,17 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
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
> -
> -	return ret;
> +
> +	/*
> +	 * The minimum value for limit is USER_DS, and quite a lot of
> +	 * range checks use sizeof(some_type).  With both constants,
> +	 * we can rearrange the computation to avoid the need for
> +	 * 65-bit arithmetic.
> +	 */
> +	if (__builtin_constant_p(size) && size > 0 && size < USER_DS)
> +		return iaddr <= limit + 1 - size;

As above, I believe this can be:

	if (__builtin_constant_p(size) && size > 0 && size <= USER_DS + 1)
		return iaddr <= limit + 1 - size;

... but either way I think this is sound, and that's just for symmetry
of the test cases.

> +
> +	return (__uint128_t)iaddr + size <= (__uint128_t)limit + 1;

I believe this is obviously correct.

So with or without the change suggested above:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  }
>  
>  #define access_ok(addr, size)	__range_ok(addr, size)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
