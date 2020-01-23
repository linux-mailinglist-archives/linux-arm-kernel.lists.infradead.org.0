Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8896F1460D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 04:01:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tDQwgCdzMTYIt/apPGovX6y+TKyar9EOqsOFED33ig=; b=H3JPDg/JZjdM6R
	G5XeVuKo+KSj5P8VHUa2ckKw7VvSoeKEKH/fG9vVR5TaMh+prM9VjDH7ulwy+c7XbuHoBB25yzikt
	9qcmMsjDnCHX0w9mar1jQDMP5/JQk61Xe0anDfNiHNEjonvyS0yP6RNxtRdmBZPIII0Hv0NQ2JE6/
	07tTEZfqw9gCfp8uJrQQmk6DWDBdBeSL8Bjz1CxC+e6HmWeqyA00c+kty9LXxlGxhrb6fp4P5BJC3
	q4slrlqb6QtjV0T10FL3lTsiwV6XacsJKfnT7K3IqCMI86SF1OncbqkVcS2AsOAuVqrIQj7zawGT+
	JUV9nXg+WrwyZyT9Zg0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuSjs-0004NW-7J; Thu, 23 Jan 2020 03:01:00 +0000
Received: from mo-csw1115.securemx.jp ([210.130.202.157]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuSjh-0004N1-4L
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 03:00:51 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1115) id 00N30UeN017915;
 Thu, 23 Jan 2020 12:00:34 +0900
X-Iguazu-Qid: 2wHHtzQN0w8BKjG4UZ
X-Iguazu-QSIG: v=2; s=0; t=1579748429; q=2wHHtzQN0w8BKjG4UZ;
 m=ZRJt3YQ7Fnjw5pDhBY6S1lceCBSEIDKVu+ervYixCgg=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1112) id 00N30S1s022989;
 Thu, 23 Jan 2020 12:00:29 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 00N30Sqx001755;
 Thu, 23 Jan 2020 12:00:28 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 00N30RCf012282;
 Thu, 23 Jan 2020 12:00:28 +0900
From: Punit Agrawal <punit1.agrawal@toshiba.co.jp>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: sedi: Annotate SEDI entry points using new style
 annotations
References: <20200122221045.24857-1-broonie@kernel.org>
Date: Thu, 23 Jan 2020 12:01:55 +0900
In-Reply-To: <20200122221045.24857-1-broonie@kernel.org> (Mark Brown's message
 of "Wed, 22 Jan 2020 22:10:45 +0000")
X-TSB-HOP: ON
Message-ID: <87lfpynae4.fsf@kokedama.swc.toshiba.co.jp>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_190049_444456_66EFEAA0 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.157 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

Mark Brown <broonie@kernel.org> writes:

> In an effort to clarify and simplify the annotation of assembly
> functions new macros have been introduced. These replace ENTRY and
> ENDPROC with two different annotations for normal functions and those
> with unusual calling conventions.
>
> The SEDI entry points are currently annotated as normal functions but
> are called from non-kernel contexts with non-standard calling convention
> and should therefore be annotated as such so do so.
>
> Signed-off-by: Mark Brown <broonie@kernel.org>

s/SEDI/SDEI

There is a typo in $SUBJECT and the commit log. The code itself appears
to be fine.

Thanks,
Punit

> ---
>  arch/arm64/kernel/entry.S | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 5d47687592ec..65d126228046 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -938,7 +938,7 @@ NOKPROBE(ret_from_fork)
>   */
>  .ltorg
>  .pushsection ".entry.tramp.text", "ax"
> -ENTRY(__sdei_asm_entry_trampoline)
> +SYM_CODE_START(__sdei_asm_entry_trampoline)
>  	mrs	x4, ttbr1_el1
>  	tbz	x4, #USER_ASID_BIT, 1f
>  
> @@ -960,7 +960,7 @@ ENTRY(__sdei_asm_entry_trampoline)
>  	ldr	x4, =__sdei_asm_handler
>  #endif
>  	br	x4
> -ENDPROC(__sdei_asm_entry_trampoline)
> +SYM_CODE_END(__sdei_asm_entry_trampoline)
>  NOKPROBE(__sdei_asm_entry_trampoline)
>  
>  /*
> @@ -970,14 +970,14 @@ NOKPROBE(__sdei_asm_entry_trampoline)
>   * x2: exit_mode
>   * x4: struct sdei_registered_event argument from registration time.
>   */
> -ENTRY(__sdei_asm_exit_trampoline)
> +SYM_CODE_START(__sdei_asm_exit_trampoline)
>  	ldr	x4, [x4, #(SDEI_EVENT_INTREGS + S_ORIG_ADDR_LIMIT)]
>  	cbnz	x4, 1f
>  
>  	tramp_unmap_kernel	tmp=x4
>  
>  1:	sdei_handler_exit exit_mode=x2
> -ENDPROC(__sdei_asm_exit_trampoline)
> +SYM_CODE_END(__sdei_asm_exit_trampoline)
>  NOKPROBE(__sdei_asm_exit_trampoline)
>  	.ltorg
>  .popsection		// .entry.tramp.text
> @@ -1002,7 +1002,7 @@ __sdei_asm_trampoline_next_handler:
>   * follow SMC-CC. We save (or retrieve) all the registers as the handler may
>   * want them.
>   */
> -ENTRY(__sdei_asm_handler)
> +SYM_CODE_START(__sdei_asm_handler)
>  	stp     x2, x3, [x1, #SDEI_EVENT_INTREGS + S_PC]
>  	stp     x4, x5, [x1, #SDEI_EVENT_INTREGS + 16 * 2]
>  	stp     x6, x7, [x1, #SDEI_EVENT_INTREGS + 16 * 3]
> @@ -1085,6 +1085,6 @@ alternative_else_nop_endif
>  	tramp_alias	dst=x5, sym=__sdei_asm_exit_trampoline
>  	br	x5
>  #endif
> -ENDPROC(__sdei_asm_handler)
> +SYM_CODE_END(__sdei_asm_handler)
>  NOKPROBE(__sdei_asm_handler)
>  #endif /* CONFIG_ARM_SDE_INTERFACE */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
