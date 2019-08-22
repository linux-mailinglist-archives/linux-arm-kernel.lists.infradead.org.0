Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDC1989CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 05:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stTwLBClKqewaE/XEUexv15OixM50mJKoOcq6P3ean8=; b=bo9+xpzMKdK/fZ
	aqPUpS2efccnfvoNfnriSQy5OgeRpzJnXNDsLyts+yp57HyxR904edJVBNS76IXJyDeRG01FfvMan
	Drn/6fUMHUTxWEqsaWI+5Cs+hHuf0TC++VLIPlJCu/M1euQIbn1HeVgf3JjuvKo0hLcWj6XJ91M5q
	hT02nTxr4tKdpPZiQCftIpQS3PxB4Y68efbHaeQWEW9BfvEE72oTkJkCD97u6YOCp1Smf4zpTAMmq
	krlncXy5MR7QHSbDMLGykM6cq6ZvywNuFKurYHnEjEs67fZ3udftZ9uWUFpX0PNHEFwaV/YgwWj1i
	fOOrWtEmWUEJNqznrJgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0dkO-0002HI-4A; Thu, 22 Aug 2019 03:26:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0dkE-0002Gy-E7
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 03:26:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id n9so2632455pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 20:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MCCskUXcrLlS5LTvVhURJAIX531PoVJ3wIvkbzzRBQk=;
 b=Cf9CApzJnmHgZO/G8erfps/1ZvmfBBRlVQePSnZaeLyc5NT/ek+5kg+4tXORFNlOVP
 xABL1S0jWhMNkF0vDkxMyMaHZa02dsBQOiIebT1xYkYdPhmu/IR8vzGB8HaYbRo2Demf
 gG/v5NuBJBWX1ddhi9rSh+9HSd40kf3VY7E+X/oXwrbhv5Zrx8I5EvXwwmsZNxFMLYxl
 Str4mHqzxaTA5ScfiKLIieFPaVS6g3IjgJ1FF7nG/zV5fzSKe1h2YcZwITppAbte7Kl8
 KPv8HZehE4T3IBDkvkRJ9MnjUS6jvMrA0jUHCHfNOfLU792kDMnl6lZP29KLPWl8YJJm
 iVXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MCCskUXcrLlS5LTvVhURJAIX531PoVJ3wIvkbzzRBQk=;
 b=fTPSNl9iB38eUqYByXPhCAj2qp6Q/XokeoWQdoUYo2VKW6YIR/4g3Dr7/SvMpgd/z0
 knhUmZHSm6zv2IRVUr0lZiyuZ+1L07jNy/rAJrkX9+InjO4rQC1Tqj3epKcrGQQKFqKt
 1qJifOrjow1N9DPxTFQLBTOSaAf8uBvshRrmG+9pda+j5uFeixiO8XgcJciCBt9H0fnw
 dXQEvsV+yAlEHrgLEFiiA/YiJQkNYG3CMkuLRJrIu2zi41nTyC1WsIXK7yYbgWjgt2sV
 nWrjBuSY7t8luXUNse1EQBFbcjFKqFi36Q3qmKkgaxbY+yatK5hdt1l+UQgNLFcdgtLi
 xYxw==
X-Gm-Message-State: APjAAAXiCRUiup9lKhkB6D8xRyoPJbYMTmCPv8/Q4EEan32LisK8Gm4c
 Ek/71CBTUZhiPaT13aOqwJ0MH4ocDauxvUlFh0yvhg==
X-Google-Smtp-Source: APXvYqz2loRqruDuM7e43KFj1CzylFU4nts4tf2nXoZmvL2wydu05AszEJXWA9k4ezQgjHdwi2xc76rBACxA+pL0V2Q=
X-Received: by 2002:a65:690b:: with SMTP id s11mr27819692pgq.10.1566444395734; 
 Wed, 21 Aug 2019 20:26:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkfWY4cHz+i8kYg2i1Krs-32nh7-WQU+psT=DRGYnTje6yj4Q@mail.gmail.com>
 <20190821174619.21935-1-nhuck@google.com>
