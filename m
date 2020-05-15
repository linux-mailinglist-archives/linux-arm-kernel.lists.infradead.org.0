Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D231D5752
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nWVk78x846JI3dTvPQyGWBF8nC+4ER+AWg/4G+ITuCs=; b=rS+YCFtllT0HmZ
	Dnq8LMTyx8ntMvU/nNTVE7Tp1yeq+bDcDVB7Uc4d8t5BxKl2RUiVaa4N6ewSteKzVcUoMM2FQoR6A
	FLmSDxjfBLHOf0ic4NBlDynapD3mp4Hb6ceYRTj+Mc0RG9MlqKAp9kc9IJYhplxAdzw5YC8GxHxtk
	I2N9kAwYRBW0gtGZiIV8bdU6LMjw2V8Hn66iWuWNZqyDnQ4kB35c9QcQYJ4nJhozTdJpETIf6i3i8
	38bIeP+IJb7HAmLRRq5YDR/yhUEDYOGWj9mMuHy1WHDvMCUvdtf9TzsgdHSrUvPxza+0+5ucMFVNW
	Yn1PPNlv37uoHBkhjvyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZdxL-0002LW-F0; Fri, 15 May 2020 17:17:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZdwd-0001mC-SN
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:16:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C93FA1042;
 Fri, 15 May 2020 10:16:22 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4954D3F305;
 Fri, 15 May 2020 10:16:21 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 00/26] arm64: Memory Tagging Extension user-space support
Date: Fri, 15 May 2020 18:15:46 +0100
Message-Id: <20200515171612.1020-1-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_101624_010165_F29E9EA7 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is the fourth version (third version here [1]) of the series adding
user-space support for the ARMv8.5 Memory Tagging Extension ([2], [3]).
The patches are also available on this branch:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux devel/mte-v4

Changes in this version:

- Swap and suspend to disk support for saving/restoring tags.

- Deferred the tag zeroing from clear_page() to set_pte_at() to cope
  with RAM filesystems that do not start from a zeroed page. The
  copy_page() function was also optimised to only copy tags if the page
  has been previously mapped as tagged (PROT_MTE). This mechanism
  requires a new PG_arch_2 flag.

- memcmp_pages() rewritten to always return a no-match if at least one
  of the pages is tagged (tag comparison avoided).

- ptrace() updated to prevent accessing tags in a page that has not been
  mapped with PROT_MTE (PG_arch_2 flag not set).

- copy_mount_options() fix re-implemented to avoid
  arch_has_exact_copy_from_user().

- The CPUID handling has been reworked to ensure that, when the feature
  is not backed by the DT, the HWCAP is also hidden from user. Note that
  the DT description is still under internal discussion on whether we
  need it or not.

- A new early param, arm64.mte_disable, was introduced to facilitate
  testing with and without MTE on platforms that support it.

- Asynchronous TCF SIGSEGV is no longer forced, so it can be ignored but
  the user thread.

- CONFIG_ARM64_MTE is now default y since swap is supported.

To do or discuss:

- prctl() accepting an include vs exclude mask for the GCR_EL1.Excl
  field. There is an ongoing discussion on v3 which accepts an include
  mask with 0 being a special case equivalent to 1. If this is not
  desirable, we can change this to an exclude mask.

- mmap(tagged_addr, PROT_MTE) pre-tagging the memory with the tag given
  in the tagged_addr hint.

- ptrace() to expose the prctl() configuration for the user thread (or
  the TCF and GCR_EL1.Excl fields).

- coredump (user) to also dump the tags.

- Kselftest patches will be made available.

[1] https://lore.kernel.org/linux-arm-kernel/20200421142603.3894-1-catalin.marinas@arm.com/
[2] https://community.arm.com/developer/ip-products/processors/b/processors-ip-blog/posts/enhancing-memory-safety
[3] https://developer.arm.com/-/media/Arm%20Developer%20Community/PDF/Arm_Memory_Tagging_Extension_Whitepaper.pdf

Catalin Marinas (14):
  arm64: mte: Use Normal Tagged attributes for the linear map
  arm64: mte: Clear the tags when a page is mapped in user-space with
    PROT_MTE
  arm64: mte: Tags-aware aware memcmp_pages() implementation
  arm64: mte: Add PROT_MTE support to mmap() and mprotect()
  mm: Introduce arch_validate_flags()
  arm64: mte: Validate the PROT_MTE request via arch_validate_flags()
  mm: Allow arm64 mmap(PROT_MTE) on RAM-based files
  arm64: mte: Allow user control of the tag check mode via prctl()
  arm64: mte: Allow user control of the generated random tags via
    prctl()
  arm64: mte: Restore the GCR_EL1 register after a suspend
  arm64: mte: Add PTRACE_{PEEK,POKE}MTETAGS support
  fs: Handle intra-page faults in copy_mount_options()
  arm64: mte: Check the DT memory nodes for MTE support
  arm64: mte: Introduce early param to disable MTE support

Kevin Brodsky (1):
  mm: Introduce arch_calc_vm_flag_bits()

