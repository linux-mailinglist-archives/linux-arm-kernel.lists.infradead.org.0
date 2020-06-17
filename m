Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E6D1FCCAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0qHsMR1gLqtqiqN3y9FoJagqwtQh1cwPoPbPpabbtw=; b=aHlJu66RXPqANd
	aFVQC7Pk/mehnJwbSeSdmPMExuQQoCgwWR7ZH+T60yvKP4O7RQMz57FuMCz9q2aqrIbyf5qU14b9n
	9GA9h3SxqU69o9Vd9yEVtp8x8BEWgW27f3ByoQ/e6ZGBxr2x/DRC9Jvks6jwUK4oQTrCVzhWj5OKr
	mp+pPgPLTmL0ZT9HuF2G2W7WVn5Xkbwq6YycD6J+qIoklroFTKEeN6f83SaHfwZ6T8g78eWuSJjSa
	a5cjGQkScrIM6RzIbejG0n4GF0YXL0x7hjtdtVPdV109BLn7aZG1x6qIVw1RGFWJ+kLiO8hRZXrL+
	1mxD3lz783WipAJckCNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWSv-0007ee-Mv; Wed, 17 Jun 2020 11:42:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOo-0001an-T9
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C31611FB;
 Wed, 17 Jun 2020 04:38:34 -0700 (PDT)
