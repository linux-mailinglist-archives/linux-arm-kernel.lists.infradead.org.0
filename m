Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E241845B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 06:23:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DSXnmt2Q8XRgAFNRcLPqDH1w3fVtDo+jsyuGGIUsS0s=; b=lxv
	54ftVMybJnX1qut7r9fPK+lvPcQIwV0l3xrKTytuXSpnwSpEJh0+mc8MoZsTxyj6S3eTkNUOYHHpS
	LqEfSJOpR+K3MwVlCEXIFHcpjIZrTajTE3eiGIq0aKZqvM6N3TX/C1S4Cfi52zk/9W7H4weHsfSn1
	VB9Es/evPVRtVzCGtV3HgMv1hmWhNjfJrL7fnm016ONxyaQkIDcXWIOUUtQMuTzA/UaN10FOqePDL
	0+WP4zFblL6+htY8XF82FDfyHCGCtbpN2QKo5DAEX3Lfw/EkjBcW+BCChTxBk80z1v2Sk6Fd/HR3H
	+bO8TsfA0Goj+givNhfPBQIhmrFCz8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOab5-0005iT-Sd; Thu, 09 May 2019 04:23:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOaax-0005i5-UR
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 04:23:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id c13so521285pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 21:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=rcSJ7jMxGzSyHBuvTtybXntBxEii0S3igF/TJN9iQIM=;
 b=OgWLtWdzXyiFLfdZWXjU6oUQyEbWzNrIBgpaNF2imc3orAYhSfxENDT/pQIrWt2LXs
 lX4jIbDxCZeAURP5vw1tPE/9VkATES4l2airRsgDJDa1SHhMhVNvkZjQOW4yTDoizpVt
 zpxsvy1YPBHntCWQtWgdf6xw/LOHPo+EdfZn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rcSJ7jMxGzSyHBuvTtybXntBxEii0S3igF/TJN9iQIM=;
 b=EPdLlXLLM10No9HGvXa0xY93B4UazEx+y/ZPnyhf3IU15ALIOsTbDYHmnrWsTA/MuB
 HMIsae6QD+//Wn+3j0sK5foXZoo4gRQfVzArJG7V+pt2DwbpMy2gZflSuFoyOG50+wJ1
 sgo1AvUUKh7Abr/KvEsGm3ZivrfAuo1FNYivJg34nFCtWApC2vjL5JzaMtZkI1CyANfV
 Rb9rAAWyvbeTxK8+oVXdUllLlSpOZYWo9eLIw4XNiIFOociUTvqqYvdix6+UgofqE6P0
 51JZgWXlhRipTC2dioPhFd3VFaNyvwPLHigLpCpO3uw8fhk+EOrJpQVhKN/cnInKZnbM
 f6gg==
X-Gm-Message-State: APjAAAV2W3/yxqPu1r0yZIy5+MpcR4stqRC5yGpZsEhe0pShSBc+XpMi
 MHb/PYMiqyrZHSjjY1bbSftPog==
X-Google-Smtp-Source: APXvYqwpelRZDsRfFPpgs0RyfRJ//3WYRBNMvrKAp2Xdj+PZigfjMW7TqYieOosXHwh4cqCL7lawQw==
X-Received: by 2002:a65:64d9:: with SMTP id t25mr2813367pgv.130.1557375826686; 
 Wed, 08 May 2019 21:23:46 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id l65sm1313352pfb.7.2019.05.08.21.23.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 08 May 2019 21:23:45 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 1/1] i2c: iproc: Add multi byte read-write support for slave
 mode
Date: Thu,  9 May 2019 09:51:48 +0530
Message-Id: <1557375708-14830-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_212347_989906_8496ED9F 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Srinath Mannam <srinath.mannam@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 linux-i2c@vger.kernel.org, Michael Cheng <ccheng@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add multiple byte read-write support for slave mode.

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 drivers/i2c/busses/i2c-bcm-iproc.c | 117 +++++++++++++++++--------------------
 1 file changed, 53 insertions(+), 64 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
index a845b8d..2c7f145 100644
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
@@ -165,12 +165,6 @@ enum i2c_slave_read_status {
 	I2C_SLAVE_RX_END,
 };
 
