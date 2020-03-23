Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FFC18F641
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 14:51:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cdgxiZc/eiWXcLJxuXLrNUfD73ZJPtFCUpoFl9A2tkE=; b=XAJ
	CS5TdHW4Knue3BAqdrjP3u7vNoh6qySWBX8SsvxRq7q+wEum2+sBFIg1Q+spSPCoIVRHdDhxCp8ex
	bEHLxOoR0EECkpaHRcfYr+lj08Ne+dE+I2t15E4mWVpCm15hw9OZdOviihlYa1GYomje/mrh4XfUl
	z2PnKhdwS6xETlGWFUKpPykiDDCPK/CzIW5ckMWxbCtJp5TnzcTKTe/WyyaMKuRDaKEB5oL7V3qnB
	thDkvExZtSqFX5uoijcr+DOM0qJrPjd+QjZMJ0Gp/r1DCerTbLssXzpFWf4FnHqqromezVh8Vn43N
	0Vz0JWeZrevv4F/J7q9ypnSOypizTYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGNUS-00026S-Jf; Mon, 23 Mar 2020 13:51:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGNU8-00022X-CO
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 13:51:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2962E1FB;
 Mon, 23 Mar 2020 06:51:17 -0700 (PDT)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82C293F52E;
 Mon, 23 Mar 2020 06:51:14 -0700 (PDT)
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v4 00/17] Convert cpu_up/down to device_online/offline
Date: Mon, 23 Mar 2020 13:50:53 +0000
Message-Id: <20200323135110.30522-1-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_065120_512485_5893F9AE 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Juergen Gross <jgross@suse.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Tony Luck <tony.luck@intel.com>, linux-ia64@vger.kernel.org,
 linux-parisc@vger.kernel.org, "Paul E. McKenney" <paulmck@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Ellerman <mpe@ellerman.id.au>, sparclinux@vger.kernel.org,
 xen-devel@lists.xenproject.org, Mark Rutland <mark.rutland@arm.com>,
 linuxppc-dev@lists.ozlabs.org, Qais Yousef <qais.yousef@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

=============
Changes in v4
=============

	* Split arm and arm64 patches so that the change to use reboot_cpu goes
	  into its own separate patch (Russell)
	* Collected new Acked-by
	* Rebased on top of v5.6-rc6
	* Trimmed the CC list on the cover letter as lists were rejecting it


	git clone git://linux-arm.org/linux-qy.git -b cpu-hp-cleanup-v4


Older post can be found here
----------------------------

	https://lore.kernel.org/lkml/20200223192942.18420-2-qais.yousef@arm.com/


=============
Test Coverage
=============

	All tests ran with LOCKDEP enabled.

Platform: Juno-r2: arm64
------------------------

	* Overnight rcutorture
	* Overnight locktorture
	* kexec -f Image --command="$(cat /proc/cmdline) reboot=s[0-5]"
	* Hibernate to disk (using suspend option)
	* Userspace hotplug via sysfs
	* PSCI firemware checker

Notes:

	* Couldn't convince Juno to hibernate using [reboot] or [shutdown]
	  options.

Platform: qemu (8 vCPUs) and VM (2 vCPUs): x86_64
-------------------------------------------------

	* Overnight rcutorture
	* Overnight locktorture
	* Userspace hotplug via sysfs
	* echo mmiotrace > /sys/kernel/debug/tracing/current_tracer &&
	  echo nop > /sys/kernel/debug/tracing/current_tracer
	* Ran with CONFIG_DEBUG_HOTPLUG_CPU0 and CONFIG_BOOTPARAM_HOTPLUG_CPU0

Notes:

	* qemu failed to bring cpu0 after offlining. Same behavior observed on
	  vanilla v5.6-rc6. Worked fine on the VM.

	* mmiotrace successfully brought down all cpus when enabled,
	  then back online again when disabled. Including when cpu0 was
	  offline.

	* My xen shenanigans are too 'humble' too create environment to test
	  the change in xen yet..


=====================
Original Cover Letter
=====================

