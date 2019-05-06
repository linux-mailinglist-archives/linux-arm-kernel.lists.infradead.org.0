Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8BF144AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 08:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JhH9HzHUOdioRGTV7ksyd4oNt6rvnJ07Ltc1SMvlBDE=; b=D+7Cy5o/4/F2fn
	P4Qab4tmQnfWbjhlH5XEE6zpfcNPOgXqCi8YppFE7GpdEEOrR84hXc2bWI41817/fXVR+2GzZRK52
	f1a+nXbelS5RsmrD7HIXvVbseijlczWeWnIADBiYQ2cDbbk8y8mBGOs+0BWem1112wkLqlgK2D8kP
	GMGOQon8Wxn7bcN/g7TdTgXJ6zocQjhc1Z9+mwM41craet7CRWM0dBUoNcpFXqoArDQf1w8M4aul0
	4V2NkueisZmW3IaBc+zflSiKce1uaD9Ffwi9mE6JOhI+K2oVP3ZtBjPhAtQDD9H1AN94Czde4GxL+
	nuPsNySHYqoqQNzoiR/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXXZ-00068N-Ve; Mon, 06 May 2019 06:55:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXXJ-00060M-Mm
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 06:55:43 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 721023DD45301D10986E;
 Mon,  6 May 2019 14:55:33 +0800 (CST)
Received: from localhost.localdomain (10.67.212.132) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.439.0; Mon, 6 May 2019 14:55:27 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 1/2] drivers: base: cacheinfo: Add variable to record max
 cache line size
Date: Mon, 6 May 2019 14:53:56 +0800
Message-ID: <1557125637-9558-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.67.212.132]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_235541_968832_64BD4273 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sudeep Holla <sudeep.holla@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, john.garry@huawei.com,
 Will Deacon <will.deacon@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, qiuzhenfa@hisilicon.com,
 guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add coherency_max_size variable to record the maximum cache line size
for different cache levels. We will synchronize it with CTR_EL0.CWG
reporting in cache_line_size() for arm64.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Jeremy Linton <jeremy.linton@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
ChangeLog since v1
  -- Move coherency_max_size to drivers/base/cacheinfo.c
  -- Address Catalin's comments
  Link: https://www.spinics.net/lists/arm-kernel/msg723615.html

 drivers/base/cacheinfo.c  | 5 +++++
 include/linux/cacheinfo.h | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/base/cacheinfo.c b/drivers/base/cacheinfo.c
index a7359535caf5..8827c60f51e2 100644
--- a/drivers/base/cacheinfo.c
+++ b/drivers/base/cacheinfo.c
@@ -213,6 +213,8 @@ int __weak cache_setup_acpi(unsigned int cpu)
 	return -ENOTSUPP;
 }
 
+unsigned int coherency_max_size;
+
 static int cache_shared_cpu_map_setup(unsigned int cpu)
 {
 	struct cpu_cacheinfo *this_cpu_ci = get_cpu_cacheinfo(cpu);
@@ -251,6 +253,9 @@ static int cache_shared_cpu_map_setup(unsigned int cpu)
 				cpumask_set_cpu(i, &this_leaf->shared_cpu_map);
 			}
 		}
+		/* record the maximum cache line size */
+		if (this_leaf->coherency_line_size > coherency_max_size)
+			coherency_max_size = this_leaf->coherency_line_size;
 	}
 
 	return 0;
diff --git a/include/linux/cacheinfo.h b/include/linux/cacheinfo.h
index 70e19bc6cc9f..46b92cd61d0c 100644
--- a/include/linux/cacheinfo.h
+++ b/include/linux/cacheinfo.h
@@ -17,6 +17,8 @@ enum cache_type {
 	CACHE_TYPE_UNIFIED = BIT(2),
 };
 
+extern unsigned int coherency_max_size;
+
 /**
  * struct cacheinfo - represent a cache leaf node
  * @id: This cache's id. It is unique among caches with the same (type, level).
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
