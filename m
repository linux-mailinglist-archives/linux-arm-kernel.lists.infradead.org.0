Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD2A159698
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pt7kolz0Y9lapjhZB5CWiBKp6pAyALjamMyePx9Z7MM=; b=CuYMR6HO9COWw1
	lIqGZhC+VgpqPmVwVZUSfOtzL0zHCRjFwT147FkulmJdfew0kYtV/3B/pMmAv54bM2cxf1Hs25XqI
	gUTH4ZVxKL2+wfUVV2Jxd2gzjeexp11nvr46u25juqYiR2zGTxxjI5Yiq7+aWspBjGgybmHPQIe85
	AZpWqB/MLz0GMBZUoNKz1FmEqq9Qr4h29Au6Ji46O8gCVZdUS2HB/VPBBMpbyzvXI2MEt+G07SwNM
	xmAkHK5uTc988sN6dImKxOAZjnp9M/uZ9cQGGtPybUF9yqZG5XPc3kht1sfoG8qgDUpJ5wz0ksBQi
	uVNliPJ6rtqrzAoO0iPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zg4-0000Lv-Vl; Tue, 11 Feb 2020 17:50:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZfY-0007LP-GS
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:49:58 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9809820661;
 Tue, 11 Feb 2020 17:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443395;
 bh=9vwiKEQFnDa6LliQSaOHC4Wfh37cKJtZ5767GPU5BgU=;
 h=From:To:Cc:Subject:Date:From;
 b=aPf2mlbZgwWNSlMbAEHC7MaB+7fC8wf7Ih96SAL3nPzhlcz9Hs8JAVX4QKsjImm73
 GZNBwG359SqoBWNrv4yhWPgruH5wws7kPBW+g5lqewHLj6gshQOg/Nl91fqsNtF52x
 hU6rHp6rgkeSnAvxZjkDLz3f0+rN45jk4GYNh7kU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZfV-004O7k-Pq; Tue, 11 Feb 2020 17:49:53 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 00/94] KVM: arm64: ARMv8.3/8.4 Nested Virtualization support
Date: Tue, 11 Feb 2020 17:48:04 +0000
Message-Id: <20200211174938.27809-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_094956_604585_B3841415 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a major rework of the NV series that I posted over 6 months
ago[1], and a lot has changed since then:

- Early ARMv8.4-NV support
- ARMv8.4-TTL support in host and guest
- ARMv8.5-GTG support in host and guest
- Lots of comments addressed after the review
- Rebased on v5.6-rc1
- Way too many patches

In my defence, the whole of the NV code is still smaller that the
32bit KVM/arm code I'm about to remove, so I feel less bad inflicting
this on everyone! ;-)

From a functionality perspective, you can expect a L2 guest to work,
but don't even think of L3, as we only partially emulate the
ARMv8.{3,4}-NV extensions themselves. Same thing for vgic, debug, PMU,
as well as anything that would require a Stage-1 PTW. What we want to
achieve is that with NV disabled, there is no performance overhead and
no regression.

The series is roughly divided in 5 parts: exception handling, memory
virtualization, interrupts and timers for ARMv8.3, followed by the
ARMv8.4 support. There are of course some dependencies, but you'll
hopefully get the gist of it.

For the most courageous of you, I've put out a branch[2]. Of course,
you'll need some userspace. Andre maintains a hacked version of
kvmtool[3] that takes a --nested option, allowing the guest to be
started at EL2. You can run the whole stack in the Foundation
model. Don't be in a hurry ;-).

[1] https://lore.kernel.org/r/20190621093843.220980-1-marc.zyngier@arm.com
[2] git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git kvm-arm64/nv-5.6-rc1
[3] git://linux-arm.org/kvmtool.git nv/nv-wip-5.2-rc5

Andre Przywara (3):
  KVM: arm64: nv: Save/Restore vEL2 sysregs
  KVM: arm64: nv: Handle traps for timer _EL02 and _EL2 sysregs
    accessors
  KVM: arm64: nv: vgic: Allow userland to set VGIC maintenance IRQ

