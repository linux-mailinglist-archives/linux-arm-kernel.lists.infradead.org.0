Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F29E8A6B88
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WMccrCG5snL0NBNK2xZ2+NY6gP2E+lWYcfEyfLnVHs=; b=aFMr23+Mh00gGY
	qqj5zWUaGG6z1eIKEqhnBLMbRvIKnM8idQ/gSN43lp7gZPeCqpYJxjGGVD8sz+GqIn3V7YoqxkZut
	5BAgjZaw3kxeCFHAm+7zBX+Z5uWtLs4jOeIWLFA5hLnYo7Tzl34Be5n5SnozdJfQ395zJVNJUeI0x
	5jJzvfKfVO9RJuR16lJm5fa/USNO+0cCgnzZ08LyvdIZ4LyGEF12nwjuZhbfdkD/dcfMwGrXtQicW
	91DImyQVHFXiMRwIGwqEKCOWP5AidElzay+BDCIkEdAIT3l293ttp7OtmFUBMxb4cdtp6VaBCYOpS
	LNbj+uXcVcBpSWpCOZ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59qJ-0006m2-Im; Tue, 03 Sep 2019 14:31:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i59q8-0006li-C7
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:31:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 003EE337;
 Tue,  3 Sep 2019 07:31:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 775303F246;
 Tue,  3 Sep 2019 07:31:21 -0700 (PDT)
Date: Tue, 3 Sep 2019 15:31:19 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903060011.GA60737@archlinux-threadripper>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_073124_499724_E6194CD3 
X-CRM114-Status: GOOD (  24.39  )
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, robin.murphy@arm.com, Ard.Biesheuvel@arm.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 11:00:11PM -0700, Nathan Chancellor wrote:
> On Thu, Aug 29, 2019 at 04:48:27PM +0100, Will Deacon wrote:
> > From: Andrew Murray <andrew.murray@arm.com>
> > 
> > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > or toolchain doesn't support it the existing code will fallback to ll/sc
> > atomics. It achieves this by branching from inline assembly to a function
> > that is built with special compile flags. Further this results in the
> > clobbering of registers even when the fallback isn't used increasing
> > register pressure.
> > 
> > Improve this by providing inline implementations of both LSE and
> > ll/sc and use a static key to select between them, which allows for the
> > compiler to generate better atomics code. Put the LL/SC fallback atomics
> > in their own subsection to improve icache performance.
> > 
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > Signed-off-by: Will Deacon <will@kernel.org>
> 
> For some reason, this causes a clang built kernel to fail to boot in
> QEMU. There are no logs, it just never starts. I am off for the next two
> days so I am going to try to look into this but you might have some
> immediate ideas.
> 
> https://github.com/ClangBuiltLinux/linux/issues/649

I've been able to reproduce this - with clang 9.0.6 and qemu (without KVM)
and only when ARM64_LSE_ATOMICS is enabled.

This is slightly concerning...

(gdb) b __lse__cmpxchg_case_acq_32
Breakpoint 1 at 0xffff80001012b3cc: __lse__cmpxchg_case_acq_32. (19 locations)
(gdb) continue
Continuing.

Breakpoint 1, __cmpxchg_case_acq_32 (ptr=<optimized out>, old=0, new=1) at /home/amurray/linux/./arch/arm64/include/asm/cmpxchg.h:121
121     __CMPXCHG_CASE(acq_, 32)
(gdb) bt
#0  __cmpxchg_case_acq_32 (ptr=<optimized out>, old=0, new=1) at /home/amurray/linux/./arch/arm64/include/asm/cmpxchg.h:121
#1  __cmpxchg_acq (ptr=<optimized out>, old=<optimized out>, new=<optimized out>, size=4)
    at /home/amurray/linux/./arch/arm64/include/asm/cmpxchg.h:173
#2  atomic_cmpxchg_acquire (v=<optimized out>, old=0, new=1) at /home/amurray/linux/./include/asm-generic/atomic-instrumented.h:664
#3  atomic_try_cmpxchg_acquire (v=<optimized out>, new=1, old=<optimized out>)
    at /home/amurray/linux/./include/linux/atomic-fallback.h:931
