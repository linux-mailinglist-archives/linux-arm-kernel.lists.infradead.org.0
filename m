Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50AFF1FCCB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPJEeM8Au07tlrRPHoCF46aFRdRN3sd8PWw8zREK8yE=; b=rTF9yxjKCQBTe6
	hAOKpc+jtQKitWBhJlzRSkzAzQm3/e7mTiFoF4TACEh0a274uIDv7/0W79MSEDa0cGI8/NVb4THPS
	yt0Gx8gOv5zDxJpeG8+EevgqibxQqAhk2IK9Eenir2jxClShWCeRm/M/AMw2/DF6VWC+qTSRRcShX
	b8sSKIXOnfgMPefRFWptGjdwSq+CsfE3XC/qs8g2JXN3RIIu+cFlZRAIrSgIHvdRmKe+Qwy22lMLv
	plfHakiidJPD04KVpVdxk6hsgBe6HzazvnQiEst2htV98VKwpZPo1321U5xwvVaB42W7PF1EuKiE2
	my/6D2ru//uhTcIISASA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWTB-0007tO-Qs; Wed, 17 Jun 2020 11:43:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOq-0001e8-Mx
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91C271045;
 Wed, 17 Jun 2020 04:38:36 -0700 (PDT)
Received: from monolith.arm.com (unknown [10.37.8.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D64B03F71F;
 Wed, 17 Jun 2020 04:38:34 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 7/7] arm_pmu: arm64: Use NMIs for PMU
Date: Wed, 17 Jun 2020 12:38:51 +0100
Message-Id: <20200617113851.607706-8-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200617113851.607706-1-alexandru.elisei@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043836_859755_443ACBAD 
X-CRM114-Status: GOOD (  11.73  )
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

Add required PMU interrupt operations for NMIs. Request interrupt lines as
NMIs when possible, otherwise fall back to normal interrupts.

NMIs are only supported on the arm64 architecture with a GICv3 irqchip.

Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
[Added that NMIs only work on arm64 + GICv3]
Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 drivers/perf/arm_pmu.c | 62 ++++++++++++++++++++++++++++++++++++++----
 1 file changed, 56 insertions(+), 6 deletions(-)

diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index 17e5952d21e4..dd9d7f61ee29 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -45,6 +45,17 @@ static const struct pmu_irq_ops pmuirq_ops = {
 	.free_pmuirq = armpmu_free_pmuirq
 };
 
+static void armpmu_free_pmunmi(unsigned int irq, int cpu, void __percpu *devid)
+{
+	free_nmi(irq, per_cpu_ptr(devid, cpu));
+}
+
+static const struct pmu_irq_ops pmunmi_ops = {
+	.enable_pmuirq = enable_nmi,
+	.disable_pmuirq = disable_nmi_nosync,
+	.free_pmuirq = armpmu_free_pmunmi
+};
+
 static void armpmu_enable_percpu_pmuirq(unsigned int irq)
 {
 	enable_percpu_irq(irq, IRQ_TYPE_NONE);
@@ -63,6 +74,31 @@ static const struct pmu_irq_ops percpu_pmuirq_ops = {
 	.free_pmuirq = armpmu_free_percpu_pmuirq
 };
 
+static void armpmu_enable_percpu_pmunmi(unsigned int irq)
+{
+	if (!prepare_percpu_nmi(irq))
+		enable_percpu_nmi(irq, IRQ_TYPE_NONE);
+}
+
+static void armpmu_disable_percpu_pmunmi(unsigned int irq)
+{
+	disable_percpu_nmi(irq);
+	teardown_percpu_nmi(irq);
+}
+
+static void armpmu_free_percpu_pmunmi(unsigned int irq, int cpu,
+				      void __percpu *devid)
+{
+	if (armpmu_count_irq_users(irq) == 1)
+		free_percpu_nmi(irq, devid);
+}
+
+static const struct pmu_irq_ops percpu_pmunmi_ops = {
+	.enable_pmuirq = armpmu_enable_percpu_pmunmi,
+	.disable_pmuirq = armpmu_disable_percpu_pmunmi,
+	.free_pmuirq = armpmu_free_percpu_pmunmi
+};
+
 static DEFINE_PER_CPU(struct arm_pmu *, cpu_armpmu);
 static DEFINE_PER_CPU(int, cpu_irq);
 static DEFINE_PER_CPU(const struct pmu_irq_ops *, cpu_irq_ops);
@@ -633,15 +669,29 @@ int armpmu_request_irq(int irq, int cpu)
 			    IRQF_NO_THREAD;
 
 		irq_set_status_flags(irq, IRQ_NOAUTOEN);
-		err = request_irq(irq, handler, irq_flags, "arm-pmu",
+
+		err = request_nmi(irq, handler, irq_flags, "arm-pmu",
 				  per_cpu_ptr(&cpu_armpmu, cpu));
 
-		irq_ops = &pmuirq_ops;
+		/* If cannot get an NMI, get a normal interrupt */
+		if (err) {
+			err = request_irq(irq, handler, irq_flags, "arm-pmu",
+					  per_cpu_ptr(&cpu_armpmu, cpu));
+			irq_ops = &pmuirq_ops;
+		} else {
+			irq_ops = &pmunmi_ops;
+		}
 	} else if (armpmu_count_irq_users(irq) == 0) {
-		err = request_percpu_irq(irq, handler, "arm-pmu",
-					 &cpu_armpmu);
-
-		irq_ops = &percpu_pmuirq_ops;
+		err = request_percpu_nmi(irq, handler, "arm-pmu", &cpu_armpmu);
+
+		/* If cannot get an NMI, get a normal interrupt */
+		if (err) {
+			err = request_percpu_irq(irq, handler, "arm-pmu",
+						 &cpu_armpmu);
+			irq_ops = &percpu_pmuirq_ops;
+		} else {
+			irq_ops = &percpu_pmunmi_ops;
+		}
 	} else {
 		/* Per cpudevid irq was already requested by another CPU */
 		irq_ops = armpmu_find_irq_ops(irq);
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
