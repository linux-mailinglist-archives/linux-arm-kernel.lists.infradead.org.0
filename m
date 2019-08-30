Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD28AA2CDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 04:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pop4HcQNQmr/rNznyWTE+Lu0IktwxYaaFEF4sa7ChMw=; b=hbGOHka2Qan7E5
	KOg0SuPwF3i0zEbcxdnSOC6DUPP1cCRPTsI6i75N+1sA2Y81EHTeogkVNmwfItTY3iGr9geqkg7hI
	zu5ndiDOiOD8MFlp4XXNfL3xA4CvQjdgbgL6n40pZM1fDpKYsg8klGlcRgJ7VO4tZQHN6konG2A2O
	JzndHBsTPpA7K+wazWCQi71aRrTz4tlQSakTJ8fFaiJgCQrqu5yEsVxe65cLMLYmoMIQ7NwQBSYaz
	2vS2ciVD9wkjcxgKBSh1DMU83w92ZG3Uey9f4qIU0Y1l1VRzKM2CsejbNzDfzjim+Yw2E/JTtES0Y
	FJUXdYlWJ1DwPUcLjPNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Wf7-0000yI-Ea; Fri, 30 Aug 2019 02:29:17 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Weo-0000q8-Kr
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 02:29:00 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8A529C1DC4CE9E7019F7;
 Fri, 30 Aug 2019 10:28:50 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Fri, 30 Aug 2019 10:28:41 +0800
From: Yunsheng Lin <linyunsheng@huawei.com>
To: <will@kernel.org>
Subject: [PATCH] arm64: numa: check the node id before accessing
 node_to_cpumask_map
Date: Fri, 30 Aug 2019 10:26:31 +0800
Message-ID: <1567131991-189761-1-git-send-email-linyunsheng@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_192858_894051_53E53660 
X-CRM114-Status: GOOD (  11.55  )
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
Cc: mhocko@suse.com, tglx@linutronix.de, anshuman.khandual@arm.com,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, rppt@linux.ibm.com,
 cai@lca.pw, akpm@linux-foundation.org, robin.murphy@arm.com,
 adobriyan@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some buggy bios may not set the device' numa id, and dev_to_node
will return -1, which may cause global-out-of-bounds error
detected by KASAN.

This patch changes cpumask_of_node to return cpu_none_mask if the
node is not valid, and sync the cpumask_of_node between the
cpumask_of_node function in numa.h and numa.c.

Signed-off-by: Yunsheng Lin <linyunsheng@huawei.com>
---
 arch/arm64/include/asm/numa.h | 6 ++++++
 arch/arm64/mm/numa.c          | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/numa.h b/arch/arm64/include/asm/numa.h
index 626ad01..da891ed 100644
--- a/arch/arm64/include/asm/numa.h
+++ b/arch/arm64/include/asm/numa.h
@@ -25,6 +25,12 @@ const struct cpumask *cpumask_of_node(int node);
 /* Returns a pointer to the cpumask of CPUs on Node 'node'. */
 static inline const struct cpumask *cpumask_of_node(int node)
 {
+	if (node >= nr_node_ids || node < 0)
+		return cpu_none_mask;
+
+	if (!node_to_cpumask_map[node])
+		return cpu_online_mask;
+
 	return node_to_cpumask_map[node];
 }
 #endif
diff --git a/arch/arm64/mm/numa.c b/arch/arm64/mm/numa.c
index 4f241cc..3846313 100644
--- a/arch/arm64/mm/numa.c
+++ b/arch/arm64/mm/numa.c
@@ -46,7 +46,7 @@ EXPORT_SYMBOL(node_to_cpumask_map);
  */
 const struct cpumask *cpumask_of_node(int node)
 {
-	if (WARN_ON(node >= nr_node_ids))
+	if (WARN_ON(node >= nr_node_ids || node < 0))
 		return cpu_none_mask;
 
 	if (WARN_ON(node_to_cpumask_map[node] == NULL))
-- 
2.8.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
