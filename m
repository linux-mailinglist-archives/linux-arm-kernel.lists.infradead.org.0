Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7912618A8E7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 00:03:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkPWw3M8d0ooNG6h8F5q/TrhMmR7qpKSyq0NV9Htfdk=; b=nfuH0OkE1um6Bo
	LRvVqE/vq7iRJI8BAo3mzIx6rFNykS8g4agaUXf73vybb6nrdbgP+0WGt3GfwZ0ZCkbehxM8EugAC
	3GCdbb74fKjBUJSpwSVk6X89/9c18IRaqgNUkBsIP4k7pIfKqQ2JEKPi5IY3pMbrORZw0nNNOWtu1
	BAnKiE2cca+fLOsgcK9ZXCkNHfM2GuPIDxhFNV0CqwptTQcgJ9qNHemu8EmWvktlK95Ccxrbc9MXW
	6ysUh5JqGx7crD8VkqSK+zn29ENllaX+lmMYWycPr0X3mYsBYSHPoNZ8ba4uSAi0Fra8R6Hxsq2hV
	BkX0WzEAsPeTvvwn8ujQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhiZ-0000Rp-Oy; Wed, 18 Mar 2020 23:03:19 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhhd-0008At-CI
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 23:02:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584572540;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Lj+zir0Ue9gE1PKXiWdDmdvmZpnnYokPcXWJOjBD3G8=;
 b=SERvN8zxEjxSpW25dQ31cp8jyrUVfpd1Io8NeHr0T6wxbV/6SpsWU26MAEdF7740WuSrvP
 mraKC6RqEHUYSCFY/A7ZTkt9RU1oh6K9qEx/1obYh1VZQjM1lBWEQnS5NRWQsNC5fikPHf
 7dQTHd1OEOciCGbZNQqxOuZB1Q/IZAE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-308-V9JPZc6IPTGeDfBCft3NRg-1; Wed, 18 Mar 2020 19:02:13 -0400
X-MC-Unique: V9JPZc6IPTGeDfBCft3NRg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3EB7D100550E;
 Wed, 18 Mar 2020 23:02:12 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-221.bne.redhat.com
 [10.64.54.221])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 235FE17B91;
 Wed, 18 Mar 2020 23:02:08 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 4/4] arm64: Remove CPU operations dereferencing array
Date: Thu, 19 Mar 2020 10:01:45 +1100
Message-Id: <20200318230145.72097-5-gshan@redhat.com>
In-Reply-To: <20200318230145.72097-1-gshan@redhat.com>
References: <20200318230145.72097-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_160221_546680_C73F29E8 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will@kernel.org,
 catalin.marinas@arm.com, shan.gavin@gmail.com, sudeep.holla@arm.com,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
much memory has been used for this. Also, all secondary CPUs must use
same CPU operations and we shouldn't bring up the broken CPU as Lorenzo
Pieralisi and Mark Rutland pointed out.

This introduces two variables (@{boot,secondary}_cpu_ops) to store the
CPU operations for boot CPU and secondary CPUs separately, which are
figured out from device tree or ACPI table. The secondary CPUs which
have inconsistent operations won't be brought up. With this, the CPU
operations dereferencing array is removed and 2KB memory is saved. Note
the logic of cpu_get_ops() is merged to get_cpu_method() since the logic
is simple enough and no need to have a separate function for it.

Link: https://lore.kernel.org/linux-arm-kernel/20200211114553.GA21093@e121166-lin.cambridge.arm.com
Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/cpu_ops.c | 77 +++++++++++++++++++------------------
 1 file changed, 39 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index e133011f64b5..a0f647d22e36 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -20,41 +20,20 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
 #endif
 extern const struct cpu_operations cpu_psci_ops;
 
-static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
-
-static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
+static const struct cpu_operations *const available_cpu_ops[] __initconst = {
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
+static const struct cpu_operations *boot_cpu_ops __ro_after_init;
+static const struct cpu_operations *secondary_cpu_ops __ro_after_init;
 
-static const struct cpu_operations * __init cpu_get_ops(const char *name)
-{
-	const struct cpu_operations *const *ops;
-
-	ops = acpi_disabled ? dt_supported_cpu_ops : acpi_supported_cpu_ops;
-
-	while (*ops) {
-		if (!strcmp(name, (*ops)->name))
-			return *ops;
-
-		ops++;
-	}
-
-	return NULL;
-}
-
-static const char *__init cpu_read_enable_method(int cpu)
+static const struct cpu_operations * __init get_cpu_method(int cpu)
 {
 	const char *enable_method;
+	int i;
 
 	if (acpi_disabled) {
 		struct device_node *dn = of_get_cpu_node(cpu, NULL);
@@ -91,22 +70,44 @@ static const char *__init cpu_read_enable_method(int cpu)
 		}
 	}
 
-	return enable_method;
+	if (!enable_method) {
+		pr_warn("No enable-method found on CPU %d\n", cpu);
+		return NULL;
+	}
+
+	/* Search in the array with method */
+	for (i = 0; i < ARRAY_SIZE(available_cpu_ops); i++) {
+		if (!strcmp(available_cpu_ops[i]->name, enable_method))
+			return available_cpu_ops[i];
+	}
+
+	return NULL;
 }
-/*
- * Read a cpu's enable method and record it in cpu_ops.
- */
+
 int __init init_cpu_ops(int cpu)
 {
-	const char *enable_method = cpu_read_enable_method(cpu);
+	const struct cpu_operations *ops = get_cpu_method(cpu);
 
-	if (!enable_method)
-		return -ENODEV;
-
-	cpu_ops[cpu] = cpu_get_ops(enable_method);
-	if (!cpu_ops[cpu]) {
-		pr_warn("Unsupported enable-method: %s\n", enable_method);
+	if (!ops)
 		return -EOPNOTSUPP;
+
+	/* Update boot CPU operations */
+	if (!cpu) {
+		boot_cpu_ops = ops;
+		return 0;
+	}
+
+	/* Update secondary CPU operations if it's not initialized yet */
+	if (!secondary_cpu_ops) {
+		secondary_cpu_ops = ops;
+		return 0;
+	}
+
+	/* We should have unified secondary CPU operations */
+	if (ops != secondary_cpu_ops) {
+		pr_warn("Invalid CPU operations %s (%s) on secondary CPU %d\n",
+			ops->name, secondary_cpu_ops->name, cpu);
+		return -EINVAL;
 	}
 
 	return 0;
@@ -114,5 +115,5 @@ int __init init_cpu_ops(int cpu)
 
 const struct cpu_operations *get_cpu_ops(int cpu)
 {
-	return cpu_ops[cpu];
+	return cpu ? secondary_cpu_ops : boot_cpu_ops;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
