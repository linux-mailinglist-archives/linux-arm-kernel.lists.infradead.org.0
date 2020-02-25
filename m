Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 438BA16EA8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 16:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eVSZEgEw95qe7TvCinKBqnqIyL8CVHqawxlyjqay55c=; b=RSBTe6p0Md9HE4
	MPmK4bw9l1IASgc/ETpDgMBv1LyNbmq6KhyNBfXeYnVoB7EBWfbVIXK88MxNE6F0n3RUa1mlmzzT9
	i7hoPHSpsjG+TrcLkQTFZmK6Kqe3qPW3At7RniDGWzTmLw4z3B9qd5nmd4vpOlqDe1Yh3K55GPxDk
	EvVc+Gy2FX7MdMtr2pv1cqc6wagPLd7lH+e6bW6UJj9Yx5A2nFsEg7bg/ry0QxQKtRWzKMx5wftbD
	drjRQEp5HyyUo0lNTeSJolQIwEzi25bT9NmEQKxHFibDjYQjv58PQjOY9E0cpxAz4Y9LatlwUChCV
	YfIN6iRzTitV0SRuJPJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6cU9-0004vu-I6; Tue, 25 Feb 2020 15:51:01 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6cTe-0004kk-Vi
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 15:50:34 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Wv+Si0dR4PIa4Fd4+dshtZunVdPt2kALIzHXWNfhOkIoruj948TOGCVA9wUdOV+r/MrbCJV35N
 BRACPKRNwE78A0LNXnmWkd+CpKEb+almYxQk0QIhbBoH1i5OTDIsxy8D5nb+HsVJZ2TgWewhQZ
 0/yo/htPhrYMDFwRD9gJWjBx3f/7DlUtryfLe8efPBXg4U1OgsG34orYESmyG95oMysLB+IbtL
 El9w4FwjpLbxfplhE72LCfWlBYxo3kOJH0VqK6qrRQw8Uj6LAMXstIQOO15vZsKh82WngqIhFI
 E1Y=
X-IronPort-AV: E=Sophos;i="5.70,484,1574146800"; d="scan'208";a="66666906"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Feb 2020 08:50:23 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 25 Feb 2020 08:50:15 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 25 Feb 2020 08:50:25 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH v4 1/4] i2c: at91: Send bus clear command if SDA is down
Date: Tue, 25 Feb 2020 17:50:09 +0200
Message-ID: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_075031_033076_46ED3269 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, wsa@the-dreams.de, linux@armlinux.org.uk,
 ludovic.desroches@microchip.com, robh+dt@kernel.org,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>, peda@axentia.se
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After a transfer timeout, some faulty I2C slave devices might hold down
the SDA pin. We can generate a bus clear command, hoping that the slave
might release the pins.
If the CLEAR command is not supported, we will use gpio recovery, if
available, to reset the bus.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---

Changes in v4:
 - moved the HW bus clear command in a recover_bus() function, to be able
   to just call i2c_recover_bus() if a transfer fails;
 - recovery gpios are no longer taken if HW bus clear command is
   supported;  

Changes in v3:
 - removed unnecessary condition from info print;
 - removed unneded declarations;

Changes in v2:
 - called i2c_recover_bus() after an error occurs, if SDA is down;
 - release gpios if recovery information is incomplete;

 drivers/i2c/busses/i2c-at91-core.c   |  2 ++
 drivers/i2c/busses/i2c-at91-master.c | 49 ++++++++++++++++++++++++----
 drivers/i2c/busses/i2c-at91.h        |  7 +++-
 3 files changed, 50 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index 3da1a8acecb5..e14edd236108 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -131,6 +131,7 @@ static struct at91_twi_pdata sama5d2_config = {
 	.has_dig_filtr = true,
 	.has_adv_dig_filtr = true,
 	.has_ana_filtr = true,
+	.has_clear_cmd = false,	/* due to errata, CLEAR cmd is not working */
 };
 
 static struct at91_twi_pdata sam9x60_config = {
@@ -142,6 +143,7 @@ static struct at91_twi_pdata sam9x60_config = {
 	.has_dig_filtr = true,
 	.has_adv_dig_filtr = true,
 	.has_ana_filtr = true,
+	.has_clear_cmd = true,
 };
 
 static const struct of_device_id atmel_twi_dt_ids[] = {
diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index 0aba51a7df32..776e95962ab6 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -480,7 +480,6 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 	unsigned long time_left;
 	bool has_unre_flag = dev->pdata->has_unre_flag;
 	bool has_alt_cmd = dev->pdata->has_alt_cmd;
-	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
 
 	/*
 	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
@@ -641,11 +640,12 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
 	}
 
-	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
-		dev_dbg(dev->dev,
-			"SDA is down; clear bus using gpio\n");
-		i2c_recover_bus(&dev->adapter);
-	}
+	/*
+	 * some faulty I2C slave devices might hold SDA down;
+	 * we can send a bus clear command, hoping that the pins will be
+	 * released
+	 */
+	i2c_recover_bus(&dev->adapter);
 
 	return ret;
 }
@@ -830,7 +830,7 @@ static void at91_unprepare_twi_recovery(struct i2c_adapter *adap)
 	pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
 }
 
