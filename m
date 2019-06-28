Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A94605A349
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 20:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pH9p7lTSW57rBplnVWUAODP2AXkQdZdbNfl9PEaSS6w=; b=ta/EjvLpoYcOIL
	Au9EZqxMgcZf4Ubf3q0oolDwflf48mP69EtsYL+kHaHFOkzO5wl5tbdvx+7Sze4wQsiVx5JF9YRo1
	SV1PwnOCXdqr7Bj88tjDS8XZYi/lctcY65Zc/Jd2NDzNfzFf8ZXoRFWMYpFC7/+BTyWy+wh4NPG1I
	9hzpfSFQu2shY0hMnAjHaZdmRaOVAEOzWVU9NVKhqLhoj6lNs6FfvwlzEqOKKcwMpuPzlWJLRZ9rY
	QawfH01hk0idPXP2o/3D1cj0MsvBM7daF9TUtSvUAQfiukKSYP7vwUB/mQCQFwtX2TtyOlM+mM8kO
	6gWBuXUCiSPBO9eFgKUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvPJ-0001vg-JX; Fri, 28 Jun 2019 18:15:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvOs-00013W-7g
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 18:15:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D7812B;
 Fri, 28 Jun 2019 11:15:05 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 556403F718;
 Fri, 28 Jun 2019 11:15:05 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
Date: Fri, 28 Jun 2019 13:14:56 -0500
Message-Id: <20190628181457.6609-2-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190628181457.6609-1-jeremy.linton@arm.com>
References: <20190628181457.6609-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_111506_458569_E4A2C303 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: lorenzo.pieralisi@arm.com, will.deacon@arm.com, sudeep.holla@arm.com,
 rjw@rjwysocki.net, Jeremy Linton <jeremy.linton@arm.com>,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI 6.3 adds a flag to the CPU node to indicate whether
the given PE is a thread. Add a function to return that
information for a given linux logical CPU.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 drivers/acpi/pptt.c  | 62 +++++++++++++++++++++++++++++++++++++++++++-
 include/linux/acpi.h |  5 ++++
 2 files changed, 66 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
index b72e6afaa8fb..bb6196422fad 100644
--- a/drivers/acpi/pptt.c
+++ b/drivers/acpi/pptt.c
@@ -517,6 +517,52 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
 	return retval;
 }
 
+/**
+ * check_acpi_cpu_flag() - Determine if CPU node has a flag set
+ * @cpu: Kernel logical CPU number
+ * @rev: The PPTT revision defining the flag
+ * @flag: The flag itself
+ *
+ * Check the node representing a CPU for a given flag.
+ *
+ * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
+ *	   the table revision isn't new enough.
+ *	   1, any passed flag set
+ *	   0, flag unset
+ */
+static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)
+{
+	struct acpi_table_header *table;
+	acpi_status status;
+	u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
+	struct acpi_pptt_processor *cpu_node = NULL;
+	int ret = -ENOENT;
+	static int saved_pptt_rev = -1;
+
+	/* Cache the PPTT revision to avoid repeat table get/put on failure */
+	if (saved_pptt_rev > -1 && saved_pptt_rev < rev)
+		return -ENOENT;
+
+	status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
+	if (ACPI_FAILURE(status)) {
+		saved_pptt_rev = 0;
+		acpi_pptt_warn_missing();
+		return ret;
+	}
+
+	saved_pptt_rev = table->revision;
+
+	if (saved_pptt_rev >= rev)
+		cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
+
+	if (cpu_node)
+		ret = (cpu_node->flags & flag) != 0;
+
+	acpi_put_table(table);
+
+	return ret;
+}
+
 /**
  * acpi_find_last_cache_level() - Determines the number of cache levels for a PE
  * @cpu: Kernel logical CPU number
@@ -581,6 +627,21 @@ int cache_setup_acpi(unsigned int cpu)
 	return status;
 }
 
+/**
+ * acpi_pptt_cpu_is_thread() - Determine if CPU is a thread
+ * @cpu: Kernel logical CPU number
+ *
+ *
+ * Return: 1, a thread
+ *         0, not a thread
+ *         -ENOENT ,if the PPTT doesn't exist, the CPU cannot be found or
+ *         the table revision isn't new enough.
+ */
+int acpi_pptt_cpu_is_thread(unsigned int cpu)
+{
+	return check_acpi_cpu_flag(cpu, 2, ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD);
+}
+
 /**
  * find_acpi_cpu_topology() - Determine a unique topology value for a given CPU
  * @cpu: Kernel logical CPU number
@@ -641,7 +702,6 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
 	return ret;
 }
 
-
 /**
  * find_acpi_cpu_topology_package() - Determine a unique CPU package value
  * @cpu: Kernel logical CPU number
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index d315d86844e4..3e339375e213 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -1301,10 +1301,15 @@ static inline int lpit_read_residency_count_address(u64 *address)
 #endif
 
 #ifdef CONFIG_ACPI_PPTT
+int acpi_pptt_cpu_is_thread(unsigned int cpu);
 int find_acpi_cpu_topology(unsigned int cpu, int level);
 int find_acpi_cpu_topology_package(unsigned int cpu);
 int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
 #else
+static inline int acpi_pptt_cpu_is_thread(unsigned int cpu)
+{
+	return -EINVAL;
+}
 static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
 {
 	return -EINVAL;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
