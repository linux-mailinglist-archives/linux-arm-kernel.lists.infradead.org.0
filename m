Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2721C1238
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ppwr2Vz/hTqenf+Wai97mYFRU4t18T7MvSU3dRYbRPA=; b=hz1bOap+R16Ece
	+6+J4eS15RO2UHq1wqs8I8hv0NhZ15awP88marF/WK2pDeD+Soqz2jKKT7ZKHvVDL9JBBu17pNs3U
	Zah5Ab1TT6D+SbKo0GfutpUhThVR9gbhEt3cjD7dfJiIzc+xA96zuCXjohDDehQGtHdKikC9m//pn
	b+hOC1N2haDeZMWKodRVXjDHDDs9a1RWTWjDD2Uvxj62v7eL0zw35RiH5MhyqcRVpC9xDtivsXIZs
	4g/mFrFVMBnBC4/a4FD+WitrX1QU6i6jHkTq88C/7NTPt4Xy/4mGuw58Gf3rWhj2pJP86FWv/EiWj
	lpM28EQNFjkkcVsEVE4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUrj-0007XX-0T; Fri, 01 May 2020 12:34:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUrZ-0007X6-Br
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:33:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B96D1FB;
 Fri,  1 May 2020 05:33:52 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 16F0A3F305;
 Fri,  1 May 2020 05:33:50 -0700 (PDT)
Date: Fri, 1 May 2020 13:33:42 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 1/3] arm64: entry: Refactor and modernise annotation
 for ret_to_user
Message-ID: <20200501123342.GA53528@C02TD0UTHF1T.local>
References: <20200501115430.37315-1-broonie@kernel.org>
 <20200501115430.37315-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501115430.37315-2-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_053353_449373_B6B03279 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 12:54:28PM +0100, Mark Brown wrote:
> As part of an effort to clarify and clean up the assembler annotations
> new macros have been introduced which annotate the start and end of blocks
> of code in assembler files. Currently ret_to_user has an out of line slow
> path work_pending placed above the main function which makes annotating the
> start and end of these blocks of code awkward.
> 
> Since work_pending is only referenced from within ret_to_user try to make
> things a bit clearer by moving it after the current ret_to_user and then
> marking both ret_to_user and work_pending as part of a single ret_to_user
> code block.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Makes sense to me, and the change looks sound, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/entry.S | 27 ++++++++++++++-------------
>  1 file changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index ddcde093c433..73e2c8f5b728 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -727,21 +727,10 @@ el0_error_naked:
>  	b	ret_to_user
>  SYM_CODE_END(el0_error)
>  
> -/*
> - * Ok, we need to do extra processing, enter the slow path.
> - */
> -work_pending:
> -	mov	x0, sp				// 'regs'
> -	bl	do_notify_resume
> -#ifdef CONFIG_TRACE_IRQFLAGS
> -	bl	trace_hardirqs_on		// enabled while in userspace
> -#endif
> -	ldr	x1, [tsk, #TSK_TI_FLAGS]	// re-check for single-step
> -	b	finish_ret_to_user
>  /*
>   * "slow" syscall return path.
>   */
> -ret_to_user:
> +SYM_CODE_START_LOCAL(ret_to_user)
>  	disable_daif
>  	gic_prio_kentry_setup tmp=x3
>  	ldr	x1, [tsk, #TSK_TI_FLAGS]
> @@ -753,7 +742,19 @@ finish_ret_to_user:
>  	bl	stackleak_erase
>  #endif
>  	kernel_exit 0
> -ENDPROC(ret_to_user)
> +
> +/*
> + * Ok, we need to do extra processing, enter the slow path.
> + */
> +work_pending:
> +	mov	x0, sp				// 'regs'
> +	bl	do_notify_resume
> +#ifdef CONFIG_TRACE_IRQFLAGS
> +	bl	trace_hardirqs_on		// enabled while in userspace
> +#endif
> +	ldr	x1, [tsk, #TSK_TI_FLAGS]	// re-check for single-step
> +	b	finish_ret_to_user
> +SYM_CODE_END(ret_to_user)
>  
>  	.popsection				// .entry.text
>  
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