Christoffer Dall (17):
  KVM: arm64: nv: Introduce nested virtualization VCPU feature
  KVM: arm64: nv: Reset VCPU to EL2 registers if VCPU nested virt is set
  KVM: arm64: nv: Allow userspace to set PSR_MODE_EL2x
  KVM: arm64: nv: Add nested virt VCPU primitives for vEL2 VCPU state
  KVM: arm64: nv: Handle trapped ERET from virtual EL2
  KVM: arm64: nv: Emulate PSTATE.M for a guest hypervisor
  KVM: arm64: nv: Trap EL1 VM register accesses in virtual EL2
  KVM: arm64: nv: Only toggle cache for virtual EL2 when SCTLR_EL2
    changes
  KVM: arm/arm64: nv: Factor out stage 2 page table data from struct kvm
  KVM: arm64: nv: Implement nested Stage-2 page table walk logic
  KVM: arm64: nv: Handle shadow stage 2 page faults
  KVM: arm64: nv: Unmap/flush shadow stage 2 page tables
  KVM: arm64: nv: arch_timer: Support hyp timer emulation
  KVM: arm64: nv: vgic-v3: Take cpu_if pointer directly instead of vcpu
  KVM: arm64: nv: vgic: Emulate the HW bit in software
  KVM: arm64: nv: Add nested GICv3 tracepoints
  KVM: arm64: nv: Sync nested timer state with ARMv8.4

Jintack Lim (19):
  arm64: Add ARM64_HAS_NESTED_VIRT cpufeature
  KVM: arm64: nv: Add EL2 system registers to vcpu context
  KVM: arm64: nv: Support virtual EL2 exceptions
  KVM: arm64: nv: Inject HVC exceptions to the virtual EL2
  KVM: arm64: nv: Trap SPSR_EL1, ELR_EL1 and VBAR_EL1 from virtual EL2
  KVM: arm64: nv: Trap CPACR_EL1 access in virtual EL2
  KVM: arm64: nv: Handle PSCI call via smc from the guest
  KVM: arm64: nv: Respect virtual HCR_EL2.TWX setting
  KVM: arm64: nv: Respect virtual CPTR_EL2.{TFP,FPEN} settings
  KVM: arm64: nv: Respect the virtual HCR_EL2.NV bit setting
  KVM: arm64: nv: Respect virtual HCR_EL2.TVM and TRVM settings
  KVM: arm64: nv: Respect the virtual HCR_EL2.NV1 bit setting
  KVM: arm64: nv: Emulate EL12 register accesses from the virtual EL2
  KVM: arm64: nv: Configure HCR_EL2 for nested virtualization
  KVM: arm64: nv: Introduce sys_reg_desc.forward_trap
  KVM: arm64: nv: Set a handler for the system instruction traps
  KVM: arm64: nv: Trap and emulate AT instructions from virtual EL2
  KVM: arm64: nv: Trap and emulate TLBI instructions from virtual EL2
  KVM: arm64: nv: Nested GICv3 Support