Received: from monolith.arm.com (unknown [10.37.8.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF3193F71F;
 Wed, 17 Jun 2020 04:38:32 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 6/7] arm_pmu: Introduce pmu_irq_ops
Date: Wed, 17 Jun 2020 12:38:50 +0100
Message-Id: <20200617113851.607706-7-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200617113851.607706-1-alexandru.elisei@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043835_141390_74AD0AB8 
X-CRM114-Status: GOOD (  14.76  )
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 maz@kernel.org, Will Deacon <will.deacon@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

Currently the PMU interrupt can either be a normal irq or a percpu irq.
Supporting NMI will introduce two cases for each existing one. It becomes
a mess of 'if's when managing the interrupt.

Define sets of callbacks for operations commonly done on the interrupt. The
appropriate set of callbacks is selected at interrupt request time and
simplifies interrupt enabling/disabling and freeing.

Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 drivers/perf/arm_pmu.c | 86 ++++++++++++++++++++++++++++++++++--------
 1 file changed, 70 insertions(+), 16 deletions(-)

diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index df352b334ea7..17e5952d21e4 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -26,8 +26,46 @@
 
 #include <asm/irq_regs.h>
 
+static int armpmu_count_irq_users(const int irq);
+
+struct pmu_irq_ops {
+	void (*enable_pmuirq)(unsigned int irq);
+	void (*disable_pmuirq)(unsigned int irq);
+	void (*free_pmuirq)(unsigned int irq, int cpu, void __percpu *devid);
+};
+
+static void armpmu_free_pmuirq(unsigned int irq, int cpu, void __percpu *devid)
+{
+	free_irq(irq, per_cpu_ptr(devid, cpu));
+}
+
+static const struct pmu_irq_ops pmuirq_ops = {
+	.enable_pmuirq = enable_irq,
+	.disable_pmuirq = disable_irq_nosync,
+	.free_pmuirq = armpmu_free_pmuirq
+};
+
+static void armpmu_enable_percpu_pmuirq(unsigned int irq)
+{
+	enable_percpu_irq(irq, IRQ_TYPE_NONE);
+}
+
+static void armpmu_free_percpu_pmuirq(unsigned int irq, int cpu,
+				   void __percpu *devid)
+{
+	if (armpmu_count_irq_users(irq) == 1)
+		free_percpu_irq(irq, devid);
+}
+
+static const struct pmu_irq_ops percpu_pmuirq_ops = {
+	.enable_pmuirq = armpmu_enable_percpu_pmuirq,
+	.disable_pmuirq = disable_percpu_irq,
+	.free_pmuirq = armpmu_free_percpu_pmuirq
+};
+
 static DEFINE_PER_CPU(struct arm_pmu *, cpu_armpmu);
 static DEFINE_PER_CPU(int, cpu_irq);
+static DEFINE_PER_CPU(const struct pmu_irq_ops *, cpu_irq_ops);
 
 static inline u64 arm_pmu_event_max_period(struct perf_event *event)
 {
@@ -544,6 +582,19 @@ static int armpmu_count_irq_users(const int irq)
 	return count;
 }
 
+static const struct pmu_irq_ops *armpmu_find_irq_ops(int irq)
+{
+	int cpu;
+
+	for_each_possible_cpu(cpu) {
+		if (per_cpu(cpu_irq, cpu) == irq
+		    && per_cpu(cpu_irq_ops, cpu))
+			return per_cpu(cpu_irq_ops, cpu);
+	}
+
+	return NULL;
+}
+
 void armpmu_free_irq(int irq, int cpu)
 {
 	if (per_cpu(cpu_irq, cpu) == 0)
@@ -551,18 +602,18 @@ void armpmu_free_irq(int irq, int cpu)
 	if (WARN_ON(irq != per_cpu(cpu_irq, cpu)))
 		return;
 
-	if (!irq_is_percpu_devid(irq))
-		free_irq(irq, per_cpu_ptr(&cpu_armpmu, cpu));
-	else if (armpmu_count_irq_users(irq) == 1)
-		free_percpu_irq(irq, &cpu_armpmu);
+	per_cpu(cpu_irq_ops, cpu)->free_pmuirq(irq, cpu, &cpu_armpmu);
 
 	per_cpu(cpu_irq, cpu) = 0;
+	per_cpu(cpu_irq_ops, cpu) = NULL;
 }
 
 int armpmu_request_irq(int irq, int cpu)
 {
 	int err = 0;
 	const irq_handler_t handler = armpmu_dispatch_irq;
+	const struct pmu_irq_ops *irq_ops;
+
 	if (!irq)
 		return 0;
 
@@ -584,15 +635,26 @@ int armpmu_request_irq(int irq, int cpu)
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
 		err = request_irq(irq, handler, irq_flags, "arm-pmu",
 				  per_cpu_ptr(&cpu_armpmu, cpu));
+
+		irq_ops = &pmuirq_ops;
 	} else if (armpmu_count_irq_users(irq) == 0) {
 		err = request_percpu_irq(irq, handler, "arm-pmu",
 					 &cpu_armpmu);
+
+		irq_ops = &percpu_pmuirq_ops;
+	} else {
+		/* Per cpudevid irq was already requested by another CPU */
+		irq_ops = armpmu_find_irq_ops(irq);
+
+		if (WARN_ON(!irq_ops))
+			err = -EINVAL;
 	}
 
 	if (err)
 		goto err_out;
 
 	per_cpu(cpu_irq, cpu) = irq;
+	per_cpu(cpu_irq_ops, cpu) = irq_ops;
 	return 0;
 
 err_out:
@@ -625,12 +687,8 @@ static int arm_perf_starting_cpu(unsigned int cpu, struct hlist_node *node)
 	per_cpu(cpu_armpmu, cpu) = pmu;
 
 	irq = armpmu_get_cpu_irq(pmu, cpu);
-	if (irq) {
-		if (irq_is_percpu_devid(irq))
-			enable_percpu_irq(irq, IRQ_TYPE_NONE);
-		else
-			enable_irq(irq);
-	}
+	if (irq)
+		per_cpu(cpu_irq_ops, cpu)->enable_pmuirq(irq);
 
 	return 0;
 }
@@ -644,12 +702,8 @@ static int arm_perf_teardown_cpu(unsigned int cpu, struct hlist_node *node)
 		return 0;
 
 	irq = armpmu_get_cpu_irq(pmu, cpu);
-	if (irq) {
-		if (irq_is_percpu_devid(irq))
-			disable_percpu_irq(irq);
-		else
-			disable_irq_nosync(irq);
-	}
+	if (irq)
+		per_cpu(cpu_irq_ops, cpu)->disable_pmuirq(irq);
 
 	per_cpu(cpu_armpmu, cpu) = NULL;
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
