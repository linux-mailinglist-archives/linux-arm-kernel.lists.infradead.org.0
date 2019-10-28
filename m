Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A23BDE7C38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 23:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fNssk1RsMeEukCawxfqFW+GvVHLlICPaVTOLCzWJq74=; b=SgbTcd/c1ZVz4S
	NrtYXgOpvvZufu1KyK11+6+SgPSQnTj2T71toqyQO/x3g8cZfyUPgzVTs2PLfRGfNFDP8UfMz24Kx
	VGm3R4DEyOVcaLrkMgKB3PheV81avIowroO3Qe+2QH3UNHQ9iDf6x55BeVBgRHusCCttJIwxoB5KZ
	Zb+lxq3mKn8L0cX2+UJrrbeFuLqvaT4UEOdcvP3pSzZ3NDZbAcRTIdxTeX9k0pNS1GUtHwy5uLOB8
	Az337lKRY6BRWerPuFWEJbprDF0ZlMEq8J+y79GHyhwrXWUpRyg/3mmXk3EOzIMk7vHLziRoyOT7G
	SNCSvAIIfnj7WOkqcF9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDIJ-0002ls-Ua; Mon, 28 Oct 2019 22:15:23 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDI9-0002km-Fv
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 22:15:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572300911; bh=6cUEPE++PT7bm/+2yXk5OlWnhW9Q2aMhm/b2mJdGUmE=;
 h=From:To:Cc:Subject:Date:From;
 b=VjETtQHRQrDTpLtKSrqvJ6yAOr4p44MmViCQBsyKn+J6ifWreBrDcRG72ZYUDn4tS
 dXzFMwjF+L5F9rBI663kGszmMqFihPdqROZ+SORr+Dx15R+FoQuH71qi4QuJ/b8/MV
 0w0J6ISfYXj1nL0btEHSfszfXWFKVg1kht3duTv4=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] input: sun4i-lradc-keys: Add wakup support
Date: Mon, 28 Oct 2019 23:15:02 +0100
Message-Id: <20191028221502.3503543-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_151513_863387_F8471454 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ondrej Jirman <megous@megous.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Chen-Yu Tsai <wens@csie.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow the driver to wakeup the system on key press.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/input/keyboard/sun4i-lradc-keys.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/input/keyboard/sun4i-lradc-keys.c b/drivers/input/keyboard/sun4i-lradc-keys.c
index 4a796bed48ac..bba679d7b54b 100644
--- a/drivers/input/keyboard/sun4i-lradc-keys.c
+++ b/drivers/input/keyboard/sun4i-lradc-keys.c
@@ -22,6 +22,8 @@
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/pm_wakeirq.h>
+#include <linux/pm_wakeup.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
 
@@ -226,8 +228,7 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
 {
 	struct sun4i_lradc_data *lradc;
 	struct device *dev = &pdev->dev;
-	int i;
-	int error;
+	int i, error, irq;
 
 	lradc = devm_kzalloc(dev, sizeof(struct sun4i_lradc_data), GFP_KERNEL);
 	if (!lradc)
@@ -272,8 +273,13 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
 	if (IS_ERR(lradc->base))
 		return PTR_ERR(lradc->base);
 
-	error = devm_request_irq(dev, platform_get_irq(pdev, 0),
-				 sun4i_lradc_irq, 0,
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(&pdev->dev, "Failed to get IRQ\n");
+		return irq;
+	}
+
+	error = devm_request_irq(dev, irq, sun4i_lradc_irq, 0,
 				 "sun4i-a10-lradc-keys", lradc);
 	if (error)
 		return error;
@@ -282,6 +288,14 @@ static int sun4i_lradc_probe(struct platform_device *pdev)
 	if (error)
 		return error;
 
+	device_init_wakeup(dev, true);
+
+	error = dev_pm_set_wake_irq(dev, irq);
+	if (error) {
+		dev_err(dev, "Could not set wake IRQ\n");
+		return error;
+	}
+
 	return 0;
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
