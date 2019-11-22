Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3736D107799
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 19:48:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kYkDQmL66WQPV0mwRhJtl+AedniMU362K8+1xTKOTFU=; b=TNN5wHUck0w2pv
	tI4lqWUawOMMO115XPMYbP+ZKjYHl9wiHCIbJSZj6sm3hcfA29pO83LONjERL9+G1Dyr7IIdXik9R
	qH9IQWy42Yo92B4A561fghbyYSwk1RBrKTrJggwhqo/w0RxRBZHRD6knR1qyKBpxIBJJ2EcnONwlE
	vEzO5a4mm4aJa3qHStOTsc3m6qpRLJdxgT3sT10039keqDP+cfLcxUEupHdsEb57vTnzXIxwrSCGy
	3ARLwKt60ZrWccKt2xsGsr5h6fSNQ4HIghtabWoYgxPGdZAu7SovyMjK89xsYJRQ8m1dYU727AJU6
	DZ8zwhLYPX5/x7rq+ePA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDyi-00006y-9N; Fri, 22 Nov 2019 18:48:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDyY-00005m-Cw
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 18:48:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD2E3328;
 Fri, 22 Nov 2019 10:48:11 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 BBF453F6C4; Fri, 22 Nov 2019 10:48:10 -0800 (PST)
Date: Fri, 22 Nov 2019 18:48:08 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: [GIT PULL] arm64 updates for 5.5
Message-ID: <20191122184806.GA3422@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_104814_530038_A7D50D40 
X-CRM114-Status: GOOD (  20.92  )
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
Cc: Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org,
 "Kirill A. Shutemov" <kirill@shutemov.name>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

Here's an early pull request for 5.5. Apart from the arm64-specific bits
(core arch and perf, new arm64 selftests), it touches the generic
cow_user_page() (reviewed by Kirill) together with a macro for x86 to
preserve the existing behaviour on this architecture. There is a
conflict with mainline in asm/asm-uaccess.h because of the arm64 fixes
that went in after -rc8. The resolution is as per current mainline
(remove the code; see my resolution after the diffstat below).

Happy Thanksgiving!

