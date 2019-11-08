Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E6BF4E96
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:44:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e325MGaXbK4peqrc24HVIOhthjPnIdACVheN6ZT5J5Y=; b=UhO8kd3u+dHjU2JLrnLxJfj/1D
	44BhRdiT2JNRPvnJXloAbEJ8JndC/cbbPSwqjAg3uETjgaB354tvshsoWK5NeuFwKz5ZafAWMYEij
	lIhz+XeVZvDgXFNlaSVNUoccuGZ7dcUyl12lU6YaJnuZaqrbXOSnaJ3dN1HvJecWp2XKWKbzVOl1S
	dRaSR80AnjvgaZFuD8m265+NfIUXJ/i9JjsKAob/LwqWVesnZTzL2b6S/1eH/JplGcMMkZhhUziYV
	/gFxyjotcJf8D1PYQQ+zyqVCFYrClsZDiU3OD1eeeMxBrY7aAxQBOLMzXtCnJrT249MpMdtv2QCkf
	yTmoj1FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5VE-0000eV-Dw; Fri, 08 Nov 2019 14:44:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5TW-0007dG-VD
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:43:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 870D346A;
 Fri,  8 Nov 2019 06:42:58 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6A1ED3F719;
 Fri,  8 Nov 2019 06:42:57 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 06/17] arm: gic: Add simple shared IRQ test
Date: Fri,  8 Nov 2019 14:42:29 +0000
Message-Id: <20191108144240.204202-7-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064259_104224_28171B24 
X-CRM114-Status: GOOD (  12.93  )
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
Cc: Marc Zyngier <maz@kernel.org>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 kvm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

So far we were testing the GIC's MMIO interface and IPI delivery.
Add a simple test to trigger a shared IRQ (SPI), using the ISPENDR
register in the (emulated) GIC distributor.
This tests configuration of an IRQ (target CPU) and whether it can be
properly enabled or disabled.

This is a bit more sophisticated than actually needed at this time,
but paves the way for extending this to FIQs in the future.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c         | 79 +++++++++++++++++++++++++++++++++++++++++++++++
 arm/unittests.cfg | 12 +++++++
 2 files changed, 91 insertions(+)

diff --git a/arm/gic.c b/arm/gic.c
index c909668..3be76cb 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -546,6 +546,81 @@ static void gic_test_mmio(void)
 		test_targets(nr_irqs);
 }
 
+static void gic_spi_trigger(int irq)
+{
+	gic_set_irq_bit(irq, GICD_ISPENDR);
+}
+
+static void spi_configure_irq(int irq, int cpu)
+{
+	gic_set_irq_target(irq, cpu);
+	gic_set_irq_priority(irq, 0xa0);
+	gic_enable_irq(irq);
+}
+
+#define IRQ_STAT_NONE		0
+#define IRQ_STAT_IRQ		1
+#define IRQ_STAT_TYPE_MASK	0x3
+#define IRQ_STAT_NO_CLEAR	4
+
+/*
+ * Wait for an SPI to fire (or not) on a certain CPU.
+ * Clears the pending bit if requested afterwards.
+ */
+static void trigger_and_check_spi(const char *test_name,
+				  unsigned int irq_stat,
+				  int cpu)
+{
+	cpumask_t cpumask;
+
+	stats_reset();
+	gic_spi_trigger(SPI_IRQ);
+	cpumask_clear(&cpumask);
+	switch (irq_stat & IRQ_STAT_TYPE_MASK) {
+	case IRQ_STAT_NONE:
+		break;
+	case IRQ_STAT_IRQ:
+		cpumask_set_cpu(cpu, &cpumask);
+		break;
+	}
+
+	check_acked(test_name, &cpumask);
+
+	/* Clean up pending bit in case this IRQ wasn't taken. */
+	if (!(irq_stat & IRQ_STAT_NO_CLEAR))
+		gic_set_irq_bit(SPI_IRQ, GICD_ICPENDR);
+}
+
+static void spi_test_single(void)
+{
+	cpumask_t cpumask;
+	int cpu = smp_processor_id();
+
+	spi_configure_irq(SPI_IRQ, cpu);
+
+	trigger_and_check_spi("SPI triggered by CPU write", IRQ_STAT_IRQ, cpu);
+
+	gic_disable_irq(SPI_IRQ);
+	trigger_and_check_spi("disabled SPI does not fire",
+			      IRQ_STAT_NONE | IRQ_STAT_NO_CLEAR, cpu);
+
+	stats_reset();
+	cpumask_clear(&cpumask);
+	cpumask_set_cpu(cpu, &cpumask);
+	gic_enable_irq(SPI_IRQ);
+	check_acked("now enabled SPI fires", &cpumask);
+}
+
+static void spi_send(void)
+{
+	irqs_enable();
+
+	spi_test_single();
+
+	check_spurious();
+	exit(report_summary());
+}
+
 int main(int argc, char **argv)
 {
 	if (!gic_init()) {
@@ -577,6 +652,10 @@ int main(int argc, char **argv)
 		report_prefix_push(argv[1]);
 		gic_test_mmio();
 		report_prefix_pop();
+	} else if (strcmp(argv[1], "irq") == 0) {
+		report_prefix_push(argv[1]);
+		spi_send();
+		report_prefix_pop();
 	} else {
 		report_abort("Unknown subtest '%s'", argv[1]);
 	}
diff --git a/arm/unittests.cfg b/arm/unittests.cfg
index 12ac142..7a78275 100644
--- a/arm/unittests.cfg
+++ b/arm/unittests.cfg
@@ -92,6 +92,18 @@ smp = $MAX_SMP
 extra_params = -machine gic-version=3 -append 'ipi'
 groups = gic
 
+[gicv2-spi]
+file = gic.flat
+smp = $((($MAX_SMP < 8)?$MAX_SMP:8))
+extra_params = -machine gic-version=2 -append 'irq'
+groups = gic
+
+[gicv3-spi]
+file = gic.flat
+smp = $MAX_SMP
+extra_params = -machine gic-version=3 -append 'irq'
+groups = gic
+
 [gicv2-max-mmio]
 file = gic.flat
 smp = $((($MAX_SMP < 8)?$MAX_SMP:8))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
