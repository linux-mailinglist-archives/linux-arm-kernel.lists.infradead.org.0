Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE8B1B5962
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ANU8ROt8luREiVL+2iKCk1YM6ApmpQmLiAmJSjU4dhs=; b=fvls0UB0mPtOp8
	tkTVqjTrQbvgBUbon5KxR0KdnvmPj+TZmRV1MO+h+pE0Igm+e/l+Ubn/sw8ICYfKV0kdH930XiBiU
	9jZqKwEZe4OlP5XJ1Q8vKfmLclfZpchjf90cLfAvsv0MCXFLEFi2siGzbcb5I+7kNSsVegAXxJnpv
	2ivlxZ3L7MIHmCoGv/8Vfn8r6L27Q1eUmB7uRYeNgA/HNu4O8fGUU/AVskmvIQQZj+AHGUGRrBLIS
	wNskELW3xHg8I7ph94ALI4fyMAYjXNMOH3W+NioO3/nhtsFpFCgjO4tRnEOVsUbKrK6By4/8mTpF8
	v8URbFRixcTr7OzQMWUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZG2-0002fC-PB; Thu, 23 Apr 2020 10:39:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZFt-0002ek-A3
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:38:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1520531B;
 Thu, 23 Apr 2020 03:38:52 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A54943F68F;
 Thu, 23 Apr 2020 03:38:50 -0700 (PDT)
Date: Thu, 23 Apr 2020 11:38:48 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 10/23] arm64: mte: Handle synchronous and asynchronous
 tag check faults
Message-ID: <20200423103847.GC4963@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-11-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421142603.3894-11-catalin.marinas@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_033854_336151_9F545DB4 
X-CRM114-Status: GOOD (  11.63  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 03:25:50PM +0100, Catalin Marinas wrote:
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index ddcde093c433..3650a0a77ed0 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -145,6 +145,31 @@ alternative_cb_end
>  #endif
>  	.endm
>  
> +	/* Check for MTE asynchronous tag check faults */
> +	.macro check_mte_async_tcf, flgs, tmp
> +#ifdef CONFIG_ARM64_MTE
> +alternative_if_not ARM64_MTE
> +	b	1f
> +alternative_else_nop_endif
> +	mrs_s	\tmp, SYS_TFSRE0_EL1
> +	tbz	\tmp, #SYS_TFSR_EL1_TF0_SHIFT, 1f
> +	/* Asynchronous TCF occurred for TTBR0 access, set the TI flag */
> +	orr	\flgs, \flgs, #_TIF_MTE_ASYNC_FAULT
> +	str	\flgs, [tsk, #TSK_TI_FLAGS]
> +	msr_s	SYS_TFSRE0_EL1, xzr
> +1:
> +#endif
> +	.endm
> +
> +	/* Clear the MTE asynchronous tag check faults */
> +	.macro clear_mte_async_tcf
> +#ifdef CONFIG_ARM64_MTE
> +alternative_if ARM64_MTE
> +	msr_s	SYS_TFSRE0_EL1, xzr
> +alternative_else_nop_endif

This needs a 'dsb ish' prior to the msr as an indirect write (async tag
check fault) to the TFSRE0_EL1 register is not ordered with a subsequent
direct write (msr) to this register.

The check_mte_async_tcf macro is fine as we execute it after taking an
exception with SCTLR_EL1.ITFSB bit set (which triggers such
synchronisation).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
