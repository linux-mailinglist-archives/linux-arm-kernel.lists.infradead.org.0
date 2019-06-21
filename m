Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD3F4EC17
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtRAgdbaTWvgHyFvvRJmYcB1m5eCArEC9hnVROLkjYE=; b=tqlH5oZyuQBz6P
	bFtdrKOQPFngZ7rNAms8rk7UQHT4z+iIfHzcf5in/TuJBB/zvdDT8XmvtQaJOzPf/YKMufc86GHmw
	VIRwb2zXBFyfhLdyYKhouh4RLQIxONWxIfC5jqSQXCoRkbc3STuDkLqJMBFy7DLj096SRc/BHzHLZ
	h47Dp55rioN6LxPXYCFzzYOpXmrRnqibCQeXvq4L1Mk73eSq1ZpaVuy2R0a87hGKWREmlLSUMyBjk
	nnxvVXLkmM0g3F63gWYSs2gd9dRWGc9FHTqFhk5SICcYF3s+fsAD0O03o880hl3VStw5OzC6krGuj
	oWBuirL+fw1nC1QFH/dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLYK-00010h-Ke; Fri, 21 Jun 2019 15:34:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLXG-0000MZ-4f
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:33:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 95800C0A;
 Fri, 21 Jun 2019 08:33:05 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C1493F575;
 Fri, 21 Jun 2019 08:33:04 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:33:02 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 5/8] arm64/sve: Implement an helper to flush SVE
 registers
Message-ID: <20190621153302.GA2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-6-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161656.20765-6-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083306_284313_D0C47CDE 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:16:53PM +0100, Julien Grall wrote:
> Introduce a new helper that will zero all SVE registers but the first
> 128-bits of each vector.

Maybe mention that the helper will be used by a subsequent patch.  For
now, it's dead code.

Maybe also mention briefly what this will be used for: i.e., to avoid
the costly store/munge/reload sequences currently used by things like
do_sve_acc().

> Signed-off-by: Julien Grall <julien.grall@arm.com>
> 
> ---
>     Changes in v2:
>         - Fix typo in the commit title
> ---
>  arch/arm64/include/asm/fpsimd.h       |  3 +++
>  arch/arm64/include/asm/fpsimdmacros.h | 19 +++++++++++++++++++
>  arch/arm64/kernel/entry-fpsimd.S      |  7 +++++++
>  3 files changed, 29 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
> index df62bbd33a9a..fda3544c9606 100644
> --- a/arch/arm64/include/asm/fpsimd.h
> +++ b/arch/arm64/include/asm/fpsimd.h
> @@ -83,6 +83,9 @@ static inline void *sve_pffr(struct thread_struct *thread)
>  extern void sve_save_state(void *state, u32 *pfpsr);
>  extern void sve_load_state(void const *state, u32 const *pfpsr,
>  			   unsigned long vq_minus_1);
> +
> +extern void sve_flush_live(void);
> +

We probably don't need the extra blank lines here... these operations
are all closely related low-level backend functions.

>  extern unsigned int sve_get_vl(void);
>  
>  struct arm64_cpu_capabilities;
> diff --git a/arch/arm64/include/asm/fpsimdmacros.h b/arch/arm64/include/asm/fpsimdmacros.h
> index 5e291d9c1ba0..a41ab337bf42 100644
> --- a/arch/arm64/include/asm/fpsimdmacros.h
> +++ b/arch/arm64/include/asm/fpsimdmacros.h
> @@ -175,6 +175,13 @@
>  		| ((\np) << 5)
>  .endm
>  
> +/* PFALSE P\np.B */
> +.macro _sve_pfalse np
> +	_sve_check_preg \np
> +	.inst	0x2518e400			\
> +		| (\np)
> +.endm
> +
>  .macro __for from:req, to:req
>  	.if (\from) == (\to)
>  		_for__body %\from
> @@ -209,6 +216,18 @@
>  921:
>  .endm
>  
> +/* Preserve the first 128-bits of Znz and zero the rest. */
> +.macro _sve_flush_z nz
> +	_sve_check_zreg \nz
> +	mov	v\nz\().16b, v\nz\().16b
> +.endm
> +
> +.macro sve_flush
> + _for n, 0, 31, _sve_flush_z	\n
> + _for n, 0, 15, _sve_pfalse	\n
> +		_sve_wrffr	0
> +.endm
> +
>  .macro sve_save nxbase, xpfpsr, nxtmp
>   _for n, 0, 31,	_sve_str_v	\n, \nxbase, \n - 34
>   _for n, 0, 15,	_sve_str_p	\n, \nxbase, \n - 16
> diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
> index 12d4958e6429..17121a51c41f 100644
> --- a/arch/arm64/kernel/entry-fpsimd.S
> +++ b/arch/arm64/kernel/entry-fpsimd.S
> @@ -57,4 +57,11 @@ ENTRY(sve_get_vl)
>  	_sve_rdvl	0, 1
>  	ret
>  ENDPROC(sve_get_vl)
> +
> +/* Zero all SVE registers but the first 128-bits of each vector */
> +ENTRY(sve_flush_live)
> +	sve_flush
> +	ret
> +ENDPROC(sve_flush_live)
> +
>  #endif /* CONFIG_ARM64_SVE */

The extra blank line makes this more readable, but in the interests
of symmetry can you also add a blank after the corresponding #ifdef?

[...]

With those addressed as appropriate,

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