In-Reply-To: <20190821174619.21935-1-nhuck@google.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 21 Aug 2019 20:26:23 -0700
Message-ID: <CAKwvOd=wKUhnWr4UhVvgn6NYh+=zQOpMmKG9d_zEqaKLa4_9FA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: UNWINDER_FRAME_POINTER implementation for Clang
To: Nathan Huckleberry <nhuck@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_202638_509287_0426F337 
X-CRM114-Status: GOOD (  42.84  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tri Vo <trong@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@armlinux.org.uk>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 =?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 10:46 AM Nathan Huckleberry <nhuck@google.com> wrote:
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
> Changes from v1->v2
> * Fix indentation in various files
> * Swap spaces for tabs
> * Rename Ldsi to Lopcode
> * Remove unused Ldsi entry
>
>  arch/arm/Kconfig.debug         |   2 +-
>  arch/arm/Makefile              |   5 +-
>  arch/arm/lib/Makefile          |   8 +-
>  arch/arm/lib/backtrace-clang.S | 229 +++++++++++++++++++++++++++++++++
>  4 files changed, 241 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/lib/backtrace-clang.S
>
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 85710e078afb..b9c674ec19e0 100644
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
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index c3624ca6c0bc..6f251c201db0 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -36,7 +36,10 @@ KBUILD_CFLAGS        += $(call cc-option,-mno-unaligned-access)
>  endif
>
>  ifeq ($(CONFIG_FRAME_POINTER),y)
> -KBUILD_CFLAGS  +=-fno-omit-frame-pointer -mapcs -mno-sched-prolog
> +KBUILD_CFLAGS  +=-fno-omit-frame-pointer
> +ifeq ($(CONFIG_CC_IS_GCC),y)
> +KBUILD_CFLAGS += -mapcs -mno-sched-prolog
> +endif
>  endif
>
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> diff --git a/arch/arm/lib/Makefile b/arch/arm/lib/Makefile
> index b25c54585048..6d2ba454f25b 100644
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
> +  lib-y        += backtrace-clang.o
> +else
> +  lib-y        += backtrace.o
> +endif
> +
>  # using lib_ here won't override already available weak symbols
>  obj-$(CONFIG_UACCESS_WITH_MEMCPY) += uaccess_with_memcpy.o
>
> diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> new file mode 100644
> index 000000000000..6f2a8a57d0fb
> --- /dev/null
> +++ b/arch/arm/lib/backtrace-clang.S
> @@ -0,0 +1,229 @@
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
> +
> +#define frame  r4
> +#define sv_fp  r5
> +#define sv_pc  r6
> +#define mask   r7
> +#define sv_lr  r8
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
> + * so we don't know exactly where the function
> + * starts.

To quickly re-wrap text (if you're using vim) such as with comments like these:
shift+v (VISUAL LINE MODE)
j or k to highlight lines
gq (to rewrap)
You may need `set cc=80` (not sure).

> + *
> + * We can treat the current frame's lr as the saved pc and the
> + * preceding frame's lr as the current frame's lr,
> + * but we can't trace the most recent call.
> + * Inserting a false stack frame allows us to reference the
> + * function called last in the stacktrace.
> + *
> + * If the call instruction was a bl we can look at the callers
> + * branch instruction to calculate the saved pc.
> + * We can recover the pc in most cases, but in cases such as
> + * calling function pointers we cannot. In this
> + * case, default to using the lr. This will be
> + * some address in the function, but will not
> + * be the function start.
> + *
> + * Unfortunately due to the stack frame layout we can't dump
> + *              r0 - r3, but these are less frequently saved.

I guess if they were spilled, but I'm ok with this; I'd rather have a
working unwinder than disabled config.  The printing is a debug
feature that's nice to have, but the main focus should be unwinding.
We can always revisit improving support.

> + *
> + * Stack frame layout:
> + *             <larger addresses>
> + *             saved lr
> + *     frame=> saved fp
> + *             optionally saved caller registers (r4 - r10)
> + *             optionally saved arguments (r0 - r3)
> + *             <top of stack frame>
> + *             <smaller addresses>
> + *
> + * Functions start with the following code sequence:
> + * corrected pc =>  stmfd sp!, {..., fp, lr}
> + *             add fp, sp, #x
> + *             stmfd sp!, {r0 - r3} (optional)
> + *
> + *
> + *
> + *
> + *
> + *
> + * The diagram below shows an example stack setup
> + * for dump_stack.
> + *
> + * The frame for c_backtrace has pointers to the
> + * code of dump_stack. This is why the frame of
> + * c_backtrace is used to for the pc calculation
> + * of dump_stack. This is why we must move back
> + * a frame to print dump_stack.
> + *
> + * The stored locals for dump_stack are in dump_stack's
> + * frame. This means that to fully print dump_stack's frame
> + * we need both the frame for dump_stack (for locals) and the
> + * frame that was called by dump_stack (for pc).
> + *
> + * To print locals we must know where the function start is. If
> + * we read the function prologue opcodes we can determine
> + * which variables are stored in the stack frame.
> + *
> + * To find the function start of dump_stack we can look at the
> + * stored LR of show_stack. It points at the instruction
> + * directly after the bl dump_stack. We can then read the
> + * offset from the bl opcode to determine where the branch takes us.
> + * The address calculated must be the start of dump_stack.
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

===>

> +stmfd   sp!, {r4 - r9, fp, lr} @ Save an extra register
> +                               @ to ensure 8 byte alignment
> +movs   frame, r0               @ if frame pointer is zero
> +beq    no_frame                @ we have no stack frames
> +
> +tst    r1, #0x10               @ 26 or 32-bit mode?
> +moveq  mask, #0xfc000003
> +movne  mask, #0                @ mask for 32-bit

<== this section of the patch has weird indentation. The rest uses 2
tabs, this has none.

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
> + * function.
> + *
> + * sv_pc is the saved lr frame the frame above. This is a pointer to a
> + * code address within the current considered function, but
> + * it is not the function start. This value gets updated to be
> + * the function start later if it is possible.
> + */
> +1001:          ldr     sv_pc, [frame, #4]      @ get saved 'pc'
> +1002:          ldr     sv_fp, [frame, #0]      @ get saved fp
> +
> +               teq     sv_fp, mask             @ make sure next frame exists
> +               beq     no_frame
> +
> +/*
> + * sv_lr is the lr from the function that called the current function. This
> + * is a pointer to a code address in the current function's caller.
> + * sv_lr-4 is the instruction used to call the current function.
> + *
> + * This sv_lr can be used to calculate the function start if the function
> + * was called using a bl instruction. If the function start
> + * can be recovered sv_pc is overwritten with the function start.
> + *
> + * If the current function was called using a function pointer we cannot
> + * recover the function start and instead continue with sv_pc as
> + * an arbitrary value within the current function. If this is the case
> + * we cannot print registers for the current function, but the stacktrace
> + * is still printed properly.
> + */
> +1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
> +
> +               ldr     r0, [sv_lr, #-4]        @ get call instruction
> +               ldr     r3, .Lopcode+4
> +               and     r2, r3, r0              @ is this a bl call
> +               teq     r2, r3
> +               bne     finished_setup          @ give up if it's not
> +               and     r0, #0xffffff           @ get call offset 24-bit int
> +               lsl     r0, r0, #8              @ sign extend offset
> +               asr     r0, r0, #8
> +               ldr     sv_pc, [sv_fp, #4]      @ get lr address
> +               add     sv_pc, sv_pc, #-4       @ get call instruction address
> +               add     sv_pc, sv_pc, #8        @ take care of prefetch
> +               add     sv_pc, sv_pc, r0, lsl #2@ find function start
> +
> +finished_setup:
> +
> +               bic     sv_pc, sv_pc, mask      @ mask PC/LR for the mode
> +
> +/*
> + * Print the function (sv_pc) and where it was called
> + * from (sv_lr).
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
> + * to determine which registers were stored in the function
> + * prologue.
> + *
> + * If we could not recover the sv_pc because we were called through
> + * a function pointer the comparison will fail and no registers
> + * will print.

Will we still unwind though?

> + */
> +1005:          ldr     r1, [sv_pc, #0]         @ if stmfd sp!, {..., fp, lr}
> +               ldr     r3, .Lopcode            @ instruction exists,
> +               teq     r3, r1, lsr #11
> +               ldr     r0, [frame]             @ locals are stored in
> +                                               @ the preceding frame
> +               subeq   r0, r0, #4
> +               bleq    dump_backtrace_stm      @ dump saved registers
> +
> +/*
> + * If we are out of frames or if the next frame is invalid.
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
> +.Lopcode:      .word   0xe92d4800 >> 11        @ stmfd sp!, {... fp, lr}
> +               .word   0x0b000000              @ bl if these bits are set
> +
> +#endif
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

OK, with you patch applied on today's Linux next,
CONFIG_UNWINDER_FRAME_POINTER, and ToT Clang:

$ qemu-system-arm -kernel arch/arm/boot/zImage -nographic -m 2048
--append "console=ttyAMA0 root=/dev/ram0" -machine virt
[    0.000000] Linux version 5.3.0-rc5-07709-gac2d7d4a10c1-dirty
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 10.0.0
(https://github.com/llvm/llvm-project.git
da648ab8de3638ff82d6b9349c603b854a0224d6)) #53 SMP Wed Aug 21 20:05:15
PDT 2019
...
[    0.957046] Kernel panic - not syncing: VFS: Unable to mount root
fs on unknown-block(1,0)
[    0.957490] CPU: 0 PID: 1 Comm: swapper/0 Not tainted
5.3.0-rc5-07709-gac2d7d4a10c1-dirty #53
[    0.957808] Hardware name: Generic DT based system
[    0.958046] Backtrace:
[    0.958504] [<c030da98>] (dump_backtrace) from [<c030da94>]
(show_stack+0x14/0x18)
[    0.958844]  r10:c16f585c r6:00000000 r5:c198c7e4 r4:600000d3
[    0.959085] [<c030da80>] (show_stack) from [<c106c2c8>]
(dump_stack+0xac/0xd8)
[    0.959358] [<c106c21c>] (dump_stack) from [<c03504a0>] (panic+0x118/0x354)
[    0.959568]  r5:c19a61b5 r4:c1427ce5
[    0.959722] [<c0350388>] (panic) from [<c1601624>]
(mount_block_root+0x13c/0x1f0)
[    0.959947] [<c16014e8>] (mount_block_root) from [<c1601a48>]
(mount_root+0xb0/0xb4)
[    0.960210]  r10:00000000 r9:00000000 r8:00000000 r7:00000000
r6:00000000 r5:00100000
[    0.960492]  r4:c1427d49
[    0.960600] [<c1601998>] (mount_root) from [<c1601d0c>]
(prepare_namespace+0x1ec/0x1f0)
[    0.960886]  r5:c19a3d30 r4:c16f5868
[    0.961021] [<c1601b20>] (prepare_namespace) from [<c16011ac>]
(kernel_init_freeable+0xe0/0xf4)
[    0.961330]  r5:00000000 r4:c19a3d1c
[    0.961468] [<c16010cc>] (kernel_init_freeable) from [<c10868d8>]
(kernel_init+0xc/0x2ac)
[    0.961761]  r5:c10868cc r4:00000000
[    0.961913] [<c10868d8>] (kernel_init) from [<c03010e8>]
(ret_from_fork+0x14/0x2c)
[    0.962210] Exception stack(0xea09bf94 to 0xea09bfdc)
[    0.962490] bf80:
c10868d8 00000000 c10868cc
[    0.962883] bfa0: 00000000 00000000 00000000 c03010e8 00000000
00000000 00000000 00000000
[    0.963202] bfc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000
[    0.963936] ---[ end Kernel panic - not syncing: VFS: Unable to
mount root fs on unknown-block(1,0) ]---

For comparison, the reference implementation:
[    0.000000] Linux version 5.3.0-rc5-07709-gac2d7d4a10c1-dirty
(ndesaulniers@ndesaulniers1.mtv.corp.google.com) (gcc version 8.2.0
(Debian 8.2.0-14+build1)) #54 SMP Wed Aug 21 20:15:27 PDT 2019
...
[    1.048134] Kernel panic - not syncing: VFS: Unable to mount root
fs on unknown-block(1,0)
[    1.048617] CPU: 0 PID: 1 Comm: swapper/0 Not tainted
5.3.0-rc5-07709-gac2d7d4a10c1-dirty #54
[    1.048935] Hardware name: Generic DT based system
[    1.049191] Backtrace:
[    1.049663] [<c030dff8>] (dump_backtrace) from [<c030e368>]
(show_stack+0x18/0x1c)
[    1.050038]  r7:c16ed85c r6:600000d3 r5:00000000 r4:c198f804
[    1.050292] [<c030e350>] (show_stack) from [<c0f550bc>]
(dump_stack+0xbc/0xd0)
[    1.050581] [<c0f55000>] (dump_stack) from [<c0349fe8>] (panic+0x118/0x330)
[    1.050834]  r7:c16ed85c r6:c13404fc r5:00000000 r4:c19a5870
[    1.051078] [<c0349ed4>] (panic) from [<c16017dc>]
(mount_block_root+0x264/0x284)
[    1.051344]  r3:0ed1c175 r2:0ed1c175 r1:ea09be84 r0:c13404fc
[    1.051553]  r7:c16ed85c
[    1.051661] [<c1601578>] (mount_block_root) from [<c1601a64>]
(mount_root+0x124/0x140)
[    1.051936]  r10:ffffe000 r9:c16ed858 r8:c19a3400 r7:c1809100
r6:00000008 r5:c1804c48
[    1.052238]  r4:00100000
[    1.052351] [<c1601940>] (mount_root) from [<c1601c04>]
(prepare_namespace+0x184/0x1cc)
[    1.052638]  r10:ffffe000 r9:c16ed858 r8:c19a3400 r7:c19a3400
r6:00000008 r5:c19a3430
[    1.052915]  r4:c16ed85c
[    1.053025] [<c1601a80>] (prepare_namespace) from [<c1601308>]
(kernel_init_freeable+0x2f8/0x308)
[    1.053337]  r6:00000008 r5:c177b7c0 r4:c16ed838
[    1.053507] [<c1601010>] (kernel_init_freeable) from [<c0f6ceb0>]
(kernel_init+0x10/0x118)
[    1.053798]  r10:00000000 r9:00000000 r8:00000000 r7:00000000
r6:00000000 r5:c0f6cea0
[    1.054083]  r4:00000000
[    1.054190] [<c0f6cea0>] (kernel_init) from [<c03010e8>]
(ret_from_fork+0x14/0x2c)
[    1.054501] Exception stack(0xea09bfb0 to 0xea09bff8)
[    1.054792] bfa0:                                     00000000
00000000 00000000 00000000
[    1.055169] bfc0: 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000
[    1.055526] bfe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    1.055795]  r5:c0f6cea0 r4:00000000
[    1.056410] ---[ end Kernel panic - not syncing: VFS: Unable to
mount root fs on unknown-block(1,0) ]---

So the stack traces look comparable (same unwind "path").  Looks like
GCC spilled r0-r3 in panic(), but not much else.  I guess Clang could
have spilled these anywhere and we simply wont be able to print them.
Maybe making the comment about this in you patch ALL CAPS might draw
attention to it in case someone ever notices a difference between the
unwind printout and the disassembly, but I assume that's unlikely, but
I also don't know if this functionality is relied upon heavily for
debugging.

In that sense:
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
(you can carry that on to v3)
With the above suggestions, I'd be happy to then add my reviewed by
tag.  Thanks for all of the work that went into this.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
