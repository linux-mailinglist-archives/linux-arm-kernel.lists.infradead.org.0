Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C489182190
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 20:09:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XbCWHPeWU8vs99BgAeFIDCL0jYFqBwRoaX/6pHD7DW0=; b=LoGpDWVeg9A52RnYWdr5fBF8K
	otVvQ7tLW/XQgWvI5PL1Sv6cvOBhg/3oeKahEQNWelaba/LrZ5Dms/0pylAMfiLpVGyst6C/nrwGh
	n/MG5OiE2Bl3McoW87K0HatNx3eQ08DB2wLJ6SkirrEEpJdknIPc9/LVjWcRD9899A6JR/aN4Oy1s
	aAE/LFBygE+hpDqyLdggLd8PviklmE9P2nh3yHqf0YtnSRmUZuLgmO4en3FctkKEb6DgT0wIEGF/O
	4oJ6HWfhWnU856FGPqMWFPV8X3vs/RVAd8mnn+tLLOvIXHyozqIhiBehWB9a6G2VQWlpoKNwjBiCh
	9JYW1qPog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC6j4-00011P-Dy; Wed, 11 Mar 2020 19:09:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC6iv-00010U-MU
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 19:08:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 46D271FB;
 Wed, 11 Mar 2020 12:08:57 -0700 (PDT)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA2E93F534;
 Wed, 11 Mar 2020 12:08:56 -0700 (PDT)
Subject: Re: [PATCH 3/6] arm64: uaccess: Untie the input address in __range_ok
To: Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <20200311180416.6509-1-richard.henderson@linaro.org>
 <20200311180416.6509-4-richard.henderson@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f6cad657-f78d-b65b-76a8-073580e9ad4b@arm.com>
Date: Wed, 11 Mar 2020 19:08:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200311180416.6509-4-richard.henderson@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_120857_781428_DFF0CBD1 
X-CRM114-Status: GOOD (  17.81  )
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
> There's no reason for the input address to match the output
> register.  Give the register allocator a bit more freedom.

See commit 9085b34d0e83 - as originally written they *were* the same 
operand, and this was just some impedance-matching for types. However, I 
suppose this might save a mov to initialise "ret" in the 
!CONFIG_ARM64_TAGGED_ADDR_ABI case where the original value of "addr" is 
still live for subsequent use, so it's probably reasonable. On the other 
hand, the naming only reinforces my previous complaint - now we have 
"addr_in" corresponding to "addr", and "addr" bearing no relation to 
either of those :(

Robin.

> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> ---
>   arch/arm64/include/asm/uaccess.h | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index ceb1d79eab09..fe3dd70e901e 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -75,7 +75,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>   	asm volatile(
>   	// A + B <= C + 1 for all A,B,C, in four easy steps:
>   	// 1: X = A + B; X' = X % 2^64
> -	"	adds	%[addr], %[addr], %[size]\n"
> +	"	adds	%[addr], %[addr_in], %[size]\n"
>   	// 2: Set C = 0 if X > 2^64, to guarantee X' > C in step 4
>   	"	csel	%[limit], xzr, %[limit], hi\n"
>   	// 3: Set X' = ~0 if X >= 2^64. For X == 2^64, this decrements X'
> @@ -88,7 +88,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>   	"	sbcs	xzr, %[addr], %[limit]\n"
>   	"       cset    %[addr], ls\n"
>   	: [addr] "=&r" (ret), [limit] "+r" (limit)
> -	: [size] "Ir" (size), "0" (addr)
> +	: [size] "Ir" (size), [addr_in] "r" (addr)
>   	: "cc");
>   
>   	return ret;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
