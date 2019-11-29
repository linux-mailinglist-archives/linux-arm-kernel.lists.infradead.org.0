Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAAD10D2EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 Nov 2019 10:06:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FOWdBZ4V6Kar9Fs3S/j0dJJ4S1wiNO83kXYige6e+rE=; b=q7+
	790qMZAkMtwl8fcbkm8tQS+qtF1HOxCndkTJZsElGcE+ETm+z0VnVaNAOSVLJZ5SUtr4vJmBSfueg
	dK5CgEfpoSyE+MR7mlBAMRDY/U0SvuqtaBAi5Nt3Cx7J++i9pjTiWYOEHM3I1YVh8MJZZp4tZNm3k
	BaBdJC67J6TBySTK2z4NelqFSKSvArfJx7aJqJP2pqpcQXfKUjagJ59RwHeIfpubEDjYnckBy57LJ
	jLcPJyg43gjVe3EuFQtuczpl6PTpnkMTIJ66xuGsHSl0NnSIQVZYW3cWncEISXQ9W4U48sPpTK0B+
	KkXzgK+c/MMnemqXtSwKXxQeF/tG6+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iacE0-0002jY-10; Fri, 29 Nov 2019 09:06:04 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iacDn-0002ie-OP
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 09:05:53 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F089C200233;
 Fri, 29 Nov 2019 10:05:47 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7F340200784;
 Fri, 29 Nov 2019 10:05:40 +0100 (CET)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 67AD6402DE;
 Fri, 29 Nov 2019 17:05:31 +0800 (SGT)
From: Biwen Li <biwen.li@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, wsa@the-dreams.de,
 leoyang.li@nxp.com, aisheng.dong@nxp.com, xiaoning.wang@nxp.com,
 o.rempel@pengutronix.de
Subject: [v5] i2c: imx: support slave mode for imx I2C driver
Date: Fri, 29 Nov 2019 17:05:13 +0800
Message-Id: <20191129090513.2150-1-biwen.li@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_010552_076208_C3B10F44 
X-CRM114-Status: GOOD (  13.97  )
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
Change in v5:
	- fix a bug that cannot determine in what mode(master mode or
	  slave mode)

Change in v4:
	- add MACRO CONFIG_I2C_SLAVE to fix compilation issue

Change in v3:
	- support layerscape and i.mx platform

Change in v2:
	- remove MACRO CONFIG_I2C_SLAVE


 drivers/i2c/busses/i2c-imx.c | 216 ++++++++++++++++++++++++++++++++---
 1 file changed, 198 insertions(+), 18 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index a3b61336fe55..52f70de16900 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -203,6 +203,9 @@ struct imx_i2c_struct {
 	struct pinctrl_state *pinctrl_pins_gpio;
 
 	struct imx_i2c_dma	*dma;
+#if IS_ENABLED(CONFIG_I2C_SLAVE)
+	struct i2c_client	*slave;
+#endif
 };
 
 static const struct imx_i2c_hwdata imx1_i2c_hwdata = {
@@ -279,6 +282,14 @@ static inline unsigned char imx_i2c_read_reg(struct imx_i2c_struct *i2c_imx,
 	return readb(i2c_imx->base + (reg << i2c_imx->hwdata->regshift));
 }
 
+/* Set up i2c controller register and i2c status register to default value. */
+static void i2c_imx_reset_regs(struct imx_i2c_struct *i2c_imx)
+{
+	imx_i2c_write_reg(i2c_imx->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
+			i2c_imx, IMX_I2C_I2CR);
+	imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx, IMX_I2C_I2SR);
+}
+
 /* Functions for DMA support */
 static void i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 						dma_addr_t phy_addr)
@@ -588,23 +599,33 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c_imx)
 	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
 }
 
-static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
+/* Clear interrupt flag bit */
+static void i2c_imx_clr_if_bit(unsigned int status, struct imx_i2c_struct *i2c_imx)
 {
-	struct imx_i2c_struct *i2c_imx = dev_id;
-	unsigned int temp;
+	status &= ~I2SR_IIF;
+	status |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
+	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
+}
 
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
+/* Clear arbitration lost bit */
+static void i2c_imx_clr_al_bit(unsigned int status, struct imx_i2c_struct *i2c_imx)
+{
+	status &= ~I2SR_IAL;
+	status |= (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IAL);
+	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
+}
 
