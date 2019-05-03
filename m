Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B3112DE5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 14:44:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4tuPG3g4d8e533Egm+ZEOywTM5p6O3p7x2QHewnTXdU=; b=KkjgYCnmrMJ5++
	sjd0mgx9fV2a6mPVwW9VFi6gFH8ySpCqwDeCeVqBKir3EDNuzu/j1Md+iw1Zs4lY+34jNr2OaJeVu
	wt1Ss1xEVLA2F49Yqq+KUPhZkGb9oAdeMKo8b729VoTtlkOyYRLFbBt3GpkRuIKqtqIy07WCvKNTw
	pe8F7TM/jUHrUZywwhUWIRqBuSOl6lF4ob6cSmxgwo0FmliRsi/DQAuYwy+iHRPccPeiQ1jYMpYih
	VK22UKeaj4HkNSfa+KmlUC06ELwZwO+9027f7tUvIiyX1jJAqVpNV/tyDL+nUDFs0cSvkdZEVIFKM
	v3Ush2LbykKMfkB8TGOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXYa-0002Iv-HO; Fri, 03 May 2019 12:44:52 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXYS-0002Hd-MK
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:44:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE9C4374;
 Fri,  3 May 2019 05:44:42 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94D073F220;
 Fri,  3 May 2019 05:44:39 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm updates for 5.2
