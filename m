Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FA910411F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K0vrEmToYtEwQxRIuCkMzTuDtmBQREq9LzMzLsbY0YM=; b=HZoQ/JPvgSInrv
	RmIhAYPFCyvDb8CXQM3ci3QmlT6YAApZSuL58Glu9RSwv8VVk8u4s0tfXkzsqPkAOEFGtWbPdyU8g
	jAsw8UwQUod0TbbbEIfJOeUl/LAQkGHw8sl2y9IiVr2jCT+eJIx2xpUwJAwIoP2Ip6qzgp9mTjPdD
	/pWrGMdigNi/+TT0ZH725HyXv+X4tV9Iqi0f5DuLfg+YyRotMEEZOS6xPQD6GdVx912D/8uy+FlBf
	59TiSlIYuX+5hV/bezzY0onjlrLtz+Gtl5xQStKl5lMB2Z2FbeiEofiEOURlekn8L+iKfFTvOChU9
	0qKz6YrqUdMM0plzL/1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXT4a-0001yh-EO; Wed, 20 Nov 2019 16:43:20 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXT4L-0001sk-T5
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:43:07 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXT49-0007RI-KJ; Wed, 20 Nov 2019 17:42:53 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [GIT PULL] KVM/arm updates for 5.5
Date: Wed, 20 Nov 2019 16:42:14 +0000
Message-Id: <20191120164236.29359-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com, graf@amazon.com,
 drjones@redhat.com, borntraeger@de.ibm.com, christoffer.dall@arm.com,
 eric.auger@redhat.com, xypron.glpk@gmx.de, julien.grall@arm.com,
 mark.rutland@arm.com, bigeasy@linutronix.de, steven.price@arm.com,
 tglx@linutronix.de, will@kernel.org, yuzenghui@huawei.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_084306_100885_7C3B5A2A 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Grall <julien.grall@arm.com>, Alexander Graf <graf@amazon.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Paolo, Radim,

Here's the bulk of KVM/arm updates for 5.5. On the menu, two new features:
- Stolen time is finally exposed to guests. Yay!
- We can report (and potentially emulate) instructions that KVM cannot
  handle in kernel space to userspace. Yay again!

Apart from that, a fairly mundane bag of perf optimization, cleanup and
bug fixes.

Note that this series is based on a shared branch with the arm64 tree,
avoiding a potential delicate merge.

Please pull,

	M.

