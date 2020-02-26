Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEE316FFF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 14:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ifEO783zImSG+zAvosSZGepCX6W1KksmZ2nHeFzY+Y4=; b=IKN
	RdIbc7D8D+A6oJVQF0capljd98BKQnroCjhzXt1an2uOF4tJse9ZUYzErG9vEKyZaSKXu1uKLsjsD
	moZXZFq94QmlQOspiMN6+/eXpWCSWc4K8vhVUOoBM+Asyu59d7OIFvfy3Fa1wlVpwbYZsYiEvHEvk
	pe0IBqUIYSzplMtsyew6EtgeZKOgAHDuzF7Ekgo6bMSk/6Y5WK5o5Ek0drNEnGez1pTHuDVwBzT97
	vnKGTo+vW7Ij64gocXnJeFZuiXIGH7YbwhTKgBciUAw3ImskgjV9RZafRnoqLXNaIR+M7EYQH+V1c
	JhnT3dt8HU9UJ3ka9jS0WSjks4AFqVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6wlm-0003ui-5D; Wed, 26 Feb 2020 13:30:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6wlc-0003ti-6G
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 13:30:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AEB830E;
 Wed, 26 Feb 2020 05:30:22 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B2C6C3FA00;
 Wed, 26 Feb 2020 05:30:19 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, dietmar.eggemann@arm.com,
 rjw@rjwysocki.net, pkondeti@codeaurora.org, ionela.voinescu@arm.com
Subject: [PATCH v5 0/7] arm64: ARMv8.4 Activity Monitors support
Date: Wed, 26 Feb 2020 13:29:40 +0000
Message-Id: <20200226132947.29738-1-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_053024_323056_E66C5B96 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
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

With the CONFIG_ARM64_AMU_EXTN and amu kernel parameter enabled the
kernel is able to safely run a mix of CPUs with and without support
for the AMU extension. The AMU capability is unconditionally enabled
in the kernel as to allow any late CPU to use the feature: the
cpu_enable function will be called for all CPUs that match the
criteria, including secondary and hotplugged CPUs, marking this
feature as present on that respective CPU.

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

The current series is based on tip/sched/core.

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

v4 -> v5:
 - v4 can be found at [6]
 - [1/7] rebased on top of latest tip/sched/core and fixed conflicts;
   applied Reviewed-by from Valentin;
 - [5/7] applied Reviewed-by from Valentin
 - [6/7] applied Valentin and Pavan's suggested fixes; reworked
   arch_cpu_freq_counters (now arch_freq_counters_available) and
   confined it to the arch topology driver as recommended by Valentin
   and Lukasz;

v3 -> v4:
 - v3 can be found at [5]
 - [1/7] renamed and changed format for disable_amu - now amu=<val> as
   Suzuki and Vladimir recommended; removed dynamic allocation for
   amu_cpus as Suzuki recommended;
 - [2-4/7] collected Reviewed-by
 - [5/7] modified changelog and collected Acked-by
 - [6/7] removed cpu_get_max_freq as Lukasz recommended; improved debug
   messages, warnings, and comments, added use of static key, replaced
   validation for possible cpus with filterning of present CPUs - as per
   Valentin's comments.
 - [7/7] modified changelog to avoid confusion related to impact on
   activity monitors use and collected Acked-by

v2 -> v3:
 - v2 can be found at [4]
 - [1/7] used cpumask instead of per-cpu variable to flag AMU presence
   as; introduced disable_amu kernel parameter; removed ftr_id_pfr0 AMU
   bits - recommended by Suzuki.
 - [2/7] replaced obscure label as recommended by Valentin.
 - [3/7] clarified activate_traps_vhe comment
 - [4/7] dropped changes in arm64/cpu-feature-registers.txt; removed
   use of variable names - recommended by Suzuki
 - previous [5/6] - dropped as [1] as added to tip/sched/core
 - [5/7] new patch introduced to cleanly obtain maximum hardware
   frequency from cpufreq
 - [6/7] (previously [6/6]):
   - Removed use of workqueues by limiting the validation work done on
     each cpu to the setting of the reference per-cpu counter variables.
     This is now called directly from cpu_enable (cpufeature.c). Also,
     further CPU, policy and system validation is done in a
     late_initcall_sync function - waits for deferred probe work to
     finish as well to ensure the maximum frequency is set by either
     cpufreq drivers or platform drivers - recommended by Lukasz.
   - Improved AMU use detection for CPUs in arch_set_freq_scale -
     recommended by Lukasz.
   - Properly validated arch_max_freq_scale and added detailed
     documentation for how arch_max_freq_scale and freq_scale are
     obtained based on counters - recommended by Valentin.
   - Overall - limited tight coupling between AMU use and cpufreq
     (use of maximum frequency information and policy validation).
 - [7/7] introduced patch to warn if arch_timer_rate is too low
   - functionality provided by Valentin.

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

[1] https://lore.kernel.org/lkml/20200122151617.531-1-ggherdovich@suse.cz/
[2] https://developer.arm.com/tools-and-software/simulation-models/fixed-virtual-platforms
[3] https://lore.kernel.org/lkml/20190917134228.5369-1-ionela.voinescu@arm.com/
[4] https://lore.kernel.org/lkml/20191218182607.21607-1-ionela.voinescu@arm.com/
[5] https://lore.kernel.org/lkml/20200211184542.29585-1-ionela.voinescu@arm.com/
[6] https://lore.kernel.org/lkml/20200224141142.25445-1-ionela.voinescu@arm.com/

Ionela Voinescu (7):
  arm64: add support for the AMU extension v1
  arm64: trap to EL1 accesses to AMU counters from EL0
  arm64/kvm: disable access to AMU registers from kvm guests
  Documentation: arm64: document support for the AMU extension
  cpufreq: add function to get the hardware max frequency
  arm64: use activity monitors for frequency invariance
  clocksource/drivers/arm_arch_timer: validate arch_timer_rate

 .../admin-guide/kernel-parameters.txt         |   9 +
 Documentation/arm64/amu.rst                   | 114 +++++++++++
 Documentation/arm64/booting.rst               |  14 ++
 Documentation/arm64/index.rst                 |   1 +
 arch/arm64/Kconfig                            |  30 +++
 arch/arm64/include/asm/assembler.h            |  10 +
 arch/arm64/include/asm/cpucaps.h              |   3 +-
 arch/arm64/include/asm/cpufeature.h           |   5 +
 arch/arm64/include/asm/kvm_arm.h              |   1 +
 arch/arm64/include/asm/sysreg.h               |  38 ++++
 arch/arm64/include/asm/topology.h             |   9 +
 arch/arm64/kernel/cpufeature.c                |  95 +++++++++
 arch/arm64/kernel/topology.c                  | 180 ++++++++++++++++++
 arch/arm64/kvm/hyp/switch.c                   |  14 +-
 arch/arm64/kvm/sys_regs.c                     |  93 ++++++++-
 arch/arm64/mm/proc.S                          |   3 +
 drivers/base/arch_topology.c                  |  12 ++
 drivers/clocksource/arm_arch_timer.c          |  18 +-
 drivers/cpufreq/cpufreq.c                     |  20 ++
 include/linux/arch_topology.h                 |   2 +
 include/linux/cpufreq.h                       |   5 +
 21 files changed, 669 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/arm64/amu.rst


base-commit: a0f03b617c3b2644d3d47bf7d9e60aed01bd5b10
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
