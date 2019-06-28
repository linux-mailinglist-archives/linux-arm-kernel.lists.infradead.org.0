Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A1559919
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 13:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAqW51P744S7tqjtHfLnIW1Bo2j9FAUBJbtVuDUwavs=; b=eEunyRuOchoVoP
	EqUF/JWjnqNNtbRnLY7fsD5saapkoaJcCMf4RkxvqbXfQtztMQlOpqM3XpNPuSeCtwKESnf78n13X
	GbK9dwndStPF5vgF/Gn9Djp20/5oOES5v5RUQ7zUpWGwzR5sJOfMtLoNkdv+0x1XxCS0Ub7QypNEh
	plhXUT7UOWaqH3tvkBzFCCcRmJ+AXIVnNa27h75T0bWhhrkEEimvTiKuoD/s0xvEucxxaTOnDrJQr
	HH/xCGbvAKtjCPrYFVQicvAjg6Cn1zeo4hynAu0Iwd6AN45zYla00ktQsrJqiRLmpBcB+vtPE3/Qo
	aMn7xea156iG6Hbx0F9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgosi-0008Hz-6v; Fri, 28 Jun 2019 11:17:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgorP-0007VR-3h
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 11:16:08 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0E03344E5B2ADD913F67;
 Fri, 28 Jun 2019 19:16:01 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 28 Jun 2019 19:15:51 +0800
From: Xiongfeng Wang <wangxiongfeng2@huawei.com>
To: <rjw@rjwysocki.net>, <catalin.marinas@arm.com>, <james.morse@arm.com>
Subject: [PATCH RFC 3/3] arm64: Add CPU hotplug support
Date: Fri, 28 Jun 2019 19:13:12 +0800
Message-ID: <1561720392-45907-4-git-send-email-wangxiongfeng2@huawei.com>
X-Mailer: git-send-email 1.7.12.4
In-Reply-To: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
References: <1561720392-45907-1-git-send-email-wangxiongfeng2@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_041607_386511_8EFC8188 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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

To support CPU hotplug, we need to implement 'acpi_(un)map_cpu()' and
'arch_(un)register_cpu()' for ARM64. These functions are called in
'acpi_processor_hotadd_init()/acpi_processor_remove()' when the CPU is hot
added into or hot removed from the system.

Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
---
 arch/arm64/kernel/acpi.c  | 22 ++++++++++++++++++++++
 arch/arm64/kernel/setup.c | 17 +++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/arch/arm64/kernel/acpi.c b/arch/arm64/kernel/acpi.c
index ed46dc1..0e7b4f5 100644
--- a/arch/arm64/kernel/acpi.c
+++ b/arch/arm64/kernel/acpi.c
@@ -28,6 +28,7 @@
 #include <linux/smp.h>
 #include <linux/serial_core.h>
 
+#include <acpi/processor.h>
 #include <asm/cputype.h>
 #include <asm/cpu_ops.h>
 #include <asm/pgtable.h>
@@ -257,3 +258,24 @@ pgprot_t __acpi_get_mem_attribute(phys_addr_t addr)
 		return __pgprot(PROT_NORMAL_NC);
 	return __pgprot(PROT_DEVICE_nGnRnE);
 }
+
+int acpi_map_cpu(acpi_handle handle, phys_cpuid_t physid, u32 acpi_id,
+		 int *pcpu)
+{
+	int cpu;
+
+	cpu = acpi_map_cpuid(physid, acpi_id);
+	*pcpu = cpu;
+	set_cpu_present(cpu, true);
+
+	return 0;
+}
+EXPORT_SYMBOL(acpi_map_cpu);
+
+int acpi_unmap_cpu(int cpu)
+{
+	set_cpu_present(cpu, false);
+
+	return 0;
+}
+EXPORT_SYMBOL(acpi_unmap_cpu);
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index a82d0c2..7b1a675 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -429,3 +429,20 @@ static int __init register_kernel_offset_dumper(void)
 	return 0;
 }
 __initcall(register_kernel_offset_dumper);
+
+int arch_register_cpu(int num)
+{
+	struct cpu *cpu = &per_cpu(cpu_data.cpu, num);
+
+	cpu->hotpluggable = 1;
+	return register_cpu(cpu, num);
+}
+EXPORT_SYMBOL(arch_register_cpu);
+
+void arch_unregister_cpu(int num)
+{
+	struct cpu *cpu = &per_cpu(cpu_data.cpu, num);
+
+	unregister_cpu(cpu);
+}
+EXPORT_SYMBOL(arch_unregister_cpu);
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
