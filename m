Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB257FC16
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 16:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3XaotlrzuzBTA88iZSxAdEOQVsVMRqrYlprmmExJ2VQ=; b=N89w9N4fHr8jspWwJVUBm/8Bp
	DKLMPFMD4KFj+eg/0nX4bJfb+2Eg5Aoejumyj5zN+8R4K58E4OOFuQIkyLtYAs6WCN+g4r8rjIgPx
	aY83WM7yaCNRn2eMqId+2ZL5nE6xNZuEin1qSMtXLStiWXknpx29CkrJjYbmGViUaYCwV3gTWrLym
	mjYAvAoLTjy/Msqsmf3wBZpjji+KGPtfSd7Rih9qJjGBBOQKtQkMq0J3K4/suqMdBFopdHkW/QD0A
	k/BGlECdMCrsxi0+cLHb5KZEirvy8w1bouAhoRzpM6QVZn6rUvONv9/GXUY5pRsc+pdqICJvVFXNt
	0CDr3ET8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htYTe-00076M-T3; Fri, 02 Aug 2019 14:24:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htYTY-00075H-IU
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 14:24:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B06481570;
 Fri,  2 Aug 2019 07:24:06 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE5443F575;
 Fri,  2 Aug 2019 07:24:05 -0700 (PDT)
