Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD492D7DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:31:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VGNmUAqNrQ+mCpV7xcCm5/OohdOkigLcX/U2cybHntg=; b=cmQ
	1EEfCml7P9SmhYzB7Yw3heXw2FASxIt9n3Y7X/D8rFg5qWyEX5pMM32kqoXYKbV1SLk2r+whm86++
	ydhtl8RoNQyeqSmvpK9sPpIjskK/hEruAdEkIpV/Ii7NOXr2wtz6YBaRR77JJ+GF+VyqfOEYzrJPC
	0KBJCSYjBmO+X1WyZNhNSqJ/QybcYIzLO7Sf3RMfETk24aZyUCNuYygZVYsm2qOv9r+mG/6O8iOD8
	1BtXzZNEQD0FhgNofC85bbLavW8Q7pXt/pvWQ3CNVQ+RYLL/A0JeCsZmnRJaRcm8iXAGS3N/gXwXq
	5EE+MIenz3GmsI8+dGtoPd0rfSWkRbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtzS-0005kG-OW; Wed, 29 May 2019 08:31:18 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtzL-0005jP-Gg
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:31:12 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8736F200273;
 Wed, 29 May 2019 10:31:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3F2902011C3;
 Wed, 29 May 2019 10:31:04 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C8C27402FB;
 Wed, 29 May 2019 16:30:57 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 mark.rutland@arm.com, linus.walleij@linaro.org, bgolaszewski@baylibre.com
Subject: [PATCH 1/3] gpio: mpc8xxx: Enable port input and interrupt
Date: Wed, 29 May 2019 16:32:52 +0800
Message-Id: <20190529083254.39581-1-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_013111_687599_8F28F4D5 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Zhang Ying-22455 <ying.zhang22455@nxp.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chuanhua Han <chuanhua.han@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPIO Input Buffer Enable register is used to control the input
enable of each individual GPIO port. When an individual GPIO port's
direction is set to input (GPIO_GPDIR[DRn=0]), the associated
input enable must be set (GPIOxGPIE[IEn]=1) to propagate the port
value to the GPIO Data Register.

This patch enable port input and interrupt.

Signed-off-by: Zhang Ying-22455 <ying.zhang22455@nxp.com>
Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 drivers/gpio/gpio-mpc8xxx.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-mpc8xxx.c b/drivers/gpio/gpio-mpc8xxx.c
index c8673a5d9412..555e0e7957d9 100644
--- a/drivers/gpio/gpio-mpc8xxx.c
+++ b/drivers/gpio/gpio-mpc8xxx.c
@@ -373,9 +373,10 @@ static int mpc8xxx_probe(struct platform_device *pdev)
 	if (!mpc8xxx_gc->irq)
 		return 0;
 
-	/* ack and mask all irqs */
+	/* ack and enable irqs */
 	gc->write_reg(mpc8xxx_gc->regs + GPIO_IER, 0xffffffff);
-	gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0);
+	gc->write_reg(mpc8xxx_gc->regs + GPIO_IMR, 0xffffffff);
+	gc->write_reg(mpc8xxx_gc->regs + GPIO_ICR2, 0xffffffff);
 
 	irq_set_chained_handler_and_data(mpc8xxx_gc->irqn,
 					 mpc8xxx_gpio_irq_cascade, mpc8xxx_gc);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
