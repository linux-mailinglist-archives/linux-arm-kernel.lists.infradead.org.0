Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549EE13BF07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVqBtgjjLmc/eMrSSDQUKVtkcn41Ay/9K1x3OBg9TLM=; b=uU3GNybYPszKUj
	SctFZ7CfdUOrIE1bJNHDGNFRFcl10ly1fs6qopyn22Cg3gx0LjvqcMxuO4BK8UUZ2tS9WKCahA+sm
	HqrHN4aGNNqmqwiXVrfuBNTCwpAIpHqxRcZ1VjYzq4QxIZN8icRvCNnxNjcG1alXxBHHCTfQ4RoRv
	BZ60TCZPhh3Bh8chtUwJm2i2IJfamuL5MfL/2+FgT3937missbpKKBs6I/7t9e4AGzkmgmXgLt2vv
	yAXV3k1jqWOPPEonPamh3kLBSCjOV+uOBcEqT8NrgcaTZmGJtyO6rW0JXs2NNIyQTb2/YHmtchnCn
	exhD9YoYgUJRe5ClYR/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irhH7-0006Gf-6B; Wed, 15 Jan 2020 11:55:53 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irhG7-0004II-1p
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:54:56 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Codrin.Ciubotariu@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="Codrin.Ciubotariu@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Codrin.Ciubotariu@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Codrin.Ciubotariu@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 0QcJeO5zDlN+2V1IUzOvxjL/wX0mZhILFdtzPQPMiCSZIWKxT4efFgcRPjd6+NGtVTFNf58hW8
 4RQA91we/RgAlf9Fpd8QZRk+lPNLEyBYiasSlTHGKobKy0NVdtusfawv/hwjXLubZA3mLGPSu1
 2OZ/Nu87ebW75X9tX+NyQsDhqBWYp541/2pNyv5uLWwJVqDKKrpXHWMNbuLh/etXccBkWpS9Cc
 UA8G1Qqjdga1P0H6XcAaP8U1OIxs/WmB5KSvsby3JW33WOCPGnSnibjy/d9QNkd21ooo6eNtv0
 QZg=
X-IronPort-AV: E=Sophos;i="5.70,322,1574146800"; d="scan'208";a="61148934"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jan 2020 04:54:50 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 15 Jan 2020 04:54:49 -0700
Received: from rob-ult-m19940.microchip.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 15 Jan 2020 04:54:46 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 3/6] i2c: at91: Send bus clear command if SDA is down
Date: Wed, 15 Jan 2020 13:54:19 +0200
Message-ID: <20200115115422.17097-4-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
References: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_035451_168252_7B310223 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: robh@kernel.org, alexandre.belloni@bootlin.com, kamel.bouhara@bootlin.com,
 wsa@the-dreams.de, linux@armlinux.org.uk, Ludovic.Desroches@microchip.com,
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

Changes in v3:
 - rebased on top of i2c/for-next;
  - remove unnecessary initializations with false;
 - replaced SCL with SDA in title and commit message;
 - updated commit message;

Changes in v2:
 - use CLEAR command only if SDA is down; update patch subject to
   reflect this;
 - CLEAR command is no longer used for sama5d2, only sam9x60;

 drivers/i2c/busses/i2c-at91-core.c   |  2 ++
 drivers/i2c/busses/i2c-at91-master.c | 32 +++++++++++++++++++++++-----
 drivers/i2c/busses/i2c-at91.h        |  7 +++++-
 3 files changed, 35 insertions(+), 6 deletions(-)

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
index 0aba51a7df32..bcc05a8fe826 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -480,7 +480,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 	unsigned long time_left;
 	bool has_unre_flag = dev->pdata->has_unre_flag;
 	bool has_alt_cmd = dev->pdata->has_alt_cmd;
-	struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
+	bool has_clear_cmd = dev->pdata->has_clear_cmd;
 
 	/*
 	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
@@ -641,10 +641,32 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
 	}
 
-	if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
-		dev_dbg(dev->dev,
-			"SDA is down; clear bus using gpio\n");
-		i2c_recover_bus(&dev->adapter);
+	/*
+	 * some faulty I2C slave devices might hold SDA down;
+	 * we can send a bus clear command, hoping that the pins will be
+	 * released
+	 */
+	if (has_clear_cmd) {
+		if (!(dev->transfer_status & AT91_TWI_SDA)) {
+			dev_dbg(dev->dev,
+				"SDA is down; sending bus clear command\n");
+			if (dev->use_alt_cmd) {
+				unsigned int acr;
+
+				acr = at91_twi_read(dev, AT91_TWI_ACR);
+				acr &= ~AT91_TWI_ACR_DATAL_MASK;
+				at91_twi_write(dev, AT91_TWI_ACR, acr);
+			}
+			at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);
+		}
+	} else {
+		struct i2c_bus_recovery_info *rinfo = &dev->rinfo;
+
+		if (rinfo->get_sda && !(rinfo->get_sda(&dev->adapter))) {
+			dev_dbg(dev->dev,
+				"SDA is down; clear bus using gpio\n");
+			i2c_recover_bus(&dev->adapter);
+		}
 	}
 
 	return ret;
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
