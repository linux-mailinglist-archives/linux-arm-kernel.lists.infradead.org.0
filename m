Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D102DBDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 13:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jv1BTltcsSWkwvjaR7Q+FwMvnv2GfeZr9vSL71L8KSs=; b=UNKSZjM5ffQ5Pq
	ImGuby0qQ30ELoHK7dupWG37rfIrXhBxPSPNiAm0C+8uCHidHfbD0xb+m+Sda+Sw4DpffwpPX2TnT
	7g/l5ylSelsyAQ5C7HPhcnkHAmd9tOMwShdsNttyg98wNuEfpIKIJopUyP9F7ZWO5Y3F3oDRnU+8j
	5qa6G7YTsKwrJwi7+FEDC67DBBWj+yVYP1a/TsENazUXAwgzfZWRPe0SJcI657tqkRtahdzmctNNO
	mrpD/nGz7pUqI0fYK+uVahn8ydeJlSBaGYqC2/+TJ+owLq49A40vmYkXvtyIw+Zknp5VACL9q8SnM
	/xlFez5KOos0XZv0+WEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwla-0000Ik-0F; Wed, 29 May 2019 11:29:10 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwlT-0000IP-II
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 11:29:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AED6C341;
 Wed, 29 May 2019 04:29:02 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DE9A3F59C;
 Wed, 29 May 2019 04:29:01 -0700 (PDT)
Date: Wed, 29 May 2019 12:28:59 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Laura Abbott <labbott@redhat.com>
Subject: Re: CONFIG_OPTIMIZE_INLINING breaks atomic64 test on arm64
Message-ID: <20190529112858.GC31777@lakrids.cambridge.arm.com>
References: <ba33029c-64f6-6908-a098-b543f0851fb7@redhat.com>
 <20190529112141.GB31777@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529112141.GB31777@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_042903_614568_E80287AC 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 12:21:42PM +0100, Mark Rutland wrote:
> On Tue, May 28, 2019 at 05:42:04PM -0400, Laura Abbott wrote:
> > The value returned from arch_atomic64_dec_if_positive looks like
> > a stack value
> >
> > ffff0000104901d0 <arch_atomic64_dec_if_positive>:
> > ffff0000104901d0:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> > ffff0000104901d4:       aa0003e1        mov     x1, x0
> > ffff0000104901d8:       910003fd        mov     x29, sp
> > ffff0000104901dc:       9412c9d5        bl      ffff000010942930 <__ll_sc_arch_atomic64_dec_if_positive>
> > ffff0000104901e0:       d503201f        nop
> > ffff0000104901e4:       d503201f        nop
> > ffff0000104901e8:       d503201f        nop
> > ffff0000104901ec:       d503201f        nop
> > ffff0000104901f0:       d503201f        nop
> > ffff0000104901f4:       d503201f        nop
> > ffff0000104901f8:       aa0103e0        mov     x0, x1
> > ffff0000104901fc:       a8c17bfd        ldp     x29, x30, [sp], #16
> > ffff000010490200:       d65f03c0        ret
> > 
> > ...which seems to be coming from this buggy looking code.
> 
> Ouch, so it's trying to save/restore x0, and returning the original
> value of the atomic64_t *v argument.
> 
> AFAICT, GCC *shouldn't* be doing that, since we have a "=&r" constraint
> on a register variable in x0, which we use as the return value:
>  
> static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
> {
> 	register long x0 asm ("x0") = (long)v;
> 
> 	asm volatile(ARM64_LSE_ATOMIC_INSN(
> 	/* LL/SC */
> 	__LL_SC_ATOMIC64(dec_if_positive)
> 	__nops(6),
> 	/* LSE atomics */
> 	"1:     ldr     x30, %[v]\n"
> 	"       subs    %[ret], x30, #1\n"
> 	"       b.lt    2f\n"
> 	"       casal   x30, %[ret], %[v]\n"
> 	"       sub     x30, x30, #1\n"
> 	"       sub     x30, x30, %[ret]\n"
> 	"       cbnz    x30, 1b\n"
> 	"2:")
> 	: [ret] "+&r" (x0), [v] "+Q" (v->counter)
> 	:
> 	: __LL_SC_CLOBBERS, "cc", "memory");
> 
> 	return x0;
> }
> 
> ... so this smells like a GCC bug.
> 
> I *think* GCC places the "x0" variable into x1 despite it being a local
> register variable that should be in x0, and GCC places v in x0.
> 
> That would explain why this works for LSE even with the shuffle back,
> since the asm would use x1 for ret.
> 
> I haven't managed to come up with a test-case that proves that, though,
> and I don't knwo how we could bodge around that.

