Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBB61699BB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 20:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=80T1CupzbeXCAOCoCJAn0GRSik9efg7IbZgFo28fDrQ=; b=ZvDhEUDjyFUWgiVkB4PwtsfeVG
	FTnu5FFfOA7WMx1vFN6gyercHQ8sDfv/AQkln4jr9mI9Puy6sJvLxCs4ognzdVN3P0vtkRUoqxjL3
	HCPKpTy78waCqefkYZMKfm+9lyRh68RoyLNJjUHZElGtfLswC0hWt/1LFBfRZVuFWcf2IRKDDeP8E
	Hmu/LQZ7c1meUjJAR3aspf926uAfjwLc1CIAnqIOHifREcJfdlkKYI9glMl12FNePVCytnldavMG8
	V3XdXEk1hypEYRAwojjQi7ZkcKiooA19ZsmnGUKQARpI27fM3r8GZ0C2eHAwptU0p1dpftgGnsiHg
	OCdE/lgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5wxX-0002fw-BI; Sun, 23 Feb 2020 19:30:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5www-0001Eu-Gh
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 19:30:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 19161106F;
 Sun, 23 Feb 2020 11:29:57 -0800 (PST)
Received: from e107158-lin.cambridge.arm.com (e107158-lin.cambridge.arm.com
 [10.1.195.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 739D33F6CF;
 Sun, 23 Feb 2020 11:29:54 -0800 (PST)
From: Qais Yousef <qais.yousef@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH v3 02/15] smp: Create a new function to shutdown nonboot cpus
Date: Sun, 23 Feb 2020 19:29:29 +0000
Message-Id: <20200223192942.18420-3-qais.yousef@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200223192942.18420-1-qais.yousef@arm.com>
References: <20200223192942.18420-1-qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_112958_643074_4DFFB5B7 
X-CRM114-Status: GOOD (  16.42  )
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
Cc: Tony Luck <tony.luck@intel.com>, Fenghua Yu <fenghua.yu@intel.com>,
 linux-ia64@vger.kernel.org, "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Paul E . McKenney" <paulmck@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Jiri Kosina <jkosina@suse.cz>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Zhenzhong Duan <zhenzhong.duan@oracle.com>,
 Nicholas Piggin <npiggin@gmail.com>, Ingo Molnar <mingo@kernel.org>,
 Eiichi Tsukata <devel@etsukata.com>, Nadav Amit <namit@vmware.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Russell King <linux@armlinux.org.uk>,
 Will Deacon <will@kernel.org>, Qais Yousef <qais.yousef@arm.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This function will be used later in machine_shutdown() for some archs.

disable_nonboot_cpus() is not safe to use when doing machine_down(),
because it relies on freeze_secondary_cpus() which in turn is
a suspend/resume related freeze and could abort if the logic detects any
pending activities that can prevent finishing the offlining process.

Signed-off-by: Qais Yousef <qais.yousef@arm.com>
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Josh Poimboeuf <jpoimboe@redhat.com>
CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>
CC: Jiri Kosina <jkosina@suse.cz>
CC: Nicholas Piggin <npiggin@gmail.com>
CC: Daniel Lezcano <daniel.lezcano@linaro.org>
CC: Ingo Molnar <mingo@kernel.org>
CC: Eiichi Tsukata <devel@etsukata.com>
CC: Zhenzhong Duan <zhenzhong.duan@oracle.com>
CC: Nadav Amit <namit@vmware.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
CC: Tony Luck <tony.luck@intel.com>
CC: Fenghua Yu <fenghua.yu@intel.com>
CC: Russell King <linux@armlinux.org.uk>
CC: Catalin Marinas <catalin.marinas@arm.com>
CC: Will Deacon <will@kernel.org>
CC: linux-arm-kernel@lists.infradead.org
CC: linux-ia64@vger.kernel.org
CC: linux-kernel@vger.kernel.org
---
 include/linux/cpu.h |  2 ++
 kernel/cpu.c        | 42 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+)

diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index cf8cf38dca43..64a246e9c8db 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -120,6 +120,7 @@ extern void cpu_hotplug_enable(void);
 void clear_tasks_mm_cpumask(int cpu);
 int cpu_down(unsigned int cpu);
 int remove_cpu(unsigned int cpu);
+extern void smp_shutdown_nonboot_cpus(unsigned int primary_cpu);
 
 #else /* CONFIG_HOTPLUG_CPU */
 
@@ -131,6 +132,7 @@ static inline int  cpus_read_trylock(void) { return true; }
 static inline void lockdep_assert_cpus_held(void) { }
 static inline void cpu_hotplug_disable(void) { }
 static inline void cpu_hotplug_enable(void) { }
+static inline void smp_shutdown_nonboot_cpus(unsigned int primary_cpu) { }
 #endif	/* !CONFIG_HOTPLUG_CPU */
 
 /* Wrappers which go away once all code is converted */
diff --git a/kernel/cpu.c b/kernel/cpu.c
index 069802f7010f..03c727195b65 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -1069,6 +1069,48 @@ int remove_cpu(unsigned int cpu)
 }
 EXPORT_SYMBOL_GPL(remove_cpu);
 
+void smp_shutdown_nonboot_cpus(unsigned int primary_cpu)
+{
+	unsigned int cpu;
+	int error;
+
+	cpu_maps_update_begin();
+
+	/*
+	 * Make certain the cpu I'm about to reboot on is online.
+	 *
+	 * This is inline to what migrate_to_reboot_cpu() already do.
+	 */
+	if (!cpu_online(primary_cpu))
+		primary_cpu = cpumask_first(cpu_online_mask);
+
+	for_each_online_cpu(cpu) {
+		if (cpu == primary_cpu)
+			continue;
+
+		error = cpu_down_maps_locked(cpu, CPUHP_OFFLINE);
+		if (error) {
+			pr_err("Failed to offline CPU%d - error=%d",
+				cpu, error);
+			break;
+		}
+	}
+
+	/*
+	 * Ensure all but the reboot CPU are offline.
+	 */
+	BUG_ON(num_online_cpus() > 1);
+
+	/*
+	 * Make sure the CPUs won't be enabled by someone else after this
+	 * point. Kexec will reboot to a new kernel shortly resetting
+	 * everything along the way.
+	 */
+	cpu_hotplug_disabled++;
+
+	cpu_maps_update_done();
+}
+
 #else
 #define takedown_cpu		NULL
 #endif /*CONFIG_HOTPLUG_CPU*/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
