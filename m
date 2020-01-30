Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1224C14DB96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 14:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ec/gR2vWEm4Mm5y9BxuDS11ezJLh3if2Q7rHAcpvy/g=; b=BB/bhhOz+qnmUc
	uncNLQWkXRrDvKPm/33PUdPNBcBsFzYUI+dEYpCAzSXEaQzp01VJNjhdwjU1rYeyI5soXd04ngm8k
	nthJCrRzomPASWhRb2pdpnrobSYK1bUkdkBqF/iFj4ulis++7Ot4eUokJUFB+607Bwr7ks6tvtuaC
	X4bU1uEKy6irJxqNROMZqHNZTUJfHZKZc/iM6qk13MzhnWwoIjBv5Fk/Y6u9kWnGqZoU5O8e23mb6
	IDNyEC+wZ+R5pTSpQ88DxQXYDaCGAl+KX39/Q2pVmFdOjxap9lGX4irGQrYEW+v2MRt5tDW6ZP7Sw
	o64V3WbuDxFr9z4hgMYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix9pz-0004BO-Vw; Thu, 30 Jan 2020 13:26:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix9pk-00049U-EI
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 13:26:13 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2754A206D3;
 Thu, 30 Jan 2020 13:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580390769;
 bh=wwlEwadKKbbQ4/WckEF80j+eU2hpJMPZGA/aKsa3POQ=;
 h=From:To:Cc:Subject:Date:From;
 b=jSqZF95ckvt9gdNJuT243V8zugVLpABPUMBdW4NqpSyGGVpFU/aHtSZGYVcNPdvE8
 w5kmbUEAyxiu94L5y3jA6U7tsKcKDNnG96HWp1K4wJCTn5rvEoKOiUfEIrbyAymjIH
 vNznXx3SiApMGAXzuCuPydw82vsVIcd36oCzEO+Q=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ix9pf-002BmW-5a; Thu, 30 Jan 2020 13:26:07 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [GIT PULL 00/23] KVM/arm updates for 5.6
Date: Thu, 30 Jan 2020 13:25:35 +0000
Message-Id: <20200130132558.10201-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, alexandru.elisei@arm.com,
 drjones@redhat.com, andrew.murray@arm.com, beata.michalska@linaro.org,
 christoffer.dall@arm.com, eric.auger@redhat.com, gshan@redhat.com,
 wanghaibin.wang@huawei.com, james.morse@arm.com, broonie@kernel.org,
 mark.rutland@arm.com, rmk+kernel@armlinux.org.uk,
 shannon.zhao@linux.alibaba.com, steven.price@arm.com, will@kernel.org,
 yuehaibing@huawei.com, yuzenghui@huawei.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_052612_530440_4CAD46AE 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Gavin Shan <gshan@redhat.com>,
 Beata Michalska <beata.michalska@linaro.org>, kvm@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 YueHaibing <yuehaibing@huawei.com>, Steven Price <steven.price@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Haibin Wang <wanghaibin.wang@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Andrew Jones <drjones@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Shannon Zhao <shannon.zhao@linux.alibaba.com>,
 Eric Auger <eric.auger@redhat.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paolo,

Please find below the pull request for KVM/arm for Linux 5.6.

No new feature this time around, but a large spectrum of interesting
fixes. I'm certainly pleased that people are focussing on these corner
cases, as some of them are pretty hard to debug. So kudos to them!

Please pull,

	M.

