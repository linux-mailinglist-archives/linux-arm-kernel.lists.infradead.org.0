Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B039E1E82D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yBdja5MAEmpDUvRze4JLJ1IkqGDszrLvEPVGwMGM8JA=; b=TQXr4YizCgTbqk
	vQIJvLxo3snOLumyVBFhpQpuE6+SnuZhaTYwK6DpReWZ6m4twfHBj1HLPHKD3b+ClZR5n14VBgRzi
	k+AuWN9+VZ5W8BjLcSwuwS0hyRstl3DcvElqLpd2xHm99W98LyMytnEG92Vcq90QcnySVSOg4JJmD
	7aQ9pLp3lIoxGaAYl+kAsyiQA5UhQ43MuP7WgljsJeBVh+vJfgCFXwLdLSpFM/nqXHB8o4R110uxK
	WZv1ybQ1f5rQR0YQNCiF3srYP0FzXpgIoK1mAkYmk8/vdyZyaE17AWMKwBBcjdg5erNeBxZZ5GjNW
	rnC5+6iaAJwlMjfueIJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehSE-0003UG-Kx; Fri, 29 May 2020 16:01:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehS1-0003T4-L0
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:01:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F549207BC;
 Fri, 29 May 2020 16:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590768100;
 bh=yuAO3OKMzQi9yu33GTKm5Be1yABvBfKViwZJPbxtrbw=;
 h=From:To:Cc:Subject:Date:From;
 b=uRNXbIduzNOlcy1ieQXcPa9ZIUzC1HuPPlNkMrofbvSY2JWmYrABcVUBg/PaTK2Zq
 r+0ngURkqBJ4ysddoONee7c/LU2Ay3VQj8rOaINxNPuzPXK0MgHUBArZZtQlkcdDtG
 VtzZmGd8qSbxPeMqyu9Owx4Sxuis6StlcGU4y2P4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jehRy-00GJKc-Hx; Fri, 29 May 2020 17:01:38 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [GIT PULL] KVM/arm64 updates for Linux 5.8
Date: Fri, 29 May 2020 17:00:57 +0100
Message-Id: <20200529160121.899083-1-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 ascull@google.com, ardb@kernel.org, christoffer.dall@arm.com,
 dbrazdil@google.com, tabba@google.com, james.morse@arm.com, giangyi@amazon.com,
 zhukeqian1@huawei.com, mark.rutland@arm.com, suzuki.poulose@arm.com,
 will@kernel.org, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_090141_728785_829B0F9F 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Keqian Zhu <zhukeqian1@huawei.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Jiang Yi <giangyi@amazon.com>,
 James Morse <james.morse@arm.com>, Andrew Scull <ascull@google.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 David Brazdil <dbrazdil@google.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Fuad Tabba <tabba@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo,

Here's the (rather small) pull request for the 5.8 updates to
KVM/arm64.  This mostly contains a bunch of cleanups now that can be
done now that we are free of the 32bit legacy, and a number of
refactoring patches that prepare for the eventual landing of the
dreaded nested virt patches.

Two things though:

- there is another bunch of patches that I have routed via the arm64
  tree as they would otherwise very badly conflict if taken via the
  KVM tree

- Depending on how things go during the first week, I may have another
  small set of patches that I'm holding back for now as they also
  conflict very badly with Mike Rapoport's P4D patches.

Please pull,

	M.

