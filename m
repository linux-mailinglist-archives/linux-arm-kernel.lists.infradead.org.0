Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58ABC200B4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 16:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8a1JL2wFPi7Q7eivoYXyG8Z2fRIkqS4iUHfSpaMoPlM=; b=Sz3girwYpUZBrG
	cTyjPkU5FrbGrA5XGwS0RUqF/XpliWXwkf3upaQNCdnXAobWcbjWje7ZJQD5MQDJW8xy7rPF+VqjB
	f0Lus8YrUsrtrGrDLnHceEsrFbfEh28xBZVW/wugU6iut2IMV40NYi7Q5F7CWSpFrEhHomkZnW+XQ
	Nm/NcX2dK/h1OfzOM8h5KDWryDItnTlLLCFaAL4ciUDzctNcVj149n6GWRdKrvwHt5HM3IpDbv9y4
	sZdtM2tllFcPIwQBjqKQgF0KcCNBsCb70UroZOjYuQ3m9YpCuMtv6rnxp/WkM8UU4/sg4T1/quprQ
	Ax6taHojDlU4ccMI3OwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHuG-00012C-8B; Fri, 19 Jun 2020 14:22:12 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHu3-00011h-67
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 14:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592576518; x=1624112518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PKnFoxqQrAiroEcrPnCd5Y5Np27cClJYN9tqUhIZ/Xg=;
 b=g6pABK2bTmeUGYQioMYvtnpOcijPerN1f9fQS0CZ0AWHb9V8iw2W64Rl
 1kStikK+l9a9Xpc8c/MI3sm1BDafqYOiwMlmkIN1Wqr0x8JeUkriXoSLD
 NrIwVHCoYBWG4fZ7Q2a+DMZFzTO3/FTKnFJ85LkfEOQCRNeGtvjTYmWXh
 KatlAU7H7dKWjDL4xt579gTGWQkPCF8qW0zOSfj+recB1Z2CmppsZ+9Ve
 Ps5hn1bYqBY361cT4+AaRXVgFaSfoq8LE+XHNB00ivRbswMG8PVEDwhNM
 loYdEYsXufcLKy9D3DPGmpxhPhCcGlTCU4IZGOLXcTpwI5bjDFYE03vWU w==;
IronPort-SDR: llHCWxN4hggFAoPTbkYOKYaHtktya/T9B2Ag/hDD9VvHmE45igm4SL5Wkay8pEygalATBbfRia
 cf9ZVVjlfNqm6T9xsjEM6csv7gMMK3cLgdWRHvNYw2n1b4t9yJYUZbPywym4Kj5KaiO0E9R2Sz
 FI40TCihRLFDN/PABW8XPZl+VFigcLrEq7H/mg7aG/obRlcV8Uly+sucLK/hw/r7sv23kyD3NL
 pJXrrO4tvsORWA9PBkLW+VHxXwnL6VqasUQF90ysINxOvLi0f50qsEkDy3cLUN9FzHvO5WdVmW
 iMg=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="79101137"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 07:21:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 07:21:49 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 07:21:24 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: [RFC PATCH 4/4] i2c: at91: Move to generic GPIO bus recovery
Date: Fri, 19 Jun 2020 17:19:04 +0300
Message-ID: <20200619141904.910889-5-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619141904.910889-1-codrin.ciubotariu@microchip.com>
References: <20200619141904.910889-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_072159_289807_F3CED941 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 linux@armlinux.org.uk, wsa@kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the Microchip at91 driver the first to use the generic GPIO bus
recovery support from the I2C core and discard the driver implementation.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 drivers/i2c/busses/i2c-at91-master.c | 69 ++--------------------------
 drivers/i2c/busses/i2c-at91.h        |  3 --
 2 files changed, 3 insertions(+), 69 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index 363d540a8345..66864f9cf7ac 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -816,79 +816,16 @@ static int at91_twi_configure_dma(struct at91_twi_dev *dev, u32 phy_addr)
 	return ret;
 }
 