The following changes since commit fd6988496e79a6a4bdb514a4655d2920209eb85d:

  Linux 5.5-rc4 (2019-12-29 15:29:16 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-5.6

for you to fetch changes up to 4a267aa707953a9a73d1f5dc7f894dd9024a92be:

  KVM: arm64: Treat emulated TVAL TimerValue as a signed 32-bit integer (2020-01-28 13:09:31 +0000)

----------------------------------------------------------------
KVM/arm updates for Linux 5.6

- Fix MMIO sign extension
- Fix HYP VA tagging on tag space exhaustion
- Fix PSTATE/CPSR handling when generating exception
- Fix MMU notifier's advertizing of young pages
- Fix poisoned page handling
- Fix PMU SW event handling
- Fix TVAL register access
- Fix AArch32 external abort injection
- Fix ITS unmapped collection handling
- Various cleanups

----------------------------------------------------------------
Alexandru Elisei (1):
      KVM: arm64: Treat emulated TVAL TimerValue as a signed 32-bit integer

Andrew Jones (1):
      arm64: KVM: Add UAPI notes for swapped registers

Christoffer Dall (1):
      KVM: arm64: Only sign-extend MMIO up to register width

Eric Auger (5):
      KVM: arm/arm64: vgic-its: Fix restoration of unmapped collections
      KVM: arm64: pmu: Don't increment SW_INCR if PMCR.E is unset
      KVM: arm64: pmu: Don't mark a counter as chained if the odd one is disabled
      KVM: arm64: pmu: Fix chained SW_INCR counters
      KVM: arm64: pmu: Only handle supported event counters

Gavin Shan (1):
      KVM: arm/arm64: Fix young bit from mmu notifier

James Morse (3):
      KVM: arm/arm64: Re-check VMA on detecting a poisoned page
      KVM: arm: Fix DFSR setting for non-LPAE aarch32 guests
      KVM: arm: Make inject_abt32() inject an external abort instead

Marc Zyngier (1):
      KVM: arm/arm64: Cleanup MMIO handling

Mark Brown (1):
      arm64: KVM: Annotate guest entry/exit as a single function

Mark Rutland (3):
      KVM: arm64: Correct PSTATE on exception entry
      KVM: arm/arm64: Correct CPSR on exception entry
      KVM: arm/arm64: Correct AArch32 SPSR on exception entry

Russell King (1):
      arm64: kvm: Fix IDMAP overlap with HYP VA

Shannon Zhao (1):
      KVM: ARM: Call hyp_cpu_pm_exit at the right place

YueHaibing (1):
      KVM: arm: Remove duplicate include

Zenghui Yu (3):
      KVM: arm/arm64: vgic: Handle GICR_PENDBASER.PTZ filed as RAZ
      KVM: arm/arm64: vgic-its: Properly check the unmapped coll in DISCARD handler
      KVM: arm/arm64: vgic: Drop the kvm_vgic_register_mmio_region()

 Documentation/virt/kvm/api.txt       |   9 +++
 arch/arm/include/asm/kvm_emulate.h   |  27 +++++++-
 arch/arm/include/asm/kvm_host.h      |  12 ++--
 arch/arm/include/asm/kvm_hyp.h       |   1 +
 arch/arm/include/asm/kvm_mmio.h      |  26 -------
 arch/arm64/include/asm/kvm_emulate.h |  40 ++++++++++-
 arch/arm64/include/asm/kvm_host.h    |  12 ++--
 arch/arm64/include/asm/kvm_mmio.h    |  29 --------
 arch/arm64/include/asm/ptrace.h      |   1 +
 arch/arm64/include/uapi/asm/kvm.h    |  12 +++-
 arch/arm64/include/uapi/asm/ptrace.h |   1 +
 arch/arm64/kvm/hyp/entry.S           |   7 +-
 arch/arm64/kvm/inject_fault.c        |  70 +++++++++++++++++--
 arch/arm64/kvm/va_layout.c           |  56 +++++++--------
 virt/kvm/arm/aarch32.c               | 131 ++++++++++++++++++++++++++++++-----
 virt/kvm/arm/arch_timer.c            |   3 +-
 virt/kvm/arm/arm.c                   |   4 +-
 virt/kvm/arm/mmio.c                  |  68 +++++++-----------
 virt/kvm/arm/mmu.c                   |  24 +++----
 virt/kvm/arm/pmu.c                   | 114 ++++++++++++++++++------------
 virt/kvm/arm/vgic/vgic-its.c         |   6 +-
 virt/kvm/arm/vgic/vgic-mmio-v3.c     |   5 +-
 virt/kvm/arm/vgic/vgic-mmio.h        |   5 --
 23 files changed, 421 insertions(+), 242 deletions(-)
 delete mode 100644 arch/arm/include/asm/kvm_mmio.h
 delete mode 100644 arch/arm64/include/asm/kvm_mmio.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
