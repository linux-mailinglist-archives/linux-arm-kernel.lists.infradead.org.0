Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F132D6B822
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hAmIakgfp7LKRnOntnyeeXDAbwaS6U6c3XdhLSxB5sA=; b=Mp2
	qYVg5yJNBTgfOaJ30tG5CLWYWo15fsawxUbWv4130k/4Mw4W3NfSVFpqz4cOgfXVIYoO1D95zHAQA
	PsqeT2pLcMqakV35b09iZRezUkLgTljl9TwN+3sRidAUnqBrzXefUR2lsJKoAHnRxC2RMpIuopW4h
	Oy7SZbnWc05fMyrIog9/1IELqct2PYgX7Dpq/LacyCnzkcQWT6/0Loahua6jdDSms6b4SOsPmcKar
	BmGZR/Uuo07N8fD5qAjPm9OtgVNNdqgu62VGf0WAsO8ILXZC675aiptY7szoWI1v1rcCkiU7ZzcJa
	u/KXI0n/lhlXNKc80zg3ofXN2V6fiZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfEJ-0008QT-9f; Wed, 17 Jul 2019 08:24:03 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfDp-0008Ee-Ta
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:23:35 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C20EF1A00A0;
 Wed, 17 Jul 2019 10:23:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5D7E81A0085;
 Wed, 17 Jul 2019 10:23:25 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7A458402C3;
 Wed, 17 Jul 2019 16:23:18 +0800 (SGT)
From: Anson.Huang@nxp.com
To: a.zummo@towertech.it, alexandre.belloni@bootlin.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-rtc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] rtc: imxdi: use devm_platform_ioremap_resource() to simplify
 code
Date: Wed, 17 Jul 2019 16:14:11 +0800
Message-Id: <20190717081411.30622-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_012334_090325_CDCD4FCB 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Use the new helper devm_platform_ioremap_resource() which wraps the
platform_get_resource() and devm_ioremap_resource() together, to
simplify the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/rtc/rtc-imxdi.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-imxdi.c b/drivers/rtc/rtc-imxdi.c
index 3f3d652..f21dc6b 100644
--- a/drivers/rtc/rtc-imxdi.c
+++ b/drivers/rtc/rtc-imxdi.c
@@ -740,7 +740,6 @@ static void dryice_work(struct work_struct *work)
  */
 static int __init dryice_rtc_probe(struct platform_device *pdev)
 {
-	struct resource *res;
 	struct imxdi_dev *imxdi;
 	int norm_irq, sec_irq;
 	int rc;
@@ -751,8 +750,7 @@ static int __init dryice_rtc_probe(struct platform_device *pdev)
 
 	imxdi->pdev = pdev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	imxdi->ioaddr = devm_ioremap_resource(&pdev->dev, res);
+	imxdi->ioaddr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(imxdi->ioaddr))
 		return PTR_ERR(imxdi->ioaddr);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