Marc Zyngier (55):
  KVM: arm64: Move __load_guest_stage2 to kvm_mmu.h
  KVM: arm64: nv: Reset VMPIDR_EL2 and VPIDR_EL2 to sane values
  KVM: arm64: nv: Add EL2->EL1 translation helpers
  KVM: arm64: nv: Refactor vcpu_{read,write}_sys_reg
  KVM: arm64: nv: Handle virtual EL2 registers in
    vcpu_read/write_sys_reg()
  KVM: arm64: nv: Handle SPSR_EL2 specially
  KVM: arm64: nv: Handle HCR_EL2.E2H specially
  KVM: arm64: nv: Forward debug traps to the nested guest
  KVM: arm64: nv: Filter out unsupported features from ID regs
  KVM: arm64: nv: Hide RAS from nested guests
  KVM: arm64: nv: Use ARMv8.5-GTG to advertise supported Stage-2 page
    sizes
  KVM: arm64: Check advertised Stage-2 page size capability
  KVM: arm64: nv: Support multiple nested Stage-2 mmu structures
  KVM: arm64: nv: Move last_vcpu_ran to be per s2 mmu
  KVM: arm64: nv: Fold guest's HCR_EL2 configuration into the host's
  KVM: arm64: nv: Propagate CNTVOFF_EL2 to the virtual EL1 timer
  KVM: arm64: nv: Load timer before the GIC
  KVM: arm64: nv: Implement maintenance interrupt forwarding
  arm64: KVM: nv: Add handling of EL2-specific timer registers
  arm64: KVM: nv: Honor SCTLR_EL2.SPAN on entering vEL2
  arm64: KVM: nv: Handle SCTLR_EL2 RES0/RES1 bits
  arm64: KVM: nv: Restrict S2 RD/WR permissions to match the guest's
  arm64: KVM: nv: Allow userspace to request KVM_ARM_VCPU_NESTED_VIRT
  arm64: Detect the ARMv8.4 TTL feature
  arm64: KVM: nv: Add handling of ARMv8.4-TTL TLB invalidation
  arm64: KVM: nv: Invalidate TLBs based on shadow S2 TTL-like
    information
  arm64: KVM: nv: Tag shadow S2 entries with nested level
  arm64: Add SW reserved PTE/PMD bits
  arm64: Add level-hinted TLB invalidation helper
  arm64: KVM: Add a level hint to __kvm_tlb_flush_vmid_ipa
  arm64: KVM: Use TTL hint in when invalidating stage-2 translations
  arm64: KVM: nv: Add include containing the VNCR_EL2 offsets
  KVM: arm64: Introduce accessor for ctxt->sys_reg
  KVM: arm64: sysreg: Use ctxt_sys_reg() instead of raw sys_regs access
  KVM: arm64: sve: Use __vcpu_sys_reg() instead of raw sys_regs access
  KVM: arm64: pauth: Use ctxt_sys_reg() instead of raw sys_regs access
  KVM: arm64: debug: Use ctxt_sys_reg() instead of raw sys_regs access
  KVM: arm64: Add missing reset handlers for PMU emulation
  KVM: arm64: nv: Move sysreg reset check to boot time
  KVM: arm64: Map VNCR-capable registers to a separate page
  KVM: arm64: nv: Move nested vgic state into the sysreg file
  KVM: arm64: Use accessors for timer ctl/cval/offset
  KVM: arm64: Add VNCR-capable timer accessors for arm64
  KVM: arm64: Make struct kvm_regs userspace-only
  KVM: arm64: VNCR-ize ELR_EL1
  KVM: arm64: VNCR-ize SP_EL1
  KVM: arm64: Disintegrate SPSR array
  KVM: arm64: aarch32: Use __vcpu_sys_reg() instead of raw sys_regs
    access
  KVM: arm64: VNCR-ize SPSR_EL1
  KVM: arm64: Add ARMv8.4 Enhanced Nested Virt cpufeature
  KVM: arm64: nv: Synchronize PSTATE early on exit
  KVM: arm64: nv: Allocate VNCR page when required
  KVM: arm64: nv: Enable ARMv8.4-NV support
  KVM: arm64: nv: Fast-track 'InHost' exception returns
  KVM: arm64: nv: Fast-track EL1 TLBIs for VHE guests

 .../admin-guide/kernel-parameters.txt         |    4 +
 .../virt/kvm/devices/arm-vgic-v3.txt          |    8 +
 arch/arm/include/asm/kvm_asm.h                |    6 +-
 arch/arm/include/asm/kvm_emulate.h            |    3 +
 arch/arm/include/asm/kvm_host.h               |   32 +-
 arch/arm/include/asm/kvm_hyp.h                |   12 +-
 arch/arm/include/asm/kvm_mmu.h                |   90 +-
 arch/arm/include/asm/kvm_nested.h             |   11 +
 arch/arm/include/asm/stage2_pgtable.h         |    9 +
 arch/arm/include/uapi/asm/kvm.h               |    1 +
 arch/arm/kvm/hyp/switch.c                     |   11 +-
 arch/arm/kvm/hyp/tlb.c                        |   18 +-
 arch/arm64/include/asm/cpucaps.h              |    5 +-
 arch/arm64/include/asm/esr.h                  |    6 +
 arch/arm64/include/asm/kvm_arm.h              |   28 +-
 arch/arm64/include/asm/kvm_asm.h              |   10 +-
 arch/arm64/include/asm/kvm_coproc.h           |    2 +-
 arch/arm64/include/asm/kvm_emulate.h          |  181 +-
 arch/arm64/include/asm/kvm_host.h             |  212 ++-
 arch/arm64/include/asm/kvm_hyp.h              |   32 +-
 arch/arm64/include/asm/kvm_mmu.h              |   62 +-
 arch/arm64/include/asm/kvm_nested.h           |   94 +
 arch/arm64/include/asm/pgtable-hwdef.h        |    2 +
 arch/arm64/include/asm/stage2_pgtable.h       |    9 +
 arch/arm64/include/asm/sysreg.h               |  126 +-
 arch/arm64/include/asm/tlbflush.h             |   30 +
 arch/arm64/include/asm/vncr_mapping.h         |   73 +
 arch/arm64/include/uapi/asm/kvm.h             |    2 +
 arch/arm64/kernel/asm-offsets.c               |    3 +-
 arch/arm64/kernel/cpufeature.c                |   55 +
 arch/arm64/kvm/Makefile                       |    5 +
 arch/arm64/kvm/emulate-nested.c               |  205 +++
 arch/arm64/kvm/fpsimd.c                       |    6 +-
 arch/arm64/kvm/guest.c                        |   85 +-
 arch/arm64/kvm/handle_exit.c                  |   98 +-
 arch/arm64/kvm/hyp/Makefile                   |    1 +
 arch/arm64/kvm/hyp/at.c                       |  231 +++
 arch/arm64/kvm/hyp/debug-sr.c                 |   18 +-
 arch/arm64/kvm/hyp/entry.S                    |    3 +-
 arch/arm64/kvm/hyp/switch.c                   |  241 ++-
 arch/arm64/kvm/hyp/sysreg-sr.c                |  338 +++-
 arch/arm64/kvm/hyp/tlb.c                      |  134 +-
 arch/arm64/kvm/inject_fault.c                 |   12 -
 arch/arm64/kvm/nested.c                       |  899 ++++++++++
 arch/arm64/kvm/regmap.c                       |   37 +-
 arch/arm64/kvm/reset.c                        |   72 +-
 arch/arm64/kvm/sys_regs.c                     | 1523 +++++++++++++++--
 arch/arm64/kvm/sys_regs.h                     |    6 +
 arch/arm64/kvm/trace.h                        |   56 +
 include/kvm/arm_arch_timer.h                  |    9 +-
 include/kvm/arm_vgic.h                        |   21 +-
 virt/kvm/arm/arch_timer.c                     |  271 ++-
 virt/kvm/arm/arch_timer_nested.c              |   95 +
 virt/kvm/arm/arm.c                            |   72 +-
 virt/kvm/arm/hyp/vgic-v3-sr.c                 |   35 +-
 virt/kvm/arm/mmio.c                           |   14 +-
 virt/kvm/arm/mmu.c                            |  458 +++--
 virt/kvm/arm/trace.h                          |    6 +-
 virt/kvm/arm/vgic/vgic-init.c                 |   30 +
 virt/kvm/arm/vgic/vgic-kvm-device.c           |   22 +
 virt/kvm/arm/vgic/vgic-nested-trace.h         |  137 ++
 virt/kvm/arm/vgic/vgic-v2.c                   |   10 +-
 virt/kvm/arm/vgic/vgic-v3-nested.c            |  240 +++
 virt/kvm/arm/vgic/vgic-v3.c                   |   51 +-
 virt/kvm/arm/vgic/vgic.c                      |   74 +-
 virt/kvm/arm/vgic/vgic.h                      |   10 +
 66 files changed, 5925 insertions(+), 737 deletions(-)
 create mode 100644 arch/arm/include/asm/kvm_nested.h
 create mode 100644 arch/arm64/include/asm/kvm_nested.h
 create mode 100644 arch/arm64/include/asm/vncr_mapping.h
 create mode 100644 arch/arm64/kvm/emulate-nested.c
 create mode 100644 arch/arm64/kvm/hyp/at.c
 create mode 100644 arch/arm64/kvm/nested.c
 create mode 100644 virt/kvm/arm/arch_timer_nested.c
 create mode 100644 virt/kvm/arm/vgic/vgic-nested-trace.h
 create mode 100644 virt/kvm/arm/vgic/vgic-v3-nested.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
