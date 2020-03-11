Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82C118218F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pen6txZeYDGmzrjcM8NXuy8fsXFd4oFFvyuTBGtZTLs=; b=sMNrvKz6BmNpk0JFhfUlZHQPg
	2EQqyruIUbdTffXYJj2HsK2BByz6cKPZJXwCv5AHlY/WeJrelHq91I8rAHL+BshXnnodfrjivkTLW
	Mlj2hFTfot6fh6sGFQIjlf5jh1o4zvHnZ8ARqPHZe2ut7lbWbQ/kwYTPncnXTlYoECqGQ1eJdC3Xe
	WqMfxWxBPHHYfG0a+NxyT+GQfMtBPXPTHZXbuYHV2/mMwztIAtmHt+lEEoYfoZtdYJItLmOo4NXQv
	fV1K7ZnJLILghonZ7KclHLYccnKJjh+P9FXDx3c9BuAuBpFg3yIdStJzBUwd7BYrm/Bk621sC52yq
	XqAK15cWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6if-0000jY-2T; Wed, 11 Mar 2020 19:08:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6iX-0000j4-5U
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 19:08:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C139A1FB;
 Wed, 11 Mar 2020 12:08:30 -0700 (PDT)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58DB03F534;
 Wed, 11 Mar 2020 12:08:30 -0700 (PDT)
Subject: Re: [PATCH 2/6] arm64: uaccess: Use named asm operands for __in_range
To: Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-3-richard.henderson@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2de143ee-ae9c-328c-a44d-2c84ea8f087b@arm.com>
Date: Wed, 11 Mar 2020 19:08:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200311180416.6509-3-richard.henderson@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_120833_249043_756A1B98 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/03/2020 6:04 pm, Richard Henderson wrote:
> With zero change of behavior, use %[] syntax for the asm
> operands instead of numbered operands.

For any particular reason? It's very deliberate that a mere 4 
instructions have over twice as many lines of comments here, and IMO 
making the code more verbose only serves to distract from the 
explanation of what's actually happening. In particular, the value 
represented by %0 (the conceptual X') never corresponds to the variable 
"addr", so naming it "addr" provides the opposite of clarity.

Robin.

> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> ---
>   arch/arm64/include/asm/uaccess.h | 14 ++++++++------
>   1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 32fc8061aa76..ceb1d79eab09 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -75,19 +75,21 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>   	asm volatile(
>   	// A + B <= C + 1 for all A,B,C, in four easy steps:
>   	// 1: X = A + B; X' = X % 2^64
> -	"	adds	%0, %3, %2\n"
> +	"	adds	%[addr], %[addr], %[size]\n"
>   	// 2: Set C = 0 if X > 2^64, to guarantee X' > C in step 4
> -	"	csel	%1, xzr, %1, hi\n"
> +	"	csel	%[limit], xzr, %[limit], hi\n"
>   	// 3: Set X' = ~0 if X >= 2^64. For X == 2^64, this decrements X'
>   	//    to compensate for the carry flag being set in step 4. For
>   	//    X > 2^64, X' merely has to remain nonzero, which it does.
> -	"	csinv	%0, %0, xzr, cc\n"
> +	"	csinv	%[addr], %[addr], xzr, cc\n"
>   	// 4: For X < 2^64, this gives us X' - C - 1 <= 0, where the -1
>   	//    comes from the carry in being clear. Otherwise, we are
>   	//    testing X' - C == 0, subject to the previous adjustments.
> -	"	sbcs	xzr, %0, %1\n"
> -	"	cset	%0, ls\n"
> -	: "=&r" (ret), "+r" (limit) : "Ir" (size), "0" (addr) : "cc");
> +	"	sbcs	xzr, %[addr], %[limit]\n"
> +	"       cset    %[addr], ls\n"
> +	: [addr] "=&r" (ret), [limit] "+r" (limit)
> +	: [size] "Ir" (size), "0" (addr)
> +	: "cc");
>   
>   	return ret;
>   }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
