Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9DC12620B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 13:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rnhUDAEPbXm9evKVxyXx1fllRxyS18yuRqSlB/YelTI=; b=VFCo4JTYlaPew0Pk1QHKnyz2CM
	Wwo0D1NuoISdqYkF5jhtnEf8XPgwdvkm4VnBxwyIfpxBRMNCTduH0SrMRJNaeT7PJ7D6AHjdGw2sw
	Acl5p8x4Tm7d14fO4FIW3I1mjMUW+CSDjFucxc25mD0518xNMujM/7TTCOdLOJtlZIhwA1xSBt0Na
	GNdMBc7Pd/EiZbhshLiwNudyDUhsRxu8q2vYhiUQaipoi18k4hbklcB49PZ2S8dl4o3+hKe7Qnw9w
	zmz/gh889scImLP7EosK15SiXTFaGYsL5g/Zi0yqljTR+6W60DRVmvJIT8kgchvm5YKHTNIkFQeRr
	JzjEwZsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihunI-0003zw-KQ; Thu, 19 Dec 2019 12:20:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihum9-00025K-Lh
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 12:19:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F16E9DA7;
 Thu, 19 Dec 2019 04:19:28 -0800 (PST)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D2343F719;
 Thu, 19 Dec 2019 04:19:26 -0800 (PST)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 02/12] smp: unify crash_ and smp_send_stop() logic
Date: Thu, 19 Dec 2019 12:18:55 +0000
Message-Id: <20191219121905.26905-3-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191219121905.26905-1-cristian.marussi@arm.com>
References: <20191219121905.26905-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_041929_791582_6B12718C 
X-CRM114-Status: GOOD (  22.54  )
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com,
 sparclinux@vger.kernel.org, dzickus@redhat.com, ehabkost@redhat.com,
 peterz@infradead.org, catalin.marinas@arm.com, x86@kernel.org,
 linux@armlinux.org.uk, hch@infradead.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, james.morse@arm.com, hidehiro.kawai.ez@hitachi.com,
 tglx@linutronix.de, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

crash_smp_send_stop() logic was fairly similar to smp_send_stop():
a lot of logic and code was duplicated between the two code paths and
across a few different architectures.

Unify this underlying common logic into the existing SMP common stop
code: use a common workhorse function for both paths to perform the
common tasks while taking care to propagate to the underlying
architecture code the intent of the stop operation: a simple stop or
a crash dump stop.

Relocate the __weak crash_smp_send_stop() function from panic.c to smp.c,
since it is the crash dump entry point for the crash stop process and now
calls into this new common logic (only if this latter is enabled by
ARCH_USE_COMMON_SMP_STOP=y).

Introduce a few more helpers so that the architectures willing to use
the common code logic can provide their arch-specific bits to handle
the differences between a stop and a crash stop; architectures can
anyway decide to override as a whole the common logic providing their
own custom solution in crash_smp_send_stop() (as it was before).

Provide also a new common code method to inquiry on the outcome of an
ongoing crash_stop procedure: smp_crash_stop_failed().

Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
v2 --> v3
- removed inlining on __smp_send_stop_all()
- renamed __smp_send_stop_all() parameter
v1 --> v2
- using new CONFIG_USE_COMMON_SMP_STOP
- added arch_smp_cpus_crash_complete()
---
 include/linux/smp.h | 34 +++++++++++++++++++++++
 kernel/panic.c      | 26 ------------------
 kernel/smp.c        | 67 ++++++++++++++++++++++++++++++++++++++++++---
 3 files changed, 97 insertions(+), 30 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 22a0adeb7350..1886e49a65bb 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -114,8 +114,36 @@ extern void arch_smp_stop_call(cpumask_t *cpus);
  * the local CPU once the other CPUs have been successfully stopped.
  */
 void arch_smp_cpus_stop_complete(void);
+
+/*
+ * An Architecture CAN also provide the arch_smp_cpus_crash_complete()
+ * dedicated helper, to perform any final arch-specific operation on
+ * the local CPU once the other CPUs have been successfully crash stopped.
+ * When not overridden by the user, this defaults to call straight away
+ * arch_smp_cpus_stop_complete()
+ */
+void arch_smp_cpus_crash_complete(void);
+
+/*
+ * An Architecture CAN additionally provide the arch_smp_crash_call()
+ * helper which implements the arch-specific crash dump related operations.
+ *
+ * If such arch wants to fully support crash dump, this MUST be provided;
+ * when not provided the crash dump procedure will fallback to behave like
+ * a normal stop. (no saved regs, no arch-specific features disabled)
+ */
+extern void arch_smp_crash_call(cpumask_t *cpus);
+
+/* Helper to query the outcome of an ongoing crash_stop operation */
+bool smp_crash_stop_failed(void);
 #endif
 
+/*
+ * stops all CPUs but the current one propagating to all other CPUs
+ * the information that a crash_kexec is ongoing:
+ */
+void crash_smp_send_stop(void);
+
 /*
  * sends a 'reschedule' event to another CPU:
  */
