Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BD3878FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hsti2ZXTrkLF/MdTmcBz+RN3rW+Jn99hc5MVe+tXLGk=; b=NG+89Lm62jAU5U
	4TGNSm84g9ER1iKV6di2/0aGXzu0Ly12Z6c0r/UJOO4kfvm4x538JxUxN7gp7rDsQ8HL/OdzbLqcw
	RsQqZ4TcbwqN+nqBP+NO2RPRyh4eb2KfAyp1nA2q7jTRb/gVQOlJcWzVoIZi6UdFFgvwnnoXxRduI
	kJwvd07MQsJuudTGptOkh0CIgKi6jnLfxR+TEezXEZ5vSl8gr/EdyDQOT+H4onChijI1lRD9nmmrL
	OiiykwlqK+hWhIxFz6YFxsHU+EouNCItUZSAqelLF1EQiY9yLZ2oheQU/qx6SKGB8owJeMCmqHmJ+
	2FVGNPK2cjuU6EtW6RjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3Ks-00006Q-SN; Fri, 09 Aug 2019 11:45:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3KP-00078x-8Y
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:45:04 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3DB4981F07;
 Fri,  9 Aug 2019 11:45:00 +0000 (UTC)
Received: from kamzik.brq.redhat.com (unknown [10.43.2.160])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3577260BF3;
 Fri,  9 Aug 2019 11:44:58 +0000 (UTC)
Date: Fri, 9 Aug 2019 13:44:55 +0200
From: Andrew Jones <drjones@redhat.com>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH 00/59] KVM: arm64: ARMv8.3 Nested Virtualization support
Message-ID: <20190809114455.w4jes6z2442vu3py@kamzik.brq.redhat.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <69cf1fe7-912c-1767-ff1b-dfcc7f549e44@arm.com>
 <0d9aa552-fa01-c482-41d7-587acf308259@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0d9aa552-fa01-c482-41d7-587acf308259@arm.com>
