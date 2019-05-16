Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF8220BA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UPx8sWf+1dpYbTT5I+vj+a6BIVVDxD8jKuIljAMOgS0=; b=IOQiBply/L8+5k
	fOJIJH1u6kCmhIfMOQrO6Nbl2VlS4T2irx7C/9+APMmoq8AbWOAaDMp5ZnlvbwAFnAxjfJpMJxOey
	CK11o1tFxz/5cuypIZN7WYSSCLqYleUKxaYrzcYKk1eu/+o+BruxV3HM/oJdaOH6NhrZ/+UDSmjOP
	GZ2tOFSXqXQpFzWaiAwQlXuuDYGelpPAR4wAjvQO7j+M1ChRJd6nAHXqR4sVRrHVAa3KauQFghv1W
	dLU+mriarnL8urQS9ldQNBSnyTSy7wcciUHwZksaap1ITvTrmAiasoVLG/UUuyjlvab5oPFvsUTUy
	vK1jGXaS17YEzcNaY/Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIi6-0007vV-UY; Thu, 16 May 2019 15:54:22 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIhf-0007bX-FO
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:53:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D92C1715;
 Thu, 16 May 2019 08:53:52 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 129E43F71E;
 Thu, 16 May 2019 08:53:50 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ard.Biesheuvel@arm.com
Subject: [PATCH v1 0/5] arm64: avoid out-of-line ll/sc atomics
Date: Thu, 16 May 2019 16:53:39 +0100
Message-Id: <20190516155344.24060-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_085355_522784_184FFEBB 
X-CRM114-Status: GOOD (  14.08  )
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
Cc: Boqun Feng <boqun.feng@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
or toolchain doesn't support it the existing code will fallback to ll/sc
atomics. It achieves this by branching from inline assembly to a function
that is built with specical compile flags. Further this results in the
clobbering of registers even when the fallback isn't used increasing
register pressure.

Let's improve this by providing inline implementatins of both LSE and
ll/sc and use a static key to select between them. This allows for the
compiler to generate better atomics code.

Build and boot tested, along with atomic_64_test.

Following is the assembly of a function that has three consecutive
atomic_add calls when built with LSE and this patchset:

Dump of assembler code for function atomics_test:
   0xffff000010084338 <+0>:     stp     x29, x30, [sp, #-32]!
   0xffff00001008433c <+4>:     adrp    x0, 0xffff0000112dd000 <crypto_ft_tab+2368>
   0xffff000010084340 <+8>:     add     x1, x0, #0x6c8
   0xffff000010084344 <+12>:    mov     x29, sp
   0xffff000010084348 <+16>:    ldr     x2, [x1]
   0xffff00001008434c <+20>:    str     x2, [x29, #24]
   0xffff000010084350 <+24>:    mov     x2, #0x0                        // #0
   0xffff000010084354 <+28>:    b       0xffff000010084394 <atomics_test+92>
   0xffff000010084358 <+32>:    b       0xffff000010084394 <atomics_test+92>
   0xffff00001008435c <+36>:    mov     w1, #0x18                       // #24
   0xffff000010084360 <+40>:    add     x2, x29, #0x14
   0xffff000010084364 <+44>:    stadd   w1, [x2]
   0xffff000010084368 <+48>:    b       0xffff0000100843b0 <atomics_test+120>
   0xffff00001008436c <+52>:    b       0xffff0000100843b0 <atomics_test+120>
   0xffff000010084370 <+56>:    mov     w1, #0x18                       // #24
   0xffff000010084374 <+60>:    add     x2, x29, #0x14
   0xffff000010084378 <+64>:    stadd   w1, [x2]
   0xffff00001008437c <+68>:    b       0xffff0000100843cc <atomics_test+148>
   0xffff000010084380 <+72>:    b       0xffff0000100843cc <atomics_test+148>
   0xffff000010084384 <+76>:    mov     w1, #0x18                       // #24
   0xffff000010084388 <+80>:    add     x2, x29, #0x14
   0xffff00001008438c <+84>:    stadd   w1, [x2]
   0xffff000010084390 <+88>:    b       0xffff0000100843e4 <atomics_test+172>
   0xffff000010084394 <+92>:    add     x3, x29, #0x14
   0xffff000010084398 <+96>:    prfm    pstl1strm, [x3]
   0xffff00001008439c <+100>:   ldxr    w1, [x3]
   0xffff0000100843a0 <+104>:   add     w1, w1, #0x18
   0xffff0000100843a4 <+108>:   stxr    w2, w1, [x3]
   0xffff0000100843a8 <+112>:   cbnz    w2, 0xffff00001008439c <atomics_test+100>
   0xffff0000100843ac <+116>:   b       0xffff000010084368 <atomics_test+48>
   0xffff0000100843b0 <+120>:   add     x3, x29, #0x14
   0xffff0000100843b4 <+124>:   prfm    pstl1strm, [x3]
   0xffff0000100843b8 <+128>:   ldxr    w1, [x3]
   0xffff0000100843bc <+132>:   add     w1, w1, #0x18
   0xffff0000100843c0 <+136>:   stxr    w2, w1, [x3]
   0xffff0000100843c4 <+140>:   cbnz    w2, 0xffff0000100843b8 <atomics_test+128>
   0xffff0000100843c8 <+144>:   b       0xffff00001008437c <atomics_test+68>
   0xffff0000100843cc <+148>:   add     x3, x29, #0x14
   0xffff0000100843d0 <+152>:   prfm    pstl1strm, [x3]
   0xffff0000100843d4 <+156>:   ldxr    w1, [x3]
   0xffff0000100843d8 <+160>:   add     w1, w1, #0x18
   0xffff0000100843dc <+164>:   stxr    w2, w1, [x3]
   0xffff0000100843e0 <+168>:   cbnz    w2, 0xffff0000100843d4 <atomics_test+156>
   0xffff0000100843e4 <+172>:   add     x0, x0, #0x6c8
   0xffff0000100843e8 <+176>:   ldr     x1, [x29, #24]
   0xffff0000100843ec <+180>:   ldr     x0, [x0]
   0xffff0000100843f0 <+184>:   eor     x0, x1, x0
   0xffff0000100843f4 <+188>:   cbnz    x0, 0xffff000010084400 <atomics_test+200>
   0xffff0000100843f8 <+192>:   ldp     x29, x30, [sp], #32
   0xffff0000100843fc <+196>:   ret
   0xffff000010084400 <+200>:   bl      0xffff0000100db740 <__stack_chk_fail>
End of assembler dump.

The two branches before each section of atomics relates to the two static
keys which both become nop's when LSE is available. When LSE isn't
available the branches are used to run the slowpath fallback LL/SC atomics.

Where CONFIG_ARM64_LSE_ATOMICS isn't enabled then the same function is as
follows:

Dump of assembler code for function atomics_test:
   0xffff000010084338 <+0>:     stp     x29, x30, [sp, #-32]!
   0xffff00001008433c <+4>:     adrp    x0, 0xffff00001126d000 <crypto_ft_tab+2368>
   0xffff000010084340 <+8>:     add     x0, x0, #0x6c8
   0xffff000010084344 <+12>:    mov     x29, sp
   0xffff000010084348 <+16>:    add     x3, x29, #0x14
   0xffff00001008434c <+20>:    ldr     x1, [x0]
   0xffff000010084350 <+24>:    str     x1, [x29, #24]
   0xffff000010084354 <+28>:    mov     x1, #0x0                        // #0
   0xffff000010084358 <+32>:    prfm    pstl1strm, [x3]
   0xffff00001008435c <+36>:    ldxr    w1, [x3]
   0xffff000010084360 <+40>:    add     w1, w1, #0x18
   0xffff000010084364 <+44>:    stxr    w2, w1, [x3]
   0xffff000010084368 <+48>:    cbnz    w2, 0xffff00001008435c <atomics_test+36>
   0xffff00001008436c <+52>:    prfm    pstl1strm, [x3]
   0xffff000010084370 <+56>:    ldxr    w1, [x3]
   0xffff000010084374 <+60>:    add     w1, w1, #0x18
   0xffff000010084378 <+64>:    stxr    w2, w1, [x3]
   0xffff00001008437c <+68>:    cbnz    w2, 0xffff000010084370 <atomics_test+56>
   0xffff000010084380 <+72>:    prfm    pstl1strm, [x3]
   0xffff000010084384 <+76>:    ldxr    w1, [x3]
   0xffff000010084388 <+80>:    add     w1, w1, #0x18
   0xffff00001008438c <+84>:    stxr    w2, w1, [x3]
   0xffff000010084390 <+88>:    cbnz    w2, 0xffff000010084384 <atomics_test+76>
   0xffff000010084394 <+92>:    ldr     x1, [x29, #24]
   0xffff000010084398 <+96>:    ldr     x0, [x0]
   0xffff00001008439c <+100>:   eor     x0, x1, x0
   0xffff0000100843a0 <+104>:   cbnz    x0, 0xffff0000100843ac <atomics_test+116>
   0xffff0000100843a4 <+108>:   ldp     x29, x30, [sp], #32
   0xffff0000100843a8 <+112>:   ret
   0xffff0000100843ac <+116>:   bl      0xffff0000100da4f0 <__stack_chk_fail>
End of assembler dump.

These changes add a small amount of bloat on defconfig according to
bloat-o-meter:

text:
  add/remove: 1/108 grow/shrink: 3448/20 up/down: 272768/-4320 (268448)
  Total: Before=12363112, After=12631560, chg +2.17%

data:
  add/remove: 0/95 grow/shrink: 2/0 up/down: 40/-3251 (-3211)
  Total: Before=4628123, After=4624912, chg -0.07%


Andrew Murray (5):
  jump_label: Don't warn on __exit jump entries
  arm64: Use correct ll/sc atomic constraints
  arm64: atomics: avoid out-of-line ll/sc atomics
  arm64: avoid using hard-coded registers for LSE atomics
  arm64: atomics: remove atomic_ll_sc compilation unit

 arch/arm64/include/asm/atomic.h       |  11 +-
 arch/arm64/include/asm/atomic_arch.h  | 154 ++++++++++
 arch/arm64/include/asm/atomic_ll_sc.h | 164 +++++------
 arch/arm64/include/asm/atomic_lse.h   | 395 +++++++++-----------------
 arch/arm64/include/asm/cmpxchg.h      |   2 +-
 arch/arm64/include/asm/lse.h          |  11 -
 arch/arm64/lib/Makefile               |  19 --
 arch/arm64/lib/atomic_ll_sc.c         |   3 -
 kernel/jump_label.c                   |  16 +-
 9 files changed, 375 insertions(+), 400 deletions(-)
 create mode 100644 arch/arm64/include/asm/atomic_arch.h
 delete mode 100644 arch/arm64/lib/atomic_ll_sc.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
