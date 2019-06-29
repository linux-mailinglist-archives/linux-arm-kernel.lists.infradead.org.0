Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FC95A8A5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 04:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cC9jyzYjfbwTvqfiMoewPl8IHhbAouUQTwJ2zTroUGE=; b=trHhecA9nxQDqu
	WFwjiPxr/aWXgXVDYfqV/BOwGq8zfNzubydbKOkh6WKDLq6KyGppwPC+4s5uF0LRtE1UOo/X8Hk2y
	2JqhuyMkYWpRqoILiat3QPv7iaEohSWMCrU4ajtCa2dWnp6vFwSIZO8mdXPETSnBPCQgmXMOTo/x4
	X1p9YWBZm/7yDPNhxHxYDQtmlKJB+OUZ+RwXiNK16ScGUFZvGLVfz/pwswiMlvvZNyRza7N4vHjJS
	uUk7aXPZ5nm0l4WtyVGl128SDCCLd2nfYWE35s88spG03aaIZMQi0yKPHYGmfE8U0naRoFYISalSG
	Ij4Fkj1HPSHH8MtkMh3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh3O5-0007Ap-Ge; Sat, 29 Jun 2019 02:46:49 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh3MG-0004qI-FJ
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 02:45:02 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 298FF9071D527054F3DD;
 Sat, 29 Jun 2019 10:44:51 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Sat, 29 Jun 2019 10:44:43 +0800
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
To: <rjw@rjwysocki.net>, <catalin.marinas@arm.com>, <james.morse@arm.com>
Subject: [RFC PATCH v2 2/3] arm64: mark all the GICC nodes in MADT as possible
 cpu
Date: Sat, 29 Jun 2019 10:42:34 +0800
Message-ID: <1561776155-38975-3-git-send-email-wangxiongfeng2@huawei.com>
X-Mailer: git-send-email 1.7.12.4
In-Reply-To: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
References: <1561776155-38975-1-git-send-email-wangxiongfeng2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_194456_841985_99235678 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: xiexiuqi@huawei.com, jonathan.cameron@huawei.com, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, wangxiongfeng2@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We set 'cpu_possible_mask' based on the enabled GICC node in MADT. If
the GICC node is disabled, we will skip initializing the kernel data
structure for that CPU.

To support CPU hotplug, we need to initialize some CPU related data
structure in advance. This patch mark all the GICC nodes as possible CPU
and only these enabled GICC nodes as present CPU.

Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
---
 arch/arm64/kernel/setup.c |  2 +-
 arch/arm64/kernel/smp.c   | 11 +++++------
 2 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 7e541f9..7f4d12a 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -359,7 +359,7 @@ static int __init topology_init(void)
 	for_each_online_node(i)
 		register_one_node(i);
 
-	for_each_possible_cpu(i) {
+	for_each_online_cpu(i) {
 		struct cpu *cpu = &per_cpu(cpu_data.cpu, i);
 		cpu->hotpluggable = 1;
 		register_cpu(cpu, i);
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 6dcf960..6d9983c 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -525,16 +525,14 @@ struct acpi_madt_generic_interrupt *acpi_cpu_get_madt_gicc(int cpu)
 {
 	u64 hwid = processor->arm_mpidr;
 
-	if (!(processor->flags & ACPI_MADT_ENABLED)) {
-		pr_debug("skipping disabled CPU entry with 0x%llx MPIDR\n", hwid);
-		return;
-	}
-
 	if (hwid & ~MPIDR_HWID_BITMASK || hwid == INVALID_HWID) {
 		pr_err("skipping CPU entry with invalid MPIDR 0x%llx\n", hwid);
 		return;
 	}
 
+	if (!(processor->flags & ACPI_MADT_ENABLED))
+		pr_debug("disabled CPU entry with 0x%llx MPIDR\n", hwid);
+
 	if (is_mpidr_duplicate(cpu_count, hwid)) {
 		pr_err("duplicate CPU MPIDR 0x%llx in MADT\n", hwid);
 		return;
@@ -755,7 +753,8 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
 		if (err)
 			continue;
 
-		set_cpu_present(cpu, true);
+		if ((cpu_madt_gicc[cpu].flags & ACPI_MADT_ENABLED))
+			set_cpu_present(cpu, true);
 		numa_store_cpu_info(cpu);
 	}
 }
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