User-Agent: NeoMutt/20180716
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 09 Aug 2019 11:45:00 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_044501_453411_90951833 
X-CRM114-Status: GOOD (  27.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Marc Zyngier <Marc.Zyngier@arm.com>, Andre Przywara <Andre.Przywara@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 Dave P Martin <Dave.Martin@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 11:01:51AM +0100, Alexandru Elisei wrote:
> On 8/2/19 11:11 AM, Alexandru Elisei wrote:
> > Hi,
> >
> > On 6/21/19 10:37 AM, Marc Zyngier wrote:
> >> I've taken over the maintenance of this series originally written by
> >> Jintack and Christoffer. Since then, the series has been substantially
> >> reworked, new features (and most probably bugs) have been added, and
> >> the whole thing rebased multiple times. If anything breaks, please
> >> blame me, and nobody else.
> >>
> >> As you can tell, this is quite big. It is also remarkably incomplete
> >> (we're missing many critical bits for fully emulate EL2), but the idea
> >> is to start merging things early in order to reduce the maintenance
> >> headache. What we want to achieve is that with NV disabled, there is
> >> no performance overhead and no regression. The only thing I intend to
> >> merge ASAP is the first patch in the series, because it should have
> >> zero effect and is a reasonable cleanup.
> >>
> >> The series is roughly divided in 4 parts: exception handling, memory
> >> virtualization, interrupts and timers. There are of course some
> >> dependencies, but you'll hopefully get the gist of it.
> >>
> >> For the most courageous of you, I've put out a branch[1] containing th=
is
> >> and a bit more. Of course, you'll need some userspace. Andre maintains
> >> a hacked version of kvmtool[1] that takes a --nested option, allowing
> >> the guest to be started at EL2. You can run the whole stack in the
> >> Foundation model. Don't be in a hurry ;-).
> >>
> >> [1] git://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.gi=
t kvm-arm64/nv-wip-5.2-rc5
> >> [2] git://linux-arm.org/kvmtool.git nv/nv-wip-5.2-rc5
> >>
> >> Andre Przywara (4):
> >>   KVM: arm64: nv: Handle virtual EL2 registers in
> >>     vcpu_read/write_sys_reg()
> >>   KVM: arm64: nv: Save/Restore vEL2 sysregs
> >>   KVM: arm64: nv: Handle traps for timer _EL02 and _EL2 sysregs
> >>     accessors
> >>   KVM: arm64: nv: vgic: Allow userland to set VGIC maintenance IRQ
> >>
> >> Christoffer Dall (16):
> >>   KVM: arm64: nv: Introduce nested virtualization VCPU feature
> >>   KVM: arm64: nv: Reset VCPU to EL2 registers if VCPU nested virt is s=
et
> >>   KVM: arm64: nv: Allow userspace to set PSR_MODE_EL2x
> >>   KVM: arm64: nv: Add nested virt VCPU primitives for vEL2 VCPU state
> >>   KVM: arm64: nv: Handle trapped ERET from virtual EL2
> >>   KVM: arm64: nv: Emulate PSTATE.M for a guest hypervisor
> >>   KVM: arm64: nv: Trap EL1 VM register accesses in virtual EL2
> >>   KVM: arm64: nv: Only toggle cache for virtual EL2 when SCTLR_EL2
> >>     changes
> >>   KVM: arm/arm64: nv: Support multiple nested stage 2 mmu structures
> >>   KVM: arm64: nv: Implement nested Stage-2 page table walk logic
> >>   KVM: arm64: nv: Handle shadow stage 2 page faults
> >>   KVM: arm64: nv: Unmap/flush shadow stage 2 page tables
> >>   KVM: arm64: nv: arch_timer: Support hyp timer emulation
> >>   KVM: arm64: nv: vgic-v3: Take cpu_if pointer directly instead of vcpu
> >>   KVM: arm64: nv: vgic: Emulate the HW bit in software
> >>   KVM: arm64: nv: Add nested GICv3 tracepoints
> >>
> >> Dave Martin (1):
> >>   KVM: arm64: Migrate _elx sysreg accessors to msr_s/mrs_s
> >>
> >> Jintack Lim (21):
> >>   arm64: Add ARM64_HAS_NESTED_VIRT cpufeature
> >>   KVM: arm64: nv: Add EL2 system registers to vcpu context
> >>   KVM: arm64: nv: Support virtual EL2 exceptions
> >>   KVM: arm64: nv: Inject HVC exceptions to the virtual EL2
> >>   KVM: arm64: nv: Trap SPSR_EL1, ELR_EL1 and VBAR_EL1 from virtual EL2
> >>   KVM: arm64: nv: Trap CPACR_EL1 access in virtual EL2
> >>   KVM: arm64: nv: Set a handler for the system instruction traps
> >>   KVM: arm64: nv: Handle PSCI call via smc from the guest
> >>   KVM: arm64: nv: Respect virtual HCR_EL2.TWX setting
> >>   KVM: arm64: nv: Respect virtual CPTR_EL2.TFP setting
> >>   KVM: arm64: nv: Respect the virtual HCR_EL2.NV bit setting
> >>   KVM: arm64: nv: Respect virtual HCR_EL2.TVM and TRVM settings
> >>   KVM: arm64: nv: Respect the virtual HCR_EL2.NV1 bit setting
> >>   KVM: arm64: nv: Emulate EL12 register accesses from the virtual EL2
> >>   KVM: arm64: nv: Configure HCR_EL2 for nested virtualization
> >>   KVM: arm64: nv: Pretend we only support larger-than-host page sizes
> >>   KVM: arm64: nv: Introduce sys_reg_desc.forward_trap
> >>   KVM: arm64: nv: Rework the system instruction emulation framework
> >>   KVM: arm64: nv: Trap and emulate AT instructions from virtual EL2
> >>   KVM: arm64: nv: Trap and emulate TLBI instructions from virtual EL2
> >>   KVM: arm64: nv: Nested GICv3 Support
> >>
> >> Marc Zyngier (17):
> >>   KVM: arm64: Move __load_guest_stage2 to kvm_mmu.h
> >>   KVM: arm64: nv: Reset VMPIDR_EL2 and VPIDR_EL2 to sane values
> >>   KVM: arm64: nv: Handle SPSR_EL2 specially
> >>   KVM: arm64: nv: Refactor vcpu_{read,write}_sys_reg
> >>   KVM: arm64: nv: Don't expose SVE to nested guests
> >>   KVM: arm64: nv: Hide RAS from nested guests
> >>   KVM: arm/arm64: nv: Factor out stage 2 page table data from struct k=
vm
> >>   KVM: arm64: nv: Move last_vcpu_ran to be per s2 mmu
> >>   KVM: arm64: nv: Don't always start an S2 MMU search from the beginni=
ng
> >>   KVM: arm64: nv: Propagate CNTVOFF_EL2 to the virtual EL1 timer
> >>   KVM: arm64: nv: Load timer before the GIC
> >>   KVM: arm64: nv: Implement maintenance interrupt forwarding
> >>   arm64: KVM: nv: Add handling of EL2-specific timer registers
> >>   arm64: KVM: nv: Honor SCTLR_EL2.SPAN on entering vEL2
> >>   arm64: KVM: nv: Handle SCTLR_EL2 RES0/RES1 bits
> >>   arm64: KVM: nv: Restrict S2 RD/WR permissions to match the guest's
> >>   arm64: KVM: nv: Allow userspace to request KVM_ARM_VCPU_NESTED_VIRT
> >>
> >>  .../admin-guide/kernel-parameters.txt         |    4 +
> >>  .../virtual/kvm/devices/arm-vgic-v3.txt       |    9 +
> >>  arch/arm/include/asm/kvm_asm.h                |    5 +-
> >>  arch/arm/include/asm/kvm_emulate.h            |    3 +
> >>  arch/arm/include/asm/kvm_host.h               |   31 +-
> >>  arch/arm/include/asm/kvm_hyp.h                |   25 +-
> >>  arch/arm/include/asm/kvm_mmu.h                |   83 +-
> >>  arch/arm/include/asm/kvm_nested.h             |    9 +
> >>  arch/arm/include/uapi/asm/kvm.h               |    1 +
> >>  arch/arm/kvm/hyp/switch.c                     |   11 +-
> >>  arch/arm/kvm/hyp/tlb.c                        |   13 +-
> >>  arch/arm64/include/asm/cpucaps.h              |    3 +-
> >>  arch/arm64/include/asm/esr.h                  |    4 +-
> >>  arch/arm64/include/asm/kvm_arm.h              |   28 +-
> >>  arch/arm64/include/asm/kvm_asm.h              |    9 +-
> >>  arch/arm64/include/asm/kvm_coproc.h           |    2 +-
> >>  arch/arm64/include/asm/kvm_emulate.h          |  157 +-
> >>  arch/arm64/include/asm/kvm_host.h             |  105 +-
> >>  arch/arm64/include/asm/kvm_hyp.h              |   82 +-
> >>  arch/arm64/include/asm/kvm_mmu.h              |   62 +-
> >>  arch/arm64/include/asm/kvm_nested.h           |   68 +
> >>  arch/arm64/include/asm/sysreg.h               |  143 +-
> >>  arch/arm64/include/uapi/asm/kvm.h             |    2 +
> >>  arch/arm64/kernel/cpufeature.c                |   26 +
> >>  arch/arm64/kvm/Makefile                       |    4 +
> >>  arch/arm64/kvm/emulate-nested.c               |  223 +++
> >>  arch/arm64/kvm/guest.c                        |    6 +
> >>  arch/arm64/kvm/handle_exit.c                  |   76 +-
> >>  arch/arm64/kvm/hyp/Makefile                   |    1 +
> >>  arch/arm64/kvm/hyp/at.c                       |  217 +++
> >>  arch/arm64/kvm/hyp/switch.c                   |   86 +-
> >>  arch/arm64/kvm/hyp/sysreg-sr.c                |  267 ++-
> >>  arch/arm64/kvm/hyp/tlb.c                      |  129 +-
> >>  arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c      |    2 +-
> >>  arch/arm64/kvm/inject_fault.c                 |   12 -
> >>  arch/arm64/kvm/nested.c                       |  551 +++++++
> >>  arch/arm64/kvm/regmap.c                       |    4 +-
> >>  arch/arm64/kvm/reset.c                        |    7 +
> >>  arch/arm64/kvm/sys_regs.c                     | 1460 +++++++++++++++--
> >>  arch/arm64/kvm/sys_regs.h                     |    6 +
> >>  arch/arm64/kvm/trace.h                        |   58 +-
> >>  include/kvm/arm_arch_timer.h                  |    6 +
> >>  include/kvm/arm_vgic.h                        |   28 +-
> >>  virt/kvm/arm/arch_timer.c                     |  158 +-
> >>  virt/kvm/arm/arm.c                            |   62 +-
> >>  virt/kvm/arm/hyp/vgic-v3-sr.c                 |   35 +-
> >>  virt/kvm/arm/mmio.c                           |   12 +-
> >>  virt/kvm/arm/mmu.c                            |  445 +++--
> >>  virt/kvm/arm/trace.h                          |    6 +-
> >>  virt/kvm/arm/vgic/vgic-init.c                 |   30 +
> >>  virt/kvm/arm/vgic/vgic-kvm-device.c           |   22 +
> >>  virt/kvm/arm/vgic/vgic-nested-trace.h         |  137 ++
> >>  virt/kvm/arm/vgic/vgic-v2.c                   |   10 +-
> >>  virt/kvm/arm/vgic/vgic-v3-nested.c            |  236 +++
> >>  virt/kvm/arm/vgic/vgic-v3.c                   |   40 +-
> >>  virt/kvm/arm/vgic/vgic.c                      |   74 +-
> >>  56 files changed, 4683 insertions(+), 612 deletions(-)
> >>  create mode 100644 arch/arm/include/asm/kvm_nested.h
> >>  create mode 100644 arch/arm64/include/asm/kvm_nested.h
> >>  create mode 100644 arch/arm64/kvm/emulate-nested.c
> >>  create mode 100644 arch/arm64/kvm/hyp/at.c
> >>  create mode 100644 arch/arm64/kvm/nested.c
> >>  create mode 100644 virt/kvm/arm/vgic/vgic-nested-trace.h
> >>  create mode 100644 virt/kvm/arm/vgic/vgic-v3-nested.c
> >>
> > When working on adding support for EL2 to kvm-unit-tests I was able to =
trigger
> > the following warning:
> >
> > # ./lkvm run -f psci.flat -m 128 -c 8 --console serial --irqchip gicv3 =
--nested
> >   # lkvm run --firmware psci.flat -m 128 -c 8 --name guest-151
> >   Info: Placing fdt at 0x80200000 - 0x80210000
> >   # Warning: The maximum recommended amount of VCPUs is 4
> > chr_testdev_init: chr-testdev: can't find a virtio-console
> > INFO: PSCI version 1.0
> > PASS: invalid-function
> > PASS: affinity-info-on
> > PASS: affinity-info-off
> > [=A0=A0 24.381266] WARNING: CPU: 3 PID: 160 at
> > arch/arm64/kvm/../../../virt/kvm/arm/arch_timer.c:170
> > kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.381366] Modules linked in:
> > [=A0=A0 24.381466] CPU: 3 PID: 160 Comm: kvm-vcpu-1 Not tainted
> > 5.2.0-rc5-00060-g7dbce63bd1c7 #145
> > [=A0=A0 24.381566] Hardware name: Foundation-v8A (DT)
> > [=A0=A0 24.381566] pstate: 40400009 (nZcv daif +PAN -UAO)
> > [=A0=A0 24.381666] pc : kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.381766] lr : timer_emulate+0x24/0x98
> > [=A0=A0 24.381766] sp : ffff000013d8b780
> > [=A0=A0 24.381866] x29: ffff000013d8b780 x28: ffff80087a639b80
> > [=A0=A0 24.381966] x27: ffff000010ba8648 x26: ffff000010b71b40
> > [=A0=A0 24.382066] x25: ffff80087a63a100 x24: 0000000000000000
> > [=A0=A0 24.382111] x23: 000080086ca54000 x22: ffff0000100ce260
> > [=A0=A0 24.382166] x21: ffff800875e7c918 x20: ffff800875e7a800
> > [=A0=A0 24.382275] x19: ffff800875e7ca08 x18: 0000000000000000
> > [=A0=A0 24.382366] x17: 0000000000000000 x16: 0000000000000000
> > [=A0=A0 24.382466] x15: 0000000000000000 x14: 0000000000002118
> > [=A0=A0 24.382566] x13: 0000000000002190 x12: 0000000000002280
> > [=A0=A0 24.382566] x11: 0000000000002208 x10: 0000000000000040
> > [=A0=A0 24.382666] x9 : ffff000012dc3b38 x8 : 0000000000000000
> > [=A0=A0 24.382766] x7 : 0000000000000000 x6 : ffff80087ac00248
> > [=A0=A0 24.382866] x5 : 000080086ca54000 x4 : 0000000000002118
> > [=A0=A0 24.382966] x3 : eeeeeeeeeeeeeeef x2 : ffff800875e7c918
> > [=A0=A0 24.383066] x1 : 0000000000000001 x0 : ffff800875e7ca08
> > [=A0=A0 24.383066] Call trace:
> > [=A0=A0 24.383166]=A0 kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.383266]=A0 kvm_timer_vcpu_load+0x9c/0x1a0
> > [=A0=A0 24.383366]=A0 kvm_arch_vcpu_load+0xb0/0x1f0
> > [=A0=A0 24.383366]=A0 kvm_sched_in+0x1c/0x28
> > [=A0=A0 24.383466]=A0 finish_task_switch+0xd8/0x1d8
> > [=A0=A0 24.383566]=A0 __schedule+0x248/0x4a0
> > [=A0=A0 24.383666]=A0 preempt_schedule_irq+0x60/0x90
> > [=A0=A0 24.383666]=A0 el1_irq+0xd0/0x180
> > [=A0=A0 24.383766]=A0 kvm_handle_guest_abort+0x0/0x3a0
> > [=A0=A0 24.383866]=A0 kvm_arch_vcpu_ioctl_run+0x41c/0x688
> > [=A0=A0 24.383866]=A0 kvm_vcpu_ioctl+0x4c0/0x838
> > [=A0=A0 24.383966]=A0 do_vfs_ioctl+0xb8/0x878
> > [=A0=A0 24.384077]=A0 ksys_ioctl+0x84/0x90
> > [=A0=A0 24.384166]=A0 __arm64_sys_ioctl+0x18/0x28
> > [=A0=A0 24.384166]=A0 el0_svc_common.constprop.0+0xb0/0x168
> > [=A0=A0 24.384266]=A0 el0_svc_handler+0x28/0x78
> > [=A0=A0 24.384366]=A0 el0_svc+0x8/0xc
> > [=A0=A0 24.384366] ---[ end trace 37a32293e43ac12c ]---
> > [=A0=A0 24.384666] WARNING: CPU: 3 PID: 160 at
> > arch/arm64/kvm/../../../virt/kvm/arm/arch_timer.c:170
> > kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.384766] Modules linked in:
> > [=A0=A0 24.384866] CPU: 3 PID: 160 Comm: kvm-vcpu-1 Tainted: G        W
> > 5.2.0-rc5-00060-g7dbce63bd1c7 #145
> > [=A0=A0 24.384966] Hardware name: Foundation-v8A (DT)
> > [=A0=A0 24.384966] pstate: 40400009 (nZcv daif +PAN -UAO)
> > [=A0=A0 24.385066] pc : kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.385166] lr : timer_emulate+0x24/0x98
> > [=A0=A0 24.385166] sp : ffff000013d8b780
> > [=A0=A0 24.385266] x29: ffff000013d8b780 x28: ffff80087a639b80
> > [=A0=A0 24.385366] x27: ffff000010ba8648 x26: ffff000010b71b40
> > [=A0=A0 24.385466] x25: ffff80087a63a100 x24: 0000000000000000
> > [=A0=A0 24.385466] x23: 000080086ca54000 x22: ffff0000100ce260
> > [=A0=A0 24.385566] x21: ffff800875e7c918 x20: ffff800875e7a800
> > [=A0=A0 24.385666] x19: ffff800875e7ca80 x18: 0000000000000000
> > [=A0=A0 24.385766] x17: 0000000000000000 x16: 0000000000000000
> > [=A0=A0 24.385866] x15: 0000000000000000 x14: 0000000000002118
> > [=A0=A0 24.385966] x13: 0000000000002190 x12: 0000000000002280
> > [=A0=A0 24.385966] x11: 0000000000002208 x10: 0000000000000040
> > [=A0=A0 24.386066] x9 : ffff000012dc3b38 x8 : 0000000000000000
> > [=A0=A0 24.386166] x7 : 0000000000000000 x6 : ffff80087ac00248
> > [=A0=A0 24.386266] x5 : 000080086ca54000 x4 : 0000000000002118
> > [=A0=A0 24.386366] x3 : eeeeeeeeeeeeeeef x2 : ffff800875e7c918
> > [=A0=A0 24.386466] x1 : 0000000000000001 x0 : ffff800875e7ca80
> > [=A0=A0 24.386466] Call trace:
> > [=A0=A0 24.386566]=A0 kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.386666]=A0 kvm_timer_vcpu_load+0xa8/0x1a0
> > [=A0=A0 24.386666]=A0 kvm_arch_vcpu_load+0xb0/0x1f0
> > [=A0=A0 24.386898]=A0 kvm_sched_in+0x1c/0x28
> > [=A0=A0 24.386966]=A0 finish_task_switch+0xd8/0x1d8
> > [=A0=A0 24.387166]=A0 __schedule+0x248/0x4a0
> > [=A0=A0 24.387354]=A0 preempt_schedule_irq+0x60/0x90
> > [=A0=A0 24.387366]=A0 el1_irq+0xd0/0x180
> > [=A0=A0 24.387466]=A0 kvm_handle_guest_abort+0x0/0x3a0
> > [=A0=A0 24.387566]=A0 kvm_arch_vcpu_ioctl_run+0x41c/0x688
> > [=A0=A0 24.387566]=A0 kvm_vcpu_ioctl+0x4c0/0x838
> > [=A0=A0 24.387666]=A0 do_vfs_ioctl+0xb8/0x878
> > [=A0=A0 24.387766]=A0 ksys_ioctl+0x84/0x90
> > [=A0=A0 24.387866]=A0 __arm64_sys_ioctl+0x18/0x28
> > [=A0=A0 24.387866]=A0 el0_svc_common.constprop.0+0xb0/0x168
> > [=A0=A0 24.387966]=A0 el0_svc_handler+0x28/0x78
> > [=A0=A0 24.388066]=A0 el0_svc+0x8/0xc
> > [=A0=A0 24.388066] ---[ end trace 37a32293e43ac12d ]---
> > PASS: cpu-on
> > SUMMARY: 4 te[=A0=A0 24.390266] WARNING: CPU: 3 PID: 160 at
> > arch/arm64/kvm/../../../virt/kvm/arm/arch_timer.c:170
> > kvm_timer_irq_can_fire+0xc/0x30
> > s[=A0=A0 24.390366] Modules linked in:
> > ts[=A0=A0 24.390366] CPU: 3 PID: 160 Comm: kvm-vcpu-1 Tainted: G       =
 W
