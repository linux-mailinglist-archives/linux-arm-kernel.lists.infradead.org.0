Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D718635A4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SFdXHQQd2EJtfGeX48s0rCe7i7ShUK02/2OMjzuRDsc=; b=mEr7HzwvBmtqOl
	D1KnZYwXS1RvINNwJrScgYIhBYJcNdFxqppHarqeGN4ebqKhQciprLEdPjS8Pr57m/aJqO/BnhFiZ
	F3fO8p+ZvLCE4K3kPD0V14ATpOFDkgn3HU8kG49ILTPpgGcrgwHerg+469r4dyOeWAXhv5Hi1vk5a
	zdYYH0uFgATQtEo04Mr6xRRIHPSD5VVzVBvb1HMhRn8+di0w8BN7B5Oav1FmrDidGOx+88D1mHqDF
	rb79EEs+o47Ec0sUK/XhTqA8q97G2/BdLeN5QwZ0N5jX1Nme063GFqdwhBfiSn1SYBBQOFv1kKITT
	u6f9Ud35OK6bvZZrQqbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpBi-0006TP-F0; Tue, 09 Jul 2019 12:25:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpBU-0006RD-Mg
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:25:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29AE52B;
 Tue,  9 Jul 2019 05:25:20 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com (unknown [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5CA153F59C;
 Tue,  9 Jul 2019 05:25:18 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm updates for Linux 5.3
Date: Tue,  9 Jul 2019 13:24:49 +0100
Message-Id: <20190709122507.214494-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052524_834891_9F0F741B 
X-CRM114-Status: GOOD (  12.23  )
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Radim, Paolo,

This is the (slightly delayed) KVM/arm updates for 5.3. This time
around, some PMU emulation improvements, the ability to save/restore
the Spectre mitigation state, better SError handling that double as
the workaround for a N1 erratum, a 32bit fix for a corrupted MPIDR,
and yet another pre-NV cleanup.

Please pull,

	M.

The following changes since commit 4b972a01a7da614b4796475f933094751a295a2f:

  Linux 5.2-rc6 (2019-06-22 16:01:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvm-arm-for-5.3

for you to fetch changes up to 1e0cf16cdad1ba53e9eeee8746fe57de42f20c97:

  KVM: arm/arm64: Initialise host's MPIDRs by reading the actual register (2019-07-08 16:29:48 +0100)

----------------------------------------------------------------
KVM/arm updates for 5.3

- Add support for chained PMU counters in guests
- Improve SError handling
- Handle Neoverse N1 erratum #1349291
- Allow side-channel mitigation status to be migrated
- Standardise most AArch64 system register accesses to msr_s/mrs_s
- Fix host MPIDR corruption on 32bit

----------------------------------------------------------------
Andre Przywara (3):
      arm64: KVM: Propagate full Spectre v2 workaround state to KVM guests
      KVM: arm/arm64: Add save/restore support for firmware workaround state
      KVM: doc: Add API documentation on the KVM_REG_ARM_WORKAROUNDS register

Andrew Murray (5):
      KVM: arm/arm64: Rename kvm_pmu_{enable/disable}_counter functions
      KVM: arm/arm64: Extract duplicated code to own function
      KVM: arm/arm64: Re-create event when setting counter value
      KVM: arm/arm64: Remove pmc->bitmask
      KVM: arm/arm64: Support chained PMU counters

Dave Martin (1):
      KVM: arm64: Migrate _elx sysreg accessors to msr_s/mrs_s

James Morse (8):
      arm64: assembler: Switch ESB-instruction with a vanilla nop if !ARM64_HAS_RAS
      KVM: arm64: Abstract the size of the HYP vectors pre-amble
      KVM: arm64: Make indirect vectors preamble behaviour symmetric
      KVM: arm64: Consume pending SError as early as possible
      KVM: arm64: Defer guest entry when an asynchronous exception is pending
      arm64: Update silicon-errata.txt for Neoverse-N1 #1349291
      KVM: arm64: Re-mask SError after the one instruction window
      KVM: arm64: Skip more of the SError vaxorcism

Marc Zyngier (1):
      KVM: arm/arm64: Initialise host's MPIDRs by reading the actual register

 Documentation/arm64/silicon-errata.txt   |   1 +
 Documentation/virtual/kvm/arm/psci.txt   |  31 +++
 arch/arm/include/asm/kvm_emulate.h       |  10 +
 arch/arm/include/asm/kvm_host.h          |  18 +-
 arch/arm/include/asm/kvm_hyp.h           |  13 +-
 arch/arm/include/uapi/asm/kvm.h          |  12 ++
 arch/arm64/include/asm/assembler.h       |   4 +
 arch/arm64/include/asm/cpufeature.h      |   6 +
 arch/arm64/include/asm/kvm_asm.h         |   6 +
 arch/arm64/include/asm/kvm_emulate.h     |  30 ++-
 arch/arm64/include/asm/kvm_host.h        |  23 +-
 arch/arm64/include/asm/kvm_hyp.h         |  50 +----
 arch/arm64/include/asm/sysreg.h          |  35 +++-
 arch/arm64/include/uapi/asm/kvm.h        |  10 +
 arch/arm64/kernel/cpu_errata.c           |  23 +-
 arch/arm64/kernel/traps.c                |   4 +
 arch/arm64/kvm/hyp/entry.S               |  36 +++-
 arch/arm64/kvm/hyp/hyp-entry.S           |  30 ++-
 arch/arm64/kvm/hyp/switch.c              |  14 +-
 arch/arm64/kvm/hyp/sysreg-sr.c           |  78 +++----
 arch/arm64/kvm/hyp/tlb.c                 |  12 +-
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |   2 +-
 arch/arm64/kvm/regmap.c                  |   4 +-
 arch/arm64/kvm/sys_regs.c                |  60 +++---
 arch/arm64/kvm/va_layout.c               |   7 +-
 include/kvm/arm_pmu.h                    |  11 +-
 virt/kvm/arm/arch_timer.c                |  24 +--
 virt/kvm/arm/arm.c                       |   3 +-
 virt/kvm/arm/pmu.c                       | 350 +++++++++++++++++++++++++------
 virt/kvm/arm/psci.c                      | 149 +++++++++++--
 30 files changed, 775 insertions(+), 281 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
