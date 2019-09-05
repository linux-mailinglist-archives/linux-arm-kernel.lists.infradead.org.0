Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EEEA99C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 06:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uUsxXop6e8X4Xyd3D89FMFlwPjgkPrt67p5gaRav9U4=; b=uGm
	FTE53iKjCgcq1Tzb0t2KPdcqVJHbq9liiJAtCHLI5I7BlOCheh1HnHTvxjpte9qFwjY8YS0Ko5qLn
	B1K+rhmayqT1i8X59myqKs5/api3nOQiTh6LCVqM6uLUXVmKN78vBFlGWBP2773O27RqnyT6lkVVl
	gwqlQ/TlqaVnX3s1E2+nneXGcMQsz5QXORf/A+xWqOMMqpgMH7QVhT8uc8RRQLs2j4Zc0GqkiSKL4
	6ZfFFq8xwMzzm1hlYMnF+jcvHy0CBh7yHZUA24JQRrHubqdNG19aE/cRTL/bOMC+dQGqCvp5hDA+Y
	fxnhVaNX+Vjhdczqhe3ft3mXD1Vb5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5jg9-0005oU-1w; Thu, 05 Sep 2019 04:47:29 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5jfr-0005jU-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 04:47:14 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x854koYf010084;
 Thu, 5 Sep 2019 13:46:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x854koYf010084
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1567658811;
 bh=2zT1bjaiBT6Hk9ftaCoX240vdABU32UvGSR8I57jWyA=;
 h=From:To:Cc:Subject:Date:From;
 b=uyymq3PdGmUK64VEQuftOj+rfLg8OaIh5UQXVWhMidkbSRh49fEPLtYlFmFLPInkL
 hL+Q7Z8ScSWeBA2JroIvjO8smnUoYxKhGftqOW5ogxSKgkkJcAQ9rUfZOSB9kSWfxH
 Wek024D0KzK0HKtJiy0xdVNKN53Mz8ryFYKKfRGUo1SNAg39UrGxdMtsU13bLlClrG
 xz5PpHz64E2aMxXluB150sF0vDQ7hyOD2Mm8yN7BT25Gacc2LL9PD0fgj/X6P2o3Rq
 EXbCNAcPDXiXHU0lRA/4iYWpJ54XbAbm7CR0nINj/fIyKbSGawtZhrHDilRAEnJedW
 a+c2pqy/jzuMg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org
Subject: [PATCH] i2c: uniphier(-f): remove all dev_dbg()
Date: Thu,  5 Sep 2019 13:46:48 +0900
Message-Id: <20190905044648.7632-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_214712_336513_53495BF6 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I have fixed various bugs, and these drivers are (I hope) pretty
stable now. Remove all dev_dbg() for code clean-up.

If I end up with debugging the drivers again, I will locally revert
this commit. I no longer need the debug code in upstream.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/i2c/busses/i2c-uniphier-f.c | 22 +---------------------
 drivers/i2c/busses/i2c-uniphier.c   | 18 +++---------------
 2 files changed, 4 insertions(+), 36 deletions(-)

diff --git a/drivers/i2c/busses/i2c-uniphier-f.c b/drivers/i2c/busses/i2c-uniphier-f.c
index fc5354845ffa..4241aac79e7e 100644
--- a/drivers/i2c/busses/i2c-uniphier-f.c
+++ b/drivers/i2c/busses/i2c-uniphier-f.c
@@ -108,7 +108,6 @@ static void uniphier_fi2c_fill_txfifo(struct uniphier_fi2c_priv *priv,
 		if (fifo_space-- <= 0)
 			break;
 
-		dev_dbg(&priv->adap.dev, "write data: %02x\n", *priv->buf);
 		writel(*priv->buf++, priv->membase + UNIPHIER_FI2C_DTTX);
 		priv->len--;
 	}
@@ -124,7 +123,6 @@ static void uniphier_fi2c_drain_rxfifo(struct uniphier_fi2c_priv *priv)
 			break;
 
 		*priv->buf++ = readl(priv->membase + UNIPHIER_FI2C_DTRX);