> > 5.2.0-rc5-00060-g7dbce63bd1c7 #145
> > [=A0=A0 24.390566] Hardware name: Foundation-v8A (DT)
> >
> > [=A0=A0 24.390795] pstate: 40400009 (nZcv daif +PAN -UAO)
> > [=A0=A0 24.390866] pc : kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.390966] lr : timer_emulate+0x24/0x98
> > [=A0=A0 24.391066] sp : ffff000013d8b780
> > [=A0=A0 24.391066] x29: ffff000013d8b780 x28: ffff80087a639b80
> > [=A0=A0 24.391166] x27: ffff000010ba8648 x26: ffff000010b71b40
> > [=A0=A0 24.391266] x25: ffff80087a63a100 x24: 0000000000000000
> > [=A0=A0 24.391366] x23: 000080086ca54000 x22: 0000000000000003
> > [=A0=A0 24.391466] x21: ffff800875e7c918 x20: ffff800875e7a800
> > [=A0=A0 24.391466] x19: ffff800875e7ca08 x18: 0000000000000000
> > [=A0=A0 24.391566] x17: 0000000000000000 x16: 0000000000000000
> > [=A0=A0 24.391666] x15: 0000000000000000 x14: 0000000000002118
> > [=A0=A0 24.391766] x13: 0000000000002190 x12: 0000000000002280
> > [=A0=A0 24.391866] x11: 0000000000002208 x10: 0000000000000040
> > [=A0=A0 24.391942] x9 : ffff000012dc3b38 x8 : 0000000000000000
> > [=A0=A0 24.391966] x7 : 0000000000000000 x6 : ffff80087ac00248
> > [=A0=A0 24.392066] x5 : 000080086ca54000 x4 : 0000000000002118
> > [=A0=A0 24.392166] x3 : eeeeeeeeeeeeeeef x2 : ffff800875e7c918
> > [=A0=A0 24.392269] x1 : 0000000000000001 x0 : ffff800875e7ca08
> > [=A0=A0 24.392366] Call trace:
> > [=A0=A0 24.392433]=A0 kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.392466]=A0 kvm_timer_vcpu_load+0x9c/0x1a0
> > [=A0=A0 24.392597]=A0 kvm_arch_vcpu_load+0xb0/0x1f0
> > [=A0=A0 24.392666]=A0 kvm_sched_in+0x1c/0x28
> > [=A0=A0 24.392766]=A0 finish_task_switch+0xd8/0x1d8
> > [=A0=A0 24.392766]=A0 __schedule+0x248/0x4a0
> > [=A0=A0 24.392866]=A0 preempt_schedule_irq+0x60/0x90
> > [=A0=A0 24.392966]=A0 el1_irq+0xd0/0x180
> > [=A0=A0 24.392966]=A0 kvm_handle_guest_abort+0x0/0x3a0
> > [=A0=A0 24.393066]=A0 kvm_arch_vcpu_ioctl_run+0x41c/0x688
> > [=A0=A0 24.393166]=A0 kvm_vcpu_ioctl+0x4c0/0x838
> > [=A0=A0 24.393266]=A0 do_vfs_ioctl+0xb8/0x878
> > [=A0=A0 24.393266]=A0 ksys_ioctl+0x84/0x90
> > [=A0=A0 24.393366]=A0 __arm64_sys_ioctl+0x18/0x28
> > [=A0=A0 24.393466]=A0 el0_svc_common.constprop.0+0xb0/0x168
> > [=A0=A0 24.393566]=A0 el0_svc_handler+0x28/0x78
> > [=A0=A0 24.393566]=A0 el0_svc+0x8/0xc
> > [=A0=A0 24.393666] ---[ end trace 37a32293e43ac12e ]---
> > [=A0=A0 24.393866] WARNING: CPU: 3 PID: 160 at
> > arch/arm64/kvm/../../../virt/kvm/arm/arch_timer.c:170
> > kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.394066] Modules linked in:
> > [=A0=A0 24.394266] CPU: 3 PID: 160 Comm: kvm-vcpu-1 Tainted: G        W
> > 5.2.0-rc5-00060-g7dbce63bd1c7 #145
> > [=A0=A0 24.394366] Hardware name: Foundation-v8A (DT)
> > [=A0=A0 24.394466] pstate: 40400009 (nZcv daif +PAN -UAO)
> > [=A0=A0 24.394466] pc : kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.394566] lr : timer_emulate+0x24/0x98
> > [=A0=A0 24.394666] sp : ffff000013d8b780
> > [=A0=A0 24.394727] x29: ffff000013d8b780 x28: ffff80087a639b80
> > [=A0=A0 24.394766] x27: ffff000010ba8648 x26: ffff000010b71b40
> > [=A0=A0 24.394866] x25: ffff80087a63a100 x24: 0000000000000000
> > [=A0=A0 24.394966] x23: 000080086ca54000 x22: 0000000000000003
> > [=A0=A0 24.394966] x21: ffff800875e7c918 x20: ffff800875e7a800
> > [=A0=A0 24.395066] x19: ffff800875e7ca80 x18: 0000000000000000
> > [=A0=A0 24.395166] x17: 0000000000000000 x16: 0000000000000000
> > [=A0=A0 24.395266] x15: 0000000000000000 x14: 0000000000002118
> > [=A0=A0 24.395383] x13: 0000000000002190 x12: 0000000000002280
> > [=A0=A0 24.395466] x11: 0000000000002208 x10: 0000000000000040
> > [=A0=A0 24.395547] x9 : ffff000012dc3b38 x8 : 0000000000000000
> > [=A0=A0 24.395666] x7 : 0000000000000000 x6 : ffff80087ac00248
> > [=A0=A0 24.395866] x5 : 000080086ca54000 x4 : 0000000000002118
> > [=A0=A0 24.395966] x3 : eeeeeeeeeeeeeeef x2 : ffff800875e7c918
> > [=A0=A0 24.396066] x1 : 0000000000000001 x0 : ffff800875e7ca80
> > [=A0=A0 24.396066] Call trace:
> > [=A0=A0 24.396166]=A0 kvm_timer_irq_can_fire+0xc/0x30
> > [=A0=A0 24.396266]=A0 kvm_timer_vcpu_load+0xa8/0x1a0
> > [=A0=A0 24.396366]=A0 kvm_arch_vcpu_load+0xb0/0x1f0
> > [=A0=A0 24.396366]=A0 kvm_sched_in+0x1c/0x28
> > [=A0=A0 24.396466]=A0 finish_task_switch+0xd8/0x1d8
> > [=A0=A0 24.396566]=A0 __schedule+0x248/0x4a0
> > [=A0=A0 24.396666]=A0 preempt_schedule_irq+0x60/0x90
> > [=A0=A0 24.396666]=A0 el1_irq+0xd0/0x180
> > [=A0=A0 24.396766]=A0 kvm_handle_guest_abort+0x0/0x3a0
> > [=A0=A0 24.396866]=A0 kvm_arch_vcpu_ioctl_run+0x41c/0x688
> > [=A0=A0 24.396866]=A0 kvm_vcpu_ioctl+0x4c0/0x838
> > [=A0=A0 24.397021]=A0 do_vfs_ioctl+0xb8/0x878
> > [=A0=A0 24.397066]=A0 ksys_ioctl+0x84/0x90
> > [=A0=A0 24.397166]=A0 __arm64_sys_ioctl+0x18/0x28
> > [=A0=A0 24.397348]=A0 el0_svc_common.constprop.0+0xb0/0x168
> > [=A0=A0 24.397366]=A0 el0_svc_handler+0x28/0x78
> > [=A0=A0 24.397566]=A0 el0_svc+0x8/0xc
> > [=A0=A0 24.397676] ---[ end trace 37a32293e43ac12f ]---
> >
> >   # KVM compatibility warning.
> >     virtio-9p device was not detected.
> >     While you have requested a virtio-9p device, the guest kernel did n=
ot
> > initialize it.
> >     Please make sure that the guest kernel was compiled with
> > CONFIG_NET_9P_VIRTIO=3Dy enabled in .config.
> >
> >   # KVM compatibility warning.
> >     virtio-net device was not detected.
> >     While you have requested a virtio-net device, the guest kernel did =
not
> > initialize it.
> >     Please make sure that the guest kernel was compiled with CONFIG_VIR=
TIO_NET=3Dy
> > enabled in .config.
> >
> > [..]
> =

