Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AD586BC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 22:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fly4eDfA2HczVq8IrdKtWWML8CdL+lLo/ElO2Yr+1Vg=; b=ANbYxWW8WB8i2W
	Y823Zqgy6PSyWpVzhY6SXIeEUwxuLn6lVRpOiC2BOBiSAW6XzbkBLxD1HuTj+oK8ushSAWJY7HDUI
	QHismkRT78YDAVBQGeV/DRyV9r6b0phqnCaja6/mclznB2idpK2J32k3c3fEvzbFOMwjCYdIRThL8
	kB0U6HS0tys2DthQz3pBcvGCmN+gSO7Wa1hjc7LQiM2b3O+Bx14s1vYbuSBPMJb/9f2H3Em/SEWZs
	yIRbefVS9LoFk9VjbSRxML9q1gNRjHjbJAEcT30sIer4UvvIP/IqqY8R6dFOv9hK75QcGIe0Z5NCh
	9sN0s5LqC5u8o/KhHhfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpEn-000613-I9; Thu, 08 Aug 2019 20:42:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpEK-0005eE-7F
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 20:41:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04C6F1688;
 Thu,  8 Aug 2019 13:41:46 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.64])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F1CF03F694;
 Thu,  8 Aug 2019 13:41:45 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
Date: Thu,  8 Aug 2019 15:40:07 -0500
Message-Id: <20190808204007.30110-3-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190808204007.30110-1-jeremy.linton@arm.com>
References: <20190808204007.30110-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_134148_301733_B91D2690 
X-CRM114-Status: GOOD (  12.21  )
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

ACPI 6.3 adds a thread flag to represent if a CPU/PE is
actually a thread. Given that the MPIDR_MT bit may not
represent this information consistently on homogeneous machines
we should prefer the PPTT flag if its available.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/kernel/topology.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
index 0825c4a856e3..bad9c42ea825 100644
--- a/arch/arm64/kernel/topology.c
+++ b/arch/arm64/kernel/topology.c
@@ -340,17 +340,28 @@ void remove_cpu_topology(unsigned int cpu)
 }
 
 #ifdef CONFIG_ACPI
+static int __init acpi_cpu_is_threaded(int cpu)
+{
+	int is_threaded = acpi_pptt_cpu_is_thread(cpu);
+
+	/*
+	 * if the PPTT doesn't have thread information, assume a homogeneous
+	 * machine and return the current CPU's thread state.
+	 */
+	if (is_threaded < 0)
+		is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
+
+	return is_threaded;
+}
+
 /*
  * Propagate the topology information of the processor_topology_node tree to the
  * cpu_topology array.
  */
 static int __init parse_acpi_topology(void)
 {
-	bool is_threaded;
 	int cpu, topology_id;
 
-	is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
-
 	for_each_possible_cpu(cpu) {
 		int i, cache_id;
 
@@ -358,7 +369,7 @@ static int __init parse_acpi_topology(void)
 		if (topology_id < 0)
 			return topology_id;
 
-		if (is_threaded) {
+		if (acpi_cpu_is_threaded(cpu)) {
 			cpu_topology[cpu].thread_id = topology_id;
 			topology_id = find_acpi_cpu_topology(cpu, 1);
 			cpu_topology[cpu].core_id   = topology_id;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
