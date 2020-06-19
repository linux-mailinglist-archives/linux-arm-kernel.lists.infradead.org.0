Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9404C200510
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 11:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fll6HrhHpL7k8Cr5hEP4RFzCSOhCPrieIku5hgq27Hs=; b=rvM
	pbPKnTsR9xZtaiyr3ULRaVu1ldGY1iluD5Cushod1pV7Aidh909J8goFmLjm81VH/0/gviOYnL+BE
	3dnMA3I3oAftBW2rk6AZ6h1rr9+X2iFDcukUEydNmw62N4qZuC6b6X+J4A6H2tH4eZ1att9RI0x89
	q4FPdd/vtPKV1qmwjGTtuukAnJS2jH78icglww2s/wnePAfGxSMJda5VIxAabrob99nA9rr/0ZtZ5
	4uk7/EvkI5JZzVCzyj/hi3C5Szt/Pc1EpGpmX7rfZloChrIEzW7MHMbMkT0Eg3nghJhjptUhCglbB
	xDUHMtjI91eUYnioYUAqxgrOIBBkX2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDMV-0002tD-N7; Fri, 19 Jun 2020 09:31:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDML-0002s5-4N
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 09:30:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5DD12B;
 Fri, 19 Jun 2020 02:30:48 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 883613F71F;
 Fri, 19 Jun 2020 02:30:42 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: netdev@vger.kernel.org, yangbo.lu@nxp.com, john.stultz@linaro.org,
 tglx@linutronix.de, pbonzini@redhat.com, sean.j.christopherson@intel.com,
 maz@kernel.org, richardcochran@gmail.com, Mark.Rutland@arm.com,
 will@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com
Subject: [RFC PATCH v13 0/9] Enable ptp_kvm for arm64
Date: Fri, 19 Jun 2020 17:30:24 +0800
Message-Id: <20200619093033.58344-1-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_023053_262826_097AD3F3 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: justin.he@arm.com, Wei.Chen@arm.com, kvm@vger.kernel.org,
 Steve.Capper@arm.com, jianyong.wu@arm.com, linux-kernel@vger.kernel.org,
 Kaly.Xin@arm.com, nd@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, we offen use ntp (sync time with remote network clock)
to sync time in VM. But the precision of ntp is subject to network delay
so it's difficult to sync time in a high precision.

kvm virtual ptp clock (ptp_kvm) offers another way to sync time in VM,
as the remote clock locates in the host instead of remote network clock.
It targets to sync time between guest and host in virtualization
environment and in this way, we can keep the time of all the VMs running
in the same host in sync. In general, the delay of communication between
host and guest is quiet small, so ptp_kvm can offer time sync precision
up to in order of nanosecond. Please keep in mind that ptp_kvm just
limits itself to be a channel which transmit the remote clock from
host to guest and leaves the time sync jobs to an application, eg. chrony,
in usersapce in VM.

How ptp_kvm works:
After ptp_kvm initialized, there will be a new device node under
/dev called ptp%d. A guest userspace service, like chrony, can use this
device to get host walltime, sometimes also counter cycle, which depends
on the service it calls. Then this guest userspace service can use those
data to do the time sync for guest.
here is a rough sketch to show how kvm ptp clock works.

|----------------------------|              |--------------------------|
|       guest userspace      |              |          host            |
|ioctl -> /dev/ptp%d         |              |                          |
|       ^   |                |              |                          |
|----------------------------|              |                          |
|       |   | guest kernel   |              |                          |
|       |   V      (get host walltime/counter cycle)                   |
|      ptp_kvm -> hypercall - - - - - - - - - - ->hypercall service    |
|                         <- - - - - - - - - - - -                     |
|----------------------------|              |--------------------------|

1. time sync service in guest userspace call ptp device through /dev/ptp%d.
2. ptp_kvm module in guest recive this request then invoke hypercall to
route into host kernel to request host walltime/counter cycle.
3. ptp_kvm hypercall service in host response to the request and send data
back.
4. ptp (not ptp_kvm) in guest copy the data to userspace.

This ptp_kvm implementation focuses itself to step 2 and 3 and step 2 works
in guest comparing step 3 works in host kernel.

change log:
from v12 to v13:
        (1) rebase code on 5.8-rc1.
        (2) this patch set base on 2 patches of 1/8 and 2/8 from Will Decon.
        (3) remove the change to ptp device code of extend getcrosststamp.
        (4) remove the mechanism of letting user choose the counter type in
ptp_kvm for arm64.
        (5) add virtual counter option in ptp_kvm service to let user choose
the specific counter explicitly.

from v11 to v12:
        (1) rebase code on 5.7-rc6 and rebase 2 patches from Will Decon
including 1/11 and 2/11. as these patches introduce discover mechanism of
vendor smccc service.
        (2) rebase ptp_kvm hypercall service from standard smccc to vendor
smccc and add ptp_kvm to vendor smccc service discover mechanism.
        (3) add detail of why we need ptp_kvm and how ptp_kvm works in cover
