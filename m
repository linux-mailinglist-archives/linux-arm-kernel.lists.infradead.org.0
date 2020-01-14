Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C2B13A7EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 12:07:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gPkpomuv/W1L/oIea1vVhHGihEhxW4/pDaDDNDZBUQ4=; b=IUvUJlc4lKzint
	Zz3bfUIWMFHR3ksGa9v0aS75UJBPDgbTWJuXk2Wkmsj5+lOPiJSKpft1xuytNAUivHZF1h3I3Q5TL
	J3DgseY+6h1C7qUp7y+TiewGWeONkY9BsDRIS8Dz1gp2knp3sPgcEK6kdd97+p9ulbmw8M7nmlirN
	VNPKyftq1TsUfNbqOabsrOyGnvw4PsFD5+9khi2UUhn/Zw/dUYDdKyj7eV3NlKWSD1PukS2m9iz8a
	iHXCeVirkKMpy77HL7iRDt4PWrs4IOEyKRddF3bMprFf0DVXUy695MZLRnUt5F/070EsuAN65IZnG
	NvDOxvE8V7qsPZJZ0nAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irK2j-0006EM-6k; Tue, 14 Jan 2020 11:07:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irK2G-0005z3-FR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 11:07:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id az3so5091546plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 03:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MNgfzm6EXsikNzpTmQHZtOY2ctIAX5sxMvrCd/l5Q4M=;
 b=HbVzm8JgCKz9YrI4BTVXmgJlfRhVHDvDDiEvGPf2r98+LpvqTR+z+vLCPDV+JyE7JS
 g/zKs4EqTNXS9ael8iE00V2LGkIMOshVlgH96BnbrsU6KxOFzIR8GtaRsBZ7rS4NDYW2
 cHucgAshAYyKb3gci3UrnBF+/TLaNgAuJm+W4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MNgfzm6EXsikNzpTmQHZtOY2ctIAX5sxMvrCd/l5Q4M=;
 b=ioEtRZo0l9GVY9hOzpp4kO6XNe7PdJQhIqlqRgDhQA9ums7tqFm6iFzMIdorgwunA+
 BtHpEm2lfz5ns5g1Dqlqo4XOXeFDJBd068OdMPQ3PQ2rjmRVs7wg80MIvfbvgFcTIoXV
 eWKcJI7S9EN21cdXcXD3MI4xB2IYPn9aI/SnZQmKF6wYNslx4VfbJ1Yr0BiXXjr14U+J
 fzal2hPmO4FNiwefncwd3qMzxsHUQlff94l4CUhtrZnUsjS/2eJwsC/NQMZVfhUbATWb
 LbqRwT3/k1x+OyNRH3jno31ZinueOvY77ivoKYuF7l30In5jxYDAcI60hf42gQIPy1mP
 8Pig==
X-Gm-Message-State: APjAAAV1VfKFqBpa08DQaga8vc2cmnJu8hZrKxzMRJZWpayAc+UtWNjL
 SYEUxY4Fia4M6BDb/1pLAvls3A==
X-Google-Smtp-Source: APXvYqwU0OYW5KmVF1d0ELYaNbpAqikNTrE8mJycx7w+5PZ9ihZmF69h1LdaenGQyo4bij6Vw9FrHA==
X-Received: by 2002:a17:90a:ec10:: with SMTP id
 l16mr27711749pjy.19.1579000019066; 
 Tue, 14 Jan 2020 03:06:59 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id g67sm18478107pfb.66.2020.01.14.03.06.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 03:06:58 -0800 (PST)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH RESEND v4] reboot: support offline CPUs before reboot
Date: Tue, 14 Jan 2020 19:06:20 +0800
Message-Id: <20200114110620.164861-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_030700_539245_85D876BB 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 sparclinux@vger.kernel.org, Guenter Roeck <groeck@chromium.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-s390@vger.kernel.org, linux-csky@vger.kernel.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Fenghua Yu <fenghua.yu@intel.com>,
 linux-pm@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Stephen Boyd <swboyd@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Jiri Kosina <jkosina@suse.cz>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently system reboots uses architecture specific codes (smp_send_stop)
to offline non reboot CPUs. Most architecture's implementation is looping
through all non reboot online CPUs and call ipi function to each of them. Some
architecture like arm64, arm, and x86... would set offline masks to cpu without
really offline them. This causes some race condition and kernel warning comes
out sometimes when system reboots.

