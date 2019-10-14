Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C175D5F94
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 12:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l++DWR090zwMTFnXrtk4w8kfEQgTJd+O2RCOosfr+Hk=; b=Y+84lskkLWTo2l
	g4b5x2OV1HLyy3W8nLfaKYufQuf4UjWLQ/AIAy1OTQAnQytXxFgHAeEsZuLfPIoOGF6+QpzY30dkW
	sxrkrz/rN2egKpqIWD89ERxd2tnwqMHzHCoqYmwI/utxYLFs/2aur/Cc5j4rLe2oYior6QJnED1Af
	czdyuzd9DKyP7wizE14V6nl+k/e5SgtPZYN4R+/wnX57+vXzBvmbxpBwlMPNKGtbu+DtvsdCQT0a7
	Pq6GP5L0b3c1Kfxlaan2xsJAjMTQXsdTkuEt3Nt3+b4HqPZF9teqibxsXDE68y3Y1zGMV6EK+oXK8
	YfYeKCDUq6IS9srO5doQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJx9K-0008Rl-9S; Mon, 14 Oct 2019 10:00:22 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJx8z-0008FB-03
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 10:00:02 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ED61E115E732E4B2A4FA;
 Mon, 14 Oct 2019 17:59:50 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Mon, 14 Oct 2019 17:59:43 +0800
From: John Garry <john.garry@huawei.com>
To: <stable@vger.kernel.org>
Subject: [PATCH for-stable-4.19 3/3] arm64: topology: Use PPTT to determine if
 PE is a thread
Date: Mon, 14 Oct 2019 17:56:26 +0800
Message-ID: <1571046986-231263-4-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1571046986-231263-1-git-send-email-john.garry@huawei.com>
References: <1571046986-231263-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_030001_203736_599D1999 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: John Garry <john.garry@huawei.com>, erik.schmauss@intel.com,
 catalin.marinas@arm.com, guohanjun@huawei.com, rjw@rjwysocki.net,
 robert.moore@intel.com, jeremy.linton@arm.com, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, gregkh@linuxfoundation.org, rrichter@marvell.com,
 linuxarm@huawei.com, wanghuiqiang@huawei.com, sudeep.holla@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jeremy Linton <jeremy.linton@arm.com>

Commit 98dc19902a0b2e5348e43d6a2c39a0a7d0fc639e upstream.

ACPI 6.3 adds a thread flag to represent if a CPU/PE is
actually a thread. Given that the MPIDR_MT bit may not
represent this information consistently on homogeneous machines
we should prefer the PPTT flag if its available.

Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Reviewed-by: Robert Richter <rrichter@marvell.com>
[will: made acpi_cpu_is_threaded() return 'bool']
Signed-off-by: Will Deacon <will@kernel.org>
Signed-off-by: John Garry <john.garry@huawei.com>
---
 arch/arm64/kernel/topology.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
index 0825c4a856e3..6106c49f84bc 100644
--- a/arch/arm64/kernel/topology.c
+++ b/arch/arm64/kernel/topology.c
@@ -340,17 +340,28 @@ void remove_cpu_topology(unsigned int cpu)
 }
 
 #ifdef CONFIG_ACPI
+static bool __init acpi_cpu_is_threaded(int cpu)
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
+	return !!is_threaded;
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
