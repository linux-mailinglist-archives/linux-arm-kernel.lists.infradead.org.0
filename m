Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DD3F4E98
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:45:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BquIQQiG451v52/KOzM1S+MNq8VTOXePT0TZUZjx2ac=; b=dkZA1xKuP3ZCW34qL2X8pMZWT4
	Lcc3IQxB7+ZMrzpAqZRsnxRmJAdYdQO3X+6maW/GZKgqLeT8hzcfDQtHQtqJq764pZMld6tH+ad3O
	BV8mxheJa/rcmZ7XtXe54MDMI1BWAEt8uvQgVU9oOGDZjSf9XRDLoKyMHDDqS6CPQNsCOR7v+T50d
	HJgGKWZu4fXfYIHR6oLKOi4lT/QtVqdb0UFf/7a3yANkKwWLJh0FKRoWWdtaTYmi8JA7uX1z7jgrk
	A2EGgCSS9cX0SBxGuDgdn2/fkLxE7V827ESdP4l7pCswNHmAt2kgkJZBBh9il5j8PfW0JvlsFChdI
	mkNyvKYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5VV-0000sk-NE; Fri, 08 Nov 2019 14:45:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5TY-0007eC-7J
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:43:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D84807A7;
 Fri,  8 Nov 2019 06:42:59 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB5E13F719;
 Fri,  8 Nov 2019 06:42:58 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 07/17] arm: gic: Extend check_acked() to allow
 silent call
Date: Fri,  8 Nov 2019 14:42:30 +0000
Message-Id: <20191108144240.204202-8-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064300_363989_5CC53032 
X-CRM114-Status: GOOD (  12.42  )
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

For future tests we will need to call check_acked() twice for the same
interrupt (to test delivery of Group 0 and Group 1 interrupts).
This should be reported as a single test, so allow check_acked() to be
called with a "NULL" test name, to suppress output. We report the test
result via the return value, so the outcome is not lost.

Also this amends the new trigger_and_check_spi() wrapper, to propagate
the test result to callers of that function.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/arm/gic.c b/arm/gic.c
index 3be76cb..63aa9f4 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -62,7 +62,7 @@ static void stats_reset(void)
 	smp_wmb();
 }
 
-static void check_acked(const char *testname, cpumask_t *mask)
+static int check_acked(const char *testname, cpumask_t *mask)
 {
 	int missing = 0, extra = 0, unexpected = 0;
 	int nr_pass, cpu, i;
@@ -91,16 +91,20 @@ static void check_acked(const char *testname, cpumask_t *mask)
 			}
 		}
 		if (!noirqs && nr_pass == nr_cpus) {
-			report("%s", !bad, testname);
-			if (i)
-				report_info("took more than %d ms", i * 100);
-			return;
+			if (testname) {
+				report("%s", !bad, testname);
+				if (i)
+					report_info("took more than %d ms",
+						    i * 100);
+			}
+			return i * 100;
 		}
 	}
 
 	if (noirqs && nr_pass == nr_cpus) {
-		report("%s", !bad, testname);
-		return;
+		if (testname)
+			report("%s", !bad, testname);
+		return i * 100;
 	}
 
 	for_each_present_cpu(cpu) {
@@ -115,9 +119,11 @@ static void check_acked(const char *testname, cpumask_t *mask)
 		}
 	}
 
-	report("%s", false, testname);
+	if (testname)
+		report("%s", false, testname);
 	report_info("Timed-out (5s). ACKS: missing=%d extra=%d unexpected=%d",
 		    missing, extra, unexpected);
+	return -1;
 }
 
 static void check_spurious(void)
@@ -567,11 +573,12 @@ static void spi_configure_irq(int irq, int cpu)
  * Wait for an SPI to fire (or not) on a certain CPU.
  * Clears the pending bit if requested afterwards.
  */
-static void trigger_and_check_spi(const char *test_name,
+static bool trigger_and_check_spi(const char *test_name,
 				  unsigned int irq_stat,
 				  int cpu)
 {
 	cpumask_t cpumask;
+	bool ret = true;
 
 	stats_reset();
 	gic_spi_trigger(SPI_IRQ);
@@ -584,11 +591,13 @@ static void trigger_and_check_spi(const char *test_name,
 		break;
 	}
 
-	check_acked(test_name, &cpumask);
+	ret = (check_acked(test_name, &cpumask) >= 0);
 
 	/* Clean up pending bit in case this IRQ wasn't taken. */
 	if (!(irq_stat & IRQ_STAT_NO_CLEAR))
 		gic_set_irq_bit(SPI_IRQ, GICD_ICPENDR);
+
+	return ret;
 }
 
 static void spi_test_single(void)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
