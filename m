Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BBFD1AC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 23:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=azYxSBMjczGbgUckLFpQOx50mUyBTM6wa5zISS//ymI=; b=e+OmdpYQO9JIi7
	tmJeI2VEYZloyplkA60byZkrnWU3rSOhC0tGXqLb2I9ChHPzfBXO1R1wcHSCgofobLjleOl8oHif5
	XDHn8jE8YforrLQGkbegMeZKQcTshPwLsrkgDpHw9AiRSiex/YcX5CGWBbdJfW/dn6iCDgBPFcUiz
	dvdKrxUOmF6eEztmEiwID1E05AduS4TF855kdDWAJNi6L4sPIlTUslQWZPfo1UccDRChxlJ+/Q4yn
	S1jVTh48f1nBvlVTzbs90SfTLGlGgi51uFl0hULMWN7+ZcKohzrePe0VahuEXPcnRmoqJIMn5naTY
	ZDiKDk3J268okNa2rh0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIJO1-0003Pj-Kl; Wed, 09 Oct 2019 21:20:45 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIJNs-0003PG-So
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 21:20:38 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 14:20:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="368866255"
Received: from maru.jf.intel.com ([10.54.51.77])
 by orsmga005.jf.intel.com with ESMTP; 09 Oct 2019 14:20:35 -0700
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
To: Brendan Higgins <brendanhiggins@google.com>,
 Wolfram Sang <wsa@the-dreams.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Joel Stanley <joel@jms.id.au>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Andrew Jeffery <andrew@aj.id.au>,
 Tao Ren <taoren@fb.com>, Cedric Le Goater <clg@kaod.org>
Subject: [PATCH] i2c: aspeed: fix master pending state handling
Date: Wed,  9 Oct 2019 14:20:34 -0700
Message-Id: <20191009212034.20325-1-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_142036_944982_C2CB4F9E 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 2.4 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: devicetree@vger.kernel.org, Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of master pending state, it should not trigger a master
command, otherwise data could be corrupted because this H/W shares
the same data buffer for slave and master operations. It also means
that H/W command queue handling is unreliable because of the buffer
sharing issue. To fix this issue, it clears command queue if a
master command is queued in pending state to use S/W solution
instead of H/W command queue handling. Also, it refines restarting
mechanism of the pending master command.

Fixes: 2e57b7cebb98 ("i2c: aspeed: Add multi-master use case support")
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
 drivers/i2c/busses/i2c-aspeed.c | 54 +++++++++++++++++++++------------
 1 file changed, 34 insertions(+), 20 deletions(-)

diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
index fa66951b05d0..7b098ff5f5dd 100644
--- a/drivers/i2c/busses/i2c-aspeed.c
+++ b/drivers/i2c/busses/i2c-aspeed.c
@@ -108,6 +108,12 @@
 #define ASPEED_I2CD_S_TX_CMD				BIT(2)
 #define ASPEED_I2CD_M_TX_CMD				BIT(1)
 #define ASPEED_I2CD_M_START_CMD				BIT(0)
+#define ASPEED_I2CD_MASTER_CMDS_MASK					       \
+		(ASPEED_I2CD_M_STOP_CMD |				       \
+		 ASPEED_I2CD_M_S_RX_CMD_LAST |				       \
+		 ASPEED_I2CD_M_RX_CMD |					       \
+		 ASPEED_I2CD_M_TX_CMD |					       \
+		 ASPEED_I2CD_M_START_CMD)
 
 /* 0x18 : I2CD Slave Device Address Register   */
 #define ASPEED_I2CD_DEV_ADDR_MASK			GENMASK(6, 0)
@@ -336,18 +342,19 @@ static void aspeed_i2c_do_start(struct aspeed_i2c_bus *bus)
 	struct i2c_msg *msg = &bus->msgs[bus->msgs_index];
 	u8 slave_addr = i2c_8bit_addr_from_msg(msg);
 
