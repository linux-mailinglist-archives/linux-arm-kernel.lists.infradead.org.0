Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4670013376F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 00:29:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZAt129uU8zK0cmK0l61MJDrEhqWTAL9QErV2kzYM1BM=; b=toFZ+jMSvj8V0e
	6EJrlXgnvX4mZbHRGFmsSnOKgJPe6IQKNF5ekDWOi2WXVMsuT0A+swZfTFG+PvlQjfgqbnVVN5cPG
	TZqcWPXc1id1nBatnmCjyod2A/TfV9wDOeE4MU+AhNHoMcV+0HS48C/4VwTwiaMDjifo753KTrKA4
	H3bfN/lAGii9uF1Mx9uLZHJ+rO6D0qRUbrugqca/WiWRosGbFNWTbZPpTJLRJCEQaG5g160IpMWHL
	BVK64uW2OLkSPq7STEIOCxmMTTE21xDCFX+C5JOsbKjxGLA1Hpt1rBO7+XPEGY5qYHPZLelfGvQOe
	ejIrgX/pSEAb5IJ/hLOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioyHs-0003VT-Cm; Tue, 07 Jan 2020 23:29:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioyHh-0003Tn-DY; Tue, 07 Jan 2020 23:29:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id w15so1465051wru.4;
 Tue, 07 Jan 2020 15:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1tW6HmVMiDgLM2CovlrlsfjuFYlon1yNOi28H4tR49g=;
 b=fqh5U2fC4UTSDw9CbE6H1ohLxAJ9RdXme36gItZ/Gt4BTBe5ptN6v5SZyUnkgUGr7R
 RbV0SOUOkw2j37tf26eow4UcUsd1w4+eNBL+we7Jkd2kV+4bJ/hBO0k5/AFmZPm2P7zm
 L3rkCqNGELtYbgCQxb+NRyqWHeIYTW/iKwJVX/VRFV5K+IBPt++AxqEa8fmWIqodg13E
 YoZUmPqlSvdvWoo1iqB88gYWRIfORC6tnRFv0vUOSLl3QbRFYYB5OpKEyr6CVIfw78LJ
 BdmA25HOu5JsAYQ560uPmsiNOisrWDvJNWLo0ulxR1lrH6Q+Kr6HNpX4mUhIZOd8yNEB
 C4+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1tW6HmVMiDgLM2CovlrlsfjuFYlon1yNOi28H4tR49g=;
 b=Wcx7Yh8+qtiaIe8XAm+QCgOADUVNjb8hWwPFrT7I3BiamdPCk7jENunkWNLsULFc/H
 pmpUdXdcZakMQaXSlgXW5asmL+eO+sJncIjL4t9IkwLLu9+n5bIqDXHRhYjv+f4K0C5b
 MViMCB5+a77vap8Bg5NIyFS3bdcRgkrKiU6PHIFzx3nmd8X4vT/W0Jy7sp+B9qSZqf7t
 6ATytMRXdB5K0gTPUMAwJPMU6zXv8wCB3VQUS9L1XylrfFdIUBlYjMKLEl/mDfJksI3X
 BWs1Jd5zG5QhXUBNPpbF1SrlwBlABBYcUiEk6WHsjJpHZjvD+IE1NXU9ogGPy0KZfY+M
 sutw==
X-Gm-Message-State: APjAAAVa+U9Td8DPp9sg+WpR2/537rVzAtvOUsUenZs45aphBoGrp+vQ
 jfnMuIpqD7MYA6elR07Xn3I=
X-Google-Smtp-Source: APXvYqy414W/mvEzb9sLPeO3N9gkDzA+wEZN6OvA6Cds/IsShTOMuCZUlBnSZJPKh9rkCEmf+VB3tg==
X-Received: by 2002:adf:dc86:: with SMTP id r6mr1540773wrj.68.1578439752099;
 Tue, 07 Jan 2020 15:29:12 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id k13sm1714127wrx.59.2020.01.07.15.29.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 15:29:11 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-i2c@vger.kernel.org, linux-amlogic@lists.infradead.org,
 wsa@the-dreams.de
