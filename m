Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD4884324
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 06:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=euH3smtXQ4UyGUGsy+iC8UMTg/jeYZQbIj/jTa/z4bQ=; b=C2e
	7XtL8gbEXopILohVEeeJ4zEADq8SSTmsZkOC5xcE2qcOmfO/IMwAj75AO1pOxAqipGrpApRRKOtMq
	eX1G1+wNentdkjbA45ZkfuY6B6Bs75Dt1MqgUHcTKW3pxx1+VEwCoA8zz6z9460FkfUgYsBKc+EGv
	kvQlnynRLQwSwO09fUogZYpNQ77LKNEN5WcyMuRif0xgtrne3TT301UyMe3pAUd6RaC1YmHGdFFcO
	T9Ribh0F6Z2LQaLTMtOq6Hdjz9E/CqD0eJ8bEk/Go6cwLDK4pDDE78BPEMAluF28iAPnv0oFPhr5o
	zqnzms3GzUM4vQ/KpBEeyT/jRS6Rm4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvDK7-0008KC-2q; Wed, 07 Aug 2019 04:13:15 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvDJu-0008JY-W0
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 04:13:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id n4so1010631pgv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 21:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=uRto+pkhe5Du3IWHFhe244+N5TxyIz37a1eOSfZs8KE=;
 b=dki+4lRGF7CNX7upEXTzvVUabZY5Cei3k16WLlLS8no3qBlywLENfOJOeuRI8Zwl3I
 Ga41vssYEvRuynC16XfUbjFUHTrT7CjgLAgOSw1OczeceoJo0whizzVNJ7OuQVJ6Aq0p
 WWQnFJDWj2qD2mgZy/J/L/vw5sY02azRo8ue8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uRto+pkhe5Du3IWHFhe244+N5TxyIz37a1eOSfZs8KE=;
 b=hqKGebVqbUBmk1PaEI+7qH+nOYfs3ltIlPZ8Sq7EuVGE6bMVP7vMpcxvb/SHBM6bl+
 JVMcgsokMVesr+mH/dlqymibPa3+JwL6BwxIWUAc1Qc4DomdWi3QVmHhd27p4XSRFQhM
 EfjE9z6Ljantj+VY0NIRQlP29EviNw4NC8dE3V+bKk9TIbxHHvqD8JyENRnVGbZ/Pe9b
 ztPhB4GU+LQBakLZQ2zF0hdhizB/2Td0WQi2CJ/w80Ask3qj6NIHTUbFrafCWYJSiyzK
 598Hd/Mj01wU4iXshXLN1V7OVWMECi8b9C7p/p2LoWueaffTdtD3xyM24YSiUukcPFPT
 x3JQ==
X-Gm-Message-State: APjAAAUS3ats5tt9aG+vOAqf8RLbPhyr3j5/rinOQHnF+3d918C+ScBU
 LSa6KifUbLqOE3qK/Zaufy16Iw==
X-Google-Smtp-Source: APXvYqxujd1Qtdb9S37cZo2t4LAv8/sx/z3ZVoIPWqPx0Ew506AYO2DLEhGWx00uI7nzre+h6KOdWg==
X-Received: by 2002:a63:31cc:: with SMTP id x195mr5898444pgx.147.1565151181522; 
 Tue, 06 Aug 2019 21:13:01 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id i7sm18279100pjk.24.2019.08.06.21.12.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 06 Aug 2019 21:13:00 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
Date: Wed,  7 Aug 2019 09:39:01 +0530
Message-Id: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_211303_044306_69A7E84A 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Icarus Chau <icarus.chau@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>, linux-i2c@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lori Hikichi <lori.hikichi@broadcom.com>

Enable handling of i2c repeated start. The current code
handles a multi msg i2c transfer as separate i2c bus
transactions. This change will now handle this case
using the i2c repeated start protocol. The number of msgs
in a transfer is limited to two, and must be a write
followed by a read.

Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Signed-off-by: Icarus Chau <icarus.chau@broadcom.com>
Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Shivaraj Shetty <sshetty1@broadcom.com>
---
 drivers/i2c/busses/i2c-bcm-iproc.c | 70 +++++++++++++++++++++++++++++++-------
 1 file changed, 57 insertions(+), 13 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
index d7fd76b..15fedcf 100644
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
@@ -81,6 +81,7 @@
 #define M_CMD_PROTOCOL_MASK          0xf
 #define M_CMD_PROTOCOL_BLK_WR        0x7
 #define M_CMD_PROTOCOL_BLK_RD        0x8
+#define M_CMD_PROTOCOL_PROCESS       0xa
 #define M_CMD_PEC_SHIFT              8
 #define M_CMD_RD_CNT_SHIFT           0
 #define M_CMD_RD_CNT_MASK            0xff
@@ -675,13 +676,20 @@ static int bcm_iproc_i2c_xfer_wait(struct bcm_iproc_i2c_dev *iproc_i2c,
 	return 0;
 }
 