#4  queued_spin_lock (lock=<optimized out>) at /home/amurray/linux/./include/asm-generic/qspinlock.h:78
#5  do_raw_spin_lock (lock=<optimized out>) at /home/amurray/linux/./include/linux/spinlock.h:181
#6  __raw_spin_lock (lock=0xffff8000119b15d4 <logbuf_lock>) at /home/amurray/linux/./include/linux/spinlock_api_smp.h:143
#7  _raw_spin_lock (lock=0xffff8000119b15d4 <logbuf_lock>) at kernel/locking/spinlock.c:151
#8  0xffff800010147028 in vprintk_emit (facility=0, level=-1, dict=0x0, dictlen=0, 
    fmt=0xffff800011103afe "\001\066Booting Linux on physical CPU 0x%010lx [0x%08x]\n", args=...) at kernel/printk/printk.c:1966
#9  0xffff800010147818 in vprintk_default (fmt=0xffff800011103afe "\001\066Booting Linux on physical CPU 0x%010lx [0x%08x]\n", args=...)
    at kernel/printk/printk.c:2013
#10 0xffff800010149c94 in vprintk_func (fmt=0xffff800011103afe "\001\066Booting Linux on physical CPU 0x%010lx [0x%08x]\n", args=...)
    at kernel/printk/printk_safe.c:386
#11 0xffff8000101461bc in printk (fmt=0xffff8000119b15d4 <logbuf_lock> "") at kernel/printk/printk.c:2046
#12 0xffff8000112d3238 in smp_setup_processor_id () at arch/arm64/kernel/setup.c:96
#13 0xffff8000112d06a4 in start_kernel () at init/main.c:581
#14 0x0000000000000000 in ?? ()
Backtrace stopped: previous frame identical to this frame (corrupt stack?)

In other words system_uses_lse_atomics seems to give us the LSE variant when we
don't have LSE, thus resulting in an invalid instruction (we end up in
do_undefinstr).

Though I don't think system_uses_lse_atomics is at fault here, the behaviour
varies depending on subtle code changes to lse.h, for example:

 - change system_uses_lse_atomics as follows, and the kernel boots as far as
   "Loading compiled-in X.509 certificates" and it gets stuck.

--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -21,8 +21,11 @@ extern struct static_key_false arm64_const_caps_ready;
 
 static inline bool system_uses_lse_atomics(void)
 {
-       return (static_branch_likely(&arm64_const_caps_ready)) &&
-               static_branch_likely(&cpu_hwcap_keys[ARM64_HAS_LSE_ATOMICS]);
+       if ((static_branch_likely(&arm64_const_caps_ready)) &&
+            static_branch_likely(&cpu_hwcap_keys[ARM64_HAS_LSE_ATOMICS]))
+               return true;
+
+       return false;
 }

 - change is as follows, and we don't panic, but get stuck elsewhere in boot.

diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
index 80b388278149..7c1d51fa54b2 100644
--- a/arch/arm64/include/asm/lse.h
+++ b/arch/arm64/include/asm/lse.h
@@ -16,13 +16,17 @@
 
 __asm__(".arch_extension       lse");
 
+void panic(const char *fmt, ...) __noreturn __cold;
 extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
 extern struct static_key_false arm64_const_caps_ready;
 
 static inline bool system_uses_lse_atomics(void)
 {
-       return (static_branch_likely(&arm64_const_caps_ready)) &&
-               static_branch_likely(&cpu_hwcap_keys[ARM64_HAS_LSE_ATOMICS]);
+       if ((static_branch_likely(&arm64_const_caps_ready)) &&
+               static_branch_likely(&cpu_hwcap_keys[ARM64_HAS_LSE_ATOMICS]))
+                       panic("ATOMICS");
+
+       return false;
 }

 
 - change system_uses_lse_atomics to return false and it always boots

Any ideas?

Thanks,

Andrew Murray 

> 
> There is another weird failure that might be somewhat related but I have
> no idea.
> 
> https://github.com/ClangBuiltLinux/linux/issues/648
> 
> Cheers,
> Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