-enum i2c_slave_xfer_dir {
-	I2C_SLAVE_DIR_READ = 0,
-	I2C_SLAVE_DIR_WRITE,
-	I2C_SLAVE_DIR_NONE,
-};
-
 enum bus_speed_index {
 	I2C_SPD_100K = 0,
 	I2C_SPD_400K,
@@ -203,7 +197,6 @@ struct bcm_iproc_i2c_dev {
 	struct i2c_msg *msg;
 
 	struct i2c_client *slave;
-	enum i2c_slave_xfer_dir xfer_dir;
 
 	/* bytes that have been transferred */
 	unsigned int tx_bytes;
@@ -219,7 +212,8 @@ struct bcm_iproc_i2c_dev {
 		| BIT(IS_M_RX_THLD_SHIFT))
 
 #define ISR_MASK_SLAVE (BIT(IS_S_START_BUSY_SHIFT)\
-		| BIT(IS_S_RX_EVENT_SHIFT) | BIT(IS_S_RD_EVENT_SHIFT))
+		| BIT(IS_S_RX_EVENT_SHIFT) | BIT(IS_S_RD_EVENT_SHIFT)\
+		| BIT(IS_S_TX_UNDERRUN_SHIFT))
 
 static int bcm_iproc_i2c_reg_slave(struct i2c_client *slave);
 static int bcm_iproc_i2c_unreg_slave(struct i2c_client *slave);
