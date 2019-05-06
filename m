Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE241536C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9yzkR4hAik9FGDHeGKSA0TzTgC4BH+oO3pLby/Cy4vY=; b=a/6w0qu4Oxono9
	c1VfX+q6U4JbPsT17fLwsL1ZN2iWTqH+8EC1sXOogatQ4souQ2KE8RhpDkWDDltb2oCQrbnm4y0IQ
	gDZIFe6tWgx8r7tJNcHanfIbjDrkLIknspD3yylAM9MY5EdBWt5a9ZB9qwtEwO7y2t4pn3ep/I0ak
	olMpvOBLjWwab/NdpM9emGfljkTxt3vT+S5umGPOcvZbrgfpbMHbqQ1qE5Fg3N8DOHBVEbdr4aiPX
	39VUOVkNOXWDnkpwRF6Uar8FdS4LAh0cSriC+d/FRyA6klwMFwc0HGfH2IBGsX8msLD/bjPDgpFVx
	BiqoA42Pyx53bBC9Na0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNi5W-0007dY-Hy; Mon, 06 May 2019 18:11:42 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNi5M-0007cZ-Dx
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 18:11:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D67F8A78;
 Mon,  6 May 2019 11:11:31 -0700 (PDT)
Received: from brain-police (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF87A3F5AF;
 Mon,  6 May 2019 11:11:29 -0700 (PDT)
Date: Mon, 6 May 2019 19:11:22 +0100
From: Will Deacon <will.deacon@arm.com>
To: torvalds@linux-foundation.org
Subject: [GIT PULL] arm64: updates for 5.2
Message-ID: <20190506181122.GC2875@brain-police>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_111132_480932_0AAE8EEE 
X-CRM114-Status: GOOD (  25.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: marc.zyngier@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 jpoimboe@redhat.com, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Please pull these arm64 updates for 5.2. As per usual, there are details
in the tag, but it's worth noting that we're including the core
"mitigations=" command-line code here from -tip so that we could develop
arm64 support on top of adding support for the "cpu/vulnerabilities"
directory under sysfs.

There is a straightforward conflict with -tip in the mm/kasan Makefile,
which just involves replacing a '-pg' with '$(CC_FLAGS_FTRACE)'. I also
ended up applying a duplicate of 045afc24124d ("arm64: futex: Fix
FUTEX_WAKE_OP atomic ops with non-zero result value") as 84ff7a09c371,
which I'm not very pleased about. The fix in mainline was based on -rc4,
so the alternative would've been merging all of that in, which seemed a
lot messier. In future, we're going to avoid fast-forwarding our fixes
branch with each -rc, so this shouldn't happen again.

Cheers,

Will

--->8

The following changes since commit 79a3aaa7b82e3106be97842dedfd8429248896e6:

  Linux 5.1-rc3 (2019-03-31 14:39:29 -0700)

are available in the git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git tags/arm64-upstream

for you to fetch changes up to b33f908811b7627015238e0dee9baf2b4c9d720d:

  Merge branch 'for-next/perf' of git://git.kernel.org/pub/scm/linux/kernel/git/will/linux into for-next/core (2019-05-03 10:18:08 +0100)

----------------------------------------------------------------
arm64 updates for 5.2

Mostly just incremental improvements here:

- Introduce AT_HWCAP2 for advertising CPU features to userspace

- Expose SVE2 availability to userspace

- Support for "data cache clean to point of deep persistence" (DC PODP)

- Honour "mitigations=off" on the cmdline and advertise status via sysfs

- CPU timer erratum workaround (Neoverse-N1 #1188873)

- Introduce perf PMU driver for the SMMUv3 performance counters

- Add config option to disable the kuser helpers page for AArch32 tasks

- Futex modifications to ensure liveness under contention

- Rework debug exception handling to seperate kernel and user handlers

- Non-critical fixes and cleanup

----------------------------------------------------------------
Alexandru Elisei (1):
      arm64: Use defines instead of magic numbers

Andrew Murray (6):
      arm64: HWCAP: add support for AT_HWCAP2
      arm64: HWCAP: encapsulate elf_hwcap
      arm64: Handle trapped DC CVADP
      arm64: Expose DC CVADP to userspace
      arm64: add CVADP support to the cache maintenance helper
      arm64: Advertise ARM64_HAS_DCPODP cpu feature

Anshuman Khandual (1):
      KVM: ARM: Remove pgtable page standard functions from stage-2 page tables

Arun KS (1):
      arm64: Fix size of __early_cpu_boot_status

Boyang Zhou (1):
      arm64: mmap: Ensure file offset is treated as unsigned

Dave Martin (1):
      arm64: Expose SVE2 features for userspace

Jean-Philippe Brucker (2):
      arm64: Clear OSDLR_EL1 on CPU boot
      arm64: Save and restore OSDLR_EL1 across suspend/resume

Jeremy Linton (6):
      arm64: Provide a command line to disable spectre_v2 mitigation
      arm64: add sysfs vulnerability show for meltdown
      arm64: Always enable spectre-v2 vulnerability detection
      arm64: add sysfs vulnerability show for spectre-v2
      arm64: Always enable ssb vulnerability detection
      arm64: add sysfs vulnerability show for speculative store bypass

Josh Poimboeuf (6):
      cpu/speculation: Add 'mitigations=' cmdline option
      x86/speculation: Support 'mitigations=' cmdline option
      powerpc/speculation: Support 'mitigations=' cmdline option
      s390/speculation: Support 'mitigations=' cmdline option
      arm64/speculation: Support 'mitigations=' cmdline option
      Documentation: Add ARM64 to kernel-parameters.rst

Kees Cook (1):
      arm64: sysreg: Make mrs_s and msr_s macros work with Clang and LTO

Kefeng Wang (1):
      ACPI/IORT: Reject platform device creation on NUMA node mapping failure

Marc Zyngier (13):
      arm64: Advertise mitigation of Spectre-v2, or lack thereof
      arm64: Use firmware to detect CPUs that are not affected by Spectre-v2
      arm64: Restrict ARM64_ERRATUM_1188873 mitigation to AArch32
      arm64: Make ARM64_ERRATUM_1188873 depend on COMPAT
      arm64: Add part number for Neoverse N1
      arm64: Apply ARM64_ERRATUM_1188873 to Neoverse-N1
      ARM: vdso: Remove dependency with the arch_timer driver internals
      watchdog/sbsa: Use arch_timer_read_counter instead of arch_counter_get_cntvct
      arm64: Use arch_timer_read_counter instead of arch_counter_get_cntvct
      clocksource/arm_arch_timer: Direcly assign set_next_event workaround
      clocksource/arm_arch_timer: Drop use of static key in arch_timer_reg_read_stable
      clocksource/arm_arch_timer: Remove use of workaround static key
      clocksource/arm_arch_timer: Use arch_timer_read_counter to access stable counters

Mark Rutland (1):
      arm64: instrument smp_{load_acquire,store_release}

Masahiro Yamada (2):
      arm64: vdso: fix and clean-up Makefile
      arm64: vdso: use $(LD) instead of $(CC) to link VDSO

Masami Hiramatsu (1):
      arm64: ptrace: Add function argument access API

Matteo Croce (1):
      arm64/vdso: don't leak kernel addresses

Mian Yousaf Kaukab (2):
      arm64: Add sysfs vulnerability show for spectre-v1
      arm64: enable generic CPU vulnerabilites support

Miles Chen (2):
      arm64: setup min_low_pfn
      arm64: mm: check virtual addr in virt_to_page() if CONFIG_DEBUG_VIRTUAL=y

Muchun Song (1):
      arm64: mm: fix incorrect assignment of 'max_mapnr'

Neil Leeder (2):
      ACPI/IORT: Add support for PMCG
      perf/smmuv3: Add arm64 smmuv3 pmu driver

Nishad Kamdar (1):
      arm64: Use the correct style for SPDX License Identifier

Qian Cai (3):
      arm64/mm: fix kernel-doc comments
      arm64: Fix compiler warning from pte_unmap() with -Wunused-but-set-variable
      arm64: mm: Remove pte_unmap_nested()

Raphael Gault (1):
      arm64: perf_event: Remove wrongfully used inline

Robin Murphy (2):
      perf/arm-cci: Remove broken race mitigation
      perf/arm-ccn: Clean up CPU hotplug handling

Shameer Kolothum (2):
      perf/smmuv3: Add MSI irq support
      perf/smmuv3: Enable HiSilicon Erratum 162001800 quirk

Torsten Duwe (3):
      arm64: Makefile: Replace -pg with CC_FLAGS_FTRACE
      efi/arm/arm64: Makefile: Replace -pg with CC_FLAGS_FTRACE
      kasan: Makefile: Replace -pg with CC_FLAGS_FTRACE

Vincenzo Frascino (7):
      arm64: compat: Reduce address limit
      arm64: vdso: Fix clock_getres() for CLOCK_REALTIME
      arm64: compat: Alloc separate pages for vectors and sigpage
      arm64: compat: Split kuser32
      arm64: compat: Refactor aarch32_alloc_vdso_pages()
      arm64: compat: Add KUSER_HELPERS config option
      arm64: compat: Reduce address limit for 64K pages

Wen Yang (1):
      arm64: cpu_ops: fix a leaked reference by adding missing of_node_put

Will Deacon (25):
      arm64: mm: Make show_pte() a static function
      arm64: mm: Ensure we ignore the initrd if it is placed out of range
      arm64: debug: Remove unused return value from do_debug_exception()
      arm64: debug: Rename addr parameter for non-watchpoint exception hooks
      arm64: debug: Remove meaningless comment
      arm64: debug: Separate debug hooks based on target exception level
      arm64: kprobes: Avoid calling kprobes debug handlers explicitly
      arm64: debug: Remove redundant user_mode(regs) checks from debug handlers
      arm64: probes: Move magic BRK values into brk-imm.h
      arm64: debug: Clean up brk_handler()
      arm64: mm: Consolidate early page table allocation
      arm64: Kconfig: Make CONFIG_COMPAT a menuconfig entry
      Merge branch 'core/speculation' of git://git.kernel.org/.../tip/tip into for-next/mitigations
      arm64: futex: Fix FUTEX_WAKE_OP atomic ops with non-zero result value
      locking/futex: Allow low-level atomic operations to return -EAGAIN
      arm64: futex: Bound number of LDXR/STXR loops in FUTEX_WAKE_OP
      arm64: futex: Avoid copying out uninitialised stack in failed cmpxchg()
      futex: Update comments and docs about return values of arch futex code
      arm64: Kconfig: Tidy up errata workaround help text
      arm64: arch_timer: Ensure counter register reads occur with seqlock held
      arm64: ssbs: Don't treat CPUs with SSBS as unaffected by SSB
      Merge branch 'for-next/futex' of git://git.kernel.org/.../arm64/linux into for-next/core
      Merge branch 'for-next/mitigations' of git://git.kernel.org/.../arm64/linux into for-next/core
      Merge branch 'for-next/timers' of git://git.kernel.org/.../arm64/linux into for-next/core
      Merge branch 'for-next/perf' of git://git.kernel.org/.../will/linux into for-next/core

Xiongfeng Wang (1):
      firmware: arm_sdei: Prohibit probing in '_sdei_handler'

Yu Zhao (3):
      arm64: mm: use appropriate ctors for page tables
      arm64: mm: don't call page table ctors for init_mm
      arm64: mm: enable per pmd page table lock

 Documentation/admin-guide/kernel-parameters.rst |   1 +
 Documentation/admin-guide/kernel-parameters.txt |  42 +-
 Documentation/arm64/cpu-feature-registers.txt   |  16 +
 Documentation/arm64/elf_hwcaps.txt              |  41 +-
 Documentation/arm64/silicon-errata.txt          |   2 +
 Documentation/arm64/sve.txt                     |  17 +
 Documentation/robust-futexes.txt                |   3 +-
 arch/arm/include/asm/arch_timer.h               |  18 +-
 arch/arm/include/asm/cp15.h                     |   2 +
 arch/arm/include/asm/stage2_pgtable.h           |   4 +-
 arch/arm/vdso/vgettimeofday.c                   |   5 +-
 arch/arm64/Kconfig                              | 132 ++--
 arch/arm64/boot/dts/mediatek/mt2712-pinfunc.h   |   2 +-
 arch/arm64/crypto/aes-ce-ccm-glue.c             |   2 +-
 arch/arm64/crypto/aes-neonbs-glue.c             |   2 +-
 arch/arm64/crypto/chacha-neon-glue.c            |   2 +-
 arch/arm64/crypto/crct10dif-ce-glue.c           |   4 +-
 arch/arm64/crypto/ghash-ce-glue.c               |   8 +-
 arch/arm64/crypto/nhpoly1305-neon-glue.c        |   2 +-
 arch/arm64/crypto/sha256-glue.c                 |   4 +-
 arch/arm64/include/asm/arch_timer.h             | 119 +++-
 arch/arm64/include/asm/assembler.h              |   8 +-
 arch/arm64/include/asm/barrier.h                |  24 +-
 arch/arm64/include/asm/brk-imm.h                |   5 +
 arch/arm64/include/asm/cpucaps.h                |   3 +-
 arch/arm64/include/asm/cpufeature.h             |  25 +-
 arch/arm64/include/asm/cputype.h                |   2 +
 arch/arm64/include/asm/debug-monitors.h         |  25 +-
 arch/arm64/include/asm/elf.h                    |   6 +-
 arch/arm64/include/asm/esr.h                    |   7 +-
 arch/arm64/include/asm/futex.h                  |  63 +-
 arch/arm64/include/asm/hwcap.h                  |  60 +-
 arch/arm64/include/asm/irqflags.h               |   8 +-
 arch/arm64/include/asm/kprobes.h                |   2 -
 arch/arm64/include/asm/kvm_hyp.h                |   4 +-
 arch/arm64/include/asm/memory.h                 |   2 +-
 arch/arm64/include/asm/pgalloc.h                |  12 +-
 arch/arm64/include/asm/pgtable.h                |   5 +-
 arch/arm64/include/asm/pointer_auth.h           |   2 +-
 arch/arm64/include/asm/processor.h              |   8 +
 arch/arm64/include/asm/ptrace.h                 |  22 +
 arch/arm64/include/asm/sdei.h                   |   2 +-
 arch/arm64/include/asm/signal32.h               |   2 -
 arch/arm64/include/asm/stage2_pgtable.h         |   4 +-
 arch/arm64/include/asm/sysreg.h                 |  59 +-
 arch/arm64/include/asm/system_misc.h            |   1 -
 arch/arm64/include/asm/tlb.h                    |   5 +-
 arch/arm64/include/asm/vdso_datapage.h          |   1 +
 arch/arm64/include/asm/vmap_stack.h             |   2 +-
 arch/arm64/include/uapi/asm/hwcap.h             |  13 +-
 arch/arm64/kernel/Makefile                      |  11 +-
 arch/arm64/kernel/asm-offsets.c                 |   2 +-
 arch/arm64/kernel/cpu_errata.c                  | 256 +++++--
 arch/arm64/kernel/cpu_ops.c                     |   1 +
 arch/arm64/kernel/cpufeature.c                  | 193 ++++--
 arch/arm64/kernel/cpuinfo.c                     |   9 +-
 arch/arm64/kernel/debug-monitors.c              | 115 ++--
 arch/arm64/kernel/entry.S                       |  19 +-
 arch/arm64/kernel/fpsimd.c                      |   4 +-
 arch/arm64/kernel/head.S                        |  12 +-
 arch/arm64/kernel/kgdb.c                        |  30 +-
 arch/arm64/kernel/kuser32.S                     |  66 +-
 arch/arm64/kernel/perf_event.c                  |   4 +-
 arch/arm64/kernel/probes/kprobes.c              |  22 +-
 arch/arm64/kernel/probes/uprobes.c              |  19 +-
 arch/arm64/kernel/signal32.c                    |   3 +-
 arch/arm64/kernel/sigreturn32.S                 |  46 ++
 arch/arm64/kernel/sys.c                         |   2 +-
 arch/arm64/kernel/traps.c                       |  33 +-
 arch/arm64/kernel/vdso.c                        | 139 +++-
 arch/arm64/kernel/vdso/Makefile                 |  19 +-
 arch/arm64/kernel/vdso/gettimeofday.S           |  22 +-
 arch/arm64/lib/Makefile                         |   2 +-
 arch/arm64/mm/fault.c                           |  16 +-
 arch/arm64/mm/init.c                            |   5 +-
 arch/arm64/mm/mmu.c                             |  47 +-
 arch/arm64/mm/numa.c                            |  25 +-
 arch/arm64/mm/proc.S                            |  34 +-
 arch/powerpc/kernel/security.c                  |   6 +-
 arch/powerpc/kernel/setup_64.c                  |   2 +-
 arch/s390/kernel/nospec-branch.c                |   3 +-
 arch/x86/kernel/cpu/bugs.c                      |  11 +-
 arch/x86/mm/pti.c                               |   4 +-
 drivers/acpi/arm64/iort.c                       | 150 +++-
 drivers/clocksource/arm_arch_timer.c            | 138 ++--
 drivers/firmware/arm_sdei.c                     |   3 +
 drivers/firmware/efi/libstub/Makefile           |   6 +-
 drivers/perf/Kconfig                            |   9 +
 drivers/perf/Makefile                           |   1 +
 drivers/perf/arm-cci.c                          |  21 +-
 drivers/perf/arm-ccn.c                          |  25 +-
 drivers/perf/arm_smmuv3_pmu.c                   | 865 ++++++++++++++++++++++++
 drivers/watchdog/sbsa_gwdt.c                    |   2 +-
 include/asm-generic/futex.h                     |   8 +-
 include/linux/acpi_iort.h                       |   8 +
 include/linux/cpu.h                             |  24 +
 kernel/cpu.c                                    |  15 +
 kernel/futex.c                                  | 188 +++--
 mm/kasan/Makefile                               |   6 +-
 virt/kvm/arm/mmu.c                              |   2 +-
 100 files changed, 2624 insertions(+), 839 deletions(-)
 create mode 100644 arch/arm64/kernel/sigreturn32.S
 create mode 100644 drivers/perf/arm_smmuv3_pmu.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
