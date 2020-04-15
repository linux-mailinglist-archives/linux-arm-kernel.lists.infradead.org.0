Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855641A93D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 09:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DwduXdlZZ3jainwVv+aVR234VSKDL8moKKjQT0Za8G4=; b=igYLtyK6Jt29mp
	bTpITN+EUgwkknU/PTMsARzkrS87Mu90bgX76z4PBY7rQDGGZ9pZOO+fbf/dxrEJwrYFp+vNyoyBK
	FI91qVef5zkCJwG+K09zw+t/h4hJcYRoqkorZ/9pPeGd1ujkAFTtrExPxrhCnDi31Yu/dAV6s3FD+
	hf+0cAL/74Ua++fKmRc9LofLzPzAUQ8lFUZpjOlsNeYyl84omIKsPnPf47erSylcim0xBkN+oehsi
	mjE+kTMnRKBxWdJSONcYByY8vg6Q4BqWXiSceh1qNat1W7bBNz5xWcixrxJCs+eRiCoTMX/aSBSI6
	O9zvOW1sV5Yc1OOyASuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOc8q-0000Lh-UX; Wed, 15 Apr 2020 07:07:24 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOc8k-0000JR-0t
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 07:07:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586934438; x=1618470438;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S2+uH86s+bRjLfFJ3yBCLL1egwy14L/rjPzDHoi6Fho=;
 b=Hhx2h0jstTacjx5S39SbLSRUFqM315JtXLmTNbq7lZhMY7vLjmSmT/7G
 J0OwJOEwLBWh37O+YLnF0NlH0a1PMWlnsOTqu3Z7m9oMhPoW7TtnGCVCY
 DClgX8pbASd33b6q8lzdc7H8LyzRWb4W0CzIm7vxap1fsKp8laFlit2/Y
 IzKKxZ2WNp151pyRCRURa6kWxBK9XiZcsz79nUyNJ6xSZhjKub40QCCK+
 LQWtQcpYQ+JYA8MGYKEnEqXPtZIAwyBxt412VVbpDWgTNMmGP2ceuLReb
 gY+t0xKxh+TbC+lB+1MReetQkP3k4DOQh5BhcBsrTlAZIQZKe4iuGFPCJ w==;
IronPort-SDR: ghEsHiT3JE71rp0I25+n2BPG4MrpZKm6DBUQalg0bwdmRbJhZ1wfgzdmbZhVK6sQpdf9AV1v8z
 6SUjddGq5NXIzCvyuoSm5CNfwuEU9p8UhDeMXtDcxTrbadQ8XuFpHX151/4iLl1616LEuUZo0y
 U2F1A5QBohghEn9h6pqKZQBedK1LwOw9LqiAYiGLySHS/zO5PWRuaMjYgM/mtKTslgtONC1b7S
 1qHzMKXJDQ7+Y306sPA+Jd5hgYYep9UuUEaA6D8SLhDabGb5bG44k7zLcb0Vi8754sWwnYsfUF
 GN8=
X-IronPort-AV: E=Sophos;i="5.72,386,1580799600"; d="scan'208";a="70388098"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Apr 2020 00:07:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 15 Apr 2020 00:06:52 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 15 Apr 2020 00:06:58 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-gpio@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RFC PATCH] i2c: at91: Fix pinmux after devm_gpiod_get() for bus
 recovery
Date: Wed, 15 Apr 2020 10:06:43 +0300
Message-ID: <20200415070643.23663-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_000718_283967_0F258C39 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alan@softiron.com, kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 wsa@the-dreams.de, linus.walleij@linaro.org, linux@armlinux.org.uk,
 ludovic.desroches@microchip.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_gpiod_get() usually calls gpio_request_enable() for non-strict pinmux
drivers. These puts the pins in GPIO mode, whithout notifying the pinctrl
driver. At this point, the I2C bus no longer owns the pins. To mux the
pins back to the I2C bus, we use the pinctrl driver to change the state
of the pins to GPIO, before using devm_gpiod_get(). After the pins are
received as GPIOs, we switch theer pinctrl state back to the default
one,

Fixes: d3d3fdcc4c90 ("i2c: at91: implement i2c bus recovery")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 drivers/i2c/busses/i2c-at91-master.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index 0aba51a7df32..43d85845c897 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -845,6 +845,18 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
 							 PINCTRL_STATE_DEFAULT);
 	dev->pinctrl_pins_gpio = pinctrl_lookup_state(dev->pinctrl,
 						      "gpio");
+	if (IS_ERR(dev->pinctrl_pins_default) ||
+	    IS_ERR(dev->pinctrl_pins_gpio)) {
+		dev_info(&pdev->dev, "pinctrl states incomplete for recovery\n");
+		return -EINVAL;
+	}
+
+	/*
+	 * pins will be taken as GPIO, so we might as well inform pinctrl about
+	 * this and move the state to GPIO
+	 */
+	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_gpio);
+
 	rinfo->sda_gpiod = devm_gpiod_get(&pdev->dev, "sda", GPIOD_IN);
 	if (PTR_ERR(rinfo->sda_gpiod) == -EPROBE_DEFER)
 		return -EPROBE_DEFER;
@@ -855,9 +867,7 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
 		return -EPROBE_DEFER;
 
 	if (IS_ERR(rinfo->sda_gpiod) ||
-	    IS_ERR(rinfo->scl_gpiod) ||
-	    IS_ERR(dev->pinctrl_pins_default) ||
-	    IS_ERR(dev->pinctrl_pins_gpio)) {
+	    IS_ERR(rinfo->scl_gpiod)) {
 		dev_info(&pdev->dev, "recovery information incomplete\n");
 		if (!IS_ERR(rinfo->sda_gpiod)) {
 			gpiod_put(rinfo->sda_gpiod);
@@ -870,6 +880,9 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
 		return -EINVAL;
 	}
 
+	/* change the state of the pins back to their default state */
+	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
+
 	dev_info(&pdev->dev, "using scl, sda for recovery\n");
 
 	rinfo->prepare_recovery = at91_prepare_twi_recovery;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
