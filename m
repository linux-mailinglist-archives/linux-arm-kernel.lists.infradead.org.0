Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE94CBC47A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 11:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D/SSy0NOh8MTtt20e8y6jJH6ka/1rJMKwTsvdaHt/mo=; b=dNj
	vWkZasR4CQWHS2eQUPs1Dcb27eesRNS3dXn84kwsKYhuIU0EuRRcmwrwwqxAX+2vF1azw18YQf06m
	qUXvnTX9kRUkWhR29I8ir6tU9KXg946rZKcH0MZ009c+Mk7ttRjJXESnpS9NEpWdxGHFpwFKDe7nD
	5IKWI8LdiTArwqkE5QlEwftWWxihqvlVtGEVdSHxA2ymPponvD1hV3+hVFBL6gLGdp4O0FlDYWADN
	IvFH7Bb1+6mI++IrPnhAJwSb1FdqU0tyxzw7DRAlvc/YZljTnyiS3MShEpZ/fzhb/Hor3dPynOtgf
	MXZAHj2GFmMxDPpi7LAN4722Y7iY6cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCgmD-0004LG-Gh; Tue, 24 Sep 2019 09:06:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCgli-0004Ir-Ed
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 09:06:04 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F37031A0274;
 Tue, 24 Sep 2019 11:05:56 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BDC021A0169;
 Tue, 24 Sep 2019 11:05:51 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C4E4C402B4;
 Tue, 24 Sep 2019 17:05:45 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: dmitry.torokhov@gmail.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, swboyd@chromium.org,
 mojha@codeaurora.org, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] input: keyboard: imx_keypad: Use 'dev' instead of
 dereferencing it repeatedly
Date: Tue, 24 Sep 2019 17:04:19 +0800
Message-Id: <1569315859-7046-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_020559_809525_EB23F185 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add helper variable dev = &pdev->dev to simply the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/input/keyboard/imx_keypad.c | 35 ++++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/input/keyboard/imx_keypad.c b/drivers/input/keyboard/imx_keypad.c
index 5a46d11..3024d2a 100644
--- a/drivers/input/keyboard/imx_keypad.c
+++ b/drivers/input/keyboard/imx_keypad.c
@@ -418,14 +418,15 @@ MODULE_DEVICE_TABLE(of, imx_keypad_of_match);
 
 static int imx_keypad_probe(struct platform_device *pdev)
 {
+	struct device *dev = &pdev->dev;
 	const struct matrix_keymap_data *keymap_data =
-			dev_get_platdata(&pdev->dev);
+			dev_get_platdata(dev);
 	struct imx_keypad *keypad;
 	struct input_dev *input_dev;
 	int irq, error, i, row, col;
 
-	if (!keymap_data && !pdev->dev.of_node) {
-		dev_err(&pdev->dev, "no keymap defined\n");
+	if (!keymap_data && !dev->of_node) {
+		dev_err(dev, "no keymap defined\n");
 		return -EINVAL;
 	}
 
@@ -433,15 +434,15 @@ static int imx_keypad_probe(struct platform_device *pdev)
 	if (irq < 0)
 		return irq;
 
-	input_dev = devm_input_allocate_device(&pdev->dev);
+	input_dev = devm_input_allocate_device(dev);
 	if (!input_dev) {
-		dev_err(&pdev->dev, "failed to allocate the input device\n");
+		dev_err(dev, "failed to allocate the input device\n");
 		return -ENOMEM;
 	}
 
-	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
+	keypad = devm_kzalloc(dev, sizeof(*keypad), GFP_KERNEL);
 	if (!keypad) {
-		dev_err(&pdev->dev, "not enough memory for driver data\n");
+		dev_err(dev, "not enough memory for driver data\n");
 		return -ENOMEM;
 	}
 
@@ -456,16 +457,16 @@ static int imx_keypad_probe(struct platform_device *pdev)
 	if (IS_ERR(keypad->mmio_base))
 		return PTR_ERR(keypad->mmio_base);
 
-	keypad->clk = devm_clk_get(&pdev->dev, NULL);
+	keypad->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(keypad->clk)) {
-		dev_err(&pdev->dev, "failed to get keypad clock\n");
+		dev_err(dev, "failed to get keypad clock\n");
 		return PTR_ERR(keypad->clk);
 	}
 
 	/* Init the Input device */
 	input_dev->name = pdev->name;
 	input_dev->id.bustype = BUS_HOST;
-	input_dev->dev.parent = &pdev->dev;
+	input_dev->dev.parent = dev;
 	input_dev->open = imx_keypad_open;
 	input_dev->close = imx_keypad_close;
 
@@ -474,7 +475,7 @@ static int imx_keypad_probe(struct platform_device *pdev)
 					   MAX_MATRIX_KEY_COLS,
 					   keypad->keycodes, input_dev);
 	if (error) {
-		dev_err(&pdev->dev, "failed to build keymap\n");
+		dev_err(dev, "failed to build keymap\n");
 		return error;
 	}
 
@@ -488,8 +489,8 @@ static int imx_keypad_probe(struct platform_device *pdev)
 			}
 		}
 	}
-	dev_dbg(&pdev->dev, "enabled rows mask: %x\n", keypad->rows_en_mask);
-	dev_dbg(&pdev->dev, "enabled cols mask: %x\n", keypad->cols_en_mask);
+	dev_dbg(dev, "enabled rows mask: %x\n", keypad->rows_en_mask);
+	dev_dbg(dev, "enabled cols mask: %x\n", keypad->cols_en_mask);
 
 	__set_bit(EV_REP, input_dev->evbit);
 	input_set_capability(input_dev, EV_MSC, MSC_SCAN);
@@ -502,22 +503,22 @@ static int imx_keypad_probe(struct platform_device *pdev)
 	imx_keypad_inhibit(keypad);
 	clk_disable_unprepare(keypad->clk);
 
-	error = devm_request_irq(&pdev->dev, irq, imx_keypad_irq_handler, 0,
+	error = devm_request_irq(dev, irq, imx_keypad_irq_handler, 0,
 			    pdev->name, keypad);
 	if (error) {
-		dev_err(&pdev->dev, "failed to request IRQ\n");
+		dev_err(dev, "failed to request IRQ\n");
 		return error;
 	}
 
 	/* Register the input device */
 	error = input_register_device(input_dev);
 	if (error) {
-		dev_err(&pdev->dev, "failed to register input device\n");
+		dev_err(dev, "failed to register input device\n");
 		return error;
 	}
 
 	platform_set_drvdata(pdev, keypad);
-	device_init_wakeup(&pdev->dev, 1);
+	device_init_wakeup(dev, 1);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
