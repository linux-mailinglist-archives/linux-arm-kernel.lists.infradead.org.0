Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1740E150004
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 00:26:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2tMSHPlQf6E+4jFMu2wNeOj+YmMBIbkZpKbtSN114ik=; b=Cxty818eaXoyaU
	P7yedCzwSG+7/af/objiZjjv66EDRfC3LEq1cg0pU0ns0kdX7bfaX6+Od783IGmZ8UIM608dgmEkh
	o/BGhf8kwJs3i/Vegfks9YHWtgiPTkNXsK70eF3lG1MtQuUnuJj+EAEddZWC6dj/tspILm57AdDRL
	ymxA+cIbHET26NMQsEEkZyvN4H8r1xMt7K23/0HpkcmXp7jspX2+RVTiPcKzE+jxmwUzXujNZ6Ozc
	vWC4inTsSBKxLX8qYfUYxcXkyl1qnwHZCoDcJDSyVOqus66Tc2jZ/KHqLOBVtChqrCeJBsm/Mm+Cx
	UnV+OnR+Smcbhmyrg8bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyOcs-0003qN-Ky; Sun, 02 Feb 2020 23:26:02 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyObw-0001lo-RC
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 23:25:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580685901;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=5M+c7ai0duOZZXxwtCUkVVrCCr8qXVRXrlkpjd9yt9k=;
 b=ftypCZnxHomMbkWTAd483yGZV+f4jUlbrlZetx6UunoVKzbMGNrC49GJvP0R8Kj8dpn4So
 /adRAfhQxu6sE9T1WY3tn942FKL5IusPDWxjqlyTL1SHaQ6vhI+Zx8yj8yVoSvkvvgmI5Q
 CgniTuuinj+jlJseRnQeDY8mdROZo9k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-154-0p1LnvpNOt2TZHqPH_2CVA-1; Sun, 02 Feb 2020 18:24:59 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8997D800D48;
 Sun,  2 Feb 2020 23:24:58 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-57.bne.redhat.com
 [10.64.54.57])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2C8165C1D6;
 Sun,  2 Feb 2020 23:24:55 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: Dereference CPU operations indirectly
Date: Mon,  3 Feb 2020 10:24:37 +1100
Message-Id: <20200202232437.7626-5-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: 0p1LnvpNOt2TZHqPH_2CVA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_152505_212543_6E403331 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, lorenzo.pieralisi@arm.com,
 will@kernel.org, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
much memory has been used for this.

This introduces another array (@cpu_ops_index[NR_CPUS]), of which the
index to CPU operations array is stored. With this, we just one byte
for each CPU, 256 bytes for 256 CPUs, to dereference the CPU operations
indirectly.

Signed-off-by: Gavin Shan <gshan@redhat.com>
---
 arch/arm64/kernel/cpu_ops.c | 44 +++++++++++++++++++++----------------
 1 file changed, 25 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index e133011f64b5..2a58222a2f24 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -20,39 +20,33 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
 #endif
 extern const struct cpu_operations cpu_psci_ops;
 
-static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
-
-static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
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
 	NULL,
 };
+static unsigned char cpu_ops_indexes[NR_CPUS] __ro_after_init;
 
-static const struct cpu_operations * __init cpu_get_ops(const char *name)
+static unsigned char __init get_cpu_ops_index(const char *name)
 {
-	const struct cpu_operations *const *ops;
-
-	ops = acpi_disabled ? dt_supported_cpu_ops : acpi_supported_cpu_ops;
+	const struct cpu_operations *const *ops = cpu_ops;
+	unsigned char index = 0;
 
 	while (*ops) {
 		if (!strcmp(name, (*ops)->name))
-			return *ops;
+			return (index + 1);
 
 		ops++;
+		index++;
 	}
 
-	return NULL;
+	return 0;
 }
 
-static const char *__init cpu_read_enable_method(int cpu)
+static const char *__init get_cpu_method(int cpu)
 {
 	const char *enable_method;
 
@@ -98,21 +92,33 @@ static const char *__init cpu_read_enable_method(int cpu)
  */
 int __init init_cpu_ops(int cpu)
 {
-	const char *enable_method = cpu_read_enable_method(cpu);
+	const char *enable_method = get_cpu_method(cpu);
+	unsigned char index;
 
 	if (!enable_method)
 		return -ENODEV;
 
-	cpu_ops[cpu] = cpu_get_ops(enable_method);
-	if (!cpu_ops[cpu]) {
+	index = get_cpu_ops_index(enable_method);
+	if (!index) {
 		pr_warn("Unsupported enable-method: %s\n", enable_method);
 		return -EOPNOTSUPP;
 	}
 
+	cpu_ops_indexes[cpu] = index;
+
 	return 0;
 }
 
 const struct cpu_operations *get_cpu_ops(int cpu)
 {
-	return cpu_ops[cpu];
+	unsigned char index = cpu_ops_indexes[cpu];
+
+	/*
+	 * The corresponding CPU operation isn't set when the
+	 * index is equal to zero.
+	 */
+	if (!index)
+		return NULL;
+
+	return cpu_ops[index - 1];
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
