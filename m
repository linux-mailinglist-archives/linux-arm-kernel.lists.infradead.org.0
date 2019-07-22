Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E760F703F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 17:39:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7TeLhu3aJRidoHid+Oe9BJFnftQrMvu6gIH66c5I6k=; b=L2UTLMNJR8oJs1
	jFTzI9eujF5qgCNUNhJo2rCYZvUJ6yJ+/cqgVH8VDh6R5sSZvoDT/zKCt0oW43PKwlvCivbszQosm
	oUKBVwN0Ksc1fgvuSBkBVWyqdafmXF11bTNrN16l6a/n74Xn6Onp0nLTqT7IWr0FN1zKYX9xqxS3v
	cNDVQbjFjc4wLMgWqEa0rvdgNPfIBrrmJluwVa957Hl4MQtX4/c97sQFHZLOJqY53Em4ylitT8J5t
	13mKZcLjCYv2qN6EeyIUMen9zYA1gXjt9lZz1cNmJQCmpCv5KsWd17J+A3lQZxNqmqsXStlR093xB
	QH6E+QLHZT/F8rn9MAUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaPO-0007G3-Dy; Mon, 22 Jul 2019 15:39:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpaNv-0006k8-Fu
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 15:37:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E87AC1596;
 Mon, 22 Jul 2019 08:37:54 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 798643F694;
 Mon, 22 Jul 2019 08:37:53 -0700 (PDT)
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: linux-pm@vger.kernel.org
Subject: [PATCH 2/6] ARM: cpuidle: Remove overzealous error logging
Date: Mon, 22 Jul 2019 16:37:41 +0100
Message-Id: <20190722153745.32446-3-lorenzo.pieralisi@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_083755_578749_B1F56134 
X-CRM114-Status: GOOD (  14.07  )
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
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
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