With an __asmeq(), it looks like "x0" isn't in x0:

[mark@lakrids:~/src/linux]% git diff
diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index 9256a3921e4b..c3549f87dfe8 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -25,6 +25,8 @@
 #error "please don't include this file directly"
 #endif
 
+#define __asmeq(x, y)  ".ifnc " x "," y " ; .err ; .endif\n\t"
+
 #define __LL_SC_ATOMIC(op)     __LL_SC_CALL(arch_atomic_##op)
 #define ATOMIC_OP(op, asm_op)                                          \
 static inline void arch_atomic_##op(int i, atomic_t *v)                        \
@@ -423,6 +425,7 @@ static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
        register long x0 asm ("x0") = (long)v;
 
        asm volatile(ARM64_LSE_ATOMIC_INSN(
+       __asmeq("%[ret]", "x0")
        /* LL/SC */
        __LL_SC_ATOMIC64(dec_if_positive)
        __nops(6),
[mark@lakrids:~/src/linux]% usekorg 8.1.0 make ARCH=arm64 CROSS_COMPILE=aarch64-linux- lib/atomic64_test.o
  CC      kernel/bounds.s
  CC      arch/arm64/kernel/asm-offsets.s
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CC      lib/atomic64_test.o
/tmp/ccQ5P7I7.s: Assembler messages:
/tmp/ccQ5P7I7.s:39: Error: .err encountered
scripts/Makefile.build:278: recipe for target 'lib/atomic64_test.o' failed
make[1]: *** [lib/atomic64_test.o] Error 1
Makefile:1747: recipe for target 'lib/atomic64_test.o' failed
make: *** [lib/atomic64_test.o] Error 2

... and is actuall in x1:

[mark@lakrids:~/src/linux]% git diff                                                         
diff --git a/arch/arm64/include/asm/atomic_lse.h b/arch/arm64/include/asm/atomic_lse.h
index 9256a3921e4b..d8b38c168a04 100644
--- a/arch/arm64/include/asm/atomic_lse.h
+++ b/arch/arm64/include/asm/atomic_lse.h
@@ -25,6 +25,8 @@
 #error "please don't include this file directly"
 #endif
 
+#define __asmeq(x, y)  ".ifnc " x "," y " ; .err ; .endif\n\t"
+
 #define __LL_SC_ATOMIC(op)     __LL_SC_CALL(arch_atomic_##op)
 #define ATOMIC_OP(op, asm_op)                                          \
 static inline void arch_atomic_##op(int i, atomic_t *v)                        \
@@ -423,6 +425,7 @@ static inline long arch_atomic64_dec_if_positive(atomic64_t *v)
        register long x0 asm ("x0") = (long)v;
 
        asm volatile(ARM64_LSE_ATOMIC_INSN(
+       __asmeq("%[ret]", "x1")
        /* LL/SC */
        __LL_SC_ATOMIC64(dec_if_positive)
        __nops(6),
[mark@lakrids:~/src/linux]% usekorg 8.1.0 make ARCH=arm64 CROSS_COMPILE=aarch64-linux- lib/atomic64_test.o
  CC      kernel/bounds.s
  CC      arch/arm64/kernel/asm-offsets.s
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CC      lib/atomic64_test.o


... which is not fantastic. :/

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