@@ -179,6 +207,12 @@ static inline int get_boot_cpu_id(void)
 
 static inline void smp_send_stop(void) { }
 
+static inline void crash_smp_send_stop(void) { }
+
+#ifdef CONFIG_USE_COMMON_SMP_STOP
+static inline bool smp_crash_stop_failed(void) { }
+#endif
+
 /*
  *	These macros fold the SMP functionality into a single CPU system
  */
diff --git a/kernel/panic.c b/kernel/panic.c
index b69ee9e76cb2..3965af34ac38 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -87,32 +87,6 @@ void __weak nmi_panic_self_stop(struct pt_regs *regs)
 	panic_smp_self_stop();
 }
 
-/*
- * Stop other CPUs in panic.  Architecture dependent code may override this
- * with more suitable version.  For example, if the architecture supports
- * crash dump, it should save registers of each stopped CPU and disable
- * per-CPU features such as virtualization extensions.
- */
-void __weak crash_smp_send_stop(void)
-{
-	static int cpus_stopped;
-
-	/*
-	 * This function can be called twice in panic path, but obviously
-	 * we execute this only once.
-	 */
-	if (cpus_stopped)
-		return;
-
-	/*
-	 * Note smp_send_stop is the usual smp shutdown function, which
-	 * unfortunately means it may not be hardened to work in a panic
-	 * situation.
-	 */
-	smp_send_stop();
-	cpus_stopped = 1;
-}
-
 atomic_t panic_cpu = ATOMIC_INIT(PANIC_CPU_INVALID);
 
 /*
diff --git a/kernel/smp.c b/kernel/smp.c
index de29cd94a948..6224b0b1208b 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -846,6 +846,11 @@ bool smp_stop_get_wait_settings(unsigned long *timeout)
 
 void __weak arch_smp_cpus_stop_complete(void) { }
 
+void __weak arch_smp_cpus_crash_complete(void)
+{
+	arch_smp_cpus_stop_complete();
+}
+
 static inline bool any_other_cpus_online(cpumask_t *mask,
 					 unsigned int this_cpu_id)
 {
@@ -855,6 +860,12 @@ static inline bool any_other_cpus_online(cpumask_t *mask,
 	return !cpumask_empty(mask);
 }
 
+void __weak arch_smp_crash_call(cpumask_t *cpus)
+{
+	pr_debug("SMP: Using generic %s() as SMP crash call.\n", __func__);
+	arch_smp_stop_call(cpus);
+}
+
 /*
  * This centralizes the common logic to:
  *
@@ -866,7 +877,7 @@ static inline bool any_other_cpus_online(cpumask_t *mask,
  *  - wait for the stop operation to be completed across all involved CPUs
  *    monitoring the cpu_online_mask
  */
-void smp_send_stop(void)
+static void __smp_send_stop_all(bool crash)
 {
 	unsigned int this_cpu_id;
 	cpumask_t mask;
@@ -879,8 +890,11 @@ void smp_send_stop(void)
 
 		if (system_state <= SYSTEM_RUNNING)
 			pr_crit("stopping secondary CPUs\n");
-		arch_smp_stop_call(&mask);
-
+		/* smp and crash arch-backends helpers are kept distinct */
+		if (!crash)
+			arch_smp_stop_call(&mask);
+		else
+			arch_smp_crash_call(&mask);
 		/*
 		 * Defaults to wait up to one second for other CPUs to stop;
 		 * architectures can modify the default timeout or request
@@ -905,6 +919,51 @@ void smp_send_stop(void)
 				cpumask_pr_args(cpu_online_mask));
 	}
 	/* Perform final (possibly arch-specific) work on this CPU */
-	arch_smp_cpus_stop_complete();
+	if (!crash)
+		arch_smp_cpus_stop_complete();
+	else
+		arch_smp_cpus_crash_complete();
+}
+
+void smp_send_stop(void)
+{
+	__smp_send_stop_all(false);
+}
+
+bool __weak smp_crash_stop_failed(void)
+{
+	return (num_online_cpus() > cpu_online(smp_processor_id()));
 }
 #endif
+
+/*
+ * Stop other CPUs while passing down the additional information that a
+ * crash_kexec is ongoing: it's up to the architecture implementation
+ * decide what to do.
+ *
+ * For example, Architectures supporting crash dump should provide
+ * specialized support for saving registers and disabling per-CPU features
+ * like virtualization extensions.
+ *
+ * Behaviour in the CONFIG_USE_COMMON_SMP_STOP=n case is preserved
+ * as it was before.
+ */
+void __weak crash_smp_send_stop(void)
+{
+	static int cpus_stopped;
+
+	/*
+	 * This function can be called twice in panic path, but obviously
+	 * we execute this only once.
+	 */
+	if (cpus_stopped)
+		return;
+
+#ifdef CONFIG_USE_COMMON_SMP_STOP
+	__smp_send_stop_all(true);
+#else
+	smp_send_stop();
+#endif
+
+	cpus_stopped = 1;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
