Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 517271FCA10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 11:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgAUWl59aLjsbfOjyBZD2JJMcZd5kxD+SHAeX9JlB08=; b=DkC3rPVC6U18o2
	pA+iXFjJZdPVdgFkf6mSiLU5mXGjvkdEZ6lWmYPM0NQ56zb2CqfifnNwlx1IXJMOApQrYum9o/6tg
	yypDJCdxcOoEf0W3/RzEMC0MuObYQyRik3Yia+BTBWnPaMiwJfoXbMl6sR8PWyPgH9tt1yzNQXmdg
	YoXIRFaaKxk3jttaOl7Sr5O2u1XqDR2Ue3FMPkPUzn4wbCYDxmAEuWngejjdUUS8lAauWuz9t74go
	vW5tgPk8VnRSwFb96kjEKfA2CB4V/o40s8Qlpy5hJ5t+VwI0JNd8u08i2ZVNORRoqevCgHQA77oEb
	fy4TAHGSrsqwgR7xHzlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUcU-0005kq-Hr; Wed, 17 Jun 2020 09:44:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUcE-0005iZ-RO
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 09:44:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37DD031B;
 Wed, 17 Jun 2020 02:44:18 -0700 (PDT)
Received: from ubuntu.arm.com (unknown [10.57.54.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BD12C3F6CF;
 Wed, 17 Jun 2020 02:44:15 -0700 (PDT)
From: Nicola Mazzucato <nicola.mazzucato@arm.com>
To: linux-kernel@vger.kernel.org, sudeep.holla@arm.com, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: [PATCH 2/2] cpufreq: arm_scmi: Set fast_switch_possible conditionally
Date: Wed, 17 Jun 2020 10:43:32 +0100
Message-Id: <20200617094332.8391-2-nicola.mazzucato@arm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200617094332.8391-1-nicola.mazzucato@arm.com>
References: <20200617094332.8391-1-nicola.mazzucato@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_024418_929923_454B753A 
X-CRM114-Status: GOOD (  11.94  )
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
Cc: lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the fast_switch_possible flag is set unconditionally
to true. Based on this, schedutil does not create a
thread for frequency switching and would always use the
fast switch path.
However, if the platform does not support frequency
fast switch, this may cause the governor to attempt an
operation that is not supported by the platform.

Fix this by correctly retrieve the fast_switch capability
from the driver which knows if the platform can support
this feature.

Suggested-by: Lukasz Luba <lukasz.luba@arm.com>
Signed-off-by: Nicola Mazzucato <nicola.mazzucato@arm.com>
---
 drivers/cpufreq/scmi-cpufreq.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/scmi-cpufreq.c b/drivers/cpufreq/scmi-cpufreq.c
index 61623e2ff149..1cf688fcb56b 100644
--- a/drivers/cpufreq/scmi-cpufreq.c
+++ b/drivers/cpufreq/scmi-cpufreq.c
@@ -198,7 +198,8 @@ static int scmi_cpufreq_init(struct cpufreq_policy *policy)
 
 	policy->cpuinfo.transition_latency = latency;
 
-	policy->fast_switch_possible = true;
+	policy->fast_switch_possible =
+		handle->perf_ops->fast_switch_possible(handle, cpu_dev);
 
 	em_register_perf_domain(policy->cpus, nr_opp, &em_cb);
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