The following changes since commit 777d062e5bee0e3c0751cdcbce116a76ee2310ec:

  Merge branch 'errata/tx2-219' into for-next/fixes (2019-10-17 13:42:42 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux tags/arm64-upstream

for you to fetch changes up to d8e85e144bbe12e8d82c6b05d690a34da62cc991:

  arm64: Kconfig: add a choice for endianness (2019-11-14 14:39:03 +0000)

----------------------------------------------------------------
arm64 updates for 5.5:

- On ARMv8 CPUs without hardware updates of the access flag, avoid
  failing cow_user_page() on PFN mappings if the pte is old. The patches
  introduce an arch_faults_on_old_pte() macro, defined as false on x86.
  When true, cow_user_page() makes the pte young before attempting
  __copy_from_user_inatomic().

- Covert the synchronous exception handling paths in
  arch/arm64/kernel/entry.S to C.

- FTRACE_WITH_REGS support for arm64.

- ZONE_DMA re-introduced on arm64 to support Raspberry Pi 4

- Several kselftest cases specific to arm64, together with a MAINTAINERS
  update for these files (moved to the ARM64 PORT entry).

- Workaround for a Neoverse-N1 erratum where the CPU may fetch stale
  instructions under certain conditions.

- Workaround for Cortex-A57 and A72 errata where the CPU may
  speculatively execute an AT instruction and associate a VMID with the
  wrong guest page tables (corrupting the TLB).

- Perf updates for arm64: additional PMU topologies on HiSilicon
  platforms, support for CCN-512 interconnect, AXI ID filtering in the
  IMX8 DDR PMU, support for the CCPI2 uncore PMU in ThunderX2.

- GICv3 optimisation to avoid a heavy barrier when accessing the
  ICC_PMR_EL1 register.

- ELF HWCAP documentation updates and clean-up.

- SMC calling convention conduit code clean-up.

- KASLR diagnostics printed during boot

- NVIDIA Carmel CPU added to the KPTI whitelist

- Some arm64 mm clean-ups: use generic free_initrd_mem(), remove stale
  macro, simplify calculation in __create_pgd_mapping(), typos.

- Kconfig clean-ups: CMDLINE_FORCE to depend on CMDLINE, choice for
  endinanness to help with allmodconfig.

----------------------------------------------------------------
Anders Roxell (2):
      arm64: Kconfig: make CMDLINE_FORCE depend on CMDLINE
      arm64: Kconfig: add a choice for endianness

Anshuman Khandual (1):
      arm64/mm: Poison initmem while freeing with free_reserved_area()

Bhupesh Sharma (1):
      arm64: mm: Remove MAX_USER_VA_BITS definition

Catalin Marinas (10):
      arm64: Silence clang warning on mismatched value/register sizes
      Merge remote-tracking branch 'arm64/for-next/fixes' into for-next/core
      Merge branch 'for-next/neoverse-n1-stale-instr' into for-next/core
      Merge branch 'kvm-arm64/erratum-1319367' of git://git.kernel.org/.../maz/arm-platforms into for-next/core
      arm64: Make arm64_dma32_phys_limit static
      Merge branch 'for-next/entry-s-to-c' into for-next/core
      Merge branch 'arm64/ftrace-with-regs' of git://git.kernel.org/.../mark/linux into for-next/core
      Merge branch 'for-next/perf' into for-next/core
      Merge branches 'for-next/elf-hwcap-docs', 'for-next/smccc-conduit-cleanup', 'for-next/zone-dma', 'for-next/relax-icc_pmr_el1-sync', 'for-next/double-page-fault', 'for-next/misc', 'for-next/kselftest-arm64-signal' and 'for-next/kaslr-diagnostics' into for-next/core
      MAINTAINERS: Add arm64 selftests to the ARM64 PORT entry

Colin Ian King (1):
      kselftest: arm64: fix spelling mistake "contiguos" -> "contiguous"

Cristian Marussi (12):
      kselftest: arm64: extend toplevel skeleton Makefile
      kselftest: arm64: mangle_pstate_invalid_compat_toggle and common utils
      kselftest: arm64: mangle_pstate_invalid_daif_bits
      kselftest: arm64: mangle_pstate_invalid_mode_el[123][ht]
      kselftest: arm64: extend test_init functionalities
      kselftest: arm64: add helper get_current_context
      kselftest: arm64: fake_sigreturn_bad_magic
      kselftest: arm64: fake_sigreturn_bad_size_for_magic0
      kselftest: arm64: fake_sigreturn_missing_fpsimd
      kselftest: arm64: fake_sigreturn_duplicated_fpsimd
      kselftest: arm64: fake_sigreturn_bad_size
      kselftest: arm64: fake_sigreturn_misaligned_sp

Dave Martin (1):
      arm64: docs: cpu-feature-registers: Document ID_AA64PFR1_EL1

Ganapatrao Prabhakerrao Kulkarni (2):
      Documentation: perf: Update documentation for ThunderX2 PMU uncore driver
      drivers/perf: Add CCPI2 PMU support in ThunderX2 UNCORE driver.

James Morse (7):
      arm64: errata: Hide CTR_EL0.DIC on systems affected by Neoverse-N1 #1542419
      arm64: Fake the IminLine size on systems affected by Neoverse-N1 #1542419
      arm64: compat: Workaround Neoverse-N1 #1542419 for compat user-space
      arm64: remove __exception annotations
      arm64: Add prototypes for functions called by entry.S
      arm64: Remove asmlinkage from updated functions
      arm64: entry-common: don't touch daif before bp-hardening

Jia He (4):
      arm64: cpufeature: introduce helper cpu_has_hw_af()
      arm64: mm: implement arch_faults_on_old_pte() on arm64
      x86/mm: implement arch_faults_on_old_pte() stub on x86
      mm: fix double page fault on arm64 if PTE_AF is cleared

Joakim Zhang (6):
      docs/perf: Add explanation for DDR_CAP_AXI_ID_FILTER_ENHANCED quirk
      bindings: perf: imx-ddr: Add new compatible string
      perf/imx_ddr: Add enhanced AXI ID filter support
      perf/imx_ddr: Add driver for DDR PMU in i.MX8MPlus
      docs/perf: Add AXI ID filter capabilities information
      perf/imx_ddr: Dump AXI ID filter info to userspace

Julien Grall (4):
      docs/arm64: elf_hwcaps: sort the HWCAP{, 2} documentation by ascending value
      docs/arm64: elf_hwcaps: Document HWCAP_SB
      docs/arm64: cpu-feature-registers: Documents missing visible fields
      docs/arm64: cpu-feature-registers: Rewrite bitfields that don't follow [e, s]

Marc Zyngier (7):
      arm64: Relax ICC_PMR_EL1 accesses when ICC_CTLR_EL1.PMHE is clear
      arm64: Document ICC_CTLR_EL3.PMHE setting requirements
      arm64: Add ARM64_WORKAROUND_1319367 for all A57 and A72 versions
      arm64: KVM: Reorder system register restoration and stage-2 activation
      arm64: KVM: Disable EL1 PTW when invalidating S2 TLBs
      arm64: KVM: Prevent speculative S1 PTW when restoring vcpu context
      arm64: Enable and document ARM errata 1319367 and 1319537

Marek Bykowski (2):
      perf: arm-ccn: Enable stats for CCN-512 interconnect
      Documentation: Add documentation for CCN-512 DTS binding

Mark Brown (3):
      arm64: pgtable: Correct typo in comment
      arm64: kaslr: Announce KASLR status on boot
      arm64: kaslr: Check command line before looking for a seed

Mark Rutland (16):
      arm64: simplify syscall wrapper ifdeffery
      arm/arm64: smccc/psci: add arm_smccc_1_1_get_conduit()
      arm64: errata: use arm_smccc_1_1_get_conduit()
      arm: spectre-v2: use arm_smccc_1_1_get_conduit()
      firmware/psci: use common SMCCC_CONDUIT_*
      firmware: arm_sdei: use common SMCCC_CONDUIT_*
      arm64: add local_daif_inherit()
      arm64: entry: convert el1_sync to C
      arm64: entry: convert el0_sync to C
      ftrace: add ftrace_init_nop()
      module/ftrace: handle patchable-function-entry
      arm64: module: rework special section handling
      arm64: module/ftrace: intialize PLT at load time
      arm64: insn: add encoder for MOV (register)
      arm64: asm-offsets: add S_FP
      arm64: ftrace: minimize ifdeffery

Masahiro Yamada (1):
      arm64: mm: simplify the page end calculation in __create_pgd_mapping()

Mike Rapoport (1):
      arm64: use generic free_initrd_mem()

Nathan Chancellor (1):
      arm64: mm: Fix unused variable warning in zone_sizes_init

Nicolas Saenz Julienne (6):
      arm64: mm: use arm64_dma_phys_limit instead of calling max_zone_dma_phys()
      arm64: rename variables used to calculate ZONE_DMA32's size
      arm64: use both ZONE_DMA and ZONE_DMA32
      mm: refresh ZONE_DMA and ZONE_DMA32 comments in 'enum zone_type'
      dma/direct: turn ARCH_ZONE_DMA_BITS into a variable
      arm64: mm: reserve CMA and crashkernel in ZONE_DMA32

Rich Wiley (1):
      arm64: kpti: Add NVIDIA's Carmel core to the KPTI whitelist

Shaokun Zhang (3):
      arm64: cpufeature: Fix typos in comment
      arm64: perf: Simplify the ARMv8 PMUv3 event attributes
      drivers/perf: hisi: update the sccl_id/ccl_id for certain HiSilicon platform

Torsten Duwe (1):
      arm64: implement ftrace with regs

Xiang Zheng (1):
      arm64: print additional fault message when executing non-exec memory

YueHaibing (5):
      perf: hisi: use devm_platform_ioremap_resource() to simplify code
      perf: xgene: use devm_platform_ioremap_resource() to simplify code
      perf/arm-ccn: use devm_platform_ioremap_resource() to simplify code
      perf/arm-cci: use devm_platform_ioremap_resource() to simplify code
      perf/smmuv3: use devm_platform_ioremap_resource() to simplify code

Yunfeng Ye (1):
      arm64: psci: Reduce the waiting time for cpu_psci_cpu_kill()

 Documentation/admin-guide/perf/imx-ddr.rst         |  15 +-
 Documentation/admin-guide/perf/thunderx2-pmu.rst   |  20 +-
 Documentation/arm64/booting.rst                    |   3 +
 Documentation/arm64/cpu-feature-registers.rst      |  19 +-
 Documentation/arm64/elf_hwcaps.rst                 |  67 +++--
 Documentation/arm64/silicon-errata.rst             |   6 +
 Documentation/devicetree/bindings/perf/arm-ccn.txt |   1 +
 .../devicetree/bindings/perf/fsl-imx-ddr.txt       |   1 +
 MAINTAINERS                                        |   1 +
 arch/arm/mm/proc-v7-bugs.c                         |  10 +-
 arch/arm64/Kconfig                                 |  51 +++-
 arch/arm64/Makefile                                |   5 +
 arch/arm64/include/asm/asm-uaccess.h               |   9 -
 arch/arm64/include/asm/barrier.h                   |  12 +
 arch/arm64/include/asm/cache.h                     |   3 +-
 arch/arm64/include/asm/cpucaps.h                   |   4 +-
 arch/arm64/include/asm/cpufeature.h                |  14 +
 arch/arm64/include/asm/daifflags.h                 |  19 +-
 arch/arm64/include/asm/exception.h                 |  22 +-
 arch/arm64/include/asm/ftrace.h                    |  23 ++
 arch/arm64/include/asm/insn.h                      |   3 +
 arch/arm64/include/asm/irqflags.h                  |  19 +-
 arch/arm64/include/asm/kvm_host.h                  |   3 +-
 arch/arm64/include/asm/memory.h                    |   6 -
 arch/arm64/include/asm/module.h                    |   2 +-
 arch/arm64/include/asm/pgtable-hwdef.h             |   2 +-
 arch/arm64/include/asm/pgtable.h                   |  16 +-
 arch/arm64/include/asm/processor.h                 |  16 +-
 arch/arm64/include/asm/syscall_wrapper.h           |   6 -
 arch/arm64/include/asm/traps.h                     |  10 -
 arch/arm64/kernel/Makefile                         |   6 +-
 arch/arm64/kernel/asm-offsets.c                    |   1 +
 arch/arm64/kernel/cpu_errata.c                     |  82 +++--
 arch/arm64/kernel/cpufeature.c                     |   1 +
 arch/arm64/kernel/cpuinfo.c                        |   2 +-
 arch/arm64/kernel/entry-common.c                   | 332 +++++++++++++++++++++
 arch/arm64/kernel/entry-ftrace.S                   | 140 ++++++++-
 arch/arm64/kernel/entry.S                          | 281 +----------------
 arch/arm64/kernel/fpsimd.c                         |   6 +-
 arch/arm64/kernel/ftrace.c                         | 123 +++++---
 arch/arm64/kernel/insn.c                           |  13 +
 arch/arm64/kernel/kaslr.c                          |  44 ++-
 arch/arm64/kernel/module-plts.c                    |   3 +-
 arch/arm64/kernel/module.c                         |  57 +++-
 arch/arm64/kernel/perf_event.c                     | 191 ++++--------
 arch/arm64/kernel/probes/kprobes.c                 |   4 -
 arch/arm64/kernel/psci.c                           |  15 +-
 arch/arm64/kernel/sdei.c                           |   3 +-
 arch/arm64/kernel/sys_compat.c                     |  11 +
 arch/arm64/kernel/syscall.c                        |   4 +-
 arch/arm64/kernel/traps.c                          |  21 +-
 arch/arm64/kernel/vmlinux.lds.S                    |   3 -
 arch/arm64/kvm/hyp/switch.c                        |  52 +++-
 arch/arm64/kvm/hyp/sysreg-sr.c                     |  35 ++-
 arch/arm64/kvm/hyp/tlb.c                           |  23 ++
 arch/arm64/mm/fault.c                              |  64 +---
 arch/arm64/mm/init.c                               |  91 +++---
 arch/arm64/mm/mmu.c                                |   5 +-
 arch/parisc/Makefile                               |   1 -
 arch/parisc/kernel/module.c                        |  10 +-
 arch/parisc/kernel/module.lds                      |   7 -
 arch/powerpc/include/asm/page.h                    |   9 -
 arch/powerpc/mm/mem.c                              |  20 +-
 arch/s390/include/asm/page.h                       |   2 -
 arch/s390/mm/init.c                                |   1 +
 arch/x86/include/asm/pgtable.h                     |   6 +
 drivers/firmware/arm_sdei.c                        |  12 +-
 drivers/firmware/psci/psci.c                       |  24 +-
 drivers/irqchip/irq-gic-v3.c                       |  20 ++
 drivers/perf/arm-cci.c                             |   4 +-
 drivers/perf/arm-ccn.c                             |   4 +-
 drivers/perf/arm_smmuv3_pmu.c                      |   5 +-
 drivers/perf/fsl_imx8_ddr_perf.c                   | 124 ++++++--
 drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c      |   5 +-
 drivers/perf/hisilicon/hisi_uncore_hha_pmu.c       |   4 +-
 drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c       |   4 +-
 drivers/perf/hisilicon/hisi_uncore_pmu.c           |  26 +-
 drivers/perf/thunderx2_pmu.c                       | 267 +++++++++++++++--
 drivers/perf/xgene_pmu.c                           |  14 +-
 include/asm-generic/vmlinux.lds.h                  |  14 +-
 include/linux/arm-smccc.h                          |  16 +
 include/linux/arm_sdei.h                           |   6 -
 include/linux/dma-direct.h                         |   2 +
 include/linux/ftrace.h                             |  40 ++-
 include/linux/irqchip/arm-gic-v3.h                 |   2 +
 include/linux/mmzone.h                             |  45 +--
 include/linux/psci.h                               |   9 +-
 init/initramfs.c                                   |   8 +
 kernel/dma/direct.c                                |  13 +-
 kernel/module.c                                    |   2 +-
 kernel/trace/ftrace.c                              |   6 +-
 mm/memory.c                                        | 104 ++++++-
 tools/testing/selftests/Makefile                   |   1 +
 tools/testing/selftests/arm64/Makefile             |  64 +++-
 tools/testing/selftests/arm64/README               |  25 ++
 tools/testing/selftests/arm64/signal/.gitignore    |   3 +
 tools/testing/selftests/arm64/signal/Makefile      |  32 ++
 tools/testing/selftests/arm64/signal/README        |  59 ++++
 tools/testing/selftests/arm64/signal/signals.S     |  64 ++++
 .../testing/selftests/arm64/signal/test_signals.c  |  29 ++
 .../testing/selftests/arm64/signal/test_signals.h  | 100 +++++++
 .../selftests/arm64/signal/test_signals_utils.c    | 328 ++++++++++++++++++++
 .../selftests/arm64/signal/test_signals_utils.h    | 120 ++++++++
 .../signal/testcases/fake_sigreturn_bad_magic.c    |  52 ++++
 .../signal/testcases/fake_sigreturn_bad_size.c     |  77 +++++
 .../testcases/fake_sigreturn_bad_size_for_magic0.c |  46 +++
 .../testcases/fake_sigreturn_duplicated_fpsimd.c   |  50 ++++
 .../testcases/fake_sigreturn_misaligned_sp.c       |  37 +++
 .../testcases/fake_sigreturn_missing_fpsimd.c      |  50 ++++
 .../mangle_pstate_invalid_compat_toggle.c          |  31 ++
 .../testcases/mangle_pstate_invalid_daif_bits.c    |  35 +++
 .../testcases/mangle_pstate_invalid_mode_el1h.c    |  15 +
 .../testcases/mangle_pstate_invalid_mode_el1t.c    |  15 +
 .../testcases/mangle_pstate_invalid_mode_el2h.c    |  15 +
 .../testcases/mangle_pstate_invalid_mode_el2t.c    |  15 +
 .../testcases/mangle_pstate_invalid_mode_el3h.c    |  15 +
 .../testcases/mangle_pstate_invalid_mode_el3t.c    |  15 +
 .../mangle_pstate_invalid_mode_template.h          |  28 ++
 .../selftests/arm64/signal/testcases/testcases.c   | 196 ++++++++++++
 .../selftests/arm64/signal/testcases/testcases.h   | 104 +++++++
 .../testing/selftests/arm64/{ => tags}/.gitignore  |   0
 tools/testing/selftests/arm64/tags/Makefile        |   7 +
 .../selftests/arm64/{ => tags}/run_tags_test.sh    |   0
 .../testing/selftests/arm64/{ => tags}/tags_test.c |   0
 124 files changed, 3535 insertions(+), 930 deletions(-)

----------------------------------------------------------------
diff --cc arch/arm64/include/asm/asm-uaccess.h
index c764cc8fb3b6,a70575edae8e..35e6145e1402
--- a/arch/arm64/include/asm/asm-uaccess.h
+++ b/arch/arm64/include/asm/asm-uaccess.h
@@@ -57,13 -57,21 +57,4 @@@ alternative_else_nop_endi
  	.macro	uaccess_ttbr0_enable, tmp1, tmp2, tmp3
  	.endm
  #endif
--
--/*
-  * Remove the address tag from a virtual address, if present.
 - * These macros are no-ops when UAO is present.
-- */
- 	.macro	untagged_addr, dst, addr
- 	sbfx	\dst, \addr, #0, #56
- 	and	\dst, \dst, \addr
 -	.macro	uaccess_disable_not_uao, tmp1, tmp2
 -	uaccess_ttbr0_disable \tmp1, \tmp2
 -alternative_if ARM64_ALT_PAN_NOT_UAO
 -	SET_PSTATE_PAN(1)
 -alternative_else_nop_endif
--	.endm
--
 -	.macro	uaccess_enable_not_uao, tmp1, tmp2, tmp3
 -	uaccess_ttbr0_enable \tmp1, \tmp2, \tmp3
 -alternative_if ARM64_ALT_PAN_NOT_UAO
 -	SET_PSTATE_PAN(0)
 -alternative_else_nop_endif
 -	.endm
  #endif

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
