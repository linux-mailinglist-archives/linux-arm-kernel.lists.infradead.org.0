Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACE3159E5E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 01:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24zCL9uti/pNcA3JbXvTO5E+wa86Vjgna2qA+pijFY0=; b=Ca3t3FTEHO33pi
	m+rykLzM65CyAtVqG73i6tQlf7Yx7VMImXSKBzw72WdlIMd8XV0vwDzpWcAmNWtn5nyOzn5QK+8jx
	ssq0gdkHC1aXKOwM0KOLerWshLZk4AYQm9ZrCDjaTIzQMWQ3kCN6+Xdxlk+UE/kuYVprVRVVKH1mQ
	RdKEXO5NiNFdPYM9YumvCVCluQaYBHqfMEECRLw7KC1604P0JaUBCD2KVW12mxqBTQIG0swtT8Xmw
	M3VIg6GYPYebYL3PsICT5Jfy/5pIGrkxmasHeFwDoiLX47Ks1tXqlHOPg8yFHDBhJXW/0nbimMYJi
	rU5IXwtKI7oBj9hAVvug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1gDk-0001Cf-Ss; Wed, 12 Feb 2020 00:49:40 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1g8Y-0003VN-Td
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 00:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581468257;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=56Wd+pLLPTvSUVpTG+MSZeAreq3mpebS3/vGvKPY2Vc=;
 b=TxlVM5+9Yi/vekZbfqEhivvTpUjigAubtMcAXQAOUS+GZ1omZ5LDq/TyqUepXQwLLKanHn
 KogOycGTjw13ExTDjC1iYobwDE6BPGYlZuZhmfMqsq9zg8rsjd7VNz5XvbzgKtVHy1XGZ2
 oqhttIdt7zstNZY43l70PQDSfc9Y+80=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-411-VjwPVUpHP5mfyhGG08MoZQ-1; Tue, 11 Feb 2020 19:44:15 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3FEBE107ACCA;
 Wed, 12 Feb 2020 00:44:14 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-85.bne.redhat.com
 [10.64.54.85])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B0FA5D9E2;
 Wed, 12 Feb 2020 00:44:11 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/5] arm64: Remove CPU operations dereferencing array
Date: Wed, 12 Feb 2020 11:43:50 +1100
Message-Id: <20200212004351.66576-5-gshan@redhat.com>
In-Reply-To: <20200212004351.66576-1-gshan@redhat.com>
References: <20200212004351.66576-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: VjwPVUpHP5mfyhGG08MoZQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_164419_067764_15FA01EF 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 catalin.marinas@arm.com, sudeep.holla@arm.com, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
much memory has been used for this. Also, all CPUs must use same CPU
operations and we shouldn't bring up the broken CPU, as Lorenzo Pieralisi
pointed out.

This introduces variable (@cpu_ops_index) to store the unified CPU
operations index. The CPU, which has different index, won't be brought
up. With this, the CPU operations dereferencing array is removed and
2KB memory is saved.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/cpu_ops.c | 62 ++++++++++++++++++++-----------------
 1 file changed, 34 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index e133011f64b5..f59c087d6284 100644
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
+static int cpu_ops_index __ro_after_init = INT_MAX;
 
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
 
@@ -93,26 +85,40 @@ static const char *__init cpu_read_enable_method(int cpu)
 
 	return enable_method;
 }
-/*
- * Read a cpu's enable method and record it in cpu_ops.
- */
+
 int __init init_cpu_ops(int cpu)
 {
-	const char *enable_method = cpu_read_enable_method(cpu);
+	const char *enable_method = get_cpu_method(cpu);
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
 
+	/* Update the index directly if it's invalid */
+	if (cpu_ops_index == INT_MAX) {
+		cpu_ops_index = index;
+		return 0;
+	}
+
+	if (index != cpu_ops_index) {
+		pr_warn("Invalid CPU operations index %d (%d) on CPU %d\n",
+			index, cpu_ops_index, cpu);
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
 const struct cpu_operations *get_cpu_ops(int cpu)
 {
-	return cpu_ops[cpu];
+	if (cpu_ops_index == INT_MAX)
+		return NULL;
+
+	return cpu_ops[cpu_ops_index];
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