This patch adds a config ARCH_OFFLINE_CPUS_ON_REBOOT, which would offline cpus in
migrate_to_reboot_cpu(). If non reboot cpus are all offlined here, the loop for
checking online cpus would be an empty loop. If architecture don't enable this
config, or some cpus somehow fails to offline, it would fallback to ipi
function.

Opt in this config for architectures that support CONFIG_HOTPLUG_CPU.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
Resend v4:
* Cc more people and mailing lists. Also fix a few nits from v4.

Change from v3:
* Opt in config for architectures that support CONFIG_HOTPLUG_CPU
* Merge function offline_secondary_cpus() and freeze_secondary_cpus()
  with an additional flag.

Change from v2:
* Add another config instead of configed by CONFIG_HOTPLUG_CPU

Previous related discussion on list:
https://lore.kernel.org/lkml/20190727164450.GA11726@roeck-us.net/
https://lore.kernel.org/patchwork/patch/1117201/
---
 arch/Kconfig                          |  5 +++++
 arch/arm/Kconfig                      |  1 +
 arch/arm64/Kconfig                    |  1 +
 arch/arm64/kernel/hibernate.c         |  2 +-
 arch/csky/Kconfig                     |  1 +
 arch/ia64/Kconfig                     |  1 +
 arch/mips/Kconfig                     |  1 +
 arch/parisc/Kconfig                   |  1 +
 arch/powerpc/Kconfig                  |  1 +
 arch/s390/Kconfig                     |  1 +
 arch/sh/Kconfig                       |  1 +
 arch/sparc/Kconfig                    |  1 +
 arch/x86/Kconfig                      |  1 +
 arch/xtensa/Kconfig                   |  1 +
 drivers/power/reset/sc27xx-poweroff.c |  2 +-
 include/linux/cpu.h                   |  9 ++++++---
 kernel/cpu.c                          | 12 ++++++++----
 kernel/reboot.c                       |  8 ++++++++
 18 files changed, 41 insertions(+), 9 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 48b5e103bdb0..210095ce2d92 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -255,6 +255,11 @@ config ARCH_HAS_UNCACHED_SEGMENT
 	select ARCH_HAS_DMA_PREP_COHERENT
 	bool
 
+# Select to do a full offline on secondary CPUs before reboot.
+config ARCH_OFFLINE_CPUS_ON_REBOOT
+	bool "Support for offline CPUs before reboot"
+	depends on HOTPLUG_CPU
+
 # Select if arch init_task must go in the __init_task_data section
 config ARCH_TASK_STRUCT_ON_STACK
 	bool
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 69950fb5be64..d53cc8cb47e3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -28,6 +28,7 @@ config ARM
 	select ARCH_KEEP_MEMBLOCK if HAVE_ARCH_PFN_VALID || KEXEC
 	select ARCH_MIGHT_HAVE_PC_PARPORT
 	select ARCH_NO_SG_CHAIN if !ARM_HAS_SG_CHAIN
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ARCH_OPTIONAL_KERNEL_RWX if ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_OPTIONAL_KERNEL_RWX_DEFAULT if CPU_V7
 	select ARCH_SUPPORTS_ATOMIC_RMW
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 9af26ac75d19..9f913bc5c1f6 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -61,6 +61,7 @@ config ARM64
 	select ARCH_INLINE_SPIN_UNLOCK_IRQ if !PREEMPTION
 	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
 	select ARCH_KEEP_MEMBLOCK
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ARCH_USE_CMPXCHG_LOCKREF
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 590963c9c609..f7245dfa09d9 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -581,5 +581,5 @@ int hibernate_resume_nonboot_cpu_disable(void)
 		return -ENODEV;
 	}
 
-	return freeze_secondary_cpus(sleep_cpu);
+	return freeze_secondary_cpus(sleep_cpu, false);
 }
diff --git a/arch/csky/Kconfig b/arch/csky/Kconfig
index 4acef4088de7..0f03e5c3f2fc 100644
--- a/arch/csky/Kconfig
+++ b/arch/csky/Kconfig
@@ -5,6 +5,7 @@ config CSKY
 	select ARCH_HAS_DMA_PREP_COHERENT
 	select ARCH_HAS_SYNC_DMA_FOR_CPU
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS if NR_CPUS>2
 	select COMMON_CLK