The following changes since commit e6ea46511b1ae8c4491904c79411fcd29139af14:

  firmware: arm_sdei: use common SMCCC_CONDUIT_* (2019-10-14 10:55:14 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/kvmarm/kvmarm.git tags/kvmarm-5.5

for you to fetch changes up to cd7056ae34af0e9424da97bbc7d2b38246ba8a2c:

  Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next (2019-11-08 11:27:29 +0000)

----------------------------------------------------------------
KVM/arm updates for Linux 5.5:

- Allow non-ISV data aborts to be reported to userspace
- Allow injection of data aborts from userspace
- Expose stolen time to guests
- GICv4 performance improvements
- vgic ITS emulation fixes
- Simplify FWB handling
- Enable halt pool counters
- Make the emulated timer PREEMPT_RT compliant

----------------------------------------------------------------
Christian Borntraeger (1):
      KVM: arm/arm64: Show halt poll counters in debugfs

Christoffer Dall (4):
      KVM: arm/arm64: Allow reporting non-ISV data aborts to userspace
      KVM: arm/arm64: Allow user injection of external data aborts
      KVM: arm/arm64: Factor out hypercall handling from PSCI code
      KVM: arm64: Don't set HCR_EL2.TVM when S2FWB is supported

Marc Zyngier (6):
      Merge remote-tracking branch 'arm64/for-next/smccc-conduit-cleanup' into kvm-arm64/stolen-time
      Merge remote-tracking branch 'kvmarm/kvm-arm64/stolen-time' into kvmarm-master/next
      KVM: arm64: vgic-v4: Move the GICv4 residency flow to be driven by vcpu_load/put
      KVM: vgic-v4: Track the number of VLPIs per vcpu
      KVM: arm64: Opportunistically turn off WFI trapping when using direct LPI injection
      Merge remote-tracking branch 'kvmarm/misc-5.5' into kvmarm/next

Steven Price (10):
      KVM: arm64: Document PV-time interface
      KVM: arm64: Implement PV_TIME_FEATURES call
      KVM: Implement kvm_put_guest()
      KVM: arm64: Support stolen time reporting via shared structure
      KVM: Allow kvm_device_ops to be const
      KVM: arm64: Provide VCPU attributes for stolen time
      arm/arm64: Provide a wrapper for SMCCC 1.1 calls
      arm/arm64: Make use of the SMCCC 1.1 wrapper
      arm64: Retrieve stolen time as paravirtualized guest
      KVM: arm64: Select TASK_DELAY_ACCT+TASKSTATS rather than SCHEDSTATS

Thomas Gleixner (1):
      KVM: arm/arm64: Let the timer expire in hardirq context on RT

Zenghui Yu (3):
      KVM: arm/arm64: vgic: Remove the declaration of kvm_send_userspace_msi()
      KVM: arm/arm64: vgic: Fix some comments typo
      KVM: arm/arm64: vgic: Don't rely on the wrong pending table

 Documentation/admin-guide/kernel-parameters.txt |   6 +-
 Documentation/virt/kvm/api.txt                  |  55 +++++++++-
 Documentation/virt/kvm/arm/pvtime.rst           |  80 ++++++++++++++
 Documentation/virt/kvm/devices/vcpu.txt         |  14 +++
 arch/arm/include/asm/kvm_arm.h                  |   1 +
 arch/arm/include/asm/kvm_emulate.h              |   9 +-
 arch/arm/include/asm/kvm_host.h                 |  33 ++++++
 arch/arm/include/uapi/asm/kvm.h                 |   3 +-
 arch/arm/kvm/Makefile                           |   2 +-
 arch/arm/kvm/guest.c                            |  14 +++
 arch/arm/kvm/handle_exit.c                      |   2 +-
 arch/arm/mm/proc-v7-bugs.c                      |  13 +--
 arch/arm64/include/asm/kvm_arm.h                |   3 +-
 arch/arm64/include/asm/kvm_emulate.h            |  26 ++++-
 arch/arm64/include/asm/kvm_host.h               |  37 +++++++
 arch/arm64/include/asm/paravirt.h               |   9 +-
 arch/arm64/include/asm/pvclock-abi.h            |  17 +++
 arch/arm64/include/uapi/asm/kvm.h               |   5 +-
 arch/arm64/kernel/cpu_errata.c                  |  81 +++++---------
 arch/arm64/kernel/paravirt.c                    | 140 ++++++++++++++++++++++++
 arch/arm64/kernel/time.c                        |   3 +
 arch/arm64/kvm/Kconfig                          |   4 +
 arch/arm64/kvm/Makefile                         |   2 +
 arch/arm64/kvm/guest.c                          |  23 ++++
 arch/arm64/kvm/handle_exit.c                    |   4 +-
 arch/arm64/kvm/inject_fault.c                   |   4 +-
 drivers/irqchip/irq-gic-v4.c                    |   7 +-
 include/Kbuild                                  |   2 +
 include/kvm/arm_hypercalls.h                    |  43 ++++++++
 include/kvm/arm_psci.h                          |   2 +-
 include/kvm/arm_vgic.h                          |   8 +-
 include/linux/arm-smccc.h                       |  59 ++++++++++
 include/linux/cpuhotplug.h                      |   1 +
 include/linux/irqchip/arm-gic-v4.h              |   4 +
 include/linux/kvm_host.h                        |  26 ++++-
 include/linux/kvm_types.h                       |   2 +
 include/uapi/linux/kvm.h                        |  10 ++
 virt/kvm/arm/arch_timer.c                       |   8 +-
 virt/kvm/arm/arm.c                              |  49 ++++++++-
 virt/kvm/arm/hypercalls.c                       |  71 ++++++++++++
 virt/kvm/arm/mmio.c                             |   9 +-
 virt/kvm/arm/psci.c                             |  84 +-------------
 virt/kvm/arm/pvtime.c                           | 131 ++++++++++++++++++++++
 virt/kvm/arm/vgic/vgic-init.c                   |   1 +
 virt/kvm/arm/vgic/vgic-its.c                    |   3 +
 virt/kvm/arm/vgic/vgic-v3.c                     |  12 +-
 virt/kvm/arm/vgic/vgic-v4.c                     |  59 +++++-----
 virt/kvm/arm/vgic/vgic.c                        |   4 -
 virt/kvm/arm/vgic/vgic.h                        |   2 -
 virt/kvm/kvm_main.c                             |   6 +-
 50 files changed, 968 insertions(+), 225 deletions(-)
 create mode 100644 Documentation/virt/kvm/arm/pvtime.rst
 create mode 100644 arch/arm64/include/asm/pvclock-abi.h
 create mode 100644 include/kvm/arm_hypercalls.h
 create mode 100644 virt/kvm/arm/hypercalls.c
 create mode 100644 virt/kvm/arm/pvtime.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
