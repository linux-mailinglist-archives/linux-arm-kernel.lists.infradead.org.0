Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4726717A204
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 10:08:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oVFuFaS8eOpFBNSKyRQlHMvBjSgSvny6+RuqqJsiBDg=; b=uyqaUWs7RVFvTeehP24sqKy0wq
	CBQmCBxfwIdJY9HcQbktZNNg9lgNRcbdhJTSwt0BgEmGEzH5jlzKAhv1ua8z7I+g4Oz6DnFEJAxv2
	Q9xI0sOO5d79Y3kuVBWf4E9Grq3Gk/ZZCsnp1jFo3F/XIH3XaC9l5XUkF8qZipdWjAhhoLMkYl3rA
	WJbC5MBrCTYQS13IP4fAsW6JGQ4pPljo/EFpklAGFcZPs9Rx5HwfaeAVF4ZukF5eodT/57SF+5uar
	yqkx0dGuCcbn+yCiGpKG2dZIoq3KAqouVV2w+pqTH6BpT6dkYKevTeOBhlwVyxjUX0bEt2+YMbz84
	epfob7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9mUT-0007j1-E6; Thu, 05 Mar 2020 09:08:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9mTI-0006m1-TN
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 09:07:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C65C04B2;
 Thu,  5 Mar 2020 01:07:11 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.53])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 325343F534;
 Thu,  5 Mar 2020 01:07:09 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, dietmar.eggemann@arm.com,
 rjw@rjwysocki.net, pkondeti@codeaurora.org, ionela.voinescu@arm.com
Subject: [PATCH v6 5/7] cpufreq: add function to get the hardware max frequency
Date: Thu,  5 Mar 2020 09:06:25 +0000
Message-Id: <20200305090627.31908-6-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200305090627.31908-1-ionela.voinescu@arm.com>
References: <20200305090627.31908-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_010713_077557_8B6B995F 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add weak function to return the hardware maximum frequency of a CPU,
with the default implementation returning cpuinfo.max_freq, which is
the best information we can generically get from the cpufreq framework.

The default can be overwritten by a strong function in platforms
that want to provide an alternative implementation, with more accurate
information, obtained either from hardware or firmware.

Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>
Cc: Rafael J. Wysocki <rjw@rjwysocki.net>
Cc: Viresh Kumar <viresh.kumar@linaro.org>
---
 drivers/cpufreq/cpufreq.c | 20 ++++++++++++++++++++
 include/linux/cpufreq.h   |  5 +++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/cpufreq/cpufreq.c b/drivers/cpufreq/cpufreq.c
index cbe6c94bf158..985228aee46f 100644
--- a/drivers/cpufreq/cpufreq.c
+++ b/drivers/cpufreq/cpufreq.c
@@ -1725,6 +1725,26 @@ unsigned int cpufreq_quick_get_max(unsigned int cpu)
 }
 EXPORT_SYMBOL(cpufreq_quick_get_max);
 
+/**
+ * cpufreq_get_hw_max_freq - get the max hardware frequency of the CPU
+ * @cpu: CPU number
+ *
+ * The default return value is the max_freq field of cpuinfo.
+ */
+__weak unsigned int cpufreq_get_hw_max_freq(unsigned int cpu)
+{
+	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
+	unsigned int ret_freq = 0;
+
+	if (policy) {
+		ret_freq = policy->cpuinfo.max_freq;
+		cpufreq_cpu_put(policy);
+	}
+
+	return ret_freq;
+}
+EXPORT_SYMBOL(cpufreq_get_hw_max_freq);
+
 static unsigned int __cpufreq_get(struct cpufreq_policy *policy)
 {
 	if (unlikely(policy_is_inactive(policy)))
diff --git a/include/linux/cpufreq.h b/include/linux/cpufreq.h
index 0fb561d1b524..f7240251a949 100644
--- a/include/linux/cpufreq.h
+++ b/include/linux/cpufreq.h
@@ -205,6 +205,7 @@ static inline bool policy_is_shared(struct cpufreq_policy *policy)
 unsigned int cpufreq_get(unsigned int cpu);
 unsigned int cpufreq_quick_get(unsigned int cpu);
 unsigned int cpufreq_quick_get_max(unsigned int cpu);
+unsigned int cpufreq_get_hw_max_freq(unsigned int cpu);
 void disable_cpufreq(void);
 
 u64 get_cpu_idle_time(unsigned int cpu, u64 *wall, int io_busy);
@@ -232,6 +233,10 @@ static inline unsigned int cpufreq_quick_get_max(unsigned int cpu)
 {
 	return 0;
 }
+static inline unsigned int cpufreq_get_hw_max_freq(unsigned int cpu)
+{
+	return 0;
+}
 static inline void disable_cpufreq(void) { }
 #endif
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