Subject: Re: [RFC PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>, linux@armlinux.org.uk
References: <20190801231046.105022-1-nhuck@google.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <01222982-4206-9925-0482-639a79384451@arm.com>
Date: Fri, 2 Aug 2019 15:24:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801231046.105022-1-nhuck@google.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_072408_696790_4478102A 
X-CRM114-Status: GOOD (  31.34  )
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
Cc: clang-built-linux@googlegroups.com, Tri Vo <trong@google.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/08/2019 00:10, Nathan Huckleberry wrote:
> The stackframe setup when compiled with clang is different.
> Since the stack unwinder expects the gcc stackframe setup it
> fails to print backtraces. This patch adds support for the
> clang stackframe setup.
> 
> Cc: clang-built-linux@googlegroups.com
> Suggested-by: Tri Vo <trong@google.com>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
>   arch/arm/Kconfig.debug   |   4 +-
>   arch/arm/Makefile        |   2 +-
>   arch/arm/lib/backtrace.S | 134 ++++++++++++++++++++++++++++++++++++---
>   3 files changed, 128 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 85710e078afb..92fca7463e21 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -56,7 +56,7 @@ choice
>   
>   config UNWINDER_FRAME_POINTER
>   	bool "Frame pointer unwinder"
> -	depends on !THUMB2_KERNEL && !CC_IS_CLANG
> +	depends on !THUMB2_KERNEL
>   	select ARCH_WANT_FRAME_POINTERS
>   	select FRAME_POINTER
>   	help
> @@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
>   	  When this option is set, the selected DEBUG_LL output method
>   	  will be re-used for normal decompressor output on multiplatform
>   	  kernels.
> -	
> +
>   
>   config UNCOMPRESS_INCLUDE
>   	string
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..a593d9c4e18a 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -36,7 +36,7 @@ KBUILD_CFLAGS	+= $(call cc-option,-mno-unaligned-access)
>   endif
>   
>   ifeq ($(CONFIG_FRAME_POINTER),y)
> -KBUILD_CFLAGS	+=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> +KBUILD_CFLAGS	+=-fno-omit-frame-pointer $(call cc-option,-mapcs,) $(call cc-option,-mno-sched-prolog,)
>   endif
>   
>   ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
> index 1d5210eb4776..fd64eec9f6ae 100644
> --- a/arch/arm/lib/backtrace.S
> +++ b/arch/arm/lib/backtrace.S
> @@ -14,10 +14,7 @@
>   @ fp is 0 or stack frame
>   
>   #define frame	r4
> -#define sv_fp	r5
> -#define sv_pc	r6
>   #define mask	r7
> -#define offset	r8
>   
>   ENTRY(c_backtrace)
>   
> @@ -25,7 +22,8 @@ ENTRY(c_backtrace)
>   		ret	lr
>   ENDPROC(c_backtrace)
>   #else
> -		stmfd	sp!, {r4 - r8, lr}	@ Save an extra register so we have a location...
> +		stmfd   sp!, {r4 - r8, fp, lr}	@ Save an extra register

Note that the Procedure Call Standard for EABI requires that SP be 
8-byte-aligned at a public interface. Pushing an odd number of registers 
here looks like it will make the subsequent calls to dump_backtrace_* 
and printk violate that condition.

Robin.

> +						@ so we have a location..
>   		movs	frame, r0		@ if frame pointer is zero
>   		beq	no_frame		@ we have no stack frames
>   
> @@ -35,11 +33,119 @@ ENDPROC(c_backtrace)
>    THUMB(		orreq	mask, #0x03		)
>   		movne	mask, #0		@ mask for 32-bit
>   
> -1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
> -		ldr	r0, [sp], #4		@ by stmfd for this CPU
> -		adr	r1, 1b
> -		sub	offset, r0, r1
>   
> +#if defined(CONFIG_CC_IS_CLANG)
> +/*
> + * Clang does not store pc or sp in function prologues
> + * 		so we don't know exactly where the function
> + * 		starts.
> + * We can treat the current frame's lr as the saved pc and the
> + * 		preceding frame's lr as the lr, but we can't
> + * 		trace the most recent call.
> + * Inserting a false stack frame allows us to reference the
> + * 		function called last in the stacktrace.
> + * If the call instruction was a bl we can look at the callers
> + * 		branch instruction to calculate the saved pc.
> + * We can recover the pc in most cases, but in cases such as
> + * 		calling function pointers we cannot. In this
> + * 		case, default to using the lr. This will be
> + * 		some address in the function, but will not
> + * 		be the function start.
> + * Unfortunately due to the stack frame layout we can't dump
> + *              r0 - r3, but these are less frequently saved.
> + *
> + * Stack frame layout:
> + *             <larger addresses>
> + *             saved lr
> + *    frame => saved fp
> + *             optionally saved caller registers (r4 - r10)
> + *             optionally saved arguments (r0 - r3)
> + *             <top of stack frame>
> + *             <smaller addressses>
> + *
> + * Functions start with the following code sequence:
> + * corrected pc =>  stmfd sp!, {..., fp, lr}
> + *		    add fp, sp, #x
> + *		    stmfd sp!, {r0 - r3} (optional)
> + */
> +#define sv_fp	r5
> +#define sv_pc	r6
> +#define sv_lr   r8
> +		add     frame, sp, #20          @ switch to false frame
> +for_each_frame:	tst	frame, mask		@ Check for address exceptions
> +		bne	no_frame
> +
> +1001:		ldr	sv_pc, [frame, #4]	@ get saved 'pc'
> +1002:		ldr	sv_fp, [frame, #0]	@ get saved fp
> +
> +		teq     sv_fp, #0               @ make sure next frame exists
> +		beq     no_frame
> +
> +1003:		ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> +
> +		//try to find function start
> +		ldr     r0, [sv_lr, #-4]        @ get call instruction
> +		ldr     r3, .Ldsi+8
> +		and     r2, r3, r0              @ is this a bl call
> +		teq     r2, r3
> +		bne     finished_setup          @ give up if it's not
> +		and     r0, #0xffffff           @ get call offset 24-bit int
> +		lsl     r0, r0, #8              @ sign extend offset
> +		asr     r0, r0, #8
> +		ldr     sv_pc, [sv_fp, #4]      @ get lr address
> +		add     sv_pc, sv_pc, #-4	@ get call instruction address
> +		add     sv_pc, sv_pc, #8        @ take care of prefetch
> +		add     sv_pc, sv_pc, r0, lsl #2 @ find function start
> +		b       finished_setup
> +
> +finished_setup:
> +
> +		bic	sv_pc, sv_pc, mask	@ mask PC/LR for the mode
> +
> +1004:		mov     r0, sv_pc
> +
> +		mov     r1, sv_lr
> +		mov	r2, frame
> +		bic	r1, r1, mask		@ mask PC/LR for the mode
> +		bl	dump_backtrace_entry
> +
> +1005:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, lr}
> +		ldr	r3, .Ldsi		@ instruction exists,
> +		teq	r3, r1, lsr #11
> +		ldr     r0, [frame]             @ locals are stored in
> +						@ the preceding frame
> +		subeq	r0, r0, #4
> +		bleq	dump_backtrace_stm	@ dump saved registers
> +
> +		teq	sv_fp, #0		@ zero saved fp means
> +		beq	no_frame		@ no further frames
> +
> +		cmp	sv_fp, frame		@ next frame must be
> +		mov	frame, sv_fp		@ above the current frame
> +		bhi	for_each_frame
> +
> +1006:		adr	r0, .Lbad
> +		mov	r1, frame
> +		bl	printk
> +no_frame:	ldmfd	sp!, {r4 - r8, fp, pc}
> +ENDPROC(c_backtrace)
> +		.pushsection __ex_table,"a"
> +		.align	3
> +		.long	1001b, 1006b
> +		.long	1002b, 1006b
> +		.long	1003b, 1006b
> +		.long	1004b, 1006b
> +		.popsection
> +
> +.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
> +		.align
> +.Ldsi:		.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
> +		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
> +		.word   0x0b000000              @ bl if these bits are set
> +
> +ENDPROC(c_backtrace)
> +
> +#else
>   /*
>    * Stack frame layout:
>    *             optionally saved caller registers (r4 - r10)
> @@ -55,6 +161,15 @@ ENDPROC(c_backtrace)
>    *                  stmfd sp!, {r0 - r3} (optional)
>    * corrected pc =>  stmfd sp!, {..., fp, ip, lr, pc}
>    */
> +#define sv_fp	r5
> +#define sv_pc	r6
> +#define offset	r8
> +
> +1:		stmfd	sp!, {pc}		@ calculate offset of PC stored
> +		ldr	r0, [sp], #4		@ by stmfd for this CPU
> +		adr	r1, 1b
> +		sub	offset, r0, r1
> +
>   for_each_frame:	tst	frame, mask		@ Check for address exceptions
>   		bne	no_frame
>   
> @@ -98,7 +213,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
>   1006:		adr	r0, .Lbad
>   		mov	r1, frame
>   		bl	printk
> -no_frame:	ldmfd	sp!, {r4 - r8, pc}
> +no_frame:	ldmfd	sp!, {r4 - r8, fp, pc}
>   ENDPROC(c_backtrace)
>   		
>   		.pushsection __ex_table,"a"
> @@ -115,3 +230,4 @@ ENDPROC(c_backtrace)
>   		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
>   
>   #endif
> +#endif
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
