Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15658182F92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 12:48:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K5jjs2UOxIC6EPdVy9OVvNrduDKm13StgQ5ZtElc064=; b=iMkSRj9tTToLeFt5Z5RJmsZYs
	786NgqC/OLdHMod1JtEFNSD1fpvFxVGVo/4dN1KDLYF95u2OSTo6fG/dD0pYEPb8U5Hz5GOJKg4YL
	BXhsW3NTfDdwDknQbPu1aAntUBkUFj+PaXZt60+PMsfRa01HAugti6T2IY7aDex/DtJYeDpn+6/Ml
	yU6HS6pqz0Ec0kACC1Ch4ti4VpRKYJyt95IFO6gd89ioEh3TX3NlSSGS3+ncxf0Nk9z7xQQd6gG8l
	Ly/GF4OwQC/OoVfyi+UCSGFRFxgWqpnVwAZslAQl0IOKWVP1znucjHND9Yu/hQ0xr6PKRRODBJoI6
	6Fhyx0Y7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCMK6-0007Rn-Ud; Thu, 12 Mar 2020 11:48:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCMJz-0007RT-MU
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 11:48:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C771831B;
 Thu, 12 Mar 2020 04:48:14 -0700 (PDT)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C3E43F67D;
 Thu, 12 Mar 2020 04:48:14 -0700 (PDT)
Subject: Re: [PATCH 4/6] arm64: uaccess: Use asm/ccset.h macros in __range_ok
To: Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-5-richard.henderson@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f276f9cf-823f-a899-e8d2-14f247fd0813@arm.com>
Date: Thu, 12 Mar 2020 11:48:15 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311180416.6509-5-richard.henderson@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_044815_778865_3DF06360 
X-CRM114-Status: GOOD (  16.58  )
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

On 2020-03-11 6:04 pm, Richard Henderson wrote:
> Uses of __range_ok almost always feed a branch.
> This allows the compiler to use flags directly.
> 
> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> ---
>   arch/arm64/include/asm/uaccess.h | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index fe3dd70e901e..ca1acd7b95c3 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -22,6 +22,7 @@
>   #include <asm/ptrace.h>
>   #include <asm/memory.h>
>   #include <asm/extable.h>
> +#include <asm/ccset.h>
>   
>   #define get_fs()	(current_thread_info()->addr_limit)
>   
> @@ -86,10 +87,10 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>   	//    comes from the carry in being clear. Otherwise, we are
>   	//    testing X' - C == 0, subject to the previous adjustments.
>   	"	sbcs	xzr, %[addr], %[limit]\n"
> -	"       cset    %[addr], ls\n"
> -	: [addr] "=&r" (ret), [limit] "+r" (limit)
> +		CC_SET(ls)
> +	: [addr] "=&r" (addr), [limit] "+r" (limit), CC_OUT(ls) (ret)

...and we've immediately undone any benefit of the previous patch by 
effectively recoupling %0 with addr again :/

I don't entirely follow why, not least because this CC_SET/CC_OUT 
business is virtually unreadable. At the very least the macro should at 
least take an operand identifier as an explicit argument rather than 
secretly generating one, so that we're not all scratching our heads 
wondering how it can possibly work at all. Furthermore, if the 
associated C variable is a 32-bit or smaller type, then won't it provoke 
warnings from Clang due to the operand lacking the "w" modifier?

Robin.

>   	: [size] "Ir" (size), [addr_in] "r" (addr)
> -	: "cc");
> +	: CC_CLOBBER);
>   
>   	return ret;
>   }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
