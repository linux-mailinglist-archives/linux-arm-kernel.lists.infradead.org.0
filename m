Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DAADEB35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:43:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6Z3X9mx1RPqI3lZlCX92FzrY4aJXSzNSy4KkoRKxYIw=; b=Ixd354eTvnKTkOUDFbxtjLWXF
	eGCtK9RSWtavpY2D3vqBWR0ieGIugH/U6lz9nvTn0Q3Mpw8mja68jr2uiMWAEFerCZMLBJV+17J43
	jPQU89Td6gG6PKEh8NtqkEWi73PuR5KAoH82XqCT33QMx12sGPTfsUStgYGnudNDbgSRXKIE9ouGB
	GAqdzYco18UV4Wdz3Cn1+0R0xxRgdQsgAJqKKbXSg5shHa1trWR93AjzO9iSevhN8I/eGALcLvO/8
	Bm8clYjm3Tw8r2ft3PFIaSVKVAPHk9wWxhbvNOXZA07Mizwm16mqm3N13hbsa7ioOEFE6fLkeOzzy
	b5lFCahng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMW5i-0007Hs-Tk; Mon, 21 Oct 2019 11:43:14 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMW5U-0007HK-Nl
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:43:02 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iMW5R-0002zr-A7; Mon, 21 Oct 2019 13:42:57 +0200
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v6 08/10] arm/arm64: Provide a wrapper for SMCCC 1.1 calls
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Mon, 21 Oct 2019 12:42:57 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191011125930.40834-9-steven.price@arm.com>
References: <20191011125930.40834-1-steven.price@arm.com>
 <20191011125930.40834-9-steven.price@arm.com>
Message-ID: <099040bb979b7cb878a7f489033aacc7@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: steven.price@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 catalin.marinas@arm.com, pbonzini@redhat.com, rkrcmar@redhat.com,
 linux@armlinux.org.uk, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, mark.rutland@arm.com, kvm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_044300_923388_9CB80F47 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 =?UTF-8?Q?Radim_Kr=C4=8Dm=C3=A1?= =?UTF-8?Q?=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-11 13:59, Steven Price wrote:
> SMCCC 1.1 calls may use either HVC or SMC depending on the PSCI
> conduit. Rather than coding this in every call site provide a macro
> which uses the correct instruction. The macro also handles the case
> where no PSCI conduit is configured returning a not supported error
> in res, along with returning the conduit used for the call.
>
> This allow us to remove some duplicated code and will be useful later
> when adding paravirtualized time hypervisor calls.
>
> Signed-off-by: Steven Price <steven.price@arm.com>
> Acked-by: Will Deacon <will@kernel.org>
> ---
>  include/linux/arm-smccc.h | 44 
> +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> index 5daf0e2adf47..fd84a9bfb455 100644
> --- a/include/linux/arm-smccc.h
> +++ b/include/linux/arm-smccc.h
> @@ -303,6 +303,50 @@ asmlinkage void __arm_smccc_hvc(unsigned long
> a0, unsigned long a1,
>  #define SMCCC_RET_NOT_SUPPORTED			-1
>  #define SMCCC_RET_NOT_REQUIRED			-2
>
> +/* Like arm_smccc_1_1* but always returns SMCCC_RET_NOT_SUPPORTED.
> + * Used when the PSCI conduit is not defined. The empty asm 
> statement
> + * avoids compiler warnings about unused variables.

nit: comment style.

> + */
> +#define __fail_smccc_1_1(...)						\
> +	do {								\
> +		__declare_args(__count_args(__VA_ARGS__), __VA_ARGS__);	\
> +		asm ("" __constraints(__count_args(__VA_ARGS__)));	\
> +		if (___res)						\
> +			___res->a0 = SMCCC_RET_NOT_SUPPORTED;		\
> +	} while (0)
> +
> +/*
> + * arm_smccc_1_1_invoke() - make an SMCCC v1.1 compliant call
> + *
> + * This is a variadic macro taking one to eight source arguments, 
> and
> + * an optional return structure.
> + *
> + * @a0-a7: arguments passed in registers 0 to 7
> + * @res: result values from registers 0 to 3
> + *
> + * This macro will make either an HVC call or an SMC call depending 
> on the
> + * current PSCI conduit. If no valid conduit is available then -1
> + * (SMCCC_RET_NOT_SUPPORTED) is returned in @res.a0 (if supplied).
> + *
> + * The return value also provides the conduit that was used.
> + */
> +#define arm_smccc_1_1_invoke(...) ({					\
> +		int method = psci_ops.conduit;				\
> +		switch (method) {					\
> +		case PSCI_CONDUIT_HVC:					\
> +			arm_smccc_1_1_hvc(__VA_ARGS__);			\
> +			break;						\
> +		case PSCI_CONDUIT_SMC:					\
> +			arm_smccc_1_1_smc(__VA_ARGS__);			\
> +			break;						\
> +		default:						\
> +			__fail_smccc_1_1(__VA_ARGS__);			\
> +			method = PSCI_CONDUIT_NONE;			\
> +			break;						\
> +		}							\
> +		method;							\
> +	})
> +
>  /* Paravirtualised time calls (defined by ARM DEN0057A) */
>  #define ARM_SMCCC_HV_PV_TIME_FEATURES				\
>  	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL,			\

All this should most probably go on top of the SMCCC conduit cleanup 
that
has already been already queued in the arm64 tree (see 
arm64/for-next/smccc-conduit-cleanup).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