Subject: [PATCH] i2c: meson: implement the master_xfer_atomic callback
Date: Wed,  8 Jan 2020 00:29:01 +0100
Message-Id: <20200107232901.891177-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_152913_461717_F95A3BB0 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: narmstrong@baylibre.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, b.galvani@gmail.com, jian.hu@amlogic.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Boards with some of the 32-bit SoCs (mostly Meson8 and Meson8m2) use a
Ricoh RN5T618 PMU which acts as system power controller. The driver for
the system power controller may need to the I2C bus just before shutting
down or rebooting the system. At this stage the interrupts may be
disabled already.

Implement the master_xfer_atomic callback so the driver for the RN5T618
PMU can communicate properly with the PMU when shutting down or
rebooting the board. The CTRL register has a status bit which can be
polled to determine when processing has completed. According to the
public S805 datasheet the value 0 means "idle" and 1 means "running".

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/i2c/busses/i2c-meson.c | 97 +++++++++++++++++++++++-----------
 1 file changed, 65 insertions(+), 32 deletions(-)

diff --git a/drivers/i2c/busses/i2c-meson.c b/drivers/i2c/busses/i2c-meson.c
index 1e2647f9a2a7..7486b46e475f 100644
--- a/drivers/i2c/busses/i2c-meson.c
+++ b/drivers/i2c/busses/i2c-meson.c
@@ -10,6 +10,7 @@
 #include <linux/i2c.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -213,6 +214,30 @@ static void meson_i2c_prepare_xfer(struct meson_i2c *i2c)
 	writel(i2c->tokens[1], i2c->regs + REG_TOK_LIST1);
 }
 
+static void meson_i2c_transfer_complete(struct meson_i2c *i2c, u32 ctrl)
+{
+	if (ctrl & REG_CTRL_ERROR) {
+		/*
+		 * The bit is set when the IGNORE_NAK bit is cleared
+		 * and the device didn't respond. In this case, the
+		 * I2C controller automatically generates a STOP
+		 * condition.
+		 */
+		dev_dbg(i2c->dev, "error bit set\n");
+		i2c->error = -ENXIO;
+		i2c->state = STATE_IDLE;
+	} else {
+		if (i2c->state == STATE_READ && i2c->count)
+			meson_i2c_get_data(i2c, i2c->msg->buf + i2c->pos,
+					   i2c->count);
+
+		i2c->pos += i2c->count;
+
+		if (i2c->pos >= i2c->msg->len)
+			i2c->state = STATE_IDLE;
+	}
+}
+
 static irqreturn_t meson_i2c_irq(int irqno, void *dev_id)
 {
 	struct meson_i2c *i2c = dev_id;
@@ -232,27 +257,9 @@ static irqreturn_t meson_i2c_irq(int irqno, void *dev_id)
 		return IRQ_NONE;
 	}
 
-	if (ctrl & REG_CTRL_ERROR) {
-		/*
-		 * The bit is set when the IGNORE_NAK bit is cleared
-		 * and the device didn't respond. In this case, the
-		 * I2C controller automatically generates a STOP
-		 * condition.
-		 */
-		dev_dbg(i2c->dev, "error bit set\n");
-		i2c->error = -ENXIO;
-		i2c->state = STATE_IDLE;
-		complete(&i2c->done);
-		goto out;
-	}
-
-	if (i2c->state == STATE_READ && i2c->count)
-		meson_i2c_get_data(i2c, i2c->msg->buf + i2c->pos, i2c->count);
+	meson_i2c_transfer_complete(i2c, ctrl);
 