diff --git a/arch/ia64/Kconfig b/arch/ia64/Kconfig
index bab7cd878464..f12b4b11ee98 100644
--- a/arch/ia64/Kconfig
+++ b/arch/ia64/Kconfig
@@ -10,6 +10,7 @@ config IA64
 	bool
 	select ARCH_MIGHT_HAVE_PC_PARPORT
 	select ARCH_MIGHT_HAVE_PC_SERIO
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ACPI
 	select ACPI_NUMA if NUMA
 	select ARCH_SUPPORTS_ACPI
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index b6b5f83af169..9bb2556d21fc 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -8,6 +8,7 @@ config MIPS
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
 	select ARCH_HAS_FORTIFY_SOURCE
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ARCH_SUPPORTS_UPROBES
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_CMPXCHG_LOCKREF if 64BIT
diff --git a/arch/parisc/Kconfig b/arch/parisc/Kconfig
index 71034b54d74e..41609f00b057 100644
--- a/arch/parisc/Kconfig
+++ b/arch/parisc/Kconfig
@@ -13,6 +13,7 @@ config PARISC
 	select ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
 	select ARCH_NO_SG_CHAIN
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select RTC_CLASS
 	select RTC_DRV_GENERIC
diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 658e0324d256..a6b76dd82a2d 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -142,6 +142,7 @@ config PPC
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_MIGHT_HAVE_PC_PARPORT
 	select ARCH_MIGHT_HAVE_PC_SERIO
+	select ARCH_OFFLINE_CPUS_ON_REBOOT	if HOTPLUG_CPU
 	select ARCH_OPTIONAL_KERNEL_RWX		if ARCH_HAS_STRICT_KERNEL_RWX
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_USE_BUILTIN_BSWAP
diff --git a/arch/s390/Kconfig b/arch/s390/Kconfig
index 287714d51b47..19eec37b1682 100644
--- a/arch/s390/Kconfig
+++ b/arch/s390/Kconfig
@@ -102,6 +102,7 @@ config S390
 	select ARCH_INLINE_WRITE_UNLOCK_IRQ
 	select ARCH_INLINE_WRITE_UNLOCK_IRQRESTORE
 	select ARCH_KEEP_MEMBLOCK
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ARCH_SAVE_PAGE_KEYS if HIBERNATION
 	select ARCH_STACKWALK
 	select ARCH_SUPPORTS_ATOMIC_RMW
diff --git a/arch/sh/Kconfig b/arch/sh/Kconfig
index 9ece111b0254..4ed1e0ca83a2 100644
--- a/arch/sh/Kconfig
+++ b/arch/sh/Kconfig
@@ -18,6 +18,7 @@ config SUPERH
 	select ARCH_HAVE_CUSTOM_GPIO_H
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG if (GUSA_RB || CPU_SH4A)
 	select ARCH_HAS_GCOV_PROFILE_ALL
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select PERF_USE_VMALLOC
 	select HAVE_DEBUG_KMEMLEAK
 	select HAVE_KERNEL_GZIP
diff --git a/arch/sparc/Kconfig b/arch/sparc/Kconfig
index e8c3ea01c12f..f31700309621 100644
--- a/arch/sparc/Kconfig
+++ b/arch/sparc/Kconfig
@@ -30,6 +30,7 @@ config SPARC
 	select RTC_SYSTOHC
 	select HAVE_ARCH_JUMP_LABEL if SPARC64
 	select GENERIC_IRQ_SHOW
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select GENERIC_PCI_IOMAP
 	select HAVE_NMI_WATCHDOG if SPARC64
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index b595ecb21a0f..e8edab974f67 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -85,6 +85,7 @@ config X86
 	select ARCH_MIGHT_HAVE_ACPI_PDC		if ACPI
 	select ARCH_MIGHT_HAVE_PC_PARPORT
 	select ARCH_MIGHT_HAVE_PC_SERIO
+	select ARCH_OFFLINE_CPUS_ON_REBOOT	if HOTPLUG_CPU
 	select ARCH_STACKWALK
 	select ARCH_SUPPORTS_ACPI
 	select ARCH_SUPPORTS_ATOMIC_RMW
diff --git a/arch/xtensa/Kconfig b/arch/xtensa/Kconfig
index 1c645172b4b5..c862dfa69ed9 100644
--- a/arch/xtensa/Kconfig
+++ b/arch/xtensa/Kconfig
@@ -7,6 +7,7 @@ config XTENSA
 	select ARCH_HAS_SYNC_DMA_FOR_CPU if MMU
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE if MMU
 	select ARCH_HAS_UNCACHED_SEGMENT if MMU
