Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2E11EF8CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8retFmqVTCTPoqjXpxEuzTnJgD0PrdT4G4OUOL7YtHA=; b=OTpEsiR1ZRS5Y0
	2Ah7HK0/CefGbfxQGV4G5odqWpwfNzp/lBlzS99glwZOP+WMJaK51YG28nOjxqpzD1QQTRR/Nd7rx
	TWOXEVirNB/c8+O6RQaGr+GdqjlmVwYqw6C+q3Y+wGHB2fwKXwptp2+bDnKOgz7Zn5CJLTg/t8LrS
	/wi4+hY5fTVuA0Unl9dKRhLWj4XBMMEc+X9ibkNeZobFqzEYvS7pT7BnJS8r3/76Jix9s4UrLW3Nv
	TqNpGmA+dj2Dd81bxffB4ZwDmxRTsv0TzZKtDHVA3WK7sGNYTl0+RU9aDty+d8W8O7eZmADJZpLmK
	5Zlq/d5WVcVUeyDV8D5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCGD-0002gF-61; Fri, 05 Jun 2020 13:19:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCFF-0001zb-Q5
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:18:51 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A23F3206E6;
 Fri,  5 Jun 2020 13:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591363129;
 bh=iPssJmSp+Kp0nUy4lU4dQ6cYBwra3RuOzpDl2L+d1Ys=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L90ZdWI9fqE888FrKc2cxOzwp6Hc/bNdPVDKxrYrcgHW5sJls8N65WYxUp8eA+PvT
 WH0vqoo8Wp3nWiWFmfpbERrlHsucOTkIFzfYe+XzQZMhZpKt9sAZ5D5BQeGpzVGJQu
 DXqHY3FJoF3oux3EOGzwD9AiVPFAb8uu94HZt7MI=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 3/5] arm64: vdso: Initialise the per-CPU vDSO data
Date: Fri,  5 Jun 2020 14:11:29 +0100
Message-Id: <20200605131131.16491-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200605131131.16491-1-broonie@kernel.org>
References: <20200605131131.16491-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_061849_864153_C0ADC080 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Brown <broonie@kernel.org>, Andrei Vagin <avagin@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Register with the CPU hotplug system to initialise the per-CPU data for
getcpu().

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/vdso.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
index ea5e18e37371..9e5d12ce7de9 100644
--- a/arch/arm64/kernel/vdso.c
+++ b/arch/arm64/kernel/vdso.c
@@ -9,6 +9,7 @@
 
 #include <linux/cache.h>
 #include <linux/clocksource.h>
+#include <linux/cpuhotplug.h>
 #include <linux/elf.h>
 #include <linux/err.h>
 #include <linux/errno.h>
@@ -18,6 +19,7 @@
 #include <linux/sched.h>
 #include <linux/signal.h>
 #include <linux/slab.h>
+#include <linux/smp.h>
 #include <linux/timekeeper_internal.h>
 #include <linux/vmalloc.h>
 #include <vdso/datapage.h>
@@ -363,6 +365,26 @@ int aarch32_setup_additional_pages(struct linux_binprm *bprm, int uses_interp)
 }
 #endif /* CONFIG_COMPAT */
 
+static void vdso_cpu_init(void *p)
+{
+	struct arm64_vdso_data *data = (struct arm64_vdso_data *)vdso_data;
+	unsigned int cpu;
+
+	if (vdso_cpu_offset()) {
+		cpu = smp_processor_id();
+
+		data->cpu_data[cpu].cpu = cpu;
+		data->cpu_data[cpu].node = cpu_to_node(cpu);
+	}
+}
+
+static int vdso_cpu_online(unsigned int cpu)
+{
+	smp_call_function_single(cpu, vdso_cpu_init, NULL, 1);
+
+	return 0;
+}
+
 static int vdso_mremap(const struct vm_special_mapping *sm,
 		struct vm_area_struct *new_vma)
 {
@@ -389,6 +411,12 @@ static int __init vdso_init(void)
 	vdso_info[VDSO_ABI_AA64].dm = &aarch64_vdso_maps[AA64_MAP_VVAR];
 	vdso_info[VDSO_ABI_AA64].cm = &aarch64_vdso_maps[AA64_MAP_VDSO];
 
+	/*
+	 * Initialize per-CPU data, callback runs for all current and
+	 * future CPUs.
+	 */
+	cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "vdso", vdso_cpu_online, NULL);
+
 	return __vdso_init(VDSO_ABI_AA64);
 }
 arch_initcall(vdso_init);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
