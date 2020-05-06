Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84911C7279
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 16:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P5nPXALJybhskFbJv6Qu5RxAMuFGhQ35eRZaZ6NUloQ=; b=HUV0/KvkIwmVSK
	PQSwz7E6rfETLYyofrUDMbnnJaVcLacqvhSHOzki25S2lK9tmNkIxjfdOnGij0anQgzIl2SiNL7hU
	iJjcsCBwhLCChQDfNvfSAmlHsxjEpFxvnXODCQjH7/TY9+mjBzdAgB898ci9QWi6YwPLn4G0fJk+i
	c7R3/+Xf4Gm/gf95q/yRwZGLrbdOy6rZZltCbfsZFK6pKjIH0Yqs/dtpBZ3zx2kZs0UTXD/zHopiV
	fMpNyLEMXoyjjYtjp9PF1mD8b9cM5+m7/xtRNlZim12zOCI/SthDcDS4opPp/rbM9gnSzsLH3eltT
	6S6whdGW2MZ2GTwVgtFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKjw-0003dU-H3; Wed, 06 May 2020 14:09:36 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKjn-0003cd-8g; Wed, 06 May 2020 14:09:30 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B35597B26A92DDEEEFB8;
 Wed,  6 May 2020 22:09:18 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Wed, 6 May 2020 22:09:11 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Enric Balletbo i Serra
 <enric.balletbo@collabora.com>
Subject: [PATCH -next] soc: mediatek: Missing platform_device_unregister() on
 error in mtk_mmsys_probe()
Date: Wed, 6 May 2020 14:13:17 +0000
Message-ID: <20200506141317.119537-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_070929_073320_87A25761 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-mediatek@lists.infradead.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the missing platform_device_unregister() before return
from mtk_mmsys_probe() in the error handling case.

Fixes: 667c769246b0 ("soc / drm: mediatek: Fix mediatek-drm device probing")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/soc/mediatek/mtk-mmsys.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
index 05e322c9c301..05ce4cb464b0 100644
--- a/drivers/soc/mediatek/mtk-mmsys.c
+++ b/drivers/soc/mediatek/mtk-mmsys.c
@@ -312,8 +312,10 @@ static int mtk_mmsys_probe(struct platform_device *pdev)
 
 	drm = platform_device_register_data(&pdev->dev, "mediatek-drm",
 					    PLATFORM_DEVID_AUTO, NULL, 0);
-	if (IS_ERR(drm))
+	if (IS_ERR(drm)) {
+		platform_device_unregister(clks);
 		return PTR_ERR(drm);
+	}
 
 	return 0;
 }




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
