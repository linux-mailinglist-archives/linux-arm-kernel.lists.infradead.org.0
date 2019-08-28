Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD53A08ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 19:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FloEyiu7HkrzIN1QkJqN4Nie2ehDJND1nEprk+AhdHM=; b=GCKRHVPX92GDNR
	MZ6KEZBFnkuefbATUN+wqbe5U+P1oodMZ7j8+VWAK2tyrtvbpv+t7QVFwbuwpyTDOPRBTiuIcJl0L
	pIW/Ctxrjf2UN7rQqcFMbh0AkMO0QMnD3odaDO1NULPKQQuRBO5VEhJS9Abgldw3R7Tl8S1AhLo87
	U+Zby7SiOotIE5oMuIWpLhYTKfoBcaoUvP9anJDhkz6cEy2tlorSc6Euzsy7UB3G462p9NZMwJMiO
	MnkPcdSlbVSYTEkw27fFCZhgjBmdh+4BlJaGVhQEJymINB2ZaFdGgFWW7ICZYz1icFoh9IDRSWrkn
	0mELwt7+Lnnvy3vgCSWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i325X-0006ZV-1d; Wed, 28 Aug 2019 17:50:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i325I-0006Yc-8n
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 17:50:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 626E1360;
 Wed, 28 Aug 2019 10:50:15 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A54CD3F59C;
 Wed, 28 Aug 2019 10:50:13 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Ard.Biesheuvel@arm.com
Subject: [PATCH v4 0/5] arm64: avoid out-of-line ll/sc atomics
Date: Wed, 28 Aug 2019 18:50:04 +0100
Message-Id: <20190828175009.15457-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_105018_589365_DD53DB62 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Boqun Feng <boqun.feng@gmail.com>,
 linux-arm-kernel@lists.infradead.org
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

Whilst it may be difficult to understand the performance impact, we gain
improved code readability, ability to use Clang, and improved backtrace
reliability.

Build and boot tested, along with atomic_64_test.

Following is the assembly of a function that has three consecutive
atomic_add calls when built with LSE and this patchset:

Dump of assembler code for function atomics_test:
   0xffff000010084338 <+0>:     b       0xffff000010084388 <atomics_test+80>
   0xffff00001008433c <+4>:     b       0xffff000010084388 <atomics_test+80>
   0xffff000010084340 <+8>:     adrp    x0, 0xffff0000118d5000 <reset_devices>
   0xffff000010084344 <+12>:    add     x2, x0, #0x0
   0xffff000010084348 <+16>:    mov     w1, #0x1                        // #1
   0xffff00001008434c <+20>:    add     x3, x2, #0x28
   0xffff000010084350 <+24>:    stadd   w1, [x3]
   0xffff000010084354 <+28>:    b       0xffff00001008439c <atomics_test+100>
   0xffff000010084358 <+32>:    b       0xffff00001008439c <atomics_test+100>
   0xffff00001008435c <+36>:    add     x1, x0, #0x0
   0xffff000010084360 <+40>:    mov     w2, #0x1                        // #1
   0xffff000010084364 <+44>:    add     x3, x1, #0x28
   0xffff000010084368 <+48>:    stadd   w2, [x3]
   0xffff00001008436c <+52>:    b       0xffff0000100843ac <atomics_test+116>
   0xffff000010084370 <+56>:    b       0xffff0000100843ac <atomics_test+116>
   0xffff000010084374 <+60>:    add     x0, x0, #0x0
   0xffff000010084378 <+64>:    mov     w1, #0x1                        // #1
   0xffff00001008437c <+68>:    add     x2, x0, #0x28
   0xffff000010084380 <+72>:    stadd   w1, [x2]
   0xffff000010084384 <+76>:    ret
   0xffff000010084388 <+80>:    adrp    x0, 0xffff0000118d5000 <reset_devices>
   0xffff00001008438c <+84>:    add     x1, x0, #0x0
   0xffff000010084390 <+88>:    add     x1, x1, #0x28
   0xffff000010084394 <+92>:    b       0xffff000010084570
   0xffff000010084398 <+96>:    b       0xffff000010084354 <atomics_test+28>
   0xffff00001008439c <+100>:   add     x1, x0, #0x0
   0xffff0000100843a0 <+104>:   add     x1, x1, #0x28
   0xffff0000100843a4 <+108>:   b       0xffff000010084588
   0xffff0000100843a8 <+112>:   b       0xffff00001008436c <atomics_test+52>
   0xffff0000100843ac <+116>:   add     x0, x0, #0x0
   0xffff0000100843b0 <+120>:   add     x0, x0, #0x28
   0xffff0000100843b4 <+124>:   b       0xffff0000100845a0
   0xffff0000100843b8 <+128>:   ret
End of assembler dump.

ffff000010084570:       f9800031        prfm    pstl1strm, [x1]
ffff000010084574:       885f7c22        ldxr    w2, [x1]
ffff000010084578:       11000442        add     w2, w2, #0x1
ffff00001008457c:       88037c22        stxr    w3, w2, [x1]
ffff000010084580:       35ffffa3        cbnz    w3, ffff000010084574 <do_one_initcall+0x1b4>
ffff000010084584:       17ffff85        b       ffff000010084398 <atomics_test+0x60>
ffff000010084588:       f9800031        prfm    pstl1strm, [x1]
ffff00001008458c:       885f7c22        ldxr    w2, [x1]
ffff000010084590:       11000442        add     w2, w2, #0x1
ffff000010084594:       88037c22        stxr    w3, w2, [x1]
ffff000010084598:       35ffffa3        cbnz    w3, ffff00001008458c <do_one_initcall+0x1cc>
ffff00001008459c:       17ffff83        b       ffff0000100843a8 <atomics_test+0x70>
ffff0000100845a0:       f9800011        prfm    pstl1strm, [x0]
ffff0000100845a4:       885f7c01        ldxr    w1, [x0]
ffff0000100845a8:       11000421        add     w1, w1, #0x1
ffff0000100845ac:       88027c01        stxr    w2, w1, [x0]
ffff0000100845b0:       35ffffa2        cbnz    w2, ffff0000100845a4 <do_one_initcall+0x1e4>
ffff0000100845b4:       17ffff81        b       ffff0000100843b8 <atomics_test+0x80>

