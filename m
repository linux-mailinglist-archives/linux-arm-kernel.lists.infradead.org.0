Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B460397DB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDwh1veUzLqmboNISgUNck8AeZnxsSgkucGzfnvVW8A=; b=J8bYrA93j4cGcS
	5VB9us3+VgmF7xPZwcDbnA4SGiZLEhgeiyXMHADFLXxb+Vj/nYYaOb2NuQ3TDVxp4dVXg5mKp3qQl
	1tGmnFtrEs1jZEJMzDndXM+hIdlT0Nzw+wMPQEMxsX/MYpattCtXOdrH1EmDPisbkr2eZdMpjB8fM
	PE3JJFCGEhgXIaAD2A3CqVMaFRPy8gsmnenvRVj33GX6fMgryMdKYcp9I+qIlUBsQmJ5+9bT0UDpE
	ujD6qnjPqxoB1QeT4wL8gefhnu+Jhu3tCKP5xbDQhwgyk2b6CAtKzqb6lsLJLCCtnjzW9BHRis7kF
	I9fkwXqSBxKCBLDibN/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RzY-0002yl-9Z; Wed, 21 Aug 2019 14:53:40 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0RzA-0002oC-Gz
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 14:53:18 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A01EA1FB20CC1D5D76A0;
 Wed, 21 Aug 2019 22:53:11 +0800 (CST)
Received: from lhrphicprd00229.huawei.com (10.123.41.22) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Wed, 21 Aug 2019 22:53:04 +0800
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: <linux-mm@kvack.org>, <linux-acpi@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH 2/4] arm64: Support Generic Initiator only domains
Date: Wed, 21 Aug 2019 22:52:40 +0800
Message-ID: <20190821145242.2330-3-Jonathan.Cameron@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821145242.2330-1-Jonathan.Cameron@huawei.com>
References: <20190821145242.2330-1-Jonathan.Cameron@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.123.41.22]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_075317_209027_E676F6BE 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>, linuxarm@huawei.com,
 Keith Busch <keith.busch@intel.com>, jglisse@redhat.com,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The one thing that currently needs doing from an architecture
point of view is associating the GI domain with its nearest
memory domain.  This allows all the standard NUMA aware code
to get a 'reasonable' answer.

A clever driver might elect to do load balancing etc
if there are multiple host / memory domains nearby, but
that's a decision for the driver.

Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 arch/arm64/kernel/smp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 018a33e01b0e..7c11bc6cccf2 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -711,6 +711,7 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
 {
 	int err;
 	unsigned int cpu;
+	unsigned int node;
 	unsigned int this_cpu;
 
 	init_cpu_topology();
@@ -749,6 +750,13 @@ void __init smp_prepare_cpus(unsigned int max_cpus)
 		set_cpu_present(cpu, true);
 		numa_store_cpu_info(cpu);
 	}
+
+	/*
+	 * Walk the numa domains and set the node to numa memory reference
+	 * for any that are Generic Initiator Only.
+	 */
+	for_each_node_state(node, N_GENERIC_INITIATOR)
+		set_gi_numa_mem(node, local_memory_node(node));
 }
 
 void (*__smp_cross_call)(const struct cpumask *, unsigned int);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
