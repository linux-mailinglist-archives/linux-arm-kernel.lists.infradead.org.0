Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32890A42B4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 08:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fssTBieHW/8kMxQLhyEwDRen6eTkz39Rc8Tdnz3jV8I=; b=aP2SuNKE1AIi4j
	TssMe4K5ryFVYsR7ZC7MN4I52/81DWJ/dhI6Y8KKvx7xeby91xKTEU1nmdu5FITcSZQbsJIDbG9vk
	zdBoK8kCWYPdBWinpsS0MuyqU48twZyXcDNluNPCNhQe6x8sPv7EC+v/1lBO70/rTIunHXmsuwMBa
	fDxG7kO+FXmdkAsSzQ2BydyQTGgcdx1Owq0tAfFvpRxghG9WNP1SZTD8lCcQ6TxH7Z+q7LYKuLhyB
	UaE9VprSQdAdR2uSPceUqzPmQu5KCSnOpCZ/fYLMY4Xapeky1WrnfeNlkxuKxiQ7C5IY6Jt0bnb6x
	Jq8Cv/NedkQ5jLGJEvrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3wTV-0007kY-Ii; Sat, 31 Aug 2019 06:03:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3wRT-0006Zb-0f
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 06:00:56 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2006AC3D66F954624D19;
 Sat, 31 Aug 2019 14:00:42 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Sat, 31 Aug 2019 14:00:34 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <mingo@redhat.com>,
 <bp@alien8.de>, <rth@twiddle.net>, <ink@jurassic.park.msu.ru>,
 <mattst88@gmail.com>, <benh@kernel.crashing.org>, <paulus@samba.org>,
 <mpe@ellerman.id.au>, <heiko.carstens@de.ibm.com>, <gor@linux.ibm.com>,
 <borntraeger@de.ibm.com>, <ysato@users.sourceforge.jp>, <dalias@libc.org>,
 <davem@davemloft.net>, <ralf@linux-mips.org>, <paul.burton@mips.com>,
 <jhogan@kernel.org>, <jiaxun.yang@flygoat.com>, <chenhc@lemote.com>
Subject: [PATCH v2 3/9] alpha: numa: check the node id consistently for alpha
Date: Sat, 31 Aug 2019 13:58:17 +0800
Message-ID: <1567231103-13237-4-git-send-email-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1567231103-13237-1-git-send-email-linyunsheng@huawei.com>
References: <1567231103-13237-1-git-send-email-linyunsheng@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_230055_232426_3CA0E9EA 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: linux-sh@vger.kernel.org, peterz@infradead.org, dave.hansen@linux.intel.com,
 linuxarm@huawei.com, linux-mips@vger.kernel.org, mwb@linux.vnet.ibm.com,
 hpa@zytor.com, sparclinux@vger.kernel.org, linux-s390@vger.kernel.org,
 x86@kernel.org, rppt@linux.ibm.com, dledford@redhat.com,
 jeffrey.t.kirsher@intel.com, nfont@linux.vnet.ibm.com,
 naveen.n.rao@linux.vnet.ibm.com, len.brown@intel.com,
 anshuman.khandual@arm.com, cai@lca.pw, luto@kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, tbogendoerfer@suse.de,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to Section 6.2.14 from ACPI spec 6.3 [1], the setting
of proximity domain is optional, as below:

This optional object is used to describe proximity domain
associations within a machine. _PXM evaluates to an integer
that identifies a device as belonging to a Proximity Domain
defined in the System Resource Affinity Table (SRAT).

This patch checks node id with the below case before returning
node_to_cpumask_map[node]:
1. if node_id >= nr_node_ids, return cpu_none_mask
2. if node_id < 0, return cpu_online_mask
3. if node_to_cpumask_map[node_id] is NULL, return cpu_online_mask

[1] https://uefi.org/sites/default/files/resources/ACPI_6_3_final_Jan30.pdf

Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
---
note node_to_cpumask_map[node] is already a pointer, so the
cpumask_clear should be called with node_to_cpumask_map[node]
instead of &node_to_cpumask_map[node]? And cpumask_of_node()
function need to be inlined when defined in a header file?
If the above are problems, maybe another patch to fix or clean
it up.
---
 arch/alpha/include/asm/topology.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/alpha/include/asm/topology.h b/arch/alpha/include/asm/topology.h
index 5a77a40..9e0b1cd1 100644
--- a/arch/alpha/include/asm/topology.h
+++ b/arch/alpha/include/asm/topology.h
@@ -30,8 +30,11 @@ static const struct cpumask *cpumask_of_node(int node)
 {
 	int cpu;
 
-	if (node == NUMA_NO_NODE)
-		return cpu_all_mask;
+	if (node >= nr_node_ids)
+		return cpu_none_mask;
+
+	if (node < 0 || !node_to_cpumask_map[node])
+		return cpu_online_mask;
 
 	cpumask_clear(&node_to_cpumask_map[node]);
 
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