+	select ARCH_OFFLINE_CPUS_ON_REBOOT if HOTPLUG_CPU
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_WANT_FRAME_POINTERS
diff --git a/drivers/power/reset/sc27xx-poweroff.c b/drivers/power/reset/sc27xx-poweroff.c
index 29fb08b8faa0..d6cdf837235c 100644
--- a/drivers/power/reset/sc27xx-poweroff.c
+++ b/drivers/power/reset/sc27xx-poweroff.c
@@ -30,7 +30,7 @@ static void sc27xx_poweroff_shutdown(void)
 #ifdef CONFIG_PM_SLEEP_SMP
 	int cpu = smp_processor_id();
 
-	freeze_secondary_cpus(cpu);
+	freeze_secondary_cpus(cpu, false);
 #endif
 }
 
diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index 1ca2baf817ed..9c62274a4db9 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -137,11 +137,14 @@ static inline void cpu_hotplug_done(void) { cpus_write_unlock(); }
 static inline void get_online_cpus(void) { cpus_read_lock(); }
 static inline void put_online_cpus(void) { cpus_read_unlock(); }
 
+#if defined(CONFIG_PM_SLEEP_SMP) || defined(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
+extern int freeze_secondary_cpus(int primary, bool reboot);
+#endif
+
 #ifdef CONFIG_PM_SLEEP_SMP
-extern int freeze_secondary_cpus(int primary);
 static inline int disable_nonboot_cpus(void)
 {
-	return freeze_secondary_cpus(0);
+	return freeze_secondary_cpus(0, false);
 }
 extern void enable_nonboot_cpus(void);
 
@@ -152,7 +155,7 @@ static inline int suspend_disable_secondary_cpus(void)
 	if (IS_ENABLED(CONFIG_PM_SLEEP_SMP_NONZERO_CPU))
 		cpu = -1;
 
-	return freeze_secondary_cpus(cpu);
+	return freeze_secondary_cpus(cpu, false);
 }
 static inline void suspend_enable_secondary_cpus(void)
 {
diff --git a/kernel/cpu.c b/kernel/cpu.c
index 9c706af713fb..52d04e4e1aab 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -1209,10 +1209,10 @@ int cpu_up(unsigned int cpu)
 }
 EXPORT_SYMBOL_GPL(cpu_up);
 
-#ifdef CONFIG_PM_SLEEP_SMP
+#if defined(CONFIG_PM_SLEEP_SMP) || defined(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
 static cpumask_var_t frozen_cpus;
 
-int freeze_secondary_cpus(int primary)
+int freeze_secondary_cpus(int primary, bool reboot)
 {
 	int cpu, error = 0;
 
@@ -1237,11 +1237,13 @@ int freeze_secondary_cpus(int primary)
 		if (cpu == primary)
 			continue;
 
-		if (pm_wakeup_pending()) {
+#ifdef CONFIG_PM_SLEEP
+		if (!reboot && pm_wakeup_pending()) {
 			pr_info("Wakeup pending. Abort CPU freeze\n");
 			error = -EBUSY;
 			break;
 		}
+#endif
 
 		trace_suspend_resume(TPS("CPU_OFF"), cpu, true);
 		error = _cpu_down(cpu, 1, CPUHP_OFFLINE);
@@ -1250,7 +1252,9 @@ int freeze_secondary_cpus(int primary)
 			cpumask_set_cpu(cpu, frozen_cpus);
 		else {
 			pr_err("Error taking CPU%d down: %d\n", cpu, error);
-			break;
+			/* When rebooting, offline as many CPUs as possible. */
+			if (!reboot)
+				break;
 		}
 	}
 
diff --git a/kernel/reboot.c b/kernel/reboot.c
index c4d472b7f1b4..12f643b66e57 100644
--- a/kernel/reboot.c
+++ b/kernel/reboot.c
@@ -7,6 +7,7 @@
 
 #define pr_fmt(fmt)	"reboot: " fmt
 
+#include <linux/cpu.h>
 #include <linux/ctype.h>
 #include <linux/export.h>
 #include <linux/kexec.h>
@@ -220,7 +221,9 @@ void migrate_to_reboot_cpu(void)
 	/* The boot cpu is always logical cpu 0 */
 	int cpu = reboot_cpu;
 
+#if !IS_ENABLED(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
 	cpu_hotplug_disable();
+#endif
 
 	/* Make certain the cpu I'm about to reboot on is online */
 	if (!cpu_online(cpu))
@@ -231,6 +234,11 @@ void migrate_to_reboot_cpu(void)
 
 	/* Make certain I only run on the appropriate processor */
 	set_cpus_allowed_ptr(current, cpumask_of(cpu));
+
+#if IS_ENABLED(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
+	/* Offline other cpus if possible */
+	freeze_secondary_cpus(cpu, true);
+#endif
 }
 
 /**
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
