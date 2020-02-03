Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1F6151384
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 00:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IGQve1WB/+1bnDsdhciCccYA5mZGs55QxfNCmUrl83s=; b=lwGsQJVDgK9Dzf
	jNlgqLV07zs2g0EsjIyOlqVKs9+Z00KahlsdWkKHoIg1JRTJauhkciAMDFAYGAiOVJP2d1ex2Q56b
	a3ZkVR3LfAKk8TCcz9kPixCm3Ia2ThYxE9j9Kee7mVNNEZ8b40m9sqCZfqn72sHatjlwtEzOftpkP
	ufQgqSWy/HRXFO3h/qUA1ZI1msM0MMOREP3ZsxKBzkyPJOecvamuFWh/ZDU+o1HHBhZh1j6cvuWRZ
	U9M8N7lqIiTKv3jKiXY8gmx5XlbihPkeDTW9g94Khn3DtJZiM5el/b/H7S5vZ/4DuULo7q0OGe5ub
	8j4A3ow6IEFPMyTSoicA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iylVv-0000TF-7U; Mon, 03 Feb 2020 23:52:23 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iylVA-0008HU-5a
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 23:51:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580773893;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=e/w1Zj/3vI/z4Oq8ScgfGJKGbwzxb9O9GfBS390nz+Y=;
 b=Qn91e2j8ztA1Nv3tNecuorQDca7ihhM5VNR3G2MpOUecKOzNmNaH4Av2BHYxgCQTN7bX18
 OZeZwszMIhjOhRmMUAfZbZd9GubdRl8X5Cc/DvrVHaFio9gaidg4tyWj5SHnILcKMhTpiQ
 j1tWJnUecIbdCly97V/WFUAbwklI4lw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-9cfxJHNDNoaZyR0n_orYZA-1; Mon, 03 Feb 2020 18:51:31 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8C3A4DB60;
 Mon,  3 Feb 2020 23:51:30 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-57.bne.redhat.com
 [10.64.54.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 28CA35D9C5;
 Mon,  3 Feb 2020 23:51:27 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 4/4] arm64: Dereference CPU operations indirectly
Date: Tue,  4 Feb 2020 10:51:07 +1100
Message-Id: <20200203235107.190609-5-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: 9cfxJHNDNoaZyR0n_orYZA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_155136_426693_7D9EBD3B 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 robin.murphy@arm.com, sudeep.holla@arm.com, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
much memory has been used for this.

This introduces another array (@cpu_ops_index[NR_CPUS/4]), of which the
index to CPU operations array is stored. With this, we just need one byte
to be shared by 4 CPUs, 64 bytes for 256 CPUs, to dereference the CPU
operations indirectly. Note this optimization has the assumption: these
CPU operations aren't dereferenced in hot path.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/cpu_ops.c | 49 ++++++++++++++++++-------------------
 1 file changed, 24 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index e133011f64b5..d9103d5c9c6f 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -4,7 +4,6 @@
  *
  * Copyright (C) 2013 ARM Ltd.
  */
-
 #include <linux/acpi.h>
 #include <linux/cache.h>
 #include <linux/errno.h>
@@ -20,39 +19,32 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
 #endif
 extern const struct cpu_operations cpu_psci_ops;
 
-static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
-
-static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
+/*
+ * Each element of the index array is shared by 4 CPUs. It means each
+ * CPU index uses 2 bits.
+ */
+static const struct cpu_operations *const cpu_ops[] = {
 	&smp_spin_table_ops,
-	&cpu_psci_ops,
-	NULL,
-};
-
-static const struct cpu_operations *const acpi_supported_cpu_ops[] __initconst = {
 #ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
 	&acpi_parking_protocol_ops,
 #endif
 	&cpu_psci_ops,
-	NULL,
 };
+static unsigned char cpu_ops_indexes[DIV_ROUND_UP(NR_CPUS, 4)] __ro_after_init;
 
-static const struct cpu_operations * __init cpu_get_ops(const char *name)
+static int __init get_cpu_ops_index(const char *name)
 {
-	const struct cpu_operations *const *ops;
-
-	ops = acpi_disabled ? dt_supported_cpu_ops : acpi_supported_cpu_ops;
-
-	while (*ops) {
-		if (!strcmp(name, (*ops)->name))
-			return *ops;
+	int index;
 
-		ops++;
+	for (index = 0; index < ARRAY_SIZE(cpu_ops); index++) {
+		if (!strcmp(cpu_ops[index]->name, name))
+			return index;
 	}
 
-	return NULL;
+	return -ERANGE;
 }
 
-static const char *__init cpu_read_enable_method(int cpu)
+static const char *__init get_cpu_method(int cpu)
 {
 	const char *enable_method;
 
@@ -98,21 +90,28 @@ static const char *__init cpu_read_enable_method(int cpu)
  */
 int __init init_cpu_ops(int cpu)
 {
-	const char *enable_method = cpu_read_enable_method(cpu);
+	const char *enable_method = get_cpu_method(cpu);
+	unsigned char *pindex = &cpu_ops_indexes[cpu / 4];
+	int index;
 
 	if (!enable_method)
 		return -ENODEV;
 
-	cpu_ops[cpu] = cpu_get_ops(enable_method);
-	if (!cpu_ops[cpu]) {
+	index = get_cpu_ops_index(enable_method);
+	if (index < 0) {
 		pr_warn("Unsupported enable-method: %s\n", enable_method);
 		return -EOPNOTSUPP;
 	}
 
+	*pindex &= ~(0x3 << (2 * (cpu % 4)));
+	*pindex |= ((index & 0x3) << (2 * (cpu % 4)));
+
 	return 0;
 }
 
 const struct cpu_operations *get_cpu_ops(int cpu)
 {
-	return cpu_ops[cpu];
+	int index = ((cpu_ops_indexes[cpu / 4] >> (2 * (cpu % 4))) & 0x3);
+
+	return cpu_ops[index];
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
