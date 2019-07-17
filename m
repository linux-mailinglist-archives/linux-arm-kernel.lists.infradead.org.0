Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59D76B80E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FZN4licD2tMmUQc9icY+8YK0uSvp1ChLcmkKtWv2rnk=; b=UibdGqaQrEjPF9gZ/ZRBLjpxUZ
	Fh63JtpmhrWLpc883cBdxxUe40MmyzPjZCXDIXe9QwQ+JRDID6PRo+UGMoEZFvN/9Q488d/wxY38I
	VTLEcwzdEfO3sDKFubIS7P6RVLxNUSqe6tSQiG06u99lU9LOZwgTZJoYjSVWBKUaYEyU2coapGTqE
	8XB7f7r9aar4tsgQMnseNrANIZ1S7wCOS1bqTG8Jv6xp6mOrphQbcylqMNaMTHiDN4+DFWW9zkRrE
	DNQf/YtvLR5Kflf2orrNeKxq9FuiwTPFzL+pSfTAHnzQdHBv0Tnf3TyP7pU4YtQPjj/QSxua7V+r4
	1CZ05rbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfAa-0005h1-DY; Wed, 17 Jul 2019 08:20:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf82-0003Y1-5i
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:17:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD3B0344;
 Wed, 17 Jul 2019 01:17:33 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 48FE73F71A;
 Wed, 17 Jul 2019 01:19:32 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 8/9] arm_pmu: Introduce pmu_irq_ops
Date: Wed, 17 Jul 2019 09:17:11 +0100
Message-Id: <1563351432-55652-9-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011734_453871_CAB2E541 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 peterz@infradead.org, jolsa@redhat.com, will.deacon@arm.com, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 sthotton@marvell.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the PMU interrupt can either be a normal irq or a percpu irq.
Supporting NMI will introduce two cases for each existing one. It becomes
a mess of 'if's when managing the interrupt.

Define sets of callbacks for operations commonly done on the interrupt. The
appropriate set of callbacks is selected at interrupt request time and
simplifies interrupt enabling/disabling and freeing.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Tested-by: Shijith Thotton <sthotton@marvell.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 drivers/perf/arm_pmu.c | 86 ++++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 70 insertions(+), 16 deletions(-)

diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index 7fd9f15..9ac072a 100644
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
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
