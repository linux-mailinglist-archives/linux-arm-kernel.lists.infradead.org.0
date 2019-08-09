Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED10387828
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 13:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IV7vZVVo83WV8N5oCAX4THw1nsS+k1yavJl8bayudVQ=; b=CUDP63Gg7POusv
	B/zfLte8bOzqopOPFNPsMb+A5GzOsxZZHaDgQJ6T/Y78AHcsRZtpP8Nsa532ngVwbTx8QVQ0Niq+c
	i7aX9EJCJr/1vYDmnBPUQ6k+iIzml4fqDXCmO2yEXHvj6yLts9/MzZ4IXDan3gFRpI0yDRKyrsESn
	wynObvbl9xYw5CRlzQdbS+hMAvKo+uXPWxbn1a80hGm313LPsODXOtwVT4so2HKpKAQiEyej+xCLQ
	nsErv7ZAxCBhygzlbJsn2PbHgETezDXR1bc+93ADt7WM9hJ6V0DWlWSlgusoMODzPaX+xAKTRrurM
	FU91Or5+CDrNI2ENgMkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw2gz-0005VP-6Z; Fri, 09 Aug 2019 11:04:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hw2g9-00050a-AA
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 11:03:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E0781684;
 Fri,  9 Aug 2019 04:03:24 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B74B93F575;
 Fri,  9 Aug 2019 04:03:22 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-pm@vger.kernel.org
Subject: [PATCH v2 2/8] ARM: cpuidle: Remove overzealous error logging
Date: Fri,  9 Aug 2019 12:03:08 +0100
Message-Id: <bfaea706699cd51341ef1870bc485c8554ebb0be.1565348376.git.lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1565348376.git.lorenzo.pieralisi@arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <cover.1565348376.git.lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_040325_398772_D3AA035C 
X-CRM114-Status: GOOD (  14.30  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>,
 Will Deacon <will@kernel.org>, LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CPUidle back-end operations are not implemented in some platforms
but this should not be considered an error serious enough to be
logged. Check the arm_cpuidle_init() return value to detect whether
the failure must be reported or not in the kernel log and do
not log it if the platform does not support CPUidle operations.

Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
---
 drivers/cpuidle/cpuidle-arm.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-arm.c b/drivers/cpuidle/cpuidle-arm.c
index dc33b3d2954f..9e5156d39627 100644
--- a/drivers/cpuidle/cpuidle-arm.c
+++ b/drivers/cpuidle/cpuidle-arm.c
@@ -105,11 +105,17 @@ static int __init arm_idle_init_cpu(int cpu)
 	ret = arm_cpuidle_init(cpu);
 
 	/*
-	 * Allow the initialization to continue for other CPUs, if the reported
-	 * failure is a HW misconfiguration/breakage (-ENXIO).
+	 * Allow the initialization to continue for other CPUs, if the
+	 * reported failure is a HW misconfiguration/breakage (-ENXIO).
+	 *
+	 * Some platforms do not support idle operations
+	 * (arm_cpuidle_init() returning -EOPNOTSUPP), we should
+	 * not flag this case as an error, it is a valid
+	 * configuration.
 	 */
 	if (ret) {
-		pr_err("CPU %d failed to init idle CPU ops\n", cpu);
+		if (ret != -EOPNOTSUPP)
+			pr_err("CPU %d failed to init idle CPU ops\n", cpu);
 		ret = ret == -ENXIO ? 0 : ret;
 		goto out_kfree_drv;
 	}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
