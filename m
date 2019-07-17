Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C686B810
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PGpKMSMrJO0+IQ89WmuqIO9so09WbtbtE6tbuyqtauE=; b=OBLup5h5yV9Npx7Kz2AThzIeFJ
	WiPgh8QGDSi32wyA1bNGjg8oQisZtbErqrjbHNEDyU+PqX1WfiTFM573A9XCVe1ajNwHvxc1eWTwH
	3k0abJVkgigV4zfmVLucA92kVeZ/Cy9+Vq/GemoKGDHZHU52BR3CJgYtYTplzDYn9BvQ77lraADCn
	5i25h+zisLwfrOzHJSYoW84249QYOOKKYuyjRr5zYo0PY2nxDhRRnjCQ9N+kpKfaIF2TlPwlTw1SM
	Gr56D+pv81W5614lRDXSouVOo1iPv24YlY/QgX7w5XbmILlmkRUwtv1nyoqyKGMi1U3TuwPezo+QH
	XYOSEu8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfAq-00077q-NC; Wed, 17 Jul 2019 08:20:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf84-0003dd-Dv
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:17:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 919721515;
 Wed, 17 Jul 2019 01:17:35 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EF22D3F71A;
 Wed, 17 Jul 2019 01:19:33 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 9/9] arm_pmu: Use NMIs for PMU
Date: Wed, 17 Jul 2019 09:17:12 +0100
Message-Id: <1563351432-55652-10-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011736_611873_D0B43DEF 
X-CRM114-Status: GOOD (  11.16  )
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

Add required PMU interrupt operations for NMIs. Request interrupt lines as
NMIs when possible, otherwise fall back to normal interrupts.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Tested-by: Shijith Thotton <sthotton@marvell.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
---
 drivers/perf/arm_pmu.c | 62 +++++++++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 56 insertions(+), 6 deletions(-)

diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index 9ac072a..a9c00cd 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -45,6 +45,17 @@ static void armpmu_free_pmuirq(unsigned int irq, int cpu, void __percpu *devid)
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
@@ -63,6 +74,31 @@ static void armpmu_free_percpu_pmuirq(unsigned int irq, int cpu,
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
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
