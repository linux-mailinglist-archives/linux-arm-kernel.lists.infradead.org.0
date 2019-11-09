Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D28AF5D39
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 04:37:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/AlLCieauSCKaRu8pw4335SEhx8XpF+jGH+3eq1yME=; b=WYRxDyK6Z5aY0a
	bccm11plBQ3m2TmCU3IgatW0Csd+I9vkgvzbb5iEatfDxjlN0CkYG8dfZRwtONVApzDQWd56sQrou
	jxz3GJ3L8NYOOLnOTwqS5kBVqMpvTJlxLEQ1xnRBuM2Iw6Fxf4688CTMxyIkhJQfZjlDsw9XoAr2U
	/JesCngkNzPx6QmQ3Mpzf+Dj7bNVuVAy/CvwPluLYCFgRcYHs5z0t+908Mrt8GUo7Awzn624xpMNu
	mSy9goishqPl6Nt9Uhni2w3qu46/+6r8i5W2owV240lZC57ZeFz3mLf341h0H3d6rED1CZiQTLLFg
	MdtcyiL/AoCROpZZ/OoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTHZG-0007Nx-Gk; Sat, 09 Nov 2019 03:37:42 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTHZ8-0007NR-HA
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 03:37:35 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5E7C2D1528BB2E8FAC0A;
 Sat,  9 Nov 2019 11:37:32 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Sat, 9 Nov 2019
 11:37:26 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <jk@ozlabs.org>, <joel@jms.id.au>, <eajames@linux.ibm.com>,
 <andrew@aj.id.au>
Subject: [PATCH v2 -next] fsi: aspeed: Use devm_kfree in
 aspeed_master_release()
Date: Sat, 9 Nov 2019 11:36:34 +0800
Message-ID: <20191109033634.30544-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20191109033209.45244-1-yuehaibing@huawei.com>
References: <20191109033209.45244-1-yuehaibing@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_193734_730214_42540D0E 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: linux-aspeed@lists.ozlabs.org, alistair@popple.id.au,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'aspeed' is allocated by devm_kzalloc(), it should not be
freed by kfree().

Fixes: 1edac1269c02 ("fsi: Add ast2600 master driver")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
v2: fix log typos
---
 drivers/fsi/fsi-master-aspeed.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
index 3dd82dd..0f63eec 100644
--- a/drivers/fsi/fsi-master-aspeed.c
+++ b/drivers/fsi/fsi-master-aspeed.c
@@ -361,7 +361,7 @@ static void aspeed_master_release(struct device *dev)
 	struct fsi_master_aspeed *aspeed =
 		to_fsi_master_aspeed(dev_to_fsi_master(dev));
 
-	kfree(aspeed);
+	devm_kfree(dev, aspeed);
 }
 
 /* mmode encoders */
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