-		dev_dbg(&priv->adap.dev, "read data: %02x\n", priv->buf[-1]);
 		priv->len--;
 	}
 }
@@ -142,8 +140,6 @@ static void uniphier_fi2c_clear_irqs(struct uniphier_fi2c_priv *priv,
 
 static void uniphier_fi2c_stop(struct uniphier_fi2c_priv *priv)
 {
-	dev_dbg(&priv->adap.dev, "stop condition\n");
-
 	priv->enabled_irqs |= UNIPHIER_FI2C_INT_STOP;
 	uniphier_fi2c_set_irqs(priv);
 	writel(UNIPHIER_FI2C_CR_MST | UNIPHIER_FI2C_CR_STO,
@@ -160,21 +156,15 @@ static irqreturn_t uniphier_fi2c_interrupt(int irq, void *dev_id)
 	irq_status = readl(priv->membase + UNIPHIER_FI2C_INT);
 	irq_status &= priv->enabled_irqs;
 
-	dev_dbg(&priv->adap.dev,
-		"interrupt: enabled_irqs=%04x, irq_status=%04x\n",
-		priv->enabled_irqs, irq_status);
-
 	if (irq_status & UNIPHIER_FI2C_INT_STOP)
 		goto complete;
 
 	if (unlikely(irq_status & UNIPHIER_FI2C_INT_AL)) {
-		dev_dbg(&priv->adap.dev, "arbitration lost\n");
 		priv->error = -EAGAIN;
 		goto complete;
 	}
 
 	if (unlikely(irq_status & UNIPHIER_FI2C_INT_NA)) {
-		dev_dbg(&priv->adap.dev, "could not get ACK\n");
 		priv->error = -ENXIO;
 		if (priv->flags & UNIPHIER_FI2C_RD) {
 			/*
@@ -215,18 +205,14 @@ static irqreturn_t uniphier_fi2c_interrupt(int irq, void *dev_id)
 		if (unlikely(priv->flags & UNIPHIER_FI2C_MANUAL_NACK)) {
 			if (priv->len <= UNIPHIER_FI2C_FIFO_SIZE &&
 			    !(priv->flags & UNIPHIER_FI2C_BYTE_WISE)) {
-				dev_dbg(&priv->adap.dev,
-					"enable read byte count IRQ\n");
 				priv->enabled_irqs |= UNIPHIER_FI2C_INT_RB;
 				uniphier_fi2c_set_irqs(priv);
 				priv->flags |= UNIPHIER_FI2C_BYTE_WISE;
 			}
-			if (priv->len <= 1) {
-				dev_dbg(&priv->adap.dev, "set NACK\n");
+			if (priv->len <= 1)
 				writel(UNIPHIER_FI2C_CR_MST |
 				       UNIPHIER_FI2C_CR_NACK,
 				       priv->membase + UNIPHIER_FI2C_CR);
-			}
 		}
 
 		goto handled;
@@ -334,10 +320,6 @@ static int uniphier_fi2c_master_xfer_one(struct i2c_adapter *adap,
 	bool is_read = msg->flags & I2C_M_RD;
 	unsigned long time_left, flags;
 
-	dev_dbg(&adap->dev, "%s: addr=0x%02x, len=%d, repeat=%d, stop=%d\n",
-		is_read ? "receive" : "transmit", msg->addr, msg->len,
-		repeat, stop);
-
 	priv->len = msg->len;
 	priv->buf = msg->buf;
 	priv->enabled_irqs = UNIPHIER_FI2C_INT_FAULTS;
@@ -359,7 +341,6 @@ static int uniphier_fi2c_master_xfer_one(struct i2c_adapter *adap,
 	else
 		uniphier_fi2c_tx_init(priv, msg->addr, repeat);
 
-	dev_dbg(&adap->dev, "start condition\n");
 	/*
 	 * For a repeated START condition, writing a slave address to the FIFO
 	 * kicks the controller. So, the UNIPHIER_FI2C_CR register should be
@@ -383,7 +364,6 @@ static int uniphier_fi2c_master_xfer_one(struct i2c_adapter *adap,
 		uniphier_fi2c_recover(priv);
 		return -ETIMEDOUT;
 	}
-	dev_dbg(&adap->dev, "complete\n");
 
 	if (unlikely(priv->flags & UNIPHIER_FI2C_DEFER_STOP_COMP)) {
 		u32 status;
diff --git a/drivers/i2c/busses/i2c-uniphier.c b/drivers/i2c/busses/i2c-uniphier.c
index a6d7a3709051..0270090c0360 100644
--- a/drivers/i2c/busses/i2c-uniphier.c
+++ b/drivers/i2c/busses/i2c-uniphier.c
@@ -71,7 +71,6 @@ static int uniphier_i2c_xfer_byte(struct i2c_adapter *adap, u32 txdata,
 	reinit_completion(&priv->comp);
 
 	txdata |= UNIPHIER_I2C_DTRM_IRQEN;
-	dev_dbg(&adap->dev, "write data: 0x%04x\n", txdata);
 	writel(txdata, priv->membase + UNIPHIER_I2C_DTRM);
 
 	time_left = wait_for_completion_timeout(&priv->comp, adap->timeout);
@@ -81,8 +80,6 @@ static int uniphier_i2c_xfer_byte(struct i2c_adapter *adap, u32 txdata,
 	}
 
 	rxdata = readl(priv->membase + UNIPHIER_I2C_DREC);
-	dev_dbg(&adap->dev, "read data: 0x%04x\n", rxdata);
-
 	if (rxdatap)
 		*rxdatap = rxdata;
 
@@ -98,14 +95,11 @@ static int uniphier_i2c_send_byte(struct i2c_adapter *adap, u32 txdata)
 	if (ret)
 		return ret;
 
-	if (unlikely(rxdata & UNIPHIER_I2C_DREC_LAB)) {
-		dev_dbg(&adap->dev, "arbitration lost\n");
+	if (unlikely(rxdata & UNIPHIER_I2C_DREC_LAB))
 		return -EAGAIN;
-	}
-	if (unlikely(rxdata & UNIPHIER_I2C_DREC_LRB)) {
-		dev_dbg(&adap->dev, "could not get ACK\n");
+
+	if (unlikely(rxdata & UNIPHIER_I2C_DREC_LRB))
 		return -ENXIO;
-	}
 
 	return 0;
 }
@@ -115,7 +109,6 @@ static int uniphier_i2c_tx(struct i2c_adapter *adap, u16 addr, u16 len,
 {
 	int ret;
 
-	dev_dbg(&adap->dev, "start condition\n");
 	ret = uniphier_i2c_send_byte(adap, addr << 1 |
 				     UNIPHIER_I2C_DTRM_STA |
 				     UNIPHIER_I2C_DTRM_NACK);
@@ -137,7 +130,6 @@ static int uniphier_i2c_rx(struct i2c_adapter *adap, u16 addr, u16 len,
 {
 	int ret;
 
-	dev_dbg(&adap->dev, "start condition\n");
 	ret = uniphier_i2c_send_byte(adap, addr << 1 |
 				     UNIPHIER_I2C_DTRM_STA |
 				     UNIPHIER_I2C_DTRM_NACK |
@@ -161,7 +153,6 @@ static int uniphier_i2c_rx(struct i2c_adapter *adap, u16 addr, u16 len,
 
 static int uniphier_i2c_stop(struct i2c_adapter *adap)
 {
-	dev_dbg(&adap->dev, "stop condition\n");
 	return uniphier_i2c_send_byte(adap, UNIPHIER_I2C_DTRM_STO |
 				      UNIPHIER_I2C_DTRM_NACK);
 }
@@ -173,9 +164,6 @@ static int uniphier_i2c_master_xfer_one(struct i2c_adapter *adap,
 	bool recovery = false;
 	int ret;
 
-	dev_dbg(&adap->dev, "%s: addr=0x%02x, len=%d, stop=%d\n",
-		is_read ? "receive" : "transmit", msg->addr, msg->len, stop);
-
 	if (is_read)
 		ret = uniphier_i2c_rx(adap, msg->addr, msg->len, msg->buf);
 	else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
