Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBC621AEB5F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 11:33:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cJZxsGJ1SG5jajpQsTIv/63IIeK0EXftOyemjAhMUcQ=; b=JrzdauL47ZQcuv
	pLZ76fgoF+CCwpQMNWcQ4IDT7mqPHhLy6pdXTUdEq/23BoSBmhuqcFt82qlKfldBHrtsrO8zXTERF
	dJWgyMxiptAiuyq0/iLm1kouFAi30vGcY7jO/VtCdF4QfYNa1TNQmNDLQpcA6a9IV4ErpMa6NLrgI
	0CI3h7VWsorP+1eRzb158qPQ3Dcak1S8mn/qa0sGuD/guNypFyErcR2+yUHfnBb766diQv4YXfku4
	jS2u6Y1wTfoUKu6noWS/bWR0tZoBG0vhUZdgC1T1pPhx6XYTbjB1AgY87SUoeHDBoHvt+rFH2NBAO
	TvAkHRzYmiyHi8Nqn7CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPjqf-0007K9-FI; Sat, 18 Apr 2020 09:33:17 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPjqY-0007I5-CF
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 09:33:11 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B8A30C4901436DD4F0F3;
 Sat, 18 Apr 2020 17:32:59 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Sat, 18 Apr 2020
 17:32:50 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <linux@armlinux.org.uk>, <tglx@linutronix.de>, <yanaijie@huawei.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm: remove NULL check before some freeing functions
Date: Sat, 18 Apr 2020 17:59:16 +0800
Message-ID: <20200418095916.35290-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_023310_590954_04015D11 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Hulk Robot <hulkci@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the following coccicheck warning:

arch/arm/common/dmabounce.c:564:2-18: WARNING: NULL check before some
freeing functions is not needed.
arch/arm/common/dmabounce.c:566:2-18: WARNING: NULL check before some
freeing functions is not needed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 arch/arm/common/dmabounce.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/common/dmabounce.c b/arch/arm/common/dmabounce.c
index f4b719bde763..a7c776cdc38f 100644
--- a/arch/arm/common/dmabounce.c
+++ b/arch/arm/common/dmabounce.c
@@ -560,10 +560,8 @@ void dmabounce_unregister_dev(struct device *dev)
 		BUG();
 	}
 
-	if (device_info->small.pool)
-		dma_pool_destroy(device_info->small.pool);
-	if (device_info->large.pool)
-		dma_pool_destroy(device_info->large.pool);
+	dma_pool_destroy(device_info->small.pool);
+	dma_pool_destroy(device_info->large.pool);
 
 #ifdef STATS
 	if (device_info->attr_res == 0)
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
