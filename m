Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E26E7300
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 14:59:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CtNIlDEGVpWq5XKPqywVc80CUY9mPd/1JvQjodoCs48=; b=YKSyvqESlgdziv
	nN1sok/wPzk8S7vv/lKlGslidrRJ6zmTkax6GKYyFJ4AUQQD1RUuxH9v6Y4Q4GByPs91C3XDe+nML
	i/XMGOh+2tCt/L+cSWSK+5hoZohk3JCcg1KT3vT7mYnvUBIoWHIAscLAkzP6t0s65Fr/wThwj3hpg
	IGRg+d9oyOfspVEVtQSYfdkB+AVWhhbg9tsz14R2kbEuu8p72vr56bvNBf6gKg1XFkiIbEK5UMY8s
	XGdoH8zczff7z1gqNsyNLPalSBpmyTJe3Pbr88QEVPrhBIcHj/58DcfaYxL6As5FurLJ3zOEo7oFy
	AyhrYoU3o/QfHieCzIsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP5YR-0005MA-I9; Mon, 28 Oct 2019 13:59:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP5YF-0005L3-So
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 13:59:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C7B41F1;
 Mon, 28 Oct 2019 06:59:18 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (unknown [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11B1C3F6C4;
 Mon, 28 Oct 2019 06:59:15 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v14 00/22] Generic page walk and ptdump
Date: Mon, 28 Oct 2019 13:58:48 +0000
Message-Id: <20191028135910.33253-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_065920_023717_E93A1743 
X-CRM114-Status: GOOD (  20.15  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Many architectures current have a debugfs file for dumping the kernel
page tables. Currently each architecture has to implement custom
functions for this because the details of walking the page tables used
by the kernel are different between architectures.

This series extends the capabilities of walk_page_range() so that it can
deal with the page tables of the kernel (which have no VMAs and can
contain larger huge pages than exist for user space). A generic PTDUMP
implementation is the implemented making use of the new functionality of
walk_page_range() and finally arm64 and x86 are switch to using it,
removing the custom table walkers.

To enable a generic page table walker to walk the unusual mappings of
the kernel we need to implement a set of functions which let us know
when the walker has reached the leaf entry. After a suggestion from Will
Deacon I've chosen the name p?d_leaf() as this (hopefully) describes
the purpose (and is a new name so has no historic baggage). Some
architectures have p?d_large macros but this is easily confused with
"large pages".

This series ends with a generic PTDUMP implemention for arm64 and x86.

Mostly this is a clean up and there should be very little functional
change. The exceptions are:

* arm64 PTDUMP debugfs now displays pages which aren't present (patch 22).

* arm64 has the ability to efficiently process KASAN pages (which
  previously only x86 implemented). This means that the combination of
  KASAN and DEBUG_WX is now useable.

Also available as a git tree:
git://linux-arm.org/linux-sp.git walk_page_range/v14

Changes since v13:
https://lore.kernel.org/lkml/20191024093716.49420-1-steven.price@arm.com/
 * Fixed typo in arc definition of pmd_leaf() spotted by the kbuild test
   robot
 * Added tags

Changes since v12:
https://lore.kernel.org/lkml/20191018101248.33727-1-steven.price@arm.com/
 * Correct code format in riscv pud_leaf()/pmd_leaf()
 * v12 may not have reached everyone because of mail server problems
   (which are now hopefully resolved!)

Changes since v11:
https://lore.kernel.org/lkml/20191007153822.16518-1-steven.price@arm.com/
 * Use "-1" as dummy depth parameter in patch 14.

Changes since v10:
https://lore.kernel.org/lkml/20190731154603.41797-1-steven.price@arm.com/
 * Rebased to v5.4-rc1 - mainly various updates to deal with the
   splitting out of ops from struct mm_walk.
 * Deal with PGD_LEVEL_MULT not always being constant on x86.

Changes since v9:
https://lore.kernel.org/lkml/20190722154210.42799-1-steven.price@arm.com/
 * Moved generic macros to first page in the series and explained the
   macro naming in the commit message.
 * mips: Moved macros to pgtable.h as they are now valid for both 32 and 64
   bit
 * x86: Dropped patch which changed the debugfs output for x86, instead
   we have...
 * new patch adding 'depth' parameter to pte_hole. This is used to
   provide the necessary information to output lines for 'holes' in the
   debugfs files
 * new patch changing arm64 debugfs output to include holes to match x86
 * generic ptdump KASAN handling has been simplified and now works with
   CONFIG_DEBUG_VIRTUAL.

Changes since v8:
https://lore.kernel.org/lkml/20190403141627.11664-1-steven.price@arm.com/
 * Rename from p?d_large() to p?d_leaf()
 * Dropped patches migrating arm64/x86 custom walkers to
   walk_page_range() in favour of adding a generic PTDUMP implementation
   and migrating arm64/x86 to that instead.
 * Rebased to v5.3-rc1

Steven Price (22):
  mm: Add generic p?d_leaf() macros
  arc: mm: Add p?d_leaf() definitions
  arm: mm: Add p?d_leaf() definitions
  arm64: mm: Add p?d_leaf() definitions
  mips: mm: Add p?d_leaf() definitions
  powerpc: mm: Add p?d_leaf() definitions
  riscv: mm: Add p?d_leaf() definitions
  s390: mm: Add p?d_leaf() definitions
  sparc: mm: Add p?d_leaf() definitions
  x86: mm: Add p?d_leaf() definitions
  mm: pagewalk: Add p4d_entry() and pgd_entry()
  mm: pagewalk: Allow walking without vma
  mm: pagewalk: Add test_p?d callbacks
  mm: pagewalk: Add 'depth' parameter to pte_hole
  x86: mm: Point to struct seq_file from struct pg_state
  x86: mm+efi: Convert ptdump_walk_pgd_level() to take a mm_struct
  x86: mm: Convert ptdump_walk_pgd_level_debugfs() to take an mm_struct
  x86: mm: Convert ptdump_walk_pgd_level_core() to take an mm_struct
  mm: Add generic ptdump
  x86: mm: Convert dump_pagetables to use walk_page_range
  arm64: mm: Convert mm/dump.c to use walk_page_range()
  arm64: mm: Display non-present entries in ptdump

 arch/arc/include/asm/pgtable.h               |   1 +
 arch/arm/include/asm/pgtable-2level.h        |   1 +
 arch/arm/include/asm/pgtable-3level.h        |   1 +
 arch/arm64/Kconfig                           |   1 +
 arch/arm64/Kconfig.debug                     |  19 +-
 arch/arm64/include/asm/pgtable.h             |   2 +
 arch/arm64/include/asm/ptdump.h              |   8 +-
 arch/arm64/mm/Makefile                       |   4 +-
 arch/arm64/mm/dump.c                         | 142 +++-----
 arch/arm64/mm/mmu.c                          |   4 +-
 arch/arm64/mm/ptdump_debugfs.c               |   2 +-
 arch/mips/include/asm/pgtable.h              |   5 +
 arch/powerpc/include/asm/book3s/64/pgtable.h |  30 +-
 arch/riscv/include/asm/pgtable-64.h          |   7 +
 arch/riscv/include/asm/pgtable.h             |   7 +
 arch/s390/include/asm/pgtable.h              |   2 +
 arch/sparc/include/asm/pgtable_64.h          |   2 +
 arch/x86/Kconfig                             |   1 +
 arch/x86/Kconfig.debug                       |  20 +-
 arch/x86/include/asm/pgtable.h               |  10 +-
 arch/x86/mm/Makefile                         |   4 +-
 arch/x86/mm/debug_pagetables.c               |   8 +-
 arch/x86/mm/dump_pagetables.c                | 332 +++++--------------
 arch/x86/platform/efi/efi_32.c               |   2 +-
 arch/x86/platform/efi/efi_64.c               |   4 +-
 drivers/firmware/efi/arm-runtime.c           |   2 +-
 fs/proc/task_mmu.c                           |   4 +-
 include/asm-generic/pgtable.h                |  20 ++
 include/linux/pagewalk.h                     |  37 ++-
 include/linux/ptdump.h                       |  21 ++
 mm/Kconfig.debug                             |  21 ++
 mm/Makefile                                  |   1 +
 mm/hmm.c                                     |   8 +-
 mm/migrate.c                                 |   5 +-
 mm/mincore.c                                 |   1 +
 mm/pagewalk.c                                | 107 ++++--
 mm/ptdump.c                                  | 150 +++++++++
 37 files changed, 551 insertions(+), 445 deletions(-)
 create mode 100644 include/linux/ptdump.h
 create mode 100644 mm/ptdump.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