-static void at91_prepare_twi_recovery(struct i2c_adapter *adap)
-{
-	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
-
-	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_gpio);
-}
-
-static void at91_unprepare_twi_recovery(struct i2c_adapter *adap)
-{
-	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
-
-	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
-}
-
 static int at91_init_twi_recovery_gpio(struct platform_device *pdev,
 				       struct at91_twi_dev *dev)
 {
 	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
 
-	dev->pinctrl = devm_pinctrl_get(&pdev->dev);
-	if (!dev->pinctrl || IS_ERR(dev->pinctrl)) {
+	rinfo->pinctrl = devm_pinctrl_get(&pdev->dev);
+	if (!rinfo->pinctrl || IS_ERR(rinfo->pinctrl)) {
 		dev_info(dev->dev, "can't get pinctrl, bus recovery not supported\n");
-		return PTR_ERR(dev->pinctrl);
+		return PTR_ERR(rinfo->pinctrl);
 	}
-
-	dev->pinctrl_pins_default = pinctrl_lookup_state(dev->pinctrl,
-							 PINCTRL_STATE_DEFAULT);
-	dev->pinctrl_pins_gpio = pinctrl_lookup_state(dev->pinctrl,
-						      "gpio");
-	if (IS_ERR(dev->pinctrl_pins_default) ||
-	    IS_ERR(dev->pinctrl_pins_gpio)) {
-		dev_info(&pdev->dev, "pinctrl states incomplete for recovery\n");
-		return -EINVAL;
-	}
-
-	/*
-	 * pins will be taken as GPIO, so we might as well inform pinctrl about
-	 * this and move the state to GPIO
-	 */
-	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_gpio);
-
-	rinfo->sda_gpiod = devm_gpiod_get(&pdev->dev, "sda", GPIOD_IN);
-	if (PTR_ERR(rinfo->sda_gpiod) == -EPROBE_DEFER)
-		return -EPROBE_DEFER;
-
-	rinfo->scl_gpiod = devm_gpiod_get(&pdev->dev, "scl",
-					  GPIOD_OUT_HIGH_OPEN_DRAIN);
-	if (PTR_ERR(rinfo->scl_gpiod) == -EPROBE_DEFER)
-		return -EPROBE_DEFER;
-
-	if (IS_ERR(rinfo->sda_gpiod) ||
-	    IS_ERR(rinfo->scl_gpiod)) {
-		dev_info(&pdev->dev, "recovery information incomplete\n");
-		if (!IS_ERR(rinfo->sda_gpiod)) {
-			gpiod_put(rinfo->sda_gpiod);
-			rinfo->sda_gpiod = NULL;
-		}
-		if (!IS_ERR(rinfo->scl_gpiod)) {
-			gpiod_put(rinfo->scl_gpiod);
-			rinfo->scl_gpiod = NULL;
-		}
-		pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
-		return -EINVAL;
-	}
-
-	/* change the state of the pins back to their default state */
-	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
-
-	dev_info(&pdev->dev, "using scl, sda for recovery\n");
-
-	rinfo->prepare_recovery = at91_prepare_twi_recovery;
-	rinfo->unprepare_recovery = at91_unprepare_twi_recovery;
-	rinfo->recover_bus = i2c_generic_scl_recovery;
 	dev->adapter.bus_recovery_info = rinfo;
 
 	return 0;
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index 7e7b4955ca7f..eae673ae786c 100644
--- a/drivers/i2c/busses/i2c-at91.h
+++ b/drivers/i2c/busses/i2c-at91.h
@@ -157,9 +157,6 @@ struct at91_twi_dev {
 	struct at91_twi_dma dma;
 	bool slave_detected;
 	struct i2c_bus_recovery_info rinfo;
-	struct pinctrl *pinctrl;
-	struct pinctrl_state *pinctrl_pins_default;
-	struct pinctrl_state *pinctrl_pins_gpio;
 #ifdef CONFIG_I2C_AT91_SLAVE_EXPERIMENTAL
 	unsigned smr;
 	struct i2c_client *slave;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
