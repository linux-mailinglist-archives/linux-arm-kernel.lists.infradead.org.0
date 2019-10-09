Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7832AD0AFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3EAiYY44ODORafg+rrm370ePI8qHQtZxJJsmz0elCVs=; b=jLR
	ohPa4ykPTfOofvq3fLTvQNvlGMuubkBSwnVA0+OstsALF5tYB5wO8P47bzvipjGiO6Vzjuy6+/2Qh
	ENVXjUHR9UsNV2ugeKuXTLWoyPmIBfDcVG4fUghjvLlYFSOB2um1djq+t9gyeIfIkfWWRkxQEfCc3
	b015xTVOBo06DeGijd4t5bY6qhDQjd2pGMgHCR0Hzy4+JeVUqxGV0fYlHpOAOINAhUdElaCin/zFF
	d8RDvgPWwbR4bmoqgVYuoAvsyMsP6ApUYHHkfyWqKbR/beAL2SOJpzyFrUWpN2B1smLUGf48Qq0zf
	EpFkP43shK7R2rUu3hvjSV8mZpFyyNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8Br-0006rW-I9; Wed, 09 Oct 2019 09:23:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8Bk-0006qG-6h
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:23:22 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 52A541A0221;
 Wed,  9 Oct 2019 11:23:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B67BB1A0012;
 Wed,  9 Oct 2019 11:23:09 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 86415402DA;
 Wed,  9 Oct 2019 17:23:00 +0800 (SGT)
From: Biwen Li <biwen.li@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, wsa@the-dreams.de,
 leoyang.li@nxp.com, aisheng.dong@nxp.com, xiaoning.wang@nxp.com
Subject: [v2] i2c: imx: support slave mode for imx I2C driver
Date: Wed,  9 Oct 2019 17:12:09 +0800
Message-Id: <20191009091209.14350-1-biwen.li@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_022320_525278_DAFD70A8 
X-CRM114-Status: GOOD (  12.59  )
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
Cc: Biwen Li <biwen.li@nxp.com>, xiaobo.xie@nxp.com,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, jiafei.pan@nxp.com,
 linux-arm-kernel@lists.infradead.org, laurentiu.tudor@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch supports slave mode for imx I2C driver

Signed-off-by: Biwen Li <biwen.li@nxp.com>
---
Change in v2:
	- remove MACRO CONFIG_I2C_SLAVE

 drivers/i2c/busses/i2c-imx.c | 180 ++++++++++++++++++++++++++++++++---
 1 file changed, 166 insertions(+), 14 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index a3b61336fe55..aceb3d97bf5c 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -203,6 +203,7 @@ struct imx_i2c_struct {
 	struct pinctrl_state *pinctrl_pins_gpio;
 
 	struct imx_i2c_dma	*dma;
+	struct i2c_client	*slave;
 };
 
 static const struct imx_i2c_hwdata imx1_i2c_hwdata = {
@@ -588,23 +589,38 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
 	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
 }
 
-static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
+/* Clear interrupt flag bit */
+static void i2c_imx_clr_if_bit(struct imx_i2c_struct *i2c_imx)
 {
-	struct imx_i2c_struct *i2c_imx = dev_id;
-	unsigned int temp;
+	unsigned int status;
 
-	temp = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
-	if (temp & I2SR_IIF) {
-		/* save status register */
-		i2c_imx->i2csr = temp;
-		temp &= ~I2SR_IIF;
-		temp |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
-		imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2SR);
-		wake_up(&i2c_imx->queue);
-		return IRQ_HANDLED;
-	}
+	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
+	status &= ~I2SR_IIF;
+	status |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
+	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
+}
 
-	return IRQ_NONE;
+/* Clear arbitration lost bit */
+static void i2c_imx_clr_al_bit(struct imx_i2c_struct *i2c_imx)
+{
+	unsigned int status;
+
+	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
+	status &= ~I2SR_IAL;
+	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
+}
+
+static irqreturn_t i2c_imx_master_isr(struct imx_i2c_struct *i2c_imx)
+{
+	unsigned int status;
+
+	/* Save status register */
+	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
+	i2c_imx->i2csr = status | I2SR_IIF;
+
+	wake_up(&i2c_imx->queue);
+
+	return IRQ_HANDLED;
 }
 
 static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx,
@@ -1048,11 +1064,147 @@ static u32 i2c_imx_func(struct i2c_adapter *adapter)
 		| I2C_FUNC_SMBUS_READ_BLOCK_DATA;
 }
 