> Did some investigating and this was caused by a bug in kvm-unit-tests (th=
e fix
> for it will be part of the EL2 patches for kvm-unit-tests). The guest was=
 trying
> to fetch an instruction from address 0x200, which KVM interprets as a pre=
fetch
> abort on an I/O address and ends up calling kvm_inject_pabt. The code from
> arch/arm64/kvm/inject_fault.c doesn't know anything about nested virtuali=
zation,
> and it sets the VCPU mode directly to PSR_MODE_EL1h. This makes_hyp_ctxt =
return
> false, and get_timer_map will return an incorrect mapping.
> =

> On next kvm_timer_vcpu_put, the direct timers will be {p,v}timer, and
> h{p,v}timer->loaded will not be set to false. In the corresponding call to
> kvm_timer_vcpu_load, KVM will try to emulate the hptimer and hvtimer, whi=
ch
> still have loaded =3D true. And this causes the warning I saw.
>

Hi Alexandru,

While a unit test in kvm-unit-tests may not do what it should in order to
exercise the code it's targeting appropriately, and therefore need to be
fixed in order to do that, I'd argue that if a guest can induce a host
warning then that's a host bug. Indeed now that you've analyzed the
issue you could write a kvm-unit-tests test to specifically reproduce the
warning and then use that test to test any host fix candidates.

Thanks,
drew


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
