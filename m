Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08FE9AE8F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 13:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2IutyjJyyaMz/yKzeFH9Io5oXXlrY46r1jyZljwyHaM=; b=hQGyd29f0WFFCJv3NLJdybil8c
	y3JqpNl9NVdc9pG0ZSC/FNhQmtTuIkwP7M+iv2+Q6VegbHMv7HhNWxW2XrzCbmKLVe22i4BjqDKPx
	F5WM3FsdtQehKyn/BoYHvW8kmE1/BBSSG/tMmrAkE81ME9vHewrnVwJejbIYYgQEMLT+IoTAAVWQZ
	0k2hECZqlC+y/qsRFUYL99WTWz2Q1RcAZHD/nEDyfM/zPJH7wvQz7H/+rBDlZrBL57DsCLACDtzzU
	OYfzzGqhk/ECDhGlSadXuZcAPVfnqor76bJE6KvGheBHY5lEwlzX6E+TNHIsF1RmXvUaK0DVHK1Fs
	DjdxRh0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Da-00026p-Sc; Fri, 23 Aug 2019 11:58:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i18D6-0001gT-DT
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 11:58:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DCC415A2;
 Fri, 23 Aug 2019 04:58:26 -0700 (PDT)
Received: from e120937-lin.cambridge.arm.com (e120937-lin.cambridge.arm.com
 [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 148283F246;
 Fri, 23 Aug 2019 04:58:24 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/7] smp: unify crash_ and smp_send_stop() logic
Date: Fri, 23 Aug 2019 12:57:15 +0100
Message-Id: <20190823115720.605-3-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823115720.605-1-cristian.marussi@arm.com>
References: <20190823115720.605-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_045828_541046_88309071 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, peterz@infradead.org,
 catalin.marinas@arm.com, takahiro.akashi@linaro.org, james.morse@arm.com,
 hidehiro.kawai.ez@hitachi.com, tglx@linutronix.de, will@kernel.org,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
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
 include/linux/smp.h | 25 +++++++++++++++++++
 kernel/panic.c      | 26 --------------------
 kernel/smp.c        | 58 ++++++++++++++++++++++++++++++++++++++++++---
 3 files changed, 80 insertions(+), 29 deletions(-)

diff --git a/include/linux/smp.h b/include/linux/smp.h
index 0fea0e6d2339..21c97c175dad 100644
--- a/include/linux/smp.h
+++ b/include/linux/smp.h
@@ -91,8 +91,27 @@ extern void arch_smp_stop_call(cpumask_t *cpus);
  * the local CPU once the other CPUs have been successfully stopped.
  */
 void arch_smp_cpus_stop_complete(void);
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
@@ -156,6 +175,12 @@ static inline int get_boot_cpu_id(void)
 
 static inline void smp_send_stop(void) { }
 
+static inline void crash_smp_send_stop(void) { }
+
+#ifdef CONFIG_ARCH_USE_COMMON_SMP_STOP
+static inline bool smp_crash_stop_failed(void) { }
+#endif
+
 /*
  *	These macros fold the SMP functionality into a single CPU system
  */
diff --git a/kernel/panic.c b/kernel/panic.c
index 057540b6eee9..bc0dbf9c9b75 100644
--- a/kernel/panic.c
+++ b/kernel/panic.c
@@ -86,32 +86,6 @@ void __weak nmi_panic_self_stop(struct pt_regs *regs)
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
index 700502ee2546..31e981eb9bd8 100644
--- a/kernel/smp.c
+++ b/kernel/smp.c
@@ -820,6 +820,7 @@ int smp_call_on_cpu(unsigned int cpu, int (*func)(void *), void *par, bool phys)
 EXPORT_SYMBOL_GPL(smp_call_on_cpu);
 
 #ifdef CONFIG_ARCH_USE_COMMON_SMP_STOP
+
 void __weak arch_smp_cpus_stop_complete(void) { }
 
 static inline bool any_other_cpus_online(cpumask_t *mask,
@@ -831,6 +832,12 @@ static inline bool any_other_cpus_online(cpumask_t *mask,
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
@@ -842,7 +849,7 @@ static inline bool any_other_cpus_online(cpumask_t *mask,
  *  - wait for the stop operation to be completed across all involved CPUs
  *    monitoring the cpu_online_mask
  */
-void smp_send_stop(void)
+static inline void __smp_send_stop_all(bool reason_crash)
 {
 	unsigned int this_cpu_id;
 	cpumask_t mask;
@@ -854,8 +861,11 @@ void smp_send_stop(void)
 
 		if (system_state <= SYSTEM_RUNNING)
 			pr_crit("stopping secondary CPUs\n");
-		arch_smp_stop_call(&mask);
-
+		/* smp and crash arch-backends helpers are kept distinct */
+		if (!reason_crash)
+			arch_smp_stop_call(&mask);
+		else
+			arch_smp_crash_call(&mask);
 		/*
 		 * Wait up to one second for other CPUs to stop.
 		 *
@@ -879,4 +889,46 @@ void smp_send_stop(void)
 	/* Perform final (possibly arch-specific) work on this CPU */
 	arch_smp_cpus_stop_complete();
 }
+
+void smp_send_stop(void)
+{
+	__smp_send_stop_all(false);
+}
+
+bool __weak smp_crash_stop_failed(void)
+{
+	return (num_online_cpus() > cpu_online(smp_processor_id()));
+}
+#endif
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
+ * Behaviour in the CONFIG_ARCH_USE_COMMON_SMP_STOP=n case is preserved
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
+#ifdef CONFIG_ARCH_USE_COMMON_SMP_STOP
+	__smp_send_stop_all(true);
+#else
+	smp_send_stop();
 #endif
+
+	cpus_stopped = 1;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
