Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A49F15327B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zbVbedQ7P1yYsZFtQYx0L36kp/2Bj6Qeb6qqw1nkh5Q=; b=uCBP+Kf+4LCuZk
	ZbeAzphrdIUjXR4+pfV2S0a7nvDybskDhxgPAZngO20EOCXAvUY4XWpIthTB7SBgc/+YxcParREe9
	f9DbNYya8w/iY68vgbyXd0rTuv4aLJsQgD160rSTQyiWEujO+gMqZi3qRjkgJ9ypHcbHgVIIaXpw7
	a3InLoOlZSGlEFu29jbxsamKX1ty1nnIbMpYD4ABMMgJE/WDobZrcOgMwfHUemPPjS3A2ADFYZQaf
	mHcGXXBAokQQkXXc4LCOTr1a+UGOzFmW1FqbHoq8pn3UUHmnGIhVTzPcoj4WmZR5u6bWiR+Xm7Byt
	ihbYNwvTlqVPVm8TSojA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLL5-0007GG-Pa; Wed, 05 Feb 2020 14:07:35 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLL0-0007FC-6J
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:07:31 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C70FF382BE53C4C5180A;
 Wed,  5 Feb 2020 22:07:16 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 5 Feb 2020 22:07:09 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <clabbe.montjoie@gmail.com>, <herbert@gondor.apana.org.au>,
 <davem@davemloft.net>, <mripard@kernel.org>, <wens@csie.org>
Subject: [PATCH -next] crypto: allwinner - remove redundant platform_get_irq
 error message
Date: Wed, 5 Feb 2020 22:01:30 +0800
Message-ID: <20200205140130.164805-1-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_060730_398773_CE7D68C5 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: chenzhou10@huawei.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Function dev_err() after platform_get_irq() is redundant because
platform_get_irq() already prints an error.

Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index f72346a..3e4e4bb 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -565,10 +565,8 @@ static int sun8i_ce_probe(struct platform_device *pdev)
 
 	/* Get Non Secure IRQ */
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(ce->dev, "Cannot get CryptoEngine Non-secure IRQ\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	ce->reset = devm_reset_control_get(&pdev->dev, NULL);
 	if (IS_ERR(ce->reset)) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
