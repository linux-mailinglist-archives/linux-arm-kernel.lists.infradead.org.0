Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B30E3CFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKIQwvMZm0Lh6GFlfdfeYZknXDI61lTkeNgoiqdjVjk=; b=UMYmBrv7DNfUr1
	jgz5WF4uxqyMb17JDcKJ26rLwC7pnoVcFqr8Tq5NRXbkR0g0NOHDSl6Ae6UzS7lEM/+x+4PDQ6iKz
	6fPVL1+PvN3ml20hwHnlMAUDS+3G3xkAQNGNgfWR6Edx3QEyfcmn6GzmqMqwGIOvMWrMB8mvwhksX
	JCq2bBPLZo3Oxvik2JnKO2C9716PzU0FdrduIc4EfqaYQhZVYLfg6I5BL/26oXwoUF0zHDBi9MHv0
	4TslArlgMRgBGVtjZx2FDwgl+xcsYupsDa2D5gfrsrHzXwNdNk84jIbqYXpNqKGr1ID1E89zy34ht
	FyIOtaMV9jl6G+wwMhjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjW0-000119-1b; Thu, 24 Oct 2019 20:15:24 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjUF-0007LZ-G9
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:13:37 +0000
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7EF92240004;
 Thu, 24 Oct 2019 20:13:26 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Wolfram Sang <wsa@the-dreams.de>, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] i2c: at91: Send bus clear command if SCL or SDA is down
Date: Thu, 24 Oct 2019 22:12:58 +0200
Message-Id: <20191024201302.23376-2-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191024201302.23376-1-kamel.bouhara@bootlin.com>
References: <20191024201302.23376-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_131335_809671_3DB2FE23 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

After a transfer timeout, some faulty I2C slave devices might hold down
the SCL or the SDA pins. We can generate a bus clear command, hoping that
the slave might release the pins.

Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
---
 drivers/i2c/busses/i2c-at91-core.c   |  8 ++++++++
 drivers/i2c/busses/i2c-at91-master.c | 22 ++++++++++++++++++++++
 drivers/i2c/busses/i2c-at91.h        |  7 ++++++-
 3 files changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-at91-core.c b/drivers/i2c/busses/i2c-at91-core.c
index 435c7d7377a3..cb07489e698f 100644
--- a/drivers/i2c/busses/i2c-at91-core.c
+++ b/drivers/i2c/busses/i2c-at91-core.c
@@ -68,6 +68,7 @@ static struct at91_twi_pdata at91rm9200_config = {
 	.has_unre_flag = true,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_clear_cmd = false,
 };
 
 static struct at91_twi_pdata at91sam9261_config = {
@@ -76,6 +77,7 @@ static struct at91_twi_pdata at91sam9261_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_clear_cmd = false,
 };
 
 static struct at91_twi_pdata at91sam9260_config = {
@@ -84,6 +86,7 @@ static struct at91_twi_pdata at91sam9260_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_clear_cmd = false,
 };
 
 static struct at91_twi_pdata at91sam9g20_config = {
@@ -92,6 +95,7 @@ static struct at91_twi_pdata at91sam9g20_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_clear_cmd = false,
 };
 
 static struct at91_twi_pdata at91sam9g10_config = {
@@ -100,6 +104,7 @@ static struct at91_twi_pdata at91sam9g10_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_clear_cmd = false,
 };
 
 static const struct platform_device_id at91_twi_devtypes[] = {
@@ -130,6 +135,7 @@ static struct at91_twi_pdata at91sam9x5_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = false,
+	.has_clear_cmd = false,
 };
 
 static struct at91_twi_pdata sama5d4_config = {
@@ -138,6 +144,7 @@ static struct at91_twi_pdata sama5d4_config = {
 	.has_unre_flag = false,
 	.has_alt_cmd = false,
 	.has_hold_field = true,
+	.has_clear_cmd = false,
 };
 
 static struct at91_twi_pdata sama5d2_config = {
@@ -146,6 +153,7 @@ static struct at91_twi_pdata sama5d2_config = {
 	.has_unre_flag = true,
 	.has_alt_cmd = true,
 	.has_hold_field = true,
+	.has_clear_cmd = true,
 };
 
 static const struct of_device_id atmel_twi_dt_ids[] = {
diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index a3fcc35ffd3b..12d4fa946a82 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -440,6 +440,7 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 	unsigned long time_left;
 	bool has_unre_flag = dev->pdata->has_unre_flag;
 	bool has_alt_cmd = dev->pdata->has_alt_cmd;
+	bool has_clear_cmd = dev->pdata->has_clear_cmd;
 
 	/*
 	 * WARNING: the TXCOMP bit in the Status Register is NOT a clear on
@@ -599,6 +600,27 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 		at91_twi_write(dev, AT91_TWI_CR,
 			       AT91_TWI_THRCLR | AT91_TWI_LOCKCLR);
 	}
+
+	/*
+	 * After timeout, some faulty I2C slave devices might hold SCL/SDA down;
+	 * we can send a bus clear command, hoping that the pins will be
+	 * released
+	 */
+	if (has_clear_cmd &&
+	    (!(dev->transfer_status & AT91_TWI_SDA) ||
+	     !(dev->transfer_status & AT91_TWI_SCL))) {
+		dev_dbg(dev->dev,
+			"SDA/SCL are down; sending bus clear command\n");
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
 	return ret;
 }
 
diff --git a/drivers/i2c/busses/i2c-at91.h b/drivers/i2c/busses/i2c-at91.h
index 499b506f6128..0827c28a84db 100644
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
 
 #define	AT91_TWI_FMR		0x0050	/* FIFO Mode Register */
@@ -108,6 +112,7 @@ struct at91_twi_pdata {
 	bool has_unre_flag;
 	bool has_alt_cmd;
 	bool has_hold_field;
+	bool has_clear_cmd;
 	struct at_dma_slave dma_slave;
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
