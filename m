Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A90D61DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fXk0WrG0slF7qwrnIXcb4z/jO8F8o2Q8RFO+cApCNto=; b=baXx6sOfIN6PZy
	bra5QqEDxRKmlD6NTwZDi1AJWnjbaniyD6+zI2MJ3DjlBjEjIAS+m5f5tqMvBpgeFPOGHtmLrsRm9
	Jknrzln8sIKK5yKk1SSxdUcjsjwoZm0yTtVxwE6uRzr3dLDRSfUrRQXIOZjxCT4YUsoP3N9TNLNaf
	Oo/R5objjLlfGCSXhVm2mHFYI3Gr6EBTVlUAekCLlLq2SMQzvp2ce75zRi3ho8+e2Da36oyYqoCA9
	Rw06xw8ZLT0z625NEq9brN50wI0rxCLvayYZoDgD3LsNjddjQFwo3QN0qpvklmlFJW5emHA1HRTDg
	FnDFCU6mCNzuVifjL6Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJz1A-0001oq-TR; Mon, 14 Oct 2019 12:00:04 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJz0M-0001Nq-HL
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 11:59:17 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7D03C4B0C5916CE21BBA;
 Mon, 14 Oct 2019 19:59:10 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Mon, 14 Oct 2019 19:59:00 +0800
From: John Garry <john.garry@huawei.com>
To: <stable@vger.kernel.org>
Subject: [PATCH for-stable-5.3 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread
 flag
Date: Mon, 14 Oct 2019 19:56:01 +0800
Message-ID: <1571054162-71090-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1571054162-71090-1-git-send-email-john.garry@huawei.com>
References: <1571054162-71090-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_045915_150953_4E11C7D4 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: John Garry <john.garry@huawei.com>, gregkh@linuxfoundation.org,
 catalin.marinas@arm.com, guohanjun@huawei.com, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, jeremy.linton@arm.com, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, rrichter@marvell.com, wanghuiqiang@huawei.com,
 sudeep.holla@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

Commit bbd1b70639f785a970d998f35155c713f975e3ac upstream.

ACPI 6.3 adds a flag to the CPU node to indicate whether
the given PE is a thread. Add a function to return that
information for a given linux logical CPU.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Robert Richter <rrichter@marvell.com>
Acked-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/acpi/pptt.c  | 52 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/acpi.h |  5 +++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
index 1e7ac0bd0d3a..9497298018a9 100644
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
