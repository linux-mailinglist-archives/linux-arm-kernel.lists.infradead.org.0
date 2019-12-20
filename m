Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D7F127CC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:31:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pEirKfGzVBWqYOK+ithAzNRfP9daU3m/rfe/7+RDY9U=; b=mwndCKZtza8tTB
	Qq4SLCZ/95uopVaiilEBH0whu1Hh37+ZAcHdG9BEaeKxge7oZowywy1TeRi/b+RkpiU//DnTntwLn
	Z8vzK5Ri1bB2rK3GrJ6fw5qKcd953c5BLPprj0O2F9urNuif+tJux8lkPIPAWI/9yBg3dJOb149gx
	7LgRbUDyx9DTJrWrNPRREpJI9WGeOBOl5byLrrjMNoMdOM2ulPRuWRtf1C7P0nYa9wSQ6CJ6RUxC/
	YaKHCF+DoqoGmEPl4tgw5QmrPgdKrN0W3QbIxSlOSLRo+ho+xqDLJuS6MyBpfbEqvuDlO0s0sMwV/
	nNFnHZufb47Cx1TQZK1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJJJ-0002E3-HX; Fri, 20 Dec 2019 14:31:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJIb-0001pj-Av
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:30:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 648A130E;
 Fri, 20 Dec 2019 06:30:32 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8ABF43F718;
 Fri, 20 Dec 2019 06:30:30 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH v2 00/18] arm64: KVM: add SPE profiling support
Date: Fri, 20 Dec 2019 14:30:07 +0000
Message-Id: <20191220143025.33853-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_063037_479685_1574EAE3 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series implements support for allowing KVM guests to use the Arm
Statistical Profiling Extension (SPE).

It has been tested on a model to ensure that both host and guest can
simultaneously use SPE with valid data. E.g.

$ perf record -e arm_spe/ts_enable=1,pa_enable=1,pct_enable=1/ \
        dd if=/dev/zero of=/dev/null count=1000
$ perf report --dump-raw-trace > spe_buf.txt

As we save and restore the SPE context, the guest can access the SPE
registers directly, thus in this version of the series we remove the
trapping and emulation.

In the previous series of this support, when KVM SPE isn't supported
(e.g. via CONFIG_KVM_ARM_SPE) we were able to return a value of 0 to
all reads of the SPE registers - as we can no longer do this there isn't
a mechanism to prevent the guest from using SPE - thus I'm keen for
feedback on the best way of resolving this.

It appears necessary to pin the entire guest memory in order to provide
guest SPE access - otherwise it is possible for the guest to receive
Stage-2 faults.

The last two extra patches are for the kvmtool if someone wants to play
with it.

Changes since v2:
	- Rebased on v5.5-rc2
	- Renamed kvm_spe structure 'irq' member to 'irq_num'
	- Added irq_level to kvm_spe structure
	- Clear PMBSR service bit on save to avoid spurious interrupts
	- Update kvmtool headers to 5.4
	- Enabled SPE in KVM init features
	- No longer trap and emulate
	- Add support for guest/host exclusion flags
	- Fix virq support for SPE
	- Adjusted sysreg_elx_s macros with merged clang build support

Andrew Murray (4):
  KVM: arm64: don't trap Statistical Profiling controls to EL2
  perf: arm_spe: Add KVM structure for obtaining IRQ info
  KVM: arm64: spe: Provide guest virtual interrupts for SPE
  perf: arm_spe: Handle guest/host exclusion flags

Sudeep Holla (12):
  dt-bindings: ARM SPE: highlight the need for PPI partitions on
    heterogeneous systems
  arm64: KVM: reset E2PB correctly in MDCR_EL2 when exiting the
    guest(VHE)
  arm64: KVM: define SPE data structure for each vcpu
  arm64: KVM: add SPE system registers to sys_reg_descs
  arm64: KVM/VHE: enable the use PMSCR_EL12 on VHE systems
  arm64: KVM: split debug save restore across vm/traps activation
  arm64: KVM/debug: drop pmscr_el1 and use sys_regs[PMSCR_EL1] in
    kvm_cpu_context
  arm64: KVM: add support to save/restore SPE profiling buffer controls
  arm64: KVM: enable conditional save/restore full SPE profiling buffer
    controls
  arm64: KVM/debug: use EL1&0 stage 1 translation regime
  KVM: arm64: add a new vcpu device control group for SPEv1
  KVM: arm64: enable SPE support
  KVMTOOL: update_headers: Sync kvm UAPI headers with linux v5.5-rc2
  KVMTOOL: kvm: add a vcpu feature for SPEv1 support

 .../devicetree/bindings/arm/spe-pmu.txt       |   5 +-
 Documentation/virt/kvm/devices/vcpu.txt       |  28 +++
 arch/arm64/include/asm/kvm_host.h             |  18 +-
 arch/arm64/include/asm/kvm_hyp.h              |   6 +-
 arch/arm64/include/asm/sysreg.h               |   1 +
 arch/arm64/include/uapi/asm/kvm.h             |   4 +
 arch/arm64/kvm/Kconfig                        |   7 +
 arch/arm64/kvm/Makefile                       |   1 +
 arch/arm64/kvm/debug.c                        |   2 -
 arch/arm64/kvm/guest.c                        |   6 +
 arch/arm64/kvm/hyp/debug-sr.c                 | 105 +++++---
 arch/arm64/kvm/hyp/switch.c                   |  18 +-
 arch/arm64/kvm/reset.c                        |   3 +
 arch/arm64/kvm/sys_regs.c                     |  11 +
 drivers/perf/arm_spe_pmu.c                    |  26 ++
 include/kvm/arm_spe.h                         |  82 ++++++
 include/uapi/linux/kvm.h                      |   1 +
 virt/kvm/arm/arm.c                            |  10 +-
 virt/kvm/arm/spe.c                            | 234 ++++++++++++++++++
 19 files changed, 521 insertions(+), 47 deletions(-)
 create mode 100644 include/kvm/arm_spe.h
 create mode 100644 virt/kvm/arm/spe.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
