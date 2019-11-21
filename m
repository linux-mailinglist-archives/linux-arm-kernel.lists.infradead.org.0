Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 562D71059A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 19:36:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iUoCnj1cMx5y7VxbFaVaZfIuTG2+ELziVE7i4O+vT8E=; b=pf6n86ZkeVnip8
	wi8gnWy3Wo8yS7H4MpeH0TvQsNFv49Cv+bzDrLdBAgDaWFQYbdnC2Ie0tsbqKCJiL26ttB/0LZvhV
	OglZJKFw4LR7p/aiagI8eed5APg7+ch4d1khppoCqIENgPC4bfNTc+E1ownAUspJ03j5SFXorq6ZG
	3mB+6v7N33lnbsWQoG8EhHZr+KQHcM81eWbmCv1g+2Cprobs4U0kk5PqKj8mIJ//kOAq+3tBUEkZo
	4enlKwm/k6xvlN42ujovNKFibCtc0Ba0VM9M6DAcV6KCi/ffsSPi46gaYp0RCQ8f5irUB6Vtq4Few
	XUJvyAx4TqpcIN+38duQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrJy-0005J3-2r; Thu, 21 Nov 2019 18:36:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrJo-0005IK-Rj
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 18:36:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C3914328;
 Thu, 21 Nov 2019 10:36:37 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 045983F52E;
 Thu, 21 Nov 2019 10:36:36 -0800 (PST)
Date: Thu, 21 Nov 2019 18:36:32 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Torsten Duwe <duwe@suse.de>
Subject: KASAN_INLINE && patchable-function-entry
Message-ID: <20191121183630.GA3668@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_103640_985904_EB8B90ED 
X-CRM114-Status: GOOD (  18.40  )
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
Cc: Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Torsten,

I've hit a rather unfortunate edge-case when trying to boot an arm64
kernel configured with KASAN_INLINE && FTRACE_WITH_REGS && !MODULES.

I'm not sure if the compiler behaviour is intentional or not, so I've
dumped the relevant details here. There might be a larger set of
problems, so please see the queries at the end (e.g. w.r.t. the naked
attribute).

As a heads-up to the ftrace folk, I think it's possible to work around
this specific issue in the kernel by allowing the arch code to filter
out call sites at init time (probably in ftrace_init_nop()), but I
haven't put that together yet.

When booting a kernel with those options, there's a boot-time splat:

| [    0.000000] ftrace: allocating 32281 entries in 127 pages
| [    0.000000] ------------[ cut here ]------------
| [    0.000000] WARNING: CPU: 0 PID: 0 at kernel/trace/ftrace.c:2019 ftrace_bug+0x27c/0x328
| [    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.4.0-rc3-00008-g7f08ae53a7e3 #13
| [    0.000000] Hardware name: linux,dummy-virt (DT)
| [    0.000000] pstate: 60000085 (nZCv daIf -PAN -UAO)
| [    0.000000] pc : ftrace_bug+0x27c/0x328
| [    0.000000] lr : ftrace_init+0x640/0x6cc
| [    0.000000] sp : ffffa000120e7e00
| [    0.000000] x29: ffffa000120e7e00 x28: ffff00006ac01b10 
| [    0.000000] x27: ffff00006ac898c0 x26: dfffa00000000000 
| [    0.000000] x25: ffffa000120ef290 x24: ffffa0001216df40 
| [    0.000000] x23: 000000000000018d x22: ffffa0001244c700 
| [    0.000000] x21: ffffa00011bf393c x20: ffff00006ac898c0 
| [    0.000000] x19: 00000000ffffffff x18: 0000000000001584 
| [    0.000000] x17: 0000000000001540 x16: 0000000000000007 
| [    0.000000] x15: 0000000000000000 x14: ffffa00010432770 
| [    0.000000] x13: ffff940002483519 x12: 1ffff40002483518 
| [    0.000000] x11: 1ffff40002483518 x10: ffff940002483518 
| [    0.000000] x9 : dfffa00000000000 x8 : 0000000000000001 
| [    0.000000] x7 : ffff940002483519 x6 : ffffa0001241a8c0 
| [    0.000000] x5 : ffff940002483519 x4 : ffff940002483519 
| [    0.000000] x3 : ffffa00011780870 x2 : 0000000000000001 
| [    0.000000] x1 : 1fffe0000d591318 x0 : 0000000000000000 
| [    0.000000] Call trace:
| [    0.000000]  ftrace_bug+0x27c/0x328
| [    0.000000]  ftrace_init+0x640/0x6cc
| [    0.000000]  start_kernel+0x27c/0x654
| [    0.000000] random: get_random_bytes called from print_oops_end_marker+0x30/0x60 with crng_init=0
| [    0.000000] ---[ end trace 0000000000000000 ]---
| [    0.000000] ftrace faulted on writing 
| [    0.000000] [<ffffa00011bf393c>] _GLOBAL__sub_D_65535_0___tracepoint_initcall_level+0x4/0x28
| [    0.000000] Initializing ftrace call sites
| [    0.000000] ftrace record flags: 0
| [    0.000000]  (0)  
| [    0.000000]  expected tramp: ffffa000100b3344

AFAICT, using -fpatchable-function-entry instruments some functions
implicitly generated by the compiler. In this case, that's the
_GLOBAL__sub_D_65535_0_* function, which GCC generated to unregister
KASAN globals, and placed in .exit.text.

The kernel doesn't treat .exit.text as core_kernel_text(), so when built
without modules, the arm64 ftrace init code kernel refuses to patch this
site at init time. When built with modules we assume that any
!core_kernel_text() address is a module address, and happen to silently
get away with this.

In contrast, using -pg does not instrument those functions at all, so
I'm not sure if -fpatchable-function-entry was intended to do something
different here, or whether this is a bug.

To demonstrate, consider the following (saved as test.c):

| unsigned long foo = 0;

Compiling with:

$ aarch64-linux-gcc -pg -fsanitize=kernel-address \
	-fasan-shadow-offset=0xdfffa00000000000 --param asan-globals=1  \
	--param asan-instrument-allocas=1 -c test.c 

... gives (per objdump -d):

| Disassembly of section .text:
| 
| 0000000000000000 <_GLOBAL__sub_D_65535_0_foo>:
|    0:   a9bf7bfd        stp     x29, x30, [sp, #-16]!
|    4:   910003fd        mov     x29, sp
|    8:   d2800021        mov     x1, #0x1                        // #1
|    c:   90000000        adrp    x0, 0 <_GLOBAL__sub_D_65535_0_foo>
|   10:   91000000        add     x0, x0, #0x0
|   14:   94000000        bl      0 <__asan_unregister_globals>
|   18:   a8c17bfd        ldp     x29, x30, [sp], #16
|   1c:   d65f03c0        ret
| 
| 0000000000000020 <_GLOBAL__sub_I_65535_1_foo>:
|   20:   a9bf7bfd        stp     x29, x30, [sp, #-16]!
|   24:   910003fd        mov     x29, sp
|   28:   d2800021        mov     x1, #0x1                        // #1
|   2c:   90000000        adrp    x0, 0 <_GLOBAL__sub_D_65535_0_foo>
|   30:   91000000        add     x0, x0, #0x0
|   34:   94000000        bl      0 <__asan_register_globals>
|   38:   a8c17bfd        ldp     x29, x30, [sp], #16
|   3c:   d65f03c0        ret

... which is not instrumented with calls to _mcount.

Compiling with:

$ aarch64-linux-gcc -fpatchable-function-entry=2 \
  -fsanitize=kernel-address -fasan-shadow-offset=0xdfffa00000000000 \
  --param asan-globals=1  --param asan-instrument-allocas=1 -c test.c

... gives (per objdump -d):

| Disassembly of section .text:
| 
| 0000000000000000 <_GLOBAL__sub_D_65535_0_foo>:
|    0:   d503201f        nop
|    4:   d503201f        nop
|    8:   a9bf7bfd        stp     x29, x30, [sp, #-16]!
|    c:   910003fd        mov     x29, sp
|   10:   d2800021        mov     x1, #0x1                        // #1
|   14:   90000000        adrp    x0, 0 <_GLOBAL__sub_D_65535_0_foo>
|   18:   91000000        add     x0, x0, #0x0
|   1c:   94000000        bl      0 <__asan_unregister_globals>
|   20:   a8c17bfd        ldp     x29, x30, [sp], #16
|   24:   d65f03c0        ret
| 
| 0000000000000028 <_GLOBAL__sub_I_65535_1_foo>:
|   28:   d503201f        nop
|   2c:   d503201f        nop
|   30:   a9bf7bfd        stp     x29, x30, [sp, #-16]!
|   34:   910003fd        mov     x29, sp
|   38:   d2800021        mov     x1, #0x1                        // #1
|   3c:   90000000        adrp    x0, 0 <_GLOBAL__sub_D_65535_0_foo>
|   40:   91000000        add     x0, x0, #0x0
|   44:   94000000        bl      0 <__asan_register_globals>
|   48:   a8c17bfd        ldp     x29, x30, [sp], #16
|   4c:   d65f03c0        ret

... which /is/ instrumented with NOPs, and objdump -r tells me there are
correspoding relocs in __patchable_function_entries:

| RELOCATION RECORDS FOR [__patchable_function_entries]:
| OFFSET           TYPE              VALUE 
| 0000000000000000 R_AARCH64_ABS64   .text
| 0000000000000008 R_AARCH64_ABS64   .text+0x0000000000000028

Was it intended that -fpatachable-function-entry behaved differently
from -pg in this regard?

Is this likely to be problematic for other users?

Are there other implicitly-generated functions we need to look out for
here, for which this would be a problem?

It looks like this also applies to __attribute__((naked)) on ARM, which
seems like a bug given the GCC manual says:

| naked
| 
|   This attribute allows the compiler to construct the requisite
|   function declaration, while allowing the body of the function to be
|   assembly code. The specified function will not have
|   prologue/epilogue sequences generated by the compiler. Only basic
|   asm statements can safely be included in naked functions (see Basic
|   Asm). While using extended asm or a mixture of basic asm and C code
|   may appear to work, they cannot be depended upon to work reliably
|   and are not supported. 

... and here an unexpected prologue sequence (of NOPs) is being added.
That could trip up anyone relying on the size of the function or offsets
within it.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