letter.

from v10 to v11:
        (1) rebase code on 5.7-rc2.
        (2) remove support for arm32, as kvm support for arm32 will be
removed [1]
        (3) add error report in ptp_kvm initialization.

from v9 to v10:
        (1) change code base to v5.5.
        (2) enable ptp_kvm both for arm32 and arm64.
        (3) let user choose which of virtual counter or physical counter
should return when using crosstimestamp mode of ptp_kvm for arm/arm64.
        (4) extend input argument for getcrosstimestamp API.

from v8 to v9:
        (1) move ptp_kvm.h to driver/ptp/
        (2) replace license declaration of ptp_kvm.h the same with other
header files in the same directory.

from v7 to v8:
        (1) separate adding clocksource id for arm_arch_counter as a
single patch.
        (2) update commit message for patch 4/8.
        (3) refine patch 7/8 and patch 8/8 to make them more independent.

from v6 to v7:
        (1) include the omitted clocksource_id.h in last version.
        (2) reorder the header file in patch.
        (3) refine some words in commit message to make it more impersonal.

from v5 to v6:
        (1) apply Mark's patch[4] to get SMCCC conduit.
        (2) add mechanism to recognize current clocksource by add
clocksouce_id value into struct clocksource instead of method in patch-v5.
        (3) rename kvm_arch_ptp_get_clock_fn into
kvm_arch_ptp_get_crosststamp.

from v3 to v4:
        (1) fix clocksource of ptp_kvm to arch_sys_counter.
        (2) move kvm_arch_ptp_get_clock_fn into arm_arch_timer.c
        (3) subtract cntvoff before return cycles from host.
        (4) use ktime_get_snapshot instead of getnstimeofday and
get_current_counterval to return time and counter value.
        (5) split ktime and counter into two 32-bit block respectively
to avoid Y2038-safe issue.
        (6) set time compensation to device time as half of the delay of
hvc call.
        (7) add ARM_ARCH_TIMER as dependency of ptp_kvm for
arm64.

from v2 to v3:
        (1) fix some issues in commit log.
        (2) add some receivers in send list.

from v1 to v2:
        (1) move arch-specific code from arch/ to driver/ptp/
        (2) offer mechanism to inform userspace if ptp_kvm service is
available.
        (3) separate ptp_kvm code for arm64 into hypervisor part and
guest part.
        (4) add API to expose monotonic clock and counter value.
        (5) refine code: remove no necessary part and reconsitution.

[1] https://patchwork.kernel.org/cover/11373351/

Jianyong Wu (7):
  arm/arm64: KVM: Advertise KVM UID to guests via SMCCC
  smccc: export smccc conduit get helper.
  ptp: Reorganize ptp_kvm modules to make it arch-independent.
  clocksource: Add clocksource id for arm arch counter
  arm64/kvm: Add hypercall service for kvm ptp.
  ptp: arm64: Enable ptp_kvm for arm64
  arm64: Add kvm capability check extension for ptp_kvm

Thomas Gleixner (1):
  time: Add mechanism to recognize clocksource in time_get_snapshot

Will Deacon (1):
  arm64: Probe for the presence of KVM hypervisor services during boot

 arch/arm64/include/asm/hypervisor.h         | 11 +++
 arch/arm64/kernel/setup.c                   | 36 +++++++++
 arch/arm64/kvm/arm.c                        |  4 +
 arch/arm64/kvm/hypercalls.c                 | 79 +++++++++++++++---
 drivers/clocksource/arm_arch_timer.c        | 26 ++++++
 drivers/firmware/smccc/smccc.c              |  1 +
 drivers/ptp/Kconfig                         |  2 +-
 drivers/ptp/Makefile                        |  1 +
 drivers/ptp/ptp_kvm.h                       | 11 +++
 drivers/ptp/ptp_kvm_arm64.c                 | 53 ++++++++++++
 drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} | 80 +++++-------------
 drivers/ptp/ptp_kvm_x86.c                   | 89 +++++++++++++++++++++
 include/linux/arm-smccc.h                   | 56 +++++++++++++
 include/linux/clocksource.h                 |  6 ++
 include/linux/clocksource_ids.h             | 12 +++
 include/linux/timekeeping.h                 | 12 +--
 include/uapi/linux/kvm.h                    |  1 +
 kernel/time/clocksource.c                   |  3 +
 kernel/time/timekeeping.c                   |  1 +
 virt/kvm/Kconfig                            |  4 +
 20 files changed, 413 insertions(+), 75 deletions(-)
 create mode 100644 drivers/ptp/ptp_kvm.h
 create mode 100644 drivers/ptp/ptp_kvm_arm64.c
 rename drivers/ptp/{ptp_kvm.c => ptp_kvm_common.c} (63%)
 create mode 100644 drivers/ptp/ptp_kvm_x86.c
 create mode 100644 include/linux/clocksource_ids.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