-static int at91_init_twi_recovery_info(struct platform_device *pdev,
+static int at91_init_twi_recovery_gpio(struct platform_device *pdev,
 				       struct at91_twi_dev *dev)
 {
 	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
@@ -880,6 +880,41 @@ static int at91_init_twi_recovery_info(struct platform_device *pdev,
 	return 0;
 }
 
+static int at91_twi_recover_bus_cmd(struct i2c_adapter *adap)
+{
+	struct at91_twi_dev *dev = i2c_get_adapdata(adap);
+
+	dev->transfer_status |= at91_twi_read(dev, AT91_TWI_SR);
+	if (!(dev->transfer_status & AT91_TWI_SDA)) {
+		dev_dbg(dev->dev, "SDA is down; sending bus clear command\n");
+		if (dev->use_alt_cmd) {
+			unsigned int acr;
+
+			acr = at91_twi_read(dev, AT91_TWI_ACR);
+			acr &= ~AT91_TWI_ACR_DATAL_MASK;
+			at91_twi_write(dev, AT91_TWI_ACR, acr);
+		}
+		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);
+	}
+
+	return 0;
+}
+
+static int at91_init_twi_recovery_info(struct platform_device *pdev,
+				       struct at91_twi_dev *dev)
+{
+	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
+	bool has_clear_cmd = dev->pdata->has_clear_cmd;
+
+	if (!has_clear_cmd)
+		return at91_init_twi_recovery_gpio(pdev, dev);
+
+	rinfo->recover_bus = at91_twi_recover_bus_cmd;
+	dev->adapter.bus_recovery_info = rinfo;
+
+	return 0;
+}
+
 int at91_twi_probe_master(struct platform_device *pdev,
 			  u32 phy_addr, struct at91_twi_dev *dev)
 {
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index f57a6cab96b4..7e7b4955ca7f 100644
--- a/drivers/i2c/busses/i2c-at91.h
+++ b/drivers/i2c/busses/i2c-at91.h
@@ -36,6 +36,7 @@
 #define	AT91_TWI_SVDIS		BIT(5)	/* Slave Transfer Disable */
 #define	AT91_TWI_QUICK		BIT(6)	/* SMBus quick command */
 #define	AT91_TWI_SWRST		BIT(7)	/* Software Reset */
+#define	AT91_TWI_CLEAR		BIT(15) /* Bus clear command */
 #define	AT91_TWI_ACMEN		BIT(16) /* Alternative Command Mode Enable */
 #define	AT91_TWI_ACMDIS		BIT(17) /* Alternative Command Mode Disable */
 #define	AT91_TWI_THRCLR		BIT(24) /* Transmit Holding Register Clear */
@@ -69,6 +70,8 @@
 #define	AT91_TWI_NACK		BIT(8)	/* Not Acknowledged */
 #define	AT91_TWI_EOSACC		BIT(11)	/* End Of Slave Access */
 #define	AT91_TWI_LOCK		BIT(23) /* TWI Lock due to Frame Errors */
+#define	AT91_TWI_SCL		BIT(24) /* TWI SCL status */
+#define	AT91_TWI_SDA		BIT(25) /* TWI SDA status */
 
 #define	AT91_TWI_INT_MASK \
 	(AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY | AT91_TWI_NACK \
@@ -81,7 +84,8 @@
 #define	AT91_TWI_THR		0x0034	/* Transmit Holding Register */
 
 #define	AT91_TWI_ACR		0x0040	/* Alternative Command Register */
-#define	AT91_TWI_ACR_DATAL(len)	((len) & 0xff)
+#define	AT91_TWI_ACR_DATAL_MASK	GENMASK(15, 0)
+#define	AT91_TWI_ACR_DATAL(len)	((len) & AT91_TWI_ACR_DATAL_MASK)
 #define	AT91_TWI_ACR_DIR	BIT(8)
 
 #define AT91_TWI_FILTR		0x0044
@@ -118,6 +122,7 @@ struct at91_twi_pdata {
 	bool has_dig_filtr;
 	bool has_adv_dig_filtr;
 	bool has_ana_filtr;
+	bool has_clear_cmd;
 	struct at_dma_slave dma_slave;
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