Steven Price (4):
  mm: Add PG_ARCH_2 page flag
  mm: Add arch hooks for saving/restoring tags
  arm64: mte: Enable swap of tagged pages
  arm64: mte: Save tags when hibernating

Vincenzo Frascino (7):
  arm64: mte: system register definitions
  arm64: mte: CPU feature detection and initial sysreg configuration
  arm64: mte: Add specific SIGSEGV codes
  arm64: mte: Handle synchronous and asynchronous tag check faults
  arm64: mte: Tags-aware copy_page() implementation
  arm64: mte: Kconfig entry
  arm64: mte: Add Memory Tagging Extension documentation

 .../admin-guide/kernel-parameters.txt         |   4 +
 Documentation/arm64/cpu-feature-registers.rst |   2 +
 Documentation/arm64/elf_hwcaps.rst            |   5 +
 Documentation/arm64/index.rst                 |   1 +
 .../arm64/memory-tagging-extension.rst        | 297 ++++++++++++++++
 arch/arm64/Kconfig                            |  33 ++
 arch/arm64/boot/dts/arm/fvp-base-revc.dts     |   1 +
 arch/arm64/include/asm/assembler.h            |  12 +
 arch/arm64/include/asm/cpucaps.h              |   4 +-
 arch/arm64/include/asm/cpufeature.h           |  12 +-
 arch/arm64/include/asm/hwcap.h                |   1 +
 arch/arm64/include/asm/kvm_arm.h              |   3 +-
 arch/arm64/include/asm/memory.h               |  17 +-
 arch/arm64/include/asm/mman.h                 |  78 +++++
 arch/arm64/include/asm/mte.h                  |  86 +++++
 arch/arm64/include/asm/page.h                 |   2 +-
 arch/arm64/include/asm/pgtable-prot.h         |   2 +
 arch/arm64/include/asm/pgtable.h              |  45 ++-
 arch/arm64/include/asm/processor.h            |   4 +
 arch/arm64/include/asm/sysreg.h               |  62 ++++
 arch/arm64/include/asm/thread_info.h          |   4 +-
 arch/arm64/include/uapi/asm/hwcap.h           |   2 +
 arch/arm64/include/uapi/asm/mman.h            |  14 +
 arch/arm64/include/uapi/asm/ptrace.h          |   4 +
 arch/arm64/kernel/Makefile                    |   1 +
 arch/arm64/kernel/cpufeature.c                | 126 ++++++-
 arch/arm64/kernel/cpuinfo.c                   |   2 +
 arch/arm64/kernel/entry.S                     |  37 ++
 arch/arm64/kernel/hibernate.c                 | 118 +++++++
 arch/arm64/kernel/mte.c                       | 324 ++++++++++++++++++
 arch/arm64/kernel/process.c                   |  31 +-
 arch/arm64/kernel/ptrace.c                    |   9 +-
 arch/arm64/kernel/signal.c                    |   8 +
 arch/arm64/kernel/suspend.c                   |   4 +
 arch/arm64/kernel/syscall.c                   |  10 +
 arch/arm64/lib/Makefile                       |   2 +
 arch/arm64/lib/mte.S                          | 140 ++++++++
 arch/arm64/mm/Makefile                        |   1 +
 arch/arm64/mm/copypage.c                      |  14 +-
 arch/arm64/mm/dump.c                          |   4 +
 arch/arm64/mm/fault.c                         |   9 +-
 arch/arm64/mm/mmu.c                           |  22 +-
 arch/arm64/mm/mteswap.c                       |  82 +++++
 arch/arm64/mm/proc.S                          |   8 +-
 arch/x86/kernel/signal_compat.c               |   2 +-
 fs/namespace.c                                |  24 +-
 fs/proc/page.c                                |   3 +
 fs/proc/task_mmu.c                            |   4 +
 include/asm-generic/pgtable.h                 |  23 ++
 include/linux/kernel-page-flags.h             |   1 +
 include/linux/mm.h                            |   8 +
 include/linux/mman.h                          |  22 +-
 include/linux/page-flags.h                    |   3 +
 include/trace/events/mmflags.h                |   9 +-
 include/uapi/asm-generic/siginfo.h            |   4 +-
 include/uapi/linux/prctl.h                    |   9 +
 mm/Kconfig                                    |   3 +
 mm/mmap.c                                     |   9 +
 mm/mprotect.c                                 |   6 +
 mm/page_io.c                                  |  10 +
 mm/shmem.c                                    |   9 +
 mm/swapfile.c                                 |   2 +
 mm/util.c                                     |   2 +-
 tools/vm/page-types.c                         |   2 +
 64 files changed, 1765 insertions(+), 37 deletions(-)
 create mode 100644 Documentation/arm64/memory-tagging-extension.rst
 create mode 100644 arch/arm64/include/asm/mman.h
 create mode 100644 arch/arm64/include/asm/mte.h
 create mode 100644 arch/arm64/include/uapi/asm/mman.h
 create mode 100644 arch/arm64/kernel/mte.c
 create mode 100644 arch/arm64/lib/mte.S
 create mode 100644 arch/arm64/mm/mteswap.c


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