-static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
-					 struct i2c_msg *msg)
+/*
+ * If 'process_call' is true, then this is a multi-msg transfer that requires
+ * a repeated start between the messages.
+ * More specifically, it must be a write (reg) followed by a read (data).
+ * The i2c quirks are set to enforce this rule.
+ */
+static int bcm_iproc_i2c_xfer_internal(struct bcm_iproc_i2c_dev *iproc_i2c,
+					struct i2c_msg *msgs, bool process_call)
 {
 	int i;
 	u8 addr;
 	u32 val, tmp, val_intr_en;
 	unsigned int tx_bytes;
+	struct i2c_msg *msg = &msgs[0];
 
 	/* check if bus is busy */
 	if (!!(iproc_i2c_rd_reg(iproc_i2c,
@@ -707,14 +715,29 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
 			val = msg->buf[i];
 
 			/* mark the last byte */
-			if (i == msg->len - 1)
-				val |= BIT(M_TX_WR_STATUS_SHIFT);
+			if (!process_call && (i == msg->len - 1))
+				val |= 1 << M_TX_WR_STATUS_SHIFT;
 
 			iproc_i2c_wr_reg(iproc_i2c, M_TX_OFFSET, val);
 		}
 		iproc_i2c->tx_bytes = tx_bytes;
 	}
 
+	/* Process the read message if this is process call */
+	if (process_call) {
+		msg++;
+		iproc_i2c->msg = msg;  /* point to second msg */
+
+		/*
+		 * The last byte to be sent out should be a slave
+		 * address with read operation
+		 */
+		addr = msg->addr << 1 | 1;
+		/* mark it the last byte out */
+		val = addr | (1 << M_TX_WR_STATUS_SHIFT);
+		iproc_i2c_wr_reg(iproc_i2c, M_TX_OFFSET, val);
+	}
+
 	/* mark as incomplete before starting the transaction */
 	if (iproc_i2c->irq)
 		reinit_completion(&iproc_i2c->done);
@@ -733,7 +756,7 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
 	 * underrun interrupt, which will be triggerred when the TX FIFO is
 	 * empty. When that happens we can then pump more data into the FIFO
 	 */
-	if (!(msg->flags & I2C_M_RD) &&
+	if (!process_call && !(msg->flags & I2C_M_RD) &&
 	    msg->len > iproc_i2c->tx_bytes)
 		val_intr_en |= BIT(IE_M_TX_UNDERRUN_SHIFT);
 
@@ -743,6 +766,8 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
 	 */
 	val = BIT(M_CMD_START_BUSY_SHIFT);
 	if (msg->flags & I2C_M_RD) {
+		u32 protocol;
+
 		iproc_i2c->rx_bytes = 0;
 		if (msg->len > M_RX_FIFO_MAX_THLD_VALUE)
 			iproc_i2c->thld_bytes = M_RX_FIFO_THLD_VALUE;
@@ -758,7 +783,10 @@ static int bcm_iproc_i2c_xfer_single_msg(struct bcm_iproc_i2c_dev *iproc_i2c,
 		/* enable the RX threshold interrupt */
 		val_intr_en |= BIT(IE_M_RX_THLD_SHIFT);
 
-		val |= (M_CMD_PROTOCOL_BLK_RD << M_CMD_PROTOCOL_SHIFT) |
+		protocol = process_call ?
+				M_CMD_PROTOCOL_PROCESS : M_CMD_PROTOCOL_BLK_RD;
+
+		val |= (protocol << M_CMD_PROTOCOL_SHIFT) |
 		       (msg->len << M_CMD_RD_CNT_SHIFT);
 	} else {
 		val |= (M_CMD_PROTOCOL_BLK_WR << M_CMD_PROTOCOL_SHIFT);
@@ -774,17 +802,31 @@ static int bcm_iproc_i2c_xfer(struct i2c_adapter *adapter,
 			      struct i2c_msg msgs[], int num)
 {
 	struct bcm_iproc_i2c_dev *iproc_i2c = i2c_get_adapdata(adapter);
-	int ret, i;
+	bool process_call = false;
+	int ret;
 
-	/* go through all messages */
-	for (i = 0; i < num; i++) {
-		ret = bcm_iproc_i2c_xfer_single_msg(iproc_i2c, &msgs[i]);
-		if (ret) {
-			dev_dbg(iproc_i2c->device, "xfer failed\n");
-			return ret;
+	if (num > 2) {
+		dev_err(iproc_i2c->device,
+			"Only support up to 2 messages. Current msg count %d\n",
+			num);
+		return -EOPNOTSUPP;
+	}
+
+	if (num == 2) {
+		/* Repeated start, use process call */
+		process_call = true;
+		if (msgs[1].flags & I2C_M_NOSTART) {
+			dev_err(iproc_i2c->device, "Invalid repeated start\n");
+			return -EOPNOTSUPP;
 		}
 	}
 
+	ret = bcm_iproc_i2c_xfer_internal(iproc_i2c, msgs, process_call);
+	if (ret) {
+		dev_dbg(iproc_i2c->device, "xfer failed\n");
+		return ret;
+	}
+
 	return num;
 }
 
@@ -806,6 +848,8 @@ static uint32_t bcm_iproc_i2c_functionality(struct i2c_adapter *adap)
 };
 
 static struct i2c_adapter_quirks bcm_iproc_i2c_quirks = {
+	.flags = I2C_AQ_COMB_WRITE_THEN_READ,
+	.max_comb_1st_msg_len = M_TX_RX_FIFO_SIZE,
 	.max_read_len = M_RX_MAX_READ_LEN,
 };
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
