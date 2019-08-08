Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FDA86BC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 22:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2DFmUBjUFq/Qyi4kkqQW5IEBZy1PUYcuEx0saUeDY4=; b=mYWnRmbvhYfFpt
	JoI2sBwqhW7rPExlyChbACtSrZWeUdrWg9ueeXNzrAxL9qDzVAPnkzCxWukrMJPtJ64txdqZDb2Np
	q9DkJYUdkbx8tKqur19LKGgLraMMPXRzK/KsDxUJW0sW7og68YWrPqloH9ami82GPX5lQg2b4v0ZE
	PHeoyilkb4wuH5MVP1ndA3eBdwcND6PeVsOf0Wf+EQGQw1jdB4Zi4wWFsup6iOfCT09tyPiIZ6IQB
	kqpZJuv+gUE7fmEvphENK7EYlGTp+YOx3QavEi1Fm3jHi1EfJypVimGs8yEh9SjqXqI+4p1qUmGXa
	AyyJwZ/GGXB9LMe/js2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpEb-0005ki-Ms; Thu, 08 Aug 2019 20:42:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpEK-0005eD-3S
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 20:41:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33B771684;
 Thu,  8 Aug 2019 13:41:45 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 22BC93F694;
 Thu,  8 Aug 2019 13:41:45 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
Date: Thu,  8 Aug 2019 15:40:06 -0500
Message-Id: <20190808204007.30110-2-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190808204007.30110-1-jeremy.linton@arm.com>
References: <20190808204007.30110-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_134148_230440_2E829C78 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: lorenzo.pieralisi@arm.com, rric@kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, Jeremy Linton <jeremy.linton@arm.com>,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, will@kernel.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI 6.3 adds a flag to the CPU node to indicate whether
the given PE is a thread. Add a function to return that
information for a given linux logical CPU.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/acpi/pptt.c  | 53 +++++++++++++++++++++++++++++++++++++++++++-
 include/linux/acpi.h |  5 +++++
 2 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
index 1e7ac0bd0d3a..f31544d3656e 100644
--- a/drivers/acpi/pptt.c
+++ b/drivers/acpi/pptt.c
@@ -540,6 +540,44 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
 	return retval;
 }
 
+/**
+ * check_acpi_cpu_flag() - Determine if CPU node has a flag set
+ * @cpu: Kernel logical CPU number
+ * @rev: The minimum PPTT revision defining the flag
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
+
+	status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
+	if (ACPI_FAILURE(status)) {
+		acpi_pptt_warn_missing();
+		return ret;
+	}
+
+	if (table->revision >= rev)
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
@@ -604,6 +642,20 @@ int cache_setup_acpi(unsigned int cpu)
 	return status;
 }
 
+/**
+ * acpi_pptt_cpu_is_thread() - Determine if CPU is a thread
+ * @cpu: Kernel logical CPU number
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
@@ -664,7 +716,6 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
 	return ret;
 }
 
-
 /**
  * find_acpi_cpu_topology_package() - Determine a unique CPU package value
  * @cpu: Kernel logical CPU number
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index 9426b9aaed86..9d0e20a2ac83 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -1302,11 +1302,16 @@ static inline int lpit_read_residency_count_address(u64 *address)
 #endif
 
 #ifdef CONFIG_ACPI_PPTT
+int acpi_pptt_cpu_is_thread(unsigned int cpu);
 int find_acpi_cpu_topology(unsigned int cpu, int level);
 int find_acpi_cpu_topology_package(unsigned int cpu);
 int find_acpi_cpu_topology_hetero_id(unsigned int cpu);
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
