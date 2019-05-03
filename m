Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B7C13624
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 01:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4K97U3NJEqYJn/Epix67+DkB1DDOakkCqp6fLv48oTs=; b=TJ2PH5PW2Hr6t6
	A6/95v7dnW9bdIFPUjPTTFON/X5cltn2k7CTnc0ukjXKD4VVGoLidCr/svL0o6tF7qe0rv2uSYdGv
	Kt9QNeMmX5+yHRXncNkO5ETGMJtI22rD1PgbVtZ9Uaji4svfW3Wn3SnywZdVD9fGXHU6yd/3i8uSF
	uk2AbTtfAz0Gp2ZqOqF/uQP4ewVLtJQHgKSYF/eq217Z4TfWBGirf+9hV0nhbeWJ18N21Y0jQYzlN
	mrGnPn1JoLrDpGtvX3CKgG6BMp2+fFh8Uqg9Qrm9mAOTUMKeMZEDQjZI++wsUmm/kASNDTScTNmX1
	E8v5Fgs6qujDN1gAzrtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhYI-0005qJ-4d; Fri, 03 May 2019 23:25:14 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhXb-0005Dg-Rs
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 23:24:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E85A815BF;
 Fri,  3 May 2019 16:24:27 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.29.246])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5E8273F557;
 Fri,  3 May 2019 16:24:27 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/5] ACPI/PPTT: Add function to return ACPI 6.3 Identical
 tokens
Date: Fri,  3 May 2019 18:24:04 -0500
Message-Id: <20190503232407.37195-3-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503232407.37195-1-jeremy.linton@arm.com>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_162431_910651_5B977DFA 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, john.garry@huawei.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ACPI 6.3 adds a flag to indicate that child nodes are all
identical cores. This is useful to authoritatively determine
if a set of (possibly offline) cores are identical or not.

Since the flag doesn't give us a unique id we can generate
one and use it to create bitmaps of sibling nodes, or simply
in a loop to determine if a subset of cores are identical.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 drivers/acpi/pptt.c  | 26 ++++++++++++++++++++++++++
 include/linux/acpi.h |  5 +++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
index 83a026765faa..1865515297ca 100644
--- a/drivers/acpi/pptt.c
+++ b/drivers/acpi/pptt.c
@@ -660,3 +660,29 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
 	return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
 					  ACPI_PPTT_PHYSICAL_PACKAGE);
 }
+
+/**
+ * find_acpi_cpu_topology_hetero_id() - Get a core architecture tag
+ * @cpu: Kernel logical CPU number
+ *
+ * Determine a unique heterogeneous tag for the given CPU. CPUs with the same
+ * implementation should have matching tags.
+ *
+ * The returned tag can be used to group peers with identical implementation.
+ *
+ * The search terminates when a level is found with the identical implementation
+ * flag set or we reach a root node.
+ *
+ * Due to limitations in the PPTT data structure, there may be rare situations
+ * where two cores in a heterogeneous machine may be identical, but won't have
+ * the same tag.
+ *
+ * Return: -ENOENT if the PPTT doesn't exist, or the CPU cannot be found.
+ * Otherwise returns a value which represents a group of identical cores
+ * similar to this CPU.
+ */
+int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
+{
+	return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
+					  ACPI_PPTT_ACPI_IDENTICAL);
+}
diff --git a/include/linux/acpi.h b/include/linux/acpi.h
index d5dcebd7aad3..1444fb042898 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -1309,6 +1309,7 @@ static inline int lpit_read_residency_count_address(u64 *address)
 #ifdef CONFIG_ACPI_PPTT
 int find_acpi_cpu_topology(unsigned int cpu, int level);
 int find_acpi_cpu_topology_package(unsigned int cpu);
+int find_acpi_cpu_topology_hetero_id(unsigned int cpu);
 int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
 #else
 static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
@@ -1319,6 +1320,10 @@ static inline int find_acpi_cpu_topology_package(unsigned int cpu)
 {
 	return -EINVAL;
 }
+static int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
+{
+	return -EINVAL;
+}
 static inline int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
 {
 	return -EINVAL;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
