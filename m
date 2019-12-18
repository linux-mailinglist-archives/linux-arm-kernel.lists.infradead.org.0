Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F42012508F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 19:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zfZehpca+sj3BnSsDM/STKqDiXofUbbrFqlL16rBhVs=; b=Ds0
	6uWC60EWB+1BY/nkE74FlFctUN+uqJwJsc7erP3sSlQ0z+o5fAEVSgqVZvo5HtIyWVHGGtZeDUCQM
	jvBrDdpS6rqtTVtWDKwR0CX1fun6ABuh7/giyIBrFzCgV7OSuPOetpGhMegz7cYs+cN0x76m2/AIT
	rQqnAwjIUglAWlu09N0p/IOiaiFHE93PySjfsh6cg/YpB+JTnkkl0WaUnHNL89Q8K2b1IIRAiCHPs
	/P9QPRKXcsvzf2I/r1qYD6TOPNa4090eWTJtTlGveel6reAELkGFgct5iEjzgcGTE2e6oI3CkxFAU
	Wo38hBJtGvp3YzpWqd+lTE2Go5q4yEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihe1v-0007Or-Mk; Wed, 18 Dec 2019 18:26:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihe1l-0007Nz-86
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 18:26:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F12EE1FB;
 Wed, 18 Dec 2019 10:26:26 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1C9F53F67D;
 Wed, 18 Dec 2019 10:26:25 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 dietmar.eggemann@arm.com, ionela.voinescu@arm.com
Subject: [PATCH v2 0/6] arm64: ARMv8.4 Activity Monitors support
Date: Wed, 18 Dec 2019 18:26:01 +0000
Message-Id: <20191218182607.21607-1-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_102629_378779_F10260E8 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches introduce support for the Activity Monitors Unit (AMU)
CPU extension, an optional extension in ARMv8.4 CPUs. This provides
performance counters intended for system management use. Two of these
counters are then used to compute the frequency scale correction
factor needed to achieve frequency invariance.

With the CONFIG_ARM64_AMU_EXTN enabled the kernel is able to safely
run a mix of CPUs with and without support for the AMU extension.
The AMU capability is unconditionally enabled in the kernel as to
allow any late CPU to use the feature: the cpu_enable function will
be called for all CPUs that match the criteria, including secondary
and hotplugged CPUs, marking this feature as present on that
respective CPU (through a per-cpu variable).

To be noted that firmware must implement AMU support when running on
CPUs that present the activity monitors extension: allow access to
the registers from lower exception levels, enable the counters,
implement save and restore functionality. More details can be found
in the documentation.

Given that the activity counters inform on activity on the CPUs, and 
that not all CPUs might implement the extension, for functional and 
security reasons, it's best to disable access to the AMU registers
from userspace (EL0) and KVM guests.

In the last patch of the series, two of the AMU counters are used to
compute the frequency scale factor needed to achieve frequency
invariance of signals in the scheduler, based on an interface added
to support counter-based frequency invariance - arch_scale_freq_tick.
The interface and update point for the counter-based frequency scale
factor is based on the similar approach in the patch that introduces
frequency invariance for x86 [1]. 

The current series is based on linux-next 20191217.

Testing:
 - Build tested for multiple architectures and defconfigs.
 - AMU feature detection, EL0 and KVM guest access to AMU registers,
   feature support in firmware (version 1.5 and later of the ARM 
   Trusted Firmware) was tested on an Armv8-A Base Platform FVP:
   Architecture Envelope Model [2] (supports version 8.0 to 8.5),
   with the following configurations:

   cluster0.has_arm_v8-4=1
   cluster1.has_arm_v8-4=1
   cluster0.has_amu=1
   cluster1.has_amu=1

v1 -> v2:
 - v1 can be found at [3]
 - Added patches that use the counters for the scheduler's frequency
   invariance engine
 - In patch arm64: add support for the AMU extension v1 - 
    - Defined an accessor function cpu_has_amu_feat to allow a read
      of amu_feat only from the current CPU, to ensure the safe use
      of the per-cpu variable for the current user (arm64 topology
      driver) and future users.
    - Modified type of amu_feat from bool to u8 to satisfy sparse
      checker's warning 'expression using sizeof _Bool [sparse]',
      as the size of bool is compiler dependent.

[1] https://lore.kernel.org/lkml/20191113124654.18122-1-ggherdovich@suse.cz/
[2] https://developer.arm.com/tools-and-software/simulation-models/fixed-virtual-platforms
[3] https://lore.kernel.org/lkml/20190917134228.5369-1-ionela.voinescu@arm.com/

Ionela Voinescu (6):
  arm64: add support for the AMU extension v1
  arm64: trap to EL1 accesses to AMU counters from EL0
  arm64/kvm: disable access to AMU registers from kvm guests
  Documentation: arm64: document support for the AMU extension
  TEMP: sched: add interface for counter-based frequency invariance
  arm64: use activity monitors for frequency invariance

 Documentation/arm64/amu.rst                   | 107 ++++++++
 Documentation/arm64/booting.rst               |  14 ++
 Documentation/arm64/cpu-feature-registers.rst |   2 +
 Documentation/arm64/index.rst                 |   1 +
 arch/arm64/Kconfig                            |  27 ++
 arch/arm64/include/asm/assembler.h            |  10 +
 arch/arm64/include/asm/cpucaps.h              |   3 +-
 arch/arm64/include/asm/cpufeature.h           |   4 +
 arch/arm64/include/asm/kvm_arm.h              |   7 +-
 arch/arm64/include/asm/sysreg.h               |  44 ++++
 arch/arm64/include/asm/topology.h             |   9 +
 arch/arm64/kernel/cpufeature.c                |  81 +++++-
 arch/arm64/kernel/topology.c                  | 233 ++++++++++++++++++
 arch/arm64/kvm/hyp/switch.c                   |  13 +-
 arch/arm64/kvm/sys_regs.c                     |  95 ++++++-
 arch/arm64/mm/proc.S                          |   3 +
 drivers/base/arch_topology.c                  |  16 ++
 kernel/sched/core.c                           |   1 +
 kernel/sched/sched.h                          |   7 +
 19 files changed, 666 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/arm64/amu.rst

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
