Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C76996B9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 23:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRYqpcgQE5lJoqJq3b2UFdaADLYb4aYbDvOi2RHigy8=; b=Pj6dYrxrygxZOW
	5ND+sTmI0ohpy3FoyEfwZO4VwKt+OpjNbZUOqk/5IvbxTXCNSiMGVv1LIz+zVUhynO2dPVoTyoYiN
	kkn2k6+LTD8Wio31PT7anwyZEhi4b/W9gmwCsssna+am9JAhxbFQX+6D458vUEN+O/u9TG1GkGZ6V
	gkmEToKGHfxmJ6OA7XfnuQktEbJwprKbLwr8bNW7MFUTd/5ENPwxU1AutKapOk0mRF1I+oCS3vtiJ
	MCPHbsNty7K+ycmRp/furWUCPJP0V2ZLLCib1ftHPdmF0zrpuGVUDF2zApA/iAlf0KXcNsoBuABRN
	l3iYOe2lEbWNNliO8XMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Bqz-0001Yc-EB; Tue, 20 Aug 2019 21:39:45 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Bqq-0001Xt-RZ
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 21:39:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id d85so4173831pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 14:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BPT2HMqCJmLk/KSZfJZIK7XyZlgmy8I3ISOqOedYMYI=;
 b=TKI8yRBqd0g0PPsEwM0H+yg58Xog7kyVY0HVCnQbyZ3OUHil7pqrh1JF/qk4LJS3/A
 Bg2epFrla1wiqE98ulul6IBn8GlP72ZEVhCcLIzDBpeD0AeoY1hHx8gL/d0UxEjrD66j
 vkn5pphxIOIo6WDguN6JWKFMWnhpbMgPl9RIwXeH/Y5U0NimrGIQwE9q3KaQAcJUZMrx
 rI5Csoy6prj2Eu4fhchV1oAc6mMgdrIxjYF5uAqn0uOp0PPGwe2aDetEP7ruZbWkzzaH
 tvvvwwkUxRzSBUXksWg65ULWA86T4B4kaBmTuM3BkIzJ32tRXlLk7scJI+N3IWPKVzMH
 GiMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BPT2HMqCJmLk/KSZfJZIK7XyZlgmy8I3ISOqOedYMYI=;
 b=sW/ArfpJ8H6GgrAUKVNrNGNR/6QBDVEt2ixyEmXpWZoL+4bAy4LvhJ2sMx0G9W552O
 jFiWhrJP0Yz8iXy4FA9QnQVIOe1g26sOAkKrQr+V0r/yL9lWnsehBIYn4p3gdShpbwxO
 mHIFEjsEWfbh0EvlCSDUoxceLNY0Aewqz3vEz6lbwk9ghQbkObLrqdF1oOHZ0DtAzxQD
 GNhI/E/+HmN3VMuTBSa2LCeO00KZiibVjdHwU9GLE6fnDBjQyAFFH5nbzr3qGtN5SQhD
 fZFrRBsI7o7Mmam0dUAo7WE+gm+B6Kxnz28Y/10b0uQITtZKj6Rejhj90qn8COi3WIzr
 QQKA==
X-Gm-Message-State: APjAAAW0pqZgxM+zmwDIlIfTolLD2tBBe7wbwpPZ3z0kElJMIjqoV/yn
 ltL4Cqi0o2SvnmHqxwCX+6BkItNoIHMJMD2FFb/sxg==
X-Google-Smtp-Source: APXvYqxBqRgYfUEtazO57CZqaKTQi86iwt735GapPUJErcj4dzigpW0DtRB5m1toDgcJz0LrTBPMNK4aQMgcm4AZVH8=
X-Received: by 2002:aa7:8085:: with SMTP id v5mr32511807pff.165.1566337171932; 
 Tue, 20 Aug 2019 14:39:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190820194351.107486-1-nhuck@google.com>
