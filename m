Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 669DEF158E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 12:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=chNJLp8XbaFGtjv/PebDtO7uRROicqQse6RdM7HqXcU=; b=gCdEGvIaRM/90a
	EHdhwIAJVmt+v9d2ueuHd2AbcC5TKqujOBQHt5e8DDaA7Tn1oGbyR9hQg3wT6wpiKidTBGTkDjvcA
	gIID5DMPHjsMB9niAQ7X0nWcDsnWZkp0cyLTAja0YyfGTKpOnF1CYVxVvmdCsHu11YLBhtr+24p/M
	gAVd23vdJxsZC9/ePeQzEInDdc+UD7xvKGCQUdAh8eve8NhRsg1SvWsMBtsGMU5ZX+1uAKfZrXRNW
	VBgpQZzZe5gEW3BUBSb6N0L8+T5QY++MD8aAem7LZqg1OglCqv0GF0/wCl+Tn7icDEReX2q3qCeJ5
	37dHB/3sIlej/CUqOI9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSJwu-0007fj-2N; Wed, 06 Nov 2019 11:58:08 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSJwl-0007eD-J6
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 11:58:01 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4EB74E95C445A526FAB8;
 Wed,  6 Nov 2019 19:57:47 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Wed, 6 Nov 2019 19:57:36 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose
 <suzuki.poulose@arm.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Yabin Cui <yabinc@google.com>
Subject: [PATCH -next] coresight: replicator: Fix missing spin_lock_init()
Date: Wed, 6 Nov 2019 11:56:51 +0000
Message-ID: <20191106115651.113943-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_035800_244903_5D670235 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
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
Cc: kernel-janitors@vger.kernel.org, Wei Yongjun <weiyongjun1@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver allocates the spinlock but not initialize it.
Use spin_lock_init() on it to initialize it correctly.

This is detected by Coccinelle semantic patch.

Fixes: 0093875ad129 ("coresight: Serialize enabling/disabling a link device.")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/hwtracing/coresight/coresight-replicator.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index 43304196a1a6..e7dc1c31d20d 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -248,6 +248,7 @@ static int replicator_probe(struct device *dev, struct resource *res)
 	}
 	dev->platform_data = pdata;
 
+	spin_lock_init(&drvdata->spinlock);
 	desc.type = CORESIGHT_DEV_TYPE_LINK;
 	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_SPLIT;
 	desc.ops = &replicator_cs_ops;




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
