Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0907F16F439
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:25:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyvt5uD/T8U+2ajElpGl6LKHZihJYLPF2PK599UelLA=; b=syUhWDt/Rd5WWC
	cJZTRTbq4QSSwDIYgUe2jkOYrykHbO2hCwYjK5rLABzes031qMRCkWN/c7rpOC9fLsN3o3xqNZnEv
	EBo8/V1ZCC9ps0F3W5aYG7zbyokWSAcdBz4ynIeUVszyl2zYlKTfLWbloET6mYKgKkwY4tEd2RG9N
	mLqXO/ofb4N9xbRnd+c1qLnssVC0fwGws4kXjW6PwEApyQGW4Zpyc7eXUhG8Xcqvjpcivqjw8cll5
	Po2EphIh9GSaIVyg5NM6a1YzpuXYIErBJHW1KZKJJagJ6WxFvpU3a4DGUl+aY8pDn8Ekonx//vX8D
	c2/7/ALOGbWNd23cUCCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kWD-0003IL-4Q; Wed, 26 Feb 2020 00:25:41 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kV5-0001Nx-7M
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:24:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582676669;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kUrh4H0qfDiS7k7USqpjyXfkLIks971aM+v9JDzGpKQ=;
 b=YaxHGBxvgAhpB4e4or9tHZ+sXtBAKlxIJJ1MJdIvDWwgo1lvKA85DoHxJlpi7pWiDZeE51
 EVnIpLouNEPoRut9s4NU8bBoEanfXoKfx9oqUNGngLt3M+gPdpG1FzkyY4e88II1Gxmkm2
 lZ07jhBWOi5MWTHXKQ7li81tWAgwNJw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-cKqyq0bWOzusDTd4VuKwuA-1; Tue, 25 Feb 2020 19:24:23 -0500
X-MC-Unique: cKqyq0bWOzusDTd4VuKwuA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E93328017CC;
 Wed, 26 Feb 2020 00:24:21 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-83.bne.redhat.com
 [10.64.54.83])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0D31B5C21B;
 Wed, 26 Feb 2020 00:24:18 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 4/5] arm64: Remove CPU operations dereferencing array
Date: Wed, 26 Feb 2020 11:23:55 +1100
Message-Id: <20200226002356.86986-5-gshan@redhat.com>
In-Reply-To: <20200226002356.86986-1-gshan@redhat.com>
References: <20200226002356.86986-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_162431_387610_FBDFFC74 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 robin.murphy@arm.com, shan.gavin@gmail.com, sudeep.holla@arm.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
much memory has been used for this. Also, all CPUs must use same CPU
operations and we shouldn't bring up the broken CPU, as Lorenzo Pieralisi
pointed out.

This introduces variable (@cpu_ops) to store the unfied CPU operations.
Those CPUs using different operations, which is figured out from device
tree or ACPI table, won't be brought up. With this, the CPU operations
dereferencing array is removed and 2KB memory is saved. Note the logic
of cpu_get_ops() is merged to get_cpu_method() since the logic is simple
enough and no need to have a function for that.

Link: https://lore.kernel.org/linux-arm-kernel/20200211114553.GA21093@e121166-lin.cambridge.arm.com
Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/cpu_ops.c | 70 +++++++++++++++++--------------------
 1 file changed, 32 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index e133011f64b5..af73ca502b95 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -20,41 +20,19 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
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
+static const struct cpu_operations *cpu_ops __ro_after_init;
 
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
@@ -91,22 +69,38 @@ static const char *__init cpu_read_enable_method(int cpu)
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
-
-	if (!enable_method)
-		return -ENODEV;
+	const struct cpu_operations *ops = get_cpu_method(cpu);
 
-	cpu_ops[cpu] = cpu_get_ops(enable_method);
-	if (!cpu_ops[cpu]) {
-		pr_warn("Unsupported enable-method: %s\n", enable_method);
+	if (!ops)
 		return -EOPNOTSUPP;
+
+	/* Update global CPU operations if it's not initialized yet */
+	if (!cpu_ops) {
+		cpu_ops = ops;
+		return 0;
+	}
+
+	/* We should have unified CPU operations */
+	if (ops != cpu_ops) {
+		pr_warn("Invalid CPU operations %s (%s) on CPU %d\n",
+			ops->name, cpu_ops->name, cpu);
+		return -EINVAL;
 	}
 
 	return 0;
@@ -114,5 +108,5 @@ int __init init_cpu_ops(int cpu)
 
 const struct cpu_operations *get_cpu_ops(int cpu)
 {
-	return cpu_ops[cpu];
+	return cpu_ops;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