The following changes since commit 2ef96a5bb12be62ef75b5828c0aab838ebb29cb8:

  Linux 5.7-rc5 (2020-05-10 15:16:58 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-5.8

for you to fetch changes up to 8f7f4fe756bd5cfef73cf8234445081385bdbf7d:

  KVM: arm64: Drop obsolete comment about sys_reg ordering (2020-05-28 13:16:57 +0100)

----------------------------------------------------------------
KVM/arm64 updates for Linux 5.8:

- Move the arch-specific code into arch/arm64/kvm
- Start the post-32bit cleanup
- Cherry-pick a few non-invasive pre-NV patches

----------------------------------------------------------------
Andrew Scull (1):
      KVM: arm64: Remove obsolete kvm_virt_to_phys abstraction

Christoffer Dall (1):
      KVM: arm64: vgic-v3: Take cpu_if pointer directly instead of vcpu

David Brazdil (2):
      KVM: arm64: Clean up cpu_init_hyp_mode()
      KVM: arm64: Fix incorrect comment on kvm_get_hyp_vector()

Fuad Tabba (2):
      KVM: arm64: Clean up kvm makefiles
      KVM: Fix spelling in code comments

Jiang Yi (1):
      KVM: arm/arm64: Release kvm->mmu_lock in loop to prevent starvation

Keqian Zhu (1):
      KVM: arm64: Support enabling dirty log gradually in small chunks

Marc Zyngier (10):
      KVM: arm64: Move virt/kvm/arm to arch/arm64
      KVM: arm64: Simplify __kvm_timer_set_cntvoff implementation
      KVM: arm64: Use cpus_have_final_cap for has_vhe()
      KVM: arm64: Make KVM_CAP_MAX_VCPUS compatible with the selected GIC version
      KVM: arm64: Refactor vcpu_{read,write}_sys_reg
      KVM: arm64: Add missing reset handlers for PMU emulation
      KVM: arm64: Move sysreg reset check to boot time
      KVM: arm64: Don't use empty structures as CPU reset state
      KVM: arm64: Parametrize exception entry with a target EL
      KVM: arm64: Drop obsolete comment about sys_reg ordering

Suzuki K Poulose (2):
      KVM: arm64: Clean up the checking for huge mapping
      KVM: arm64: Unify handling THP backed host memory

Will Deacon (3):
      KVM: arm64: Kill off CONFIG_KVM_ARM_HOST
      KVM: arm64: Update help text
      KVM: arm64: Change CONFIG_KVM to a menuconfig entry

Zenghui Yu (1):
      KVM: arm64: Sidestep stage2_unmap_vm() on vcpu reset when S2FWB is supported

 Documentation/virt/kvm/api.rst                     |   2 +-
 MAINTAINERS                                        |   1 -
 arch/arm64/include/asm/kvm_asm.h                   |   4 +-
 arch/arm64/include/asm/kvm_host.h                  |  44 +----
 arch/arm64/include/asm/kvm_hyp.h                   |  12 +-
 arch/arm64/include/asm/kvm_mmu.h                   |   4 +-
 arch/arm64/include/asm/ptrace.h                    |   1 +
 arch/arm64/include/asm/virt.h                      |   2 +-
 arch/arm64/kernel/asm-offsets.c                    |   2 +-
 arch/arm64/kernel/cpu_errata.c                     |   2 +-
 arch/arm64/kernel/smp.c                            |   2 +-
 arch/arm64/kvm/Kconfig                             |  22 +--
 arch/arm64/kvm/Makefile                            |  46 ++---
 {virt/kvm/arm => arch/arm64/kvm}/aarch32.c         |   0
 {virt/kvm/arm => arch/arm64/kvm}/arch_timer.c      |  12 +-
 {virt/kvm/arm => arch/arm64/kvm}/arm.c             |  60 ++++--
 arch/arm64/kvm/guest.c                             |   4 +-
 arch/arm64/kvm/handle_exit.c                       |   2 +-
 arch/arm64/kvm/hyp/Makefile                        |  16 +-
 {virt/kvm/arm => arch/arm64/kvm}/hyp/aarch32.c     |   0
 arch/arm64/kvm/hyp/switch.c                        |   8 +-
 {virt/kvm/arm => arch/arm64/kvm}/hyp/timer-sr.c    |   3 +-
 {virt/kvm/arm => arch/arm64/kvm}/hyp/vgic-v3-sr.c  |  39 ++--
 {virt/kvm/arm => arch/arm64/kvm}/hypercalls.c      |   0
 arch/arm64/kvm/inject_fault.c                      |  75 +++----
 {virt/kvm/arm => arch/arm64/kvm}/mmio.c            |   2 +-
 {virt/kvm/arm => arch/arm64/kvm}/mmu.c             | 148 ++++++++------
 {virt/kvm/arm => arch/arm64/kvm}/perf.c            |   0
 virt/kvm/arm/pmu.c => arch/arm64/kvm/pmu-emul.c    |   0
 {virt/kvm/arm => arch/arm64/kvm}/psci.c            |   6 +-
 {virt/kvm/arm => arch/arm64/kvm}/pvtime.c          |   0
 arch/arm64/kvm/reset.c                             |  27 ++-
 arch/arm64/kvm/sys_regs.c                          | 212 ++++++++++----------
 arch/arm64/kvm/trace.h                             | 216 +--------------------
 virt/kvm/arm/trace.h => arch/arm64/kvm/trace_arm.h |  11 +-
 arch/arm64/kvm/trace_handle_exit.h                 | 215 ++++++++++++++++++++
 arch/arm64/kvm/vgic-sys-reg-v3.c                   |   2 +-
 {virt/kvm/arm => arch/arm64/kvm}/vgic/trace.h      |   2 +-
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-debug.c |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-init.c  |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-irqfd.c |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-its.c   |   0
 .../arm => arch/arm64/kvm}/vgic/vgic-kvm-device.c  |   0
 .../kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio-v2.c |   0
 .../kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio-v3.c |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio.c  |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio.h  |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v2.c    |  10 +-
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v3.c    |  18 +-
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v4.c    |   0
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic.c       |  25 ++-
 {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic.h       |   0
 include/kvm/arm_vgic.h                             |   5 +-
 virt/kvm/coalesced_mmio.c                          |   2 +-
 virt/kvm/eventfd.c                                 |   2 +-
 virt/kvm/kvm_main.c                                |   2 +-
 56 files changed, 629 insertions(+), 639 deletions(-)
 rename {virt/kvm/arm => arch/arm64/kvm}/aarch32.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/arch_timer.c (98%)
 rename {virt/kvm/arm => arch/arm64/kvm}/arm.c (95%)
 rename {virt/kvm/arm => arch/arm64/kvm}/hyp/aarch32.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/hyp/timer-sr.c (89%)
 rename {virt/kvm/arm => arch/arm64/kvm}/hyp/vgic-v3-sr.c (95%)
 rename {virt/kvm/arm => arch/arm64/kvm}/hypercalls.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/mmio.c (98%)
 rename {virt/kvm/arm => arch/arm64/kvm}/mmu.c (96%)
 rename {virt/kvm/arm => arch/arm64/kvm}/perf.c (100%)
 rename virt/kvm/arm/pmu.c => arch/arm64/kvm/pmu-emul.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/psci.c (98%)
 rename {virt/kvm/arm => arch/arm64/kvm}/pvtime.c (100%)
 rename virt/kvm/arm/trace.h => arch/arm64/kvm/trace_arm.h (97%)
 create mode 100644 arch/arm64/kvm/trace_handle_exit.h
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/trace.h (93%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-debug.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-init.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-irqfd.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-its.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-kvm-device.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio-v2.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio-v3.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-mmio.h (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v2.c (98%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v3.c (97%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic-v4.c (100%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic.c (97%)
 rename {virt/kvm/arm => arch/arm64/kvm}/vgic/vgic.h (100%)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
