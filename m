Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9437B2ACEA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 04:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rjXID0j2UiiimOpjGbtIJjHNEBmVrGcCkXksVXz+mNs=; b=Le5z61cJN+6Odm
	3nwIME3fVvtnU6y3VeiLSHUlI+jvVOECq4J98E28YrfwRjeGqZJh+1Uq5uC6X0CxLwT9u+c6ZkvHO
	xV8jwgW2FUvpE28rmTyZXdlVsH7XGdR+wQ25dP75EPZu34A0tZYc/1W90jcRZfWkamtnOUXvkohWR
	vx8lomM70dXBZX+a6oHh6TSv/0me4jmE5Nkdtuof1GyIXBBDExY5khAuZOAA7zBuvkpHkEppdbRhn
	i3yEDKykFYFRIKjovL+OP8E/V6WukHoi6iAMe4YvI1FtIKv3e1cJ3i/cAy/ef2Cy4z1qSSM5ZD9UR
	t4PpwqxDpF8UGjWnXJtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV53j-0008Sp-T9; Mon, 27 May 2019 02:08:19 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV53Q-0008Ef-HK
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 02:08:02 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5FB2233BD9F184B792E4;
 Mon, 27 May 2019 10:07:53 +0800 (CST)
Received: from localhost.localdomain (10.67.212.132) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Mon, 27 May 2019 10:07:45 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/2] drivers: base: cacheinfo: Add variable to record max
 cache line size
Date: Mon, 27 May 2019 10:06:07 +0800
Message-ID: <1558922768-29155-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.67.212.132]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_190800_840139_EA3E1370 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Sudeep Holla <sudeep.holla@arm.com>
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
ChangeLog since v2:
  -- Rebase to 5.2-rc2
  -- Export cache_line_size for I/O driver
ChangeLog since v1:
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
