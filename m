Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48D1D2B71
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqWe7QpcotxK0+KLKJtUJSiMOeDtokDxyNG37OjXP60=; b=rvDREaSFmjSCB9
	Msar4QieGrNl8jpVLbQvUVAHlEhnTpWDnbUmnai4xfyADfNrnRCBwB7uHHOxzgcjh922r63tiqsey
	Tnqpj3mONepQ+PYbd3FSlsO/ydUfysuRxZySkT8oyJxJkMeGwB9eMv5T6sMPX+cMAl/GRzLq8kUjB
	y/w4eOwed7lVwoTGqfQcEoIWaG28SCmTl7sR/K9UvCmndtYz+S/VvjUe1ADt8+OyiIxfCLIRBgEw6
	wXWrcdbkvO2dzQaE6nH8iyukib4+lh2Lv+GtvR0votQ+fpxYPCDjfZanQhnZ+/MHq5z0yn6f4WVuW
	gp+iGtBpplX6biRgDppg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYa5-0000KG-6i; Thu, 10 Oct 2019 13:34:13 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYZT-0008Mc-Gf
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:33:37 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3C8C49C029AD8555264E;
 Thu, 10 Oct 2019 21:33:26 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Thu, 10 Oct 2019 21:33:19 +0800
From: John Garry <john.garry@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <rjw@rjwysocki.net>,
 <lenb@kernel.org>, <robert.moore@intel.com>, <erik.schmauss@intel.com>,
 <sudeep.holla@arm.com>, <rrichter@marvell.com>, <jeremy.linton@arm.com>
Subject: [RFC PATCH 2/3] ACPI/PPTT: Add support for ACPI 6.3 thread flag
Date: Thu, 10 Oct 2019 21:29:51 +0800
Message-ID: <1570714192-236724-3-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
References: <1570714192-236724-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_063335_724088_21ED52A6 
X-CRM114-Status: GOOD (  14.51  )
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
Cc: gregkh@linuxfoundation.org, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, linux-acpi@vger.kernel.org,
 wanghuiqiang@huawei.com, guohanjun@huawei.com,
 linux-arm-kernel@lists.infradead.org
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
[jpg: backport for 4.19, replace acpi_pptt_warn_missing()]
Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/acpi/pptt.c  | 52 ++++++++++++++++++++++++++++++++++++++++++++
 include/linux/acpi.h |  5 +++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
index da031b1df6f5..9dbf86a0c827 100644
--- a/drivers/acpi/pptt.c
+++ b/drivers/acpi/pptt.c
@@ -509,6 +509,44 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
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
+		pr_warn_once("No PPTT table found, cpu topology may be inaccurate\n");
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
  * @cpu: Kernel logical cpu number
@@ -573,6 +611,20 @@ int cache_setup_acpi(unsigned int cpu)
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
  * find_acpi_cpu_topology() - Determine a unique topology value for a given cpu
  * @cpu: Kernel logical cpu number
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index b4d23b3a2ef2..59a416dfcaaa 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -1291,10 +1291,15 @@ static inline int lpit_read_residency_count_address(u64 *address)
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
