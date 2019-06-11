Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 760C33CE4F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8TklIqRqNBt3y4ryZYiz/2pl/wzsAV3OwseRV3UM38=; b=Ejy+jYZjH+mANT
	LMsPvyrqBRWCO8qS95kjNFe/mLDMqWfYMRKjiCYtza+TVHRmpXZg6aG+Ok8jCldC3Lzwq74e/Jue+
	i/c2ZKz3kB2hL3wMJZ0CeNgtA16ms+N7mYTD/aAhfGyi+tdayKTb7rJJVVcB28qC+Lr+z2FXZjMX3
	O0CVFiFIZ1vwlM8BCYJlJ/9/6dqepRqRR9OYbDlw8mw/EMHmuFANboHydRvEZaZb6XZi5YG67rhUa
	zB+eOwXeKeC/+QED9SJHLNKprDsxV30Gal+krSbgZyr6r5/EjklXgVGGhd7+hCyKcoo5TL82K6yTZ
	eGIzGZYkYwrokUyUsEuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahZh-0008KI-Jk; Tue, 11 Jun 2019 14:16:33 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahXb-00059x-Cm
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 14:14:26 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 648B6F9D4FA004DE7CD0;
 Tue, 11 Jun 2019 22:14:17 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Tue, 11 Jun 2019 22:14:07 +0800
From: John Garry <john.garry@huawei.com>
To: <bhelgaas@google.com>, <lorenzo.pieralisi@arm.com>, <arnd@arndb.de>
Subject: [PATCH v4 3/3] lib: logic_pio: Fix up a print
Date: Tue, 11 Jun 2019 22:12:54 +0800
Message-ID: <1560262374-67875-4-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
References: <1560262374-67875-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_071425_181463_72D23B84 
X-CRM114-Status: GOOD (  10.75  )
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
Cc: rjw@rjwysocki.net, wangkefeng.wang@huawei.com, linux-pci@vger.kernel.org,
 John Garry <john.garry@huawei.com>, will.deacon@arm.com, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, catalin.marinas@arm.com,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For the print in logic_pio_trans_cpuaddr(), don't cast the value
to unsigned long long, and just print the resource_size_t type directly.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 lib/logic_pio.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/logic_pio.c b/lib/logic_pio.c
index 47d24f428908..030708ce7bb6 100644
--- a/lib/logic_pio.c
+++ b/lib/logic_pio.c
@@ -186,8 +186,7 @@ unsigned long logic_pio_trans_cpuaddr(resource_size_t addr)
 		if (in_range(addr, range->hw_start, range->size))
 			return addr - range->hw_start + range->io_start;
 	}
-	pr_err("addr %llx not registered in io_range_list\n",
-	       (unsigned long long) addr);
+	pr_err("addr %pa not registered in io_range_list\n",  &addr);
 	return ~0UL;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
