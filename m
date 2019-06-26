Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5A4573C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 23:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gazxEiojqXymNalO3C1nEBxQBYo9se6kju2T7rDPonE=; b=Wo1lbfrJXPOCOR
	d9hW7av+mGSABL3E50dI9ccPYxXcqXWMz2SEORCuAiolZJ2kdDTl5gXWRIoNLQtjD9w+GSZtDhOXa
	3+YGX+bSPhYls+P7qYx/EzU0KtyE20L9gbsK311PQEasM7m011Dry7KH0aAkFcaxoH+3ilZrQnRqQ
	vyE8JOYRy4+bAoQIAe0hE3vRlgQlcAvrBHfdqxGzWCqrZxKHmXdTm8rctMbYSdhcwUgESd0Hodm3k
	R+oVKmTNVA+i97f/YX4ZAacr0dlkNkGvQvXoy2BD0B4LrifgBD9TVjediwprX1Fz3z5dojW8uJME+
	6qMeFPu71dCG0hIoHuvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgFd0-0007Cg-8x; Wed, 26 Jun 2019 21:38:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgFbk-0006Ra-3h
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 21:37:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0FB1011D4;
 Wed, 26 Jun 2019 14:37:34 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F26903F246;
 Wed, 26 Jun 2019 14:37:33 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 2/4] ACPI/PPTT: Add function to return ACPI 6.3 Identical
 tokens
Date: Wed, 26 Jun 2019 16:37:16 -0500
Message-Id: <20190626213718.39423-3-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626213718.39423-1-jeremy.linton@arm.com>
References: <20190626213718.39423-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_143736_191551_7272EE55 
X-CRM114-Status: GOOD (  10.00  )
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, Hanjun Gou <gouhanjun@huawei.com>, lenb@kernel.org
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

Tested-by: Hanjun Gou <gouhanjun@huawei.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 drivers/acpi/pptt.c  | 26 ++++++++++++++++++++++++++
 include/linux/acpi.h |  5 +++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
index 05344413f199..1e7ac0bd0d3a 100644
--- a/drivers/acpi/pptt.c
+++ b/drivers/acpi/pptt.c
@@ -683,3 +683,29 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
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
index d315d86844e4..5bcd23e5ccd6 100644
--- a/include/linux/acpi.h
+++ b/include/linux/acpi.h
@@ -1303,6 +1303,7 @@ static inline int lpit_read_residency_count_address(u64 *address)
 #ifdef CONFIG_ACPI_PPTT
 int find_acpi_cpu_topology(unsigned int cpu, int level);
 int find_acpi_cpu_topology_package(unsigned int cpu);
+int find_acpi_cpu_topology_hetero_id(unsigned int cpu);
 int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
 #else
 static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
@@ -1313,6 +1314,10 @@ static inline int find_acpi_cpu_topology_package(unsigned int cpu)
 {
 	return -EINVAL;
 }
+static inline int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
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