Using cpu_up/down directly to bring cpus online/offline loses synchronization
with sysfs and could suffer from a race similar to what is described in
commit a6717c01ddc2 ("powerpc/rtas: use device model APIs and serialization
during LPM").

cpu_up/down seem to be more of a internal implementation detail for the cpu
subsystem to use to boot up cpus, perform suspend/resume and low level hotplug
operations. Users outside of the cpu subsystem would be better using the device
core API to bring a cpu online/offline which is the interface used to hotplug
memory and other system devices.

Several users have already migrated to use the device core API, this series
converts the remaining users and hides cpu_up/down from internal users at the
end.

I noticed this problem while working on a hack to disable offlining
a particular CPU but noticed that setting the offline_disabled attribute in the
device struct isn't enough because users can easily bypass the device core.
While my hack isn't a valid use case but it did highlight the inconsistency in
the way cpus are being onlined/offlined and this attempt hopefully improves on
this.

The first patch introduces new API to {add,remove}_cpu() using device_{online,
offline}() with correct locks held and export it.

The following 10 patches fix arch users.

The remaining 6 patches fix generic code users. Particularly creating a new
special exported API for the device core to use instead of cpu_up/down.

The last patch removes cpu_up/down from cpu.h and unexport the functions.

In some cases where the use of cpu_up/down seemed legitimate, I encapsulated
the logic in a higher level - special purposed function; and converted the code
to use that instead.


CC: Thomas Gleixner <tglx@linutronix.de>
CC: Tony Luck <tony.luck@intel.com>
CC: Fenghua Yu <fenghua.yu@intel.com>
CC: Russell King <linux@armlinux.org.uk>
CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Michael Ellerman <mpe@ellerman.id.au>
CC: "David S. Miller" <davem@davemloft.net>
CC: Helge Deller <deller@gmx.de>
CC: Juergen Gross <jgross@suse.com>
CC: Mark Rutland <mark.rutland@arm.com>
CC: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
CC: "Paul E. McKenney" <paulmck@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: xen-devel@lists.xenproject.org
CC: linux-parisc@vger.kernel.org
CC: sparclinux@vger.kernel.org
CC: linuxppc-dev@lists.ozlabs.org
CC: x86@kernel.org
CC: linux-arm-kernel@lists.infradead.org
CC: linux-ia64@vger.kernel.org
CC: linux-kernel@vger.kernel.org

Qais Yousef (17):
  cpu: Add new {add,remove}_cpu() functions
  smp: Create a new function to shutdown nonboot cpus
  ia64: Replace cpu_down with smp_shutdown_nonboot_cpus()
  arm: Don't use disable_nonboot_cpus()
  arm: Use reboot_cpu instead of hardcoding it to 0
  arm64: Don't use disable_nonboot_cpus()
  arm64: Use reboot_cpu instead of hardconding it to 0
  arm64: hibernate.c: Create a new function to handle cpu_up(sleep_cpu)
  x86: Replace cpu_up/down with add/remove_cpu
  powerpc: Replace cpu_up/down with add/remove_cpu
  sparc: Replace cpu_up/down with add/remove_cpu
  parisc: Replace cpu_up/down with add/remove_cpu
  driver: xen: Replace cpu_up/down with device_online/offline
  firmware: psci: Replace cpu_up/down with add/remove_cpu
  torture: Replace cpu_up/down with add/remove_cpu
  smp: Create a new function to bringup nonboot cpus online
  cpu: Hide cpu_up/down

 arch/arm/kernel/reboot.c             |   4 +-
 arch/arm64/kernel/hibernate.c        |  13 +--
 arch/arm64/kernel/process.c          |   4 +-
 arch/ia64/kernel/process.c           |   8 +-
 arch/parisc/kernel/processor.c       |   2 +-
 arch/powerpc/kexec/core_64.c         |   2 +-
 arch/sparc/kernel/ds.c               |   4 +-
 arch/x86/kernel/topology.c           |  22 ++---
 arch/x86/mm/mmio-mod.c               |   4 +-
 arch/x86/xen/smp.c                   |   2 +-
 drivers/base/cpu.c                   |   4 +-
 drivers/firmware/psci/psci_checker.c |   4 +-
 drivers/xen/cpu_hotplug.c            |   2 +-
 include/linux/cpu.h                  |  10 +-
 kernel/cpu.c                         | 134 ++++++++++++++++++++++++++-
 kernel/smp.c                         |   9 +-
 kernel/torture.c                     |   9 +-
 17 files changed, 172 insertions(+), 65 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