-	i2c->pos += i2c->count;
-
-	if (i2c->pos >= i2c->msg->len) {
-		i2c->state = STATE_IDLE;
+	if (i2c->state == STATE_IDLE) {
 		complete(&i2c->done);
 		goto out;
 	}
@@ -279,10 +286,11 @@ static void meson_i2c_do_start(struct meson_i2c *i2c, struct i2c_msg *msg)
 }
 
 static int meson_i2c_xfer_msg(struct meson_i2c *i2c, struct i2c_msg *msg,
-			      int last)
+			      int last, bool atomic)
 {
 	unsigned long time_left, flags;
 	int ret = 0;
+	u32 ctrl;
 
 	i2c->msg = msg;
 	i2c->last = last;
@@ -300,13 +308,24 @@ static int meson_i2c_xfer_msg(struct meson_i2c *i2c, struct i2c_msg *msg,
 
 	i2c->state = (msg->flags & I2C_M_RD) ? STATE_READ : STATE_WRITE;
 	meson_i2c_prepare_xfer(i2c);
-	reinit_completion(&i2c->done);
+
+	if (!atomic)
+		reinit_completion(&i2c->done);
 
 	/* Start the transfer */
 	meson_i2c_set_mask(i2c, REG_CTRL, REG_CTRL_START, REG_CTRL_START);
 
-	time_left = msecs_to_jiffies(I2C_TIMEOUT_MS);
-	time_left = wait_for_completion_timeout(&i2c->done, time_left);
+	if (atomic) {
+		ret = readl_poll_timeout_atomic(i2c->regs + REG_CTRL, ctrl,
+						!(ctrl & REG_CTRL_STATUS),
+						10, I2C_TIMEOUT_MS * 1000);
+	} else {
+		time_left = msecs_to_jiffies(I2C_TIMEOUT_MS);
+		time_left = wait_for_completion_timeout(&i2c->done, time_left);
+
+		if (!time_left)
+			ret = -ETIMEDOUT;
+	}
 
 	/*
 	 * Protect access to i2c struct and registers from interrupt
@@ -315,13 +334,14 @@ static int meson_i2c_xfer_msg(struct meson_i2c *i2c, struct i2c_msg *msg,
 	 */
 	spin_lock_irqsave(&i2c->lock, flags);
 
+	if (atomic && !ret)
+		meson_i2c_transfer_complete(i2c, ctrl);
+
 	/* Abort any active operation */
 	meson_i2c_set_mask(i2c, REG_CTRL, REG_CTRL_START, 0);
 
-	if (!time_left) {
+	if (ret)
 		i2c->state = STATE_IDLE;
-		ret = -ETIMEDOUT;
-	}
 
 	if (i2c->error)
 		ret = i2c->error;
@@ -331,8 +351,8 @@ static int meson_i2c_xfer_msg(struct meson_i2c *i2c, struct i2c_msg *msg,
 	return ret;
 }
 
-static int meson_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
-			  int num)
+static int meson_i2c_xfer_messages(struct i2c_adapter *adap,
+				   struct i2c_msg *msgs, int num, bool atomic)
 {
 	struct meson_i2c *i2c = adap->algo_data;
 	int i, ret = 0;
@@ -340,7 +360,7 @@ static int meson_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 	clk_enable(i2c->clk);
 
 	for (i = 0; i < num; i++) {
-		ret = meson_i2c_xfer_msg(i2c, msgs + i, i == num - 1);
+		ret = meson_i2c_xfer_msg(i2c, msgs + i, i == num - 1, atomic);
 		if (ret)
 			break;
 	}
@@ -350,14 +370,27 @@ static int meson_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
 	return ret ?: i;
 }
 
+static int meson_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs,
+			  int num)
+{
+	return meson_i2c_xfer_messages(adap, msgs, num, false);
+}
+
+static int meson_i2c_xfer_atomic(struct i2c_adapter *adap,
+				 struct i2c_msg *msgs, int num)
+{
+	return meson_i2c_xfer_messages(adap, msgs, num, true);
+}
+
 static u32 meson_i2c_func(struct i2c_adapter *adap)
 {
 	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
 }
 
 static const struct i2c_algorithm meson_i2c_algorithm = {
-	.master_xfer	= meson_i2c_xfer,
-	.functionality	= meson_i2c_func,
+	.master_xfer		= meson_i2c_xfer,
+	.master_xfer_atomic	= meson_i2c_xfer_atomic,
+	.functionality		= meson_i2c_func,
 };
 
 static int meson_i2c_probe(struct platform_device *pdev)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