Date: Fri,  3 May 2019 13:43:31 +0100
Message-Id: <20190503124427.190206-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_054444_746929_225B2FBA 
X-CRM114-Status: GOOD (  18.03  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

This is the 5.2 pull request for KVM/arm. Pretty substential update
this time, as we finally have SVE support in guests, which makes the
bulk of the changes. Additionnaly, we have the ARMv8.3 Pointer
Authentication support for guests, and some better support for perf
modifiers.

Please pull,

	M.

The following changes since commit 8c2ffd9174779014c3fe1f96d9dc3641d9175f00:

  Linux 5.1-rc2 (2019-03-24 14:02:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-for-v5.2

for you to fetch changes up to 9eecfc22e0bfc7a4c8ca007f083f0ae492d6e891:

  KVM: arm64: Fix ptrauth ID register masking logic (2019-05-01 17:21:51 +0100)

----------------------------------------------------------------
KVM/arm updates for 5.2

- guest SVE support
- guest Pointer Authentication support
- Better discrimination of perf counters between host and guests

----------------------------------------------------------------
Amit Daniel Kachhap (3):
      KVM: arm64: Add a vcpu flag to control ptrauth for guest
      KVM: arm64: Add userspace flag to enable pointer authentication
      KVM: arm64: Add capability to advertise ptrauth for guest

Andrew Murray (9):
      arm64: arm_pmu: Remove unnecessary isb instruction
      arm64: KVM: Encapsulate kvm_cpu_context in kvm_host_data
      arm64: KVM: Add accessors to track guest/host only counters
      arm64: arm_pmu: Add !VHE support for exclude_host/exclude_guest attributes
      arm64: KVM: Enable !VHE support for :G/:H perf event modifiers
      arm64: KVM: Enable VHE support for :G/:H perf event modifiers
      arm64: KVM: Avoid isb's by using direct pmxevtyper sysreg
      arm64: docs: Document perf event attributes
      arm64: KVM: Fix perf cycle counter support for VHE

Dave Martin (41):
      KVM: Documentation: Document arm64 core registers in detail
      arm64: fpsimd: Always set TIF_FOREIGN_FPSTATE on task state flush
      KVM: arm64: Delete orphaned declaration for __fpsimd_enabled()
      KVM: arm64: Refactor kvm_arm_num_regs() for easier maintenance
      KVM: arm64: Add missing #includes to kvm_host.h
      arm64/sve: Clarify role of the VQ map maintenance functions
      arm64/sve: Check SVE virtualisability
      arm64/sve: Enable SVE state tracking for non-task contexts
      KVM: arm64: Add a vcpu flag to control SVE visibility for the guest
      KVM: arm64: Propagate vcpu into read_id_reg()
      KVM: arm64: Support runtime sysreg visibility filtering
      KVM: arm64/sve: System register context switch and access support
      KVM: arm64/sve: Context switch the SVE registers
      KVM: Allow 2048-bit register access via ioctl interface
      KVM: arm64: Add missing #include of <linux/string.h> in guest.c
      KVM: arm64: Factor out core register ID enumeration
      KVM: arm64: Reject ioctl access to FPSIMD V-regs on SVE vcpus
      KVM: arm64/sve: Add SVE support to register access ioctl interface
      KVM: arm64: Enumerate SVE register indices for KVM_GET_REG_LIST
      arm64/sve: In-kernel vector length availability query interface
      KVM: arm/arm64: Add hook for arch-specific KVM initialisation
      KVM: arm/arm64: Add KVM_ARM_VCPU_FINALIZE ioctl
      KVM: arm64/sve: Add pseudo-register for the guest's vector lengths
      KVM: arm64/sve: Allow userspace to enable SVE for vcpus
      KVM: arm64: Add a capability to advertise SVE support
      KVM: Document errors for KVM_GET_ONE_REG and KVM_SET_ONE_REG
      KVM: arm64/sve: Document KVM API extensions for SVE
      arm64/sve: Clarify vq map semantics
      KVM: arm/arm64: Demote kvm_arm_init_arch_resources() to just set up SVE
      KVM: arm: Make vcpu finalization stubs into inline functions
      KVM: arm64/sve: sys_regs: Demote redundant vcpu_has_sve() checks to WARNs
      KVM: arm64/sve: Clean up UAPI register ID definitions
      KVM: arm64/sve: Miscellaneous tidyups in guest.c
      KVM: arm64/sve: Make register ioctl access errors more consistent
      KVM: arm64/sve: WARN when avoiding divide-by-zero in sve_reg_to_region()
      KVM: arm64/sve: Simplify KVM_REG_ARM64_SVE_VLS array sizing
      KVM: arm64/sve: Explain validity checks in set_sve_vls()
      KVM: arm/arm64: Clean up vcpu finalization function parameter naming
      KVM: Clarify capability requirements for KVM_ARM_VCPU_FINALIZE
      KVM: Clarify KVM_{SET,GET}_ONE_REG error code documentation
      KVM: arm64: Clarify access behaviour for out-of-range SVE register slice IDs

Kristina Martsenko (1):
      KVM: arm64: Fix ptrauth ID register masking logic

Marc Zyngier (1):
      arm64: KVM: Fix system register enumeration

Mark Rutland (1):
      KVM: arm/arm64: Context-switch ptrauth registers

 Documentation/arm64/perf.txt                   |  85 +++++
 Documentation/arm64/pointer-authentication.txt |  22 +-
 Documentation/virtual/kvm/api.txt              | 178 +++++++++++
 arch/arm/include/asm/kvm_emulate.h             |   2 +
 arch/arm/include/asm/kvm_host.h                |  26 +-
 arch/arm64/Kconfig                             |   6 +-
 arch/arm64/include/asm/fpsimd.h                |  29 +-
 arch/arm64/include/asm/kvm_asm.h               |   3 +-
 arch/arm64/include/asm/kvm_emulate.h           |  16 +
 arch/arm64/include/asm/kvm_host.h              | 101 +++++-
 arch/arm64/include/asm/kvm_hyp.h               |   1 -
 arch/arm64/include/asm/kvm_ptrauth.h           | 111 +++++++
 arch/arm64/include/asm/sysreg.h                |   3 +
 arch/arm64/include/uapi/asm/kvm.h              |  43 +++
 arch/arm64/kernel/asm-offsets.c                |   7 +
 arch/arm64/kernel/cpufeature.c                 |   2 +-
 arch/arm64/kernel/fpsimd.c                     | 179 +++++++----
 arch/arm64/kernel/perf_event.c                 |  50 ++-
 arch/arm64/kernel/signal.c                     |   5 -
 arch/arm64/kvm/Makefile                        |   2 +-
 arch/arm64/kvm/fpsimd.c                        |  17 +-
 arch/arm64/kvm/guest.c                         | 415 +++++++++++++++++++++++--
 arch/arm64/kvm/handle_exit.c                   |  36 ++-
 arch/arm64/kvm/hyp/entry.S                     |  15 +
 arch/arm64/kvm/hyp/switch.c                    |  80 ++++-
 arch/arm64/kvm/pmu.c                           | 239 ++++++++++++++
 arch/arm64/kvm/reset.c                         | 167 +++++++++-
 arch/arm64/kvm/sys_regs.c                      | 183 +++++++++--
 arch/arm64/kvm/sys_regs.h                      |  25 ++
 include/uapi/linux/kvm.h                       |   7 +
 virt/kvm/arm/arm.c                             |  40 ++-
 31 files changed, 1914 insertions(+), 181 deletions(-)
 create mode 100644 Documentation/arm64/perf.txt
 create mode 100644 arch/arm64/include/asm/kvm_ptrauth.h
 create mode 100644 arch/arm64/kvm/pmu.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