-	bus->master_state = ASPEED_I2C_MASTER_START;
-
 #if IS_ENABLED(CONFIG_I2C_SLAVE)
 	/*
 	 * If it's requested in the middle of a slave session, set the master
 	 * state to 'pending' then H/W will continue handling this master
 	 * command when the bus comes back to the idle state.
 	 */
-	if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE)
+	if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE) {
 		bus->master_state = ASPEED_I2C_MASTER_PENDING;
+		return;
+	}
 #endif /* CONFIG_I2C_SLAVE */
 
+	bus->master_state = ASPEED_I2C_MASTER_START;
 	bus->buf_index = 0;
 
 	if (msg->flags & I2C_M_RD) {
@@ -422,20 +429,6 @@ static u32 aspeed_i2c_master_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
 		}
 	}
 
-#if IS_ENABLED(CONFIG_I2C_SLAVE)
-	/*
-	 * A pending master command will be started by H/W when the bus comes
-	 * back to idle state after completing a slave operation so change the
-	 * master state from 'pending' to 'start' at here if slave is inactive.
-	 */
-	if (bus->master_state == ASPEED_I2C_MASTER_PENDING) {
-		if (bus->slave_state != ASPEED_I2C_SLAVE_INACTIVE)
-			goto out_no_complete;
-
-		bus->master_state = ASPEED_I2C_MASTER_START;
-	}
-#endif /* CONFIG_I2C_SLAVE */
-
 	/* Master is not currently active, irq was for someone else. */
 	if (bus->master_state == ASPEED_I2C_MASTER_INACTIVE ||
 	    bus->master_state == ASPEED_I2C_MASTER_PENDING)
@@ -462,11 +455,15 @@ static u32 aspeed_i2c_master_irq(struct aspeed_i2c_bus *bus, u32 irq_status)
 #if IS_ENABLED(CONFIG_I2C_SLAVE)
 		/*
 		 * If a peer master starts a xfer immediately after it queues a
-		 * master command, change its state to 'pending' then H/W will
-		 * continue the queued master xfer just after completing the
-		 * slave mode session.
+		 * master command, clear the queued master command and change
+		 * its state to 'pending'. To simplify handling of pending
+		 * cases, it uses S/W solution instead of H/W command queue
+		 * handling.
 		 */
 		if (unlikely(irq_status & ASPEED_I2CD_INTR_SLAVE_MATCH)) {
+			writel(readl(bus->base + ASPEED_I2C_CMD_REG) &
+				~ASPEED_I2CD_MASTER_CMDS_MASK,
+			       bus->base + ASPEED_I2C_CMD_REG);
 			bus->master_state = ASPEED_I2C_MASTER_PENDING;
 			dev_dbg(bus->dev,
 				"master goes pending due to a slave start\n");
@@ -629,6 +626,14 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *dev_id)
 			irq_handled |= aspeed_i2c_master_irq(bus,
 							     irq_remaining);
 	}
+
+	/*
+	 * Start a pending master command at here if a slave operation is
+	 * completed.
+	 */
+	if (bus->master_state == ASPEED_I2C_MASTER_PENDING &&
+	    bus->slave_state == ASPEED_I2C_SLAVE_INACTIVE)
+		aspeed_i2c_do_start(bus);
 #else
 	irq_handled = aspeed_i2c_master_irq(bus, irq_remaining);
 #endif /* CONFIG_I2C_SLAVE */
@@ -691,6 +696,15 @@ static int aspeed_i2c_master_xfer(struct i2c_adapter *adap,
 		     ASPEED_I2CD_BUS_BUSY_STS))
 			aspeed_i2c_recover_bus(bus);
 
+		/*
+		 * If timed out and the state is still pending, drop the pending
+		 * master command.
+		 */
+		spin_lock_irqsave(&bus->lock, flags);
+		if (bus->master_state == ASPEED_I2C_MASTER_PENDING)
+			bus->master_state = ASPEED_I2C_MASTER_INACTIVE;
+		spin_unlock_irqrestore(&bus->lock, flags);
+
 		return -ETIMEDOUT;
 	}
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