-	return IRQ_NONE;
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
@@ -900,6 +921,13 @@ static int i2c_imx_xfer(struct i2c_adapter *adapter,
 
 	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
 
+#if IS_ENABLED(CONFIG_I2C_SLAVE)
+	if (i2c_imx->slave) {
+		dev_err(&i2c_imx->adapter.dev, "Please not do operations of master mode in slave mode");
+		return -EBUSY;
+	}
+#endif
+
 	result = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
 	if (result < 0)
 		goto out;
@@ -1048,11 +1076,166 @@ static u32 i2c_imx_func(struct i2c_adapter *adapter)
 		| I2C_FUNC_SMBUS_READ_BLOCK_DATA;
 }
 
+#if IS_ENABLED(CONFIG_I2C_SLAVE)
+static int i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx)
+{
+	int temp;
+
+	/* Resume */
+	temp = pm_runtime_get_sync(i2c_imx->adapter.dev.parent);
+	if (temp < 0) {
+		dev_err(&i2c_imx->adapter.dev, "failed to resume i2c controller");
+		return temp;
+	}
+
+	/* Set slave addr. */
+	imx_i2c_write_reg((i2c_imx->slave->addr << 1), i2c_imx, IMX_I2C_IADR);
+
+	i2c_imx_reset_regs(i2c_imx);
+
+	/* Enable module */
+	temp = i2c_imx->hwdata->i2cr_ien_opcode;
+	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
+
+	/* Enable interrupt from i2c module */
+	temp |= I2CR_IIEN;
+	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
+
+	/* Wait controller to be stable */
+	usleep_range(50, 150);
+	return 0;
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
+		i2c_imx_clr_al_bit(status, i2c_imx);
+	} else if (status & I2SR_IAAS) { /* Addressed as a slave */
+		if (status & I2SR_SRW) { /* Master wants to read from us*/
+			dev_dbg(&i2c_imx->adapter.dev, "read requested");
+			i2c_slave_event(i2c_imx->slave, I2C_SLAVE_READ_REQUESTED, &value);
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
+	int ret;
+	if (i2c_imx->slave)
+		return -EBUSY;
+
+	i2c_imx->slave = client;
+
+	ret = i2c_imx_slave_init(i2c_imx);
+	if (ret < 0)
+		dev_err(&i2c_imx->adapter.dev, "failed to switch to slave mode");
+
+	return ret;
+}
+
+static int i2c_imx_unreg_slave(struct i2c_client *client)
+{
+	struct imx_i2c_struct *i2c_imx = i2c_get_adapdata(client->adapter);
+	int ret;
+
+	if (!i2c_imx->slave)
+		return -EINVAL;
+
+	/* Reset slave address. */
+	imx_i2c_write_reg(0, i2c_imx, IMX_I2C_IADR);
+
+	i2c_imx_reset_regs(i2c_imx);
+
+	i2c_imx->slave = NULL;
+
+	/* Suspend */
+	ret = pm_runtime_put_sync(i2c_imx->adapter.dev.parent);
+	if (ret < 0)
+		dev_err(&i2c_imx->adapter.dev, "failed to suspend i2c controller");
+
+	return ret;
+}
+#endif
+
 static const struct i2c_algorithm i2c_imx_algo = {
 	.master_xfer	= i2c_imx_xfer,
 	.functionality	= i2c_imx_func,
+#if IS_ENABLED(CONFIG_I2C_SLAVE)
+	.reg_slave	= i2c_imx_reg_slave,
+	.unreg_slave	= i2c_imx_unreg_slave,
+#endif
 };
 
+static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
+{
+	struct imx_i2c_struct *i2c_imx = dev_id;
+	unsigned int status;
+
+	status = imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
+
+	if (status & I2SR_IIF) {
+		i2c_imx_clr_if_bit(status, i2c_imx);
+#if IS_ENABLED(CONFIG_I2C_SLAVE)
+		if (i2c_imx->slave)
+			return i2c_imx_slave_isr(i2c_imx);
+#endif
+		return i2c_imx_master_isr(i2c_imx);
+	}
+
+	return IRQ_NONE;
+}
+
 static int i2c_imx_probe(struct platform_device *pdev)
 {
 	struct imx_i2c_struct *i2c_imx;
@@ -1148,10 +1331,7 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	clk_notifier_register(i2c_imx->clk, &i2c_imx->clk_change_nb);
 	i2c_imx_set_clk(i2c_imx, clk_get_rate(i2c_imx->clk));
 
-	/* Set up chip registers to defaults */
-	imx_i2c_write_reg(i2c_imx->hwdata->i2cr_ien_opcode ^ I2CR_IEN,
-			i2c_imx, IMX_I2C_I2CR);
-	imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx, IMX_I2C_I2SR);
+	i2c_imx_reset_regs(i2c_imx);
 
 	/* Init optional bus recovery function */
 	ret = i2c_imx_init_recovery_info(i2c_imx, pdev);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