+static void i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx)
+{
+	unsigned int temp;
+
+	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
+
+	/* Set slave addr. */
+	imx_i2c_write_reg((i2c_imx->slave->addr << 1), i2c_imx, IMX_I2C_IADR);
+
+	/* Disable i2c module */
+	temp = i2c_imx->hwdata->i2cr_ien_opcode ^ I2CR_IEN;
+	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
+
+	/* Reset status register */
+	imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx,
+			  IMX_I2C_I2SR);
+
+	/* Enable module and enable interrupt from i2c module */
+	temp = i2c_imx->hwdata->i2cr_ien_opcode | I2CR_IIEN;
+	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
+
+	/* Wait controller to be stable */
+	usleep_range(50, 150);
+}
+
+static irqreturn_t i2c_imx_slave_isr(struct imx_i2c_struct *i2c_imx)
+{
+	unsigned int status, ctl;
+	u8 value;
+
+	if (!i2c_imx->slave) {
+		dev_err(&i2c_imx->adapter.dev, "cannot deal with slave irq,i2c_imx->slave is null");
+		return IRQ_NONE;
+	}
+
+	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
+	ctl = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
+	if (status & I2SR_IAL) { /* Arbitration lost */
+		i2c_imx_clr_al_bit(i2c_imx);
+	} else if (status & I2SR_IAAS) { /* Addressed as a slave */
+		if (status & I2SR_SRW) { /* Master wants to read from us*/
+			dev_dbg(&i2c_imx->adapter.dev, "read requested");
+			i2c_slave_event(i2c->slave, I2C_SLAVE_READ_REQUESTED, &value);
+
+			/* Slave transmit */
+			ctl |= I2CR_MTX;
+			imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
+
+			/* Send data */
+			imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
+		} else { /* Master wants to write to us */
+			dev_dbg(&i2c_imx->adapter.dev, "write requested");
+			i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_WRITE_REQUESTED, &value);
+
+			/* Slave receive */
+			ctl &= ~I2CR_MTX;
+			imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
+			/* Dummy read */
+			imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
+		}
+	} else if (!(ctl & I2CR_MTX)) { /* Receive mode */
+			if (status & I2SR_IBB) { /* No STOP signal detected */
+				ctl &= ~I2CR_MTX;
+				imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
+
+				value = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
+				i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_WRITE_RECEIVED, &value);
+			} else { /* STOP signal is detected */
+				dev_dbg(&i2c_imx->adapter.dev,
+					"STOP signal detected");
+				i2c_slave_event(i2c_imx->slave, I2C_SLAVE_STOP, &value);
+			}
+	} else if (!(status & I2SR_RXAK)) {	/* Transmit mode received ACK */
+		ctl |= I2CR_MTX;
+		imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
+
+		i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_READ_PROCESSED, &value);
+
+		imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
+	} else { /* Transmit mode received NAK */
+		ctl &= ~I2CR_MTX;
+		imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
+		imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
+	}
+	return IRQ_HANDLED;
+}
+
+static int i2c_imx_reg_slave(struct i2c_client *client)
+{
+	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
+
+	if (i2c_imx->slave)
+		return -EBUSY;
+
+	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
+	i2c_imx->slave = client;
+
+	i2c_imx_slave_init(i2c_imx);
+
+	return 0;
+}
+
+static int i2c_imx_unreg_slave(struct i2c_client *client)
+{
+	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
+
+	if (!i2c_imx->slave)
+		return -EINVAL;
+
+	i2c_imx->slave = NULL;
+
+	return 0;
+}
+
 static const struct i2c_algorithm i2c_imx_algo = {
 	.master_xfer	= i2c_imx_xfer,
 	.functionality	= i2c_imx_func,
+	.reg_slave	= i2c_imx_reg_slave,
+	.unreg_slave	= i2c_imx_unreg_slave,
 };
 
+static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
+{
+	struct imx_i2c_struct *i2c_imx = dev_id;
+	unsigned int status, ctl;
+	irqreturn_t irq_status = IRQ_NONE;
+
+	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
+	ctl = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
+
+	if (status & I2SR_IIF) {
+		i2c_imx_clr_if_bit(i2c_imx);
+		if (ctl & I2CR_MSTA)
+			irq_status = i2c_imx_master_isr(i2c_imx);
+		else
+			irq_status = i2c_imx_slave_isr(i2c_imx);
+	}
+
+	return irq_status;
+}
+
 static int i2c_imx_probe(struct platform_device *pdev)
 {
 	struct imx_i2c_struct *i2c_imx;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