@@ -297,15 +291,11 @@ static void bcm_iproc_i2c_slave_init(
 	/* clear all pending slave interrupts */
 	iproc_i2c_wr_reg(iproc_i2c, IS_OFFSET, ISR_MASK_SLAVE);
 
-	/* Enable interrupt register for any READ event */
-	val = BIT(IE_S_RD_EVENT_SHIFT);
 	/* Enable interrupt register to indicate a valid byte in receive fifo */
-	val |= BIT(IE_S_RX_EVENT_SHIFT);
+	val = BIT(IE_S_RX_EVENT_SHIFT);
 	/* Enable interrupt register for the Slave BUSY command */
 	val |= BIT(IE_S_START_BUSY_SHIFT);
 	iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
-
-	iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
 }
 
 static void bcm_iproc_i2c_check_slave_status(
@@ -314,8 +304,11 @@ static void bcm_iproc_i2c_check_slave_status(
 	u32 val;
 
 	val = iproc_i2c_rd_reg(iproc_i2c, S_CMD_OFFSET);
-	val = (val >> S_CMD_STATUS_SHIFT) & S_CMD_STATUS_MASK;
+	/* status is valid only when START_BUSY is cleared after it was set */
+	if (val & BIT(S_CMD_START_BUSY_SHIFT))
+		return;
 
+	val = (val >> S_CMD_STATUS_SHIFT) & S_CMD_STATUS_MASK;
 	if (val == S_CMD_STATUS_TIMEOUT) {
 		dev_err(iproc_i2c->device, "slave random stretch time timeout\n");
 
@@ -327,70 +320,66 @@ static void bcm_iproc_i2c_check_slave_status(
 }
 
 static bool bcm_iproc_i2c_slave_isr(struct bcm_iproc_i2c_dev *iproc_i2c,
-				u32 status)
+				    u32 status)
 {
-	u8 value;
 	u32 val;
-	u32 rd_status;
-	u32 tmp;
+	u8 value, rx_status;
 
-	/* Start of transaction. check address and populate the direction */
-	if (iproc_i2c->xfer_dir == I2C_SLAVE_DIR_NONE) {
-		tmp = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
-		rd_status = (tmp >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
-		/* This condition checks whether the request is a new request */
-		if (((rd_status == I2C_SLAVE_RX_START) &&
-			(status & BIT(IS_S_RX_EVENT_SHIFT))) ||
-			((rd_status == I2C_SLAVE_RX_END) &&
-			(status & BIT(IS_S_RD_EVENT_SHIFT)))) {
-
-			/* Last bit is W/R bit.
-			 * If 1 then its a read request(by master).
-			 */
-			iproc_i2c->xfer_dir = tmp & SLAVE_READ_WRITE_BIT_MASK;
-			if (iproc_i2c->xfer_dir == I2C_SLAVE_DIR_WRITE)
-				i2c_slave_event(iproc_i2c->slave,
-					I2C_SLAVE_READ_REQUESTED, &value);
-			else
-				i2c_slave_event(iproc_i2c->slave,
+	/* Slave RX byte receive */
+	if (status & BIT(IS_S_RX_EVENT_SHIFT)) {
+		val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
+		rx_status = (val >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
+		if (rx_status == I2C_SLAVE_RX_START) {
+			/* Start of SMBUS for Master write */
+			i2c_slave_event(iproc_i2c->slave,
 					I2C_SLAVE_WRITE_REQUESTED, &value);
-		}
-	}
 
-	/* read request from master */
-	if ((status & BIT(IS_S_RD_EVENT_SHIFT)) &&
-		(iproc_i2c->xfer_dir == I2C_SLAVE_DIR_WRITE)) {
-		i2c_slave_event(iproc_i2c->slave,
-			I2C_SLAVE_READ_PROCESSED, &value);
-		iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
+			val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
+			value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
+			i2c_slave_event(iproc_i2c->slave,
+					I2C_SLAVE_WRITE_RECEIVED, &value);
+		} else if (status & BIT(IS_S_RD_EVENT_SHIFT)) {
+			/* Start of SMBUS for Master Read */
+			i2c_slave_event(iproc_i2c->slave,
+					I2C_SLAVE_READ_REQUESTED, &value);
+			iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
 
-		val = BIT(S_CMD_START_BUSY_SHIFT);
-		iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
-	}
+			val = BIT(S_CMD_START_BUSY_SHIFT);
+			iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
 
-	/* write request from master */
-	if ((status & BIT(IS_S_RX_EVENT_SHIFT)) &&
-		(iproc_i2c->xfer_dir == I2C_SLAVE_DIR_READ)) {
-		val = iproc_i2c_rd_reg(iproc_i2c, S_RX_OFFSET);
-		/* Its a write request by Master to Slave.
-		 * We read data present in receive FIFO
-		 */
-		value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
+			/*
+			 * Enable interrupt for TX FIFO becomes empty and
+			 * less than PKT_LENGTH bytes were output on the SMBUS
+			 */
+			val = iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);
+			val |= BIT(IE_S_TX_UNDERRUN_SHIFT);
+			iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
+		} else {
+			/* Master write other than start */
+			value = (u8)((val >> S_RX_DATA_SHIFT) & S_RX_DATA_MASK);
+			i2c_slave_event(iproc_i2c->slave,
+					I2C_SLAVE_WRITE_RECEIVED, &value);
+		}
+	} else if (status & BIT(IS_S_TX_UNDERRUN_SHIFT)) {
+		/* Master read other than start */
 		i2c_slave_event(iproc_i2c->slave,
-			I2C_SLAVE_WRITE_RECEIVED, &value);
-
-		/* check the status for the last byte of the transaction */
-		rd_status = (val >> S_RX_STATUS_SHIFT) & S_RX_STATUS_MASK;
-		if (rd_status == I2C_SLAVE_RX_END)
-			iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
+				I2C_SLAVE_READ_PROCESSED, &value);
 
-		dev_dbg(iproc_i2c->device, "\nread value = 0x%x\n", value);
+		iproc_i2c_wr_reg(iproc_i2c, S_TX_OFFSET, value);
+		val = BIT(S_CMD_START_BUSY_SHIFT);
+		iproc_i2c_wr_reg(iproc_i2c, S_CMD_OFFSET, val);
 	}
 
 	/* Stop */
 	if (status & BIT(IS_S_START_BUSY_SHIFT)) {
 		i2c_slave_event(iproc_i2c->slave, I2C_SLAVE_STOP, &value);
-		iproc_i2c->xfer_dir = I2C_SLAVE_DIR_NONE;
+		/*
+		 * Enable interrupt for TX FIFO becomes empty and
+		 * less than PKT_LENGTH bytes were output on the SMBUS
+		 */
+		val = iproc_i2c_rd_reg(iproc_i2c, IE_OFFSET);
+		val &= ~BIT(IE_S_TX_UNDERRUN_SHIFT);
+		iproc_i2c_wr_reg(iproc_i2c, IE_OFFSET, val);
 	}
 
 	/* clear interrupt status */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
