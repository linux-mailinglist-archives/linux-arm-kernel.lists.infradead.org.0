Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A408F4E93
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:44:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b4Meh1PDqcwCieOB3lKn5dc4WzP7KG/uhsstezLj+9c=; b=Xeo47ZxcQkcl3yOCv2zyMXGFrO
	CTj2tVW/V9JYTABv5goFTJRXp1F/k/gcHFWEGRLrJEfzMMpuvWDy+kzr9EpryibXGvAajAEI7u3Pi
	otKFDPzSdEc3aVG5Lpy/mzdcUneyOnDZ1RCfMB6X9jqBshGJWa2fR2MITBlj2wOV+U2EQwCmxk6Hb
	/UNDz/NLaXZ7cOC4fYVh9o+jFvgSDmbctBnIdgkHl18yvbNVybL/7LZxjr6VDUbHuGICYu1bvNUqL
	vN+8MxUrHXe3wcE03ZJHxzZ1lQDSjsSygvH3FtFnGknTGZJzX/L5nzFZWkQVB1CZ9RhfB0ZgPh1sS
	sDZe81kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Um-0000Bd-P1; Fri, 08 Nov 2019 14:44:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5TU-0007dG-7H
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:42:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D844446A;
 Fri,  8 Nov 2019 06:42:55 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB2813F719;
 Fri,  8 Nov 2019 06:42:54 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Andrew Jones <drjones@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>
Subject: [kvm-unit-tests PATCH 04/17] arm: gic: Support no IRQs test case
Date: Fri,  8 Nov 2019 14:42:27 +0000
Message-Id: <20191108144240.204202-5-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191108144240.204202-1-andre.przywara@arm.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_064256_314163_BB425457 
X-CRM114-Status: GOOD (  12.13  )
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

For some tests it would be important to check that an IRQ was *not*
triggered, for instance to test certain masking operations.

Extend the check_added() function to recognise an empty cpumask to
detect this situation. The timeout duration is reduced, and the "no IRQs
triggered" case is actually reported as a success in this case.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arm/gic.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arm/gic.c b/arm/gic.c
index a114009..eca9188 100644
--- a/arm/gic.c
+++ b/arm/gic.c
@@ -66,9 +66,10 @@ static void check_acked(const char *testname, cpumask_t *mask)
 	int missing = 0, extra = 0, unexpected = 0;
 	int nr_pass, cpu, i;
 	bool bad = false;
+	bool noirqs = cpumask_empty(mask);
 
 	/* Wait up to 5s for all interrupts to be delivered */
-	for (i = 0; i < 50; ++i) {
+	for (i = 0; i < (noirqs ? 15 : 50); ++i) {
 		mdelay(100);
 		nr_pass = 0;
 		for_each_present_cpu(cpu) {
@@ -88,7 +89,7 @@ static void check_acked(const char *testname, cpumask_t *mask)
 				bad = true;
 			}
 		}
-		if (nr_pass == nr_cpus) {
+		if (!noirqs && nr_pass == nr_cpus) {
 			report("%s", !bad, testname);
 			if (i)
 				report_info("took more than %d ms", i * 100);
@@ -96,6 +97,11 @@ static void check_acked(const char *testname, cpumask_t *mask)
 		}
 	}
 
+	if (noirqs && nr_pass == nr_cpus) {
+		report("%s", !bad, testname);
+		return;
+	}
+
 	for_each_present_cpu(cpu) {
 		if (cpumask_test_cpu(cpu, mask)) {
 			if (!acked[cpu])
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
