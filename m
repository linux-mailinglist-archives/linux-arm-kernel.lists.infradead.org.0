Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED0918458D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hOqGqflxH8uUWRreVmJE6uc38/LO/XTj1cFmW8v83A4=; b=QvD4MamJbExMk4
	rXqi69T3/9vILazfn6zi6WzP5zn+7r43EDQLZyNct8O9MzLo3jflk9gyWfAtAddDxTSC4KagBoFS2
	Zr15NimbIJxmFhFEMFTDSs5VSU+LMSb5xfDTxSnZcxDhvbI20f1Y+dzpdovDJXTaJfGBf2zDAMbWZ
	BZ9GakX0gL96aCKPpVftjVoEpt1SsUM6PwCNDg3JGPXgWx4AJ7y2dLr0PFuXwCdxHdJ+Bja4TGWOw
	/jL3MrDXQKS8JhLz4t2d1RLOhoBVn60RfeNvHP/oAXNnx5GxMSCHtlp2oQVgXQCYib8ponoTj4bpQ
	/8oKay2zn/qRKVmt+RsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCi8S-0003p5-5C; Fri, 13 Mar 2020 11:05:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCi7L-0001pP-IT
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:04:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAEED30E;
 Fri, 13 Mar 2020 04:04:38 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 519B23F8A4;
 Fri, 13 Mar 2020 04:04:38 -0700 (PDT)
Date: Fri, 13 Mar 2020 11:04:36 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>, robin.murphy@arm.com
Subject: Re: [PATCH 4/6] arm64: uaccess: Use asm/ccset.h macros in __range_ok
Message-ID: <20200313110436.GD42546@lakrids.cambridge.arm.com>
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-5-richard.henderson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311180416.6509-5-richard.henderson@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_040439_809954_26BBA04B 
X-CRM114-Status: GOOD (  17.88  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 11:04:14AM -0700, Richard Henderson wrote:
> Uses of __range_ok almost always feed a branch.
> This allows the compiler to use flags directly.

If we want to give hte compiler the most freedom, the best thing would
be to write this in C. IIUC this code is written in assembly largely for
historical reasons, and the comment above says:

| This is equivalent to the following test:
| (u65)addr + (u65)size <= (u65)current->addr_limit + 1

... which e.g. we could write as:

	(__uint128_t)addr + (__uint128_t)size <= (__uint128_t)limit + 1;

... which would be much clearer than the assembly.

Is there any pattern like that for which the compiler generates
reasonable looking code, and if not, is that something that could be
improved compiler side?

Thanks,
Mark.

> 
> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> ---
>  arch/arm64/include/asm/uaccess.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index fe3dd70e901e..ca1acd7b95c3 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -22,6 +22,7 @@
>  #include <asm/ptrace.h>
>  #include <asm/memory.h>
>  #include <asm/extable.h>
> +#include <asm/ccset.h>
>  
>  #define get_fs()	(current_thread_info()->addr_limit)
>  
> @@ -86,10 +87,10 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>  	//    comes from the carry in being clear. Otherwise, we are
>  	//    testing X' - C == 0, subject to the previous adjustments.
>  	"	sbcs	xzr, %[addr], %[limit]\n"
> -	"       cset    %[addr], ls\n"
> -	: [addr] "=&r" (ret), [limit] "+r" (limit)
> +		CC_SET(ls)
> +	: [addr] "=&r" (addr), [limit] "+r" (limit), CC_OUT(ls) (ret)
>  	: [size] "Ir" (size), [addr_in] "r" (addr)
> -	: "cc");
> +	: CC_CLOBBER);
>  
>  	return ret;
>  }
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
