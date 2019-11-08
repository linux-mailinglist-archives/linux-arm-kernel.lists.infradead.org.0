Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D12EF4E99
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=baDIUh0yP+bNcZCn8SAgHmZdUHqho+wzckbFeEGhBQ4=; b=I5G10KTDcd3USMTIqcrH0l2mLa
	EeD7i+G+yvAHMMpo3BW+UdPI0JgUO/KPfpQUSi6Hpva4Djblz/F3DMhJM24xIWGrRaFBpMzkS0tnF
	9MvZVDKhrSX413y6YvFkUVyL7snO6mJ0jEh/E1rbU4s2Si+w8J+5qsqciSxK725tBJL8VF1QNeMNi
	PtyxEpsLkQak86K0RyN5UyXlZtORZiU43UVXM3hB/xmCCKmj5vMyXC2LXwzIaKd+wfGY7l3bFctrR
	MuPgUoUqhwhDyYmV8zwK5m7Gzug+ms5mc3MjtWLNd5V+zuD0Bf429O8BSUO661lJHT9/4Fd05XXqs
	X5TeLK6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Vn-0001hc-Iz; Fri, 08 Nov 2019 14:45:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5Ta-0007dG-4b
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:43:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35E5446A;
 Fri,  8 Nov 2019 06:43:01 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18ADD3F719;
 Fri,  8 Nov 2019 06:42:59 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 08/17] arm: gic: Add simple SPI MP test
Date: Fri,  8 Nov 2019 14:42:31 +0000
Message-Id: <20191108144240.204202-9-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064302_258617_1BC0C437 
X-CRM114-Status: GOOD (  11.34  )
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

Shared Peripheral Interrupts (SPI) can target a specific CPU. Test this
feature by routing the test SPI to each of the vCPUs, then triggering it
and confirm its reception on that requested core.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c | 31 ++++++++++++++++++++++++++++++-
 1 file changed, 30 insertions(+), 1 deletion(-)

diff --git a/arm/gic.c b/arm/gic.c
index 63aa9f4..304b7b9 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -620,16 +620,45 @@ static void spi_test_single(void)
 	check_acked("now enabled SPI fires", &cpumask);
 }
 
+static void spi_test_smp(void)
+{
+	int cpu;
+	int cores = 1;
+
+	wait_on_ready();
+	for_each_present_cpu(cpu) {
+		if (cpu == smp_processor_id())
+			continue;
+		spi_configure_irq(SPI_IRQ, cpu);
+		if (trigger_and_check_spi(NULL, IRQ_STAT_IRQ, cpu))
+			cores++;
+		else
+			report_info("SPI delivery failed on core %d", cpu);
+	}
+	report("SPI delievered on all cores", cores == nr_cpus);
+}
+
 static void spi_send(void)
 {
 	irqs_enable();
 
 	spi_test_single();
 
+	if (nr_cpus > 1)
+		spi_test_smp();
+
 	check_spurious();
 	exit(report_summary());
 }
 
+static void spi_test(void *data __unused)
+{
+	if (smp_processor_id() == 0)
+		spi_send();
+	else
+		irq_recv();
+}
+
 int main(int argc, char **argv)
 {
 	if (!gic_init()) {
@@ -663,7 +692,7 @@ int main(int argc, char **argv)
 		report_prefix_pop();
 	} else if (strcmp(argv[1], "irq") == 0) {
 		report_prefix_push(argv[1]);
-		spi_send();
+		on_cpus(spi_test, NULL);
 		report_prefix_pop();
 	} else {
 		report_abort("Unknown subtest '%s'", argv[1]);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