The two branches before each section of atomics relates to the two static
keys which both become nop's when LSE is available. When LSE isn't
available the branches are used to run the slowpath fallback LL/SC atomics.

In v1 of this series, due to the use of likely/unlikely for the LSE code,
the fallback code ended up in one place at the end of the function. In this
v2 patchset we move the fallback code into its own subsection, this moves
any atomics code to the end of each compilation unit. It is felt that this
may improve icache performance for both LSE and LL/SC.

Where CONFIG_ARM64_LSE_ATOMICS isn't enabled then the same function is as
follows:

Dump of assembler code for function atomics_test:
   0xffff000010084338 <+0>:     adrp    x0, 0xffff000011865000 <reset_devices>
   0xffff00001008433c <+4>:     add     x0, x0, #0x0
   0xffff000010084340 <+8>:     add     x3, x0, #0x28
   0xffff000010084344 <+12>:    prfm    pstl1strm, [x3]
   0xffff000010084348 <+16>:    ldxr    w1, [x3]
   0xffff00001008434c <+20>:    add     w1, w1, #0x1
   0xffff000010084350 <+24>:    stxr    w2, w1, [x3]
   0xffff000010084354 <+28>:    cbnz    w2, 0xffff000010084348 <atomics_test+16>
   0xffff000010084358 <+32>:    prfm    pstl1strm, [x3]
   0xffff00001008435c <+36>:    ldxr    w1, [x3]
   0xffff000010084360 <+40>:    add     w1, w1, #0x1
   0xffff000010084364 <+44>:    stxr    w2, w1, [x3]
   0xffff000010084368 <+48>:    cbnz    w2, 0xffff00001008435c <atomics_test+36>
   0xffff00001008436c <+52>:    prfm    pstl1strm, [x3]
   0xffff000010084370 <+56>:    ldxr    w1, [x3]
   0xffff000010084374 <+60>:    add     w1, w1, #0x1
   0xffff000010084378 <+64>:    stxr    w2, w1, [x3]
   0xffff00001008437c <+68>:    cbnz    w2, 0xffff000010084370 <atomics_test+56>
   0xffff000010084380 <+72>:    ret
End of assembler dump.

These changes add some bloat on defconfig according to bloat-o-meter:

For LSE build (text):
  add/remove: 4/109 grow/shrink: 3398/67 up/down: 151556/-4940
  Total: Before=12759457, After=12906073, chg +1.15%

For LL/LSC only build (text):
  add/remove: 2/2 grow/shrink: 1423/57 up/down: 12224/-564 (11660)
  Total: Before=12836417, After=12848077, chg +0.09%

The bloat for LSE is due to the provision of LL/SC fallback atomics no longer
being !inline.

The bloat for LL/SC seems to be due to patch 2, which changes some assembly
constraints (i.e. moving an intermediate to a register).

When comparing the number of data transfer instructions (those starting or
ending with ld or st) in vmlinux we see a reduction from 30.8% to 30.6% when
applying this series. And no change when CONFIG_ARM64_LSE_ATOMICS isn't
enabled (30.9%). This was a feable attempt to measure register spilling.

Changes since v3:

 - Remove stale sentence from commit message of 'jump_label: Don't warn on...'

 - Reorder include statements in atomic_arch.h (asm last)

 - Reword commit message of 'arm64: Use correct ll/sc atomic constraints...' as
   suggested by Mark Rutland

 - Drop buggy 'K' contraints for LL/SC atomic_[and, or, xor] functions

 - Use correct 'L' constrints for LL/SC atomic64_[and, or, xor] functions

 - Rebased onto v5.3-rc3

Changes since v2:

 - Ensure _{relaxed,acquire,release} qualifers are used

 - Rebased onto arm64/for-next/fixes (v5.3-rc3)

Changes since v1:

 - Move LL/SC atomics to a subsection when being used as a fallback

 - Rebased onto arm64/for-next/fixes


Andrew Murray (5):
  jump_label: Don't warn on __exit jump entries
  arm64: Use correct ll/sc atomic constraints
  arm64: atomics: avoid out-of-line ll/sc atomics
  arm64: avoid using hard-coded registers for LSE atomics
  arm64: atomics: remove atomic_ll_sc compilation unit

 arch/arm64/include/asm/atomic.h       |  11 +-
 arch/arm64/include/asm/atomic_arch.h  | 155 ++++++++++
 arch/arm64/include/asm/atomic_ll_sc.h | 200 ++++++-------
 arch/arm64/include/asm/atomic_lse.h   | 395 +++++++++-----------------
 arch/arm64/include/asm/cmpxchg.h      |   2 +-
 arch/arm64/include/asm/lse.h          |  11 -
 arch/arm64/lib/Makefile               |  19 --
 arch/arm64/lib/atomic_ll_sc.c         |   3 -
 kernel/jump_label.c                   |   4 +-
 9 files changed, 399 insertions(+), 401 deletions(-)
 create mode 100644 arch/arm64/include/asm/atomic_arch.h
 delete mode 100644 arch/arm64/lib/atomic_ll_sc.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