In-Reply-To: <20190820194351.107486-1-nhuck@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 20 Aug 2019 14:39:20 -0700
Message-ID: <CAKwvOdm+sGyKfAMNbL10ME=DrG5=4d5kvzdMxjNC22JLLr1h=g@mail.gmail.com>
Subject: Re: [PATCH] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_143936_921839_E2A1D522 
X-CRM114-Status: GOOD (  45.43  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Tri Vo <trong@google.com>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 =?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 12:44 PM Nathan Huckleberry <nhuck@google.com> wrote:
>
> The stackframe setup when compiled with clang is different.
> Since the stack unwinder expects the gcc stackframe setup it
> fails to print backtraces. This patch adds support for the
> clang stackframe setup.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/35
> Cc: clang-built-linux@googlegroups.com
> Suggested-by: Tri Vo <trong@google.com>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> ---
> Changes from RFC
> * Push extra register to satisfy 8 byte alignment requirement
> * Add clarifying comments
> * Separate code into its own file

Thanks for the patch! The added comments and moving the implementation
to its own file make it easier to review.

>
>  arch/arm/Kconfig.debug         |   4 +-
>  arch/arm/Makefile              |   5 +-
>  arch/arm/lib/Makefile          |   8 +-
>  arch/arm/lib/backtrace-clang.S | 224 +++++++++++++++++++++++++++++++++
>  4 files changed, 237 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/lib/backtrace-clang.S
>
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 85710e078afb..92fca7463e21 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -56,7 +56,7 @@ choice
>
>  config UNWINDER_FRAME_POINTER
>         bool "Frame pointer unwinder"
> -       depends on !THUMB2_KERNEL && !CC_IS_CLANG
> +       depends on !THUMB2_KERNEL
>         select ARCH_WANT_FRAME_POINTERS
>         select FRAME_POINTER
>         help
> @@ -1872,7 +1872,7 @@ config DEBUG_UNCOMPRESS
>           When this option is set, the selected DEBUG_LL output method
>           will be re-used for normal decompressor output on multiplatform
>           kernels.
> -
> +

Probably can drop the added newline?

>
>  config UNCOMPRESS_INCLUDE
>         string
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..729e223b83fe 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -36,7 +36,10 @@ KBUILD_CFLAGS        += $(call cc-option,-mno-unaligned-access)
>  endif
>
>  ifeq ($(CONFIG_FRAME_POINTER),y)
> -KBUILD_CFLAGS  +=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> +KBUILD_CFLAGS  +=-fno-omit-frame-pointer
> +  ifeq ($(CONFIG_CC_IS_GCC),y)
> +  KBUILD_CFLAGS += -mapcs -mno-sched-prolog
> +  endif

While I can appreciate the indentation, it's unusual to indent
additional depths of kernel Makefiles.  At least the rest of this file
does not do so.  Of course, the other Makefile you touch below does
two spaces.  At least try to keep the file internally consistent, even
if the kernel itself is inconsistent.

>  endif
>
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index b25c54585048..e10a769c72ec 100644
> --- a/arch/arm/lib/Makefile
> +++ b/arch/arm/lib/Makefile
> @@ -5,7 +5,7 @@
>  # Copyright (C) 1995-2000 Russell King
>  #
>
> -lib-y          := backtrace.o changebit.o csumipv6.o csumpartial.o   \
> +lib-y          := changebit.o csumipv6.o csumpartial.o               \
>                    csumpartialcopy.o csumpartialcopyuser.o clearbit.o \
>                    delay.o delay-loop.o findbit.o memchr.o memcpy.o   \
>                    memmove.o memset.o setbit.o                        \
> @@ -19,6 +19,12 @@ lib-y                := backtrace.o changebit.o csumipv6.o csumpartial.o   \
>  mmu-y          := clear_user.o copy_page.o getuser.o putuser.o       \
>                    copy_from_user.o copy_to_user.o
>
> +ifdef CONFIG_CC_IS_CLANG
> +  lib-y += backtrace-clang.o
> +else
> +  lib-y += backtrace.o
> +endif

The indentation should match the above (from this file).  Looks like 1
tab after lib-y.  See L34(CONFIG_CPU_32v3) for what I would have
expected.

> +
>  # using lib_ here won't override already available weak symbols
>  obj-$(CONFIG_UACCESS_WITH_MEMCPY) += uaccess_with_memcpy.o
>
> diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> new file mode 100644
> index 000000000000..2b02014dbdd1
> --- /dev/null
> +++ b/arch/arm/lib/backtrace-clang.S
> @@ -0,0 +1,224 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + *  linux/arch/arm/lib/backtrace-clang.S
> + *
> + *  Copyright (C) 2019 Nathan Huckleberry
> + *
> + */
> +#include <linux/kern_levels.h>
> +#include <linux/linkage.h>
> +#include <asm/assembler.h>
> +               .text
> +
> +/* fp is 0 or stack frame */

ah, I see that the reference implementation uses an assembly comment
here. Ok (sorry for the noise).

> +
> +#define frame  r4
> +#define sv_fp  r5
> +#define sv_pc  r6
> +#define mask   r7
> +#define sv_lr   r8
> +
> +ENTRY(c_backtrace)
> +
> +#if !defined(CONFIG_FRAME_POINTER) || !defined(CONFIG_PRINTK)
> +               ret     lr
> +ENDPROC(c_backtrace)
> +#else
> +
> +
> +/*
> + * Clang does not store pc or sp in function prologues
> + *             so we don't know exactly where the function
> + *             starts.
> + * We can treat the current frame's lr as the saved pc and the
> + *             preceding frame's lr as the lr, but we can't

preceding frame's lr as the current frame's lr, ...

> + *             trace the most recent call.
> + * Inserting a false stack frame allows us to reference the
> + *             function called last in the stacktrace.
> + * If the call instruction was a bl we can look at the callers
> + *             branch instruction to calculate the saved pc.
> + * We can recover the pc in most cases, but in cases such as
> + *             calling function pointers we cannot. In this
> + *             case, default to using the lr. This will be
> + *             some address in the function, but will not
> + *             be the function start.
> + * Unfortunately due to the stack frame layout we can't dump
> + *              r0 - r3, but these are less frequently saved.

The use of tabs vs spaces in these comments is inconsistent.  Not that
I can see whitespace, but:
https://github.com/nickdesaulniers/dotfiles/blob/37359525f5a403b4ed2d3f9d1bbbee2da8ec8115/.vimrc#L35-L41
Also, I don't think you need to tab indent every line after the first.
Where did that format come from?

> + *
> + * Stack frame layout:
> + *             <larger addresses>
> + *             saved lr
> + *    frame => saved fp
> + *             optionally saved caller registers (r4 - r10)
> + *             optionally saved arguments (r0 - r3)
> + *             <top of stack frame>
> + *             <smaller addresses>
> + *
> + * Functions start with the following code sequence:
> + * corrected pc =>  stmfd sp!, {..., fp, lr}
> + *                 add fp, sp, #x
> + *                 stmfd sp!, {r0 - r3} (optional)
> + *
> + *
> + *
> + *
> + *
> + *
> + * The diagram below shows an example stack setup
> + *     for dump_stack.
> + *
> + * The frame for c_backtrace has pointers to the
> + *     code of dump_stack. This is why the frame of
> + *     c_backtrace is used to for the pc calculation
> + *     of dump_stack. This is why we must move back
> + *     a frame to print dump_stack.
> + *
> + * The stored locals for dump_stack are in dump_stack's
> + *     frame. This means that to fully print dump_stack's frame
> + *     we need the both the frame for dump_stack (for locals) and the

we need both the ...
(There's an extra `the` in the sentence).

> + *     frame that was called by dump_stack (for pc).
> + *
> + * To print locals we must know where the function start is. If
> + *     we read the function prologue opcodes we can determine
> + *     which variables are stored in the stack frame.
> + *
> + * To find the function start of dump_stack we can look at the
> + *     stored LR of show_stack. It points at the instruction
> + *     directly after the bl dump_stack. We can then read the
> + *     offset from the bl opcode to determine where the branch takes us.
> + *     The address calculated must be the start of dump_stack.
> + *
> + * c_backtrace frame           dump_stack:
> + * {[LR]    }  ============|   ...
> + * {[FP]    }  =======|    |   bl c_backtrace
> + *                    |    |=> ...
> + * {[R4-R10]}         |
> + * {[R0-R3] }         |        show_stack:
> + * dump_stack frame   |        ...
> + * {[LR]    } =============|   bl dump_stack
> + * {[FP]    } <=======|    |=> ...
> + * {[R4-R10]}
> + * {[R0-R3] }
> + */
> +
> +stmfd   sp!, {r4 - r9, fp, lr} @ Save an extra register
> +                               @ to ensure 8 byte alignment
> +movs   frame, r0               @ if frame pointer is zero
> +beq    no_frame                @ we have no stack frames
> +
> +tst    r1, #0x10               @ 26 or 32-bit mode?
> +moveq  mask, #0xfc000003

Should we be using different masks for ARM vs THUMB as per the
reference implementation?

> +movne  mask, #0                @ mask for 32-bit
> +
> +/*
> + * Switches the current frame to be the frame for dump_stack.
> + */
> +               add     frame, sp, #24          @ switch to false frame
> +for_each_frame:        tst     frame, mask             @ Check for address exceptions
> +               bne     no_frame
> +
> +/*
> + * sv_fp is the stack frame with the locals for the current considered
> + *     function.
> + * sv_pc is the saved lr frame the frame above. This is a pointer to a
> + *     code address within the current considered function, but
> + *     it is not the function start. This value gets updated to be
> + *     the function start later if it is possible.
> + */
> +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp

The reference implementation applies the mask to sv_pc and sv_fp.  I
assume we want to, too?

> +
> +               teq     sv_fp, #0               @ make sure next frame exists
> +               beq     no_frame
> +
> +/*
> + * sv_lr is the lr from the function that called the current function. This
> + *     is a pointer to a code address in the current function's caller.
> + *     sv_lr-4 is the instruction used to call the current function.
> + * This sv_lr can be used to calculate the function start if the function
> + *     was called using a bl instruction. If the function start
> + *     can be recovered sv_pc is overwritten with the function start.
> + * If the current function was called using a function pointer we cannot
> + *     recover the function start and instead continue with sv_pc as
> + *     an arbitrary value within the current function. If this is the case
> + *     we cannot print registers for the current function, but the stacktrace
> + *     is still printed properly.
> + */
> +1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> +
> +               ldr     r0, [sv_lr, #-4]        @ get call instruction
> +               ldr     r3, .Ldsi+8

I wonder what `dsi` stands for, it could use a better name.  Maybe put
that mask in a more descriptively named section and use that instead
of `.Ldsi+8`?

> +               and     r2, r3, r0              @ is this a bl call
> +               teq     r2, r3
> +               bne     finished_setup          @ give up if it's not
> +               and     r0, #0xffffff           @ get call offset 24-bit int
> +               lsl     r0, r0, #8              @ sign extend offset
> +               asr     r0, r0, #8

It's too bad this should work for older ARM versions, v6 added
dedicated instructions for this:
http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.dui0489c/Cihfifdd.html

> +               ldr     sv_pc, [sv_fp, #4]      @ get lr address
> +               add     sv_pc, sv_pc, #-4       @ get call instruction address
> +               add     sv_pc, sv_pc, #8        @ take care of prefetch
> +               add     sv_pc, sv_pc, r0, lsl #2 @ find function start
> +
> +finished_setup:
> +
> +               bic     sv_pc, sv_pc, mask      @ mask PC/LR for the mode
> +
> +/*
> + * Print the function (sv_pc) and where it was called
> + *     from (sv_lr).
> + */
> +1004:          mov     r0, sv_pc
> +
> +               mov     r1, sv_lr
> +               mov     r2, frame
> +               bic     r1, r1, mask            @ mask PC/LR for the mode
> +               bl      dump_backtrace_entry
> +
> +/*
> + * Test if the function start is a stmfd instruction
> + *     to determine which registers were stored in the function
> + *     prologue.
> + * If we could not recover the sv_pc because we were called through
> + *     a function pointer the comparison will fail and no registers
> + *     will print.
> + */
> +1005:          ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> +               ldr     r3, .Ldsi               @ instruction exists,
> +               teq     r3, r1, lsr #11
> +               ldr     r0, [frame]             @ locals are stored in
> +                                               @ the preceding frame
> +               subeq   r0, r0, #4
> +               bleq    dump_backtrace_stm      @ dump saved registers

Do we need to do anything to test .Ldsi+4? Otherwise looks like we
define it but don't use it?

> +
> +/*
> + * If we are out of frames or if the next frame
> + *     is invalid.
> + */
> +               teq     sv_fp, #0               @ zero saved fp means
> +               beq     no_frame                @ no further frames
> +
> +               cmp     sv_fp, frame            @ next frame must be
> +               mov     frame, sv_fp            @ above the current frame
> +               bhi     for_each_frame
> +
> +1006:          adr     r0, .Lbad
> +               mov     r1, frame
> +               bl      printk
> +no_frame:      ldmfd   sp!, {r4 - r9, fp, pc}
> +ENDPROC(c_backtrace)
> +               .pushsection __ex_table,"a"
> +               .align  3
> +               .long   1001b, 1006b
> +               .long   1002b, 1006b
> +               .long   1003b, 1006b
> +               .long   1004b, 1006b
> +               .long   1005b, 1006b
> +               .popsection
> +
> +.Lbad:         .asciz  "Backtrace aborted due to bad frame pointer <%p>\n"
> +               .align
> +.Ldsi:         .word   0xe92d4800 >> 11        @ stmfd sp!, {... fp, lr}
> +               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> +               .word   0x0b000000              @ bl if these bits are set
> +
> +#endif
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
