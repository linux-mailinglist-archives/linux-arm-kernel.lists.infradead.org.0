Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8CE31045
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wBw085+XGat1SbOyL+S9rJ7zOZkfOrXtdYL9GZcT3P0=; b=m0EoRqS5Sc6FdlA6LD6X2Zv2RA
	S6uZdJZuSczl5s+tx9ENVI6HgH0jnWyslk+uxWJJ0M/w8OHRgCt+UyiljhYjsIrNHabmXL6YbG+9F
	dlGLVfbBHUOu0sD1KtfnIHClqaOUxjpo8YkibNICWaklQMQyobdFqHSKVysmWV3t2TZuyUo39CnEl
	E8X+2KryNGlJA+qBm/2KF+pOMJpXQ2DPGYR+eU4p4GesZ5lp/9bAebWNekGDJ+b+LXrQ6mS8nJv7D
	Pr2mpqTpUk2XESz3/hwSlRJX3wCLvETIi0bZ5nx9njvoxOk1Cks4EyyIcOlc7CfakGyjUwQhllbfF
	uAZgT6AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWibT-0007Ax-V9; Fri, 31 May 2019 14:33:55 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWibF-0006xq-49
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 14:33:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C90415AD;
 Fri, 31 May 2019 07:33:38 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9FEBE3F5AF;
 Fri, 31 May 2019 07:33:36 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 1/6] mailbox: add support for doorbell/signal mode controllers
Date: Fri, 31 May 2019 15:33:15 +0100
Message-Id: <20190531143320.8895-2-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190531143320.8895-1-sudeep.holla@arm.com>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_073341_711939_DC04486A 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Brown <broonie@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Cristian Marussi <cristian.marussi@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some mailbox controllers are lack FIFOs or memory to transmit data.
They typically contains single doorbell registers to just signal the
remote. The actually data is transmitted/shared using some shared memory
which is not part of the mailbox.

Such controllers don't need to transmit any data, they just transmit
the signal. In such controllers the data pointer passed to
mbox_send_message is passed to client via it's tx_prepare callback.
Controller doesn't need any data to be passed from the client.

This patch introduce the new API send_signal to support such doorbell/
signal mode in mailbox controllers. This is useful to avoid another
layer of abstraction as typically multiple channels can be multiplexied
into single register.

Cc: Jassi Brar <jassisinghbrar@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/mailbox/mailbox.c          | 11 ++++++++++-
 include/linux/mailbox_controller.h | 11 +++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
index 38d9df3fb199..e26a079f8223 100644
--- a/drivers/mailbox/mailbox.c
+++ b/drivers/mailbox/mailbox.c
@@ -77,7 +77,10 @@ static void msg_submit(struct mbox_chan *chan)
 	if (chan->cl->tx_prepare)
 		chan->cl->tx_prepare(chan->cl, data);
 	/* Try to submit a message to the MBOX controller */
-	err = chan->mbox->ops->send_data(chan, data);
+	if (chan->mbox->ops->send_data)
+		err = chan->mbox->ops->send_data(chan, data);
+	else
+		err = chan->mbox->ops->send_signal(chan);
 	if (!err) {
 		chan->active_req = data;
 		chan->msg_count--;
@@ -481,6 +484,12 @@ int mbox_controller_register(struct mbox_controller *mbox)
 	/* Sanity check */
 	if (!mbox || !mbox->dev || !mbox->ops || !mbox->num_chans)
 		return -EINVAL;
+	/*
+	 * A controller can support either doorbell mode or normal message
+	 * transmission mode but not both
+	 */
+	if (mbox->ops->send_data && mbox->ops->send_signal)
+		return -EINVAL;
 
 	if (mbox->txdone_irq)
 		txdone = TXDONE_BY_IRQ;
diff --git a/include/linux/mailbox_controller.h b/include/linux/mailbox_controller.h
index 4994a438444c..b3f547ad782a 100644
--- a/include/linux/mailbox_controller.h
+++ b/include/linux/mailbox_controller.h
@@ -24,6 +24,16 @@ struct mbox_chan;
  *		transmission of data is reported by the controller via
  *		mbox_chan_txdone (if it has some TX ACK irq). It must not
  *		sleep.
+ * @send_signal: The API asks the MBOX controller driver, in atomic
+ *		 context try to transmit a signal on the bus. Returns 0 if
+ *		 data is accepted for transmission, -EBUSY while rejecting
+ *		 if the remote hasn't yet absorbed the last signal sent. Actual
+ *		 transmission of data must be handled by the client and  is
+ *		 reported by the controller via mbox_chan_txdone (if it has
+ *		 some TX ACK irq). It must not sleep. Unlike send_data,
+ *		 send_signal doesn't handle any messages/data. It just sends
+ *		 notification signal(doorbell) and client needs to prepare all
+ *		 the data.
  * @flush:	Called when a client requests transmissions to be blocking but
  *		the context doesn't allow sleeping. Typically the controller
  *		will implement a busy loop waiting for the data to flush out.
@@ -49,6 +59,7 @@ struct mbox_chan;
  */
 struct mbox_chan_ops {
 	int (*send_data)(struct mbox_chan *chan, void *data);
+	int (*send_signal)(struct mbox_chan *chan);
 	int (*flush)(struct mbox_chan *chan, unsigned long timeout);
 	int (*startup)(struct mbox_chan *chan);
 	void (*shutdown)(struct mbox_chan *chan);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
