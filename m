Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A19E71661E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:10:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vKH1vpKlMXU0elpTK1MLfy6P/Om4pfdzr5RYmO3pfwk=; b=CtY
	5dgEsfel1U2bf43F0kASYZEs0zhlKtYgv7GUnH4WWUR6PLu2tEEXAVC98KguCOYYkQtuKZt3h/8+7
	CZ020oYpQ4DaZVYLtSWwlAY9CxjAfBTi2Wq/orHQl8uCWP7y+HeY2/S6naOuhXwJy4uQiHC5Lu/4Z
	nqJ959XUDDJTXMxf22iPKyhojfY3Q7gRiy7V31zyd3mEA2ri4yVgSMmm4YdaR1v4iZv6vVVoQsOrl
	Xgo1XWxVZ6DNVo6063siiVc65143o+iCHYwfTnYluBKYMXHUTO1kRIb52dAM/XLmokCCtEyXb6zYb
	kF4pGuZYvE1VV0J2BjbYw0295eCfRaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oP0-0005Et-Pa; Thu, 20 Feb 2020 16:10:14 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oOr-0004QE-6i
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:10:06 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 393692015AB;
 Thu, 20 Feb 2020 17:10:03 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2E0B220141D;
 Thu, 20 Feb 2020 17:10:03 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A836A20328;
 Thu, 20 Feb 2020 17:10:02 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] firmware: imx: scu: Ensure sequential TX
Date: Thu, 20 Feb 2020 18:10:01 +0200
Message-Id: <ae051784024f8fcc458437e278c27b4e79c6fe7d.1582214881.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_081005_536024_C91C3FC6 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Richard Zhu <hongxing.zhu@nxp.com>, Jassi Brar <jassisinghbrar@gmail.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCU requires that all messages words are written sequentially but linux MU
driver implements multiple independent channels for each register so ordering
between different channels must be ensured by SCU API interface.

Wait for tx_done before every send to ensure that no queueing happens at the
mailbox channel level.

Fixes: edbee095fafb ("firmware: imx: add SCU firmware driver support")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Cc: <stable@vger.kernel.org>
---
 drivers/firmware/imx/imx-scu.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

This manifests as "SCU timeout" message followed by system hang.

This is not a very pretty fix but avoids inserting additional waits
except in extremely rare circumstances.

An alternative would be to implement a new type of mailbox channel which
handles all 4 registers together. Exposing the MU as 4 independent
channels is very awkward.

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index 03b43b7a6d1d..f71eaa5bf52d 100644
--- a/drivers/firmware/imx/imx-scu.c
+++ b/drivers/firmware/imx/imx-scu.c
@@ -27,10 +27,11 @@ struct imx_sc_chan {
 	struct imx_sc_ipc *sc_ipc;
 
 	struct mbox_client cl;
 	struct mbox_chan *ch;
 	int idx;
+	struct completion tx_done;
 };
 
 struct imx_sc_ipc {
 	/* SCU uses 4 Tx and 4 Rx channels */
 	struct imx_sc_chan chans[SCU_MU_CHAN_NUM];
@@ -98,10 +99,18 @@ int imx_scu_get_handle(struct imx_sc_ipc **ipc)
 	*ipc = imx_sc_ipc_handle;
 	return 0;
 }
 EXPORT_SYMBOL(imx_scu_get_handle);
 
+/* Callback called when the word of a message is ack-ed, eg read by SCU */
+static void imx_scu_tx_done(struct mbox_client *cl, void *mssg, int r)
+{
+	struct imx_sc_chan *sc_chan = container_of(cl, struct imx_sc_chan, cl);
+
+	complete(&sc_chan->tx_done);
+}
+
 static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
 {
 	struct imx_sc_chan *sc_chan = container_of(c, struct imx_sc_chan, cl);
 	struct imx_sc_ipc *sc_ipc = sc_chan->sc_ipc;
 	struct imx_sc_rpc_msg *hdr;
@@ -147,10 +156,23 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
 	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
 		hdr->func, hdr->size);
 
 	for (i = 0; i < hdr->size; i++) {
 		sc_chan = &sc_ipc->chans[i % 4];
+
+		/*
+		 * SCU requires that all messages words are written
+		 * sequentially but linux MU driver implements multiple
+		 * independent channels for each register so ordering between
+		 * different channels must be ensured by SCU API interface.
+		 *
+		 * Wait for tx_done before every send to ensure that no
+		 * queueing happens at the mailbox channel level.
+		 */
+		wait_for_completion(&sc_chan->tx_done);
+		reinit_completion(&sc_chan->tx_done);
+
 		ret = mbox_send_message(sc_chan->ch, &data[i]);
 		if (ret < 0)
 			return ret;
 	}
 
@@ -245,10 +267,15 @@ static int imx_scu_probe(struct platform_device *pdev)
 		cl->dev = dev;
 		cl->tx_block = false;
 		cl->knows_txdone = true;
 		cl->rx_callback = imx_scu_rx_callback;
 
+		/* Initial tx_done completion as "done" */
+		cl->tx_done = imx_scu_tx_done;
+		init_completion(&sc_chan->tx_done);
+		complete(&sc_chan->tx_done);
+
 		sc_chan->sc_ipc = sc_ipc;
 		sc_chan->idx = i % 4;
 		sc_chan->ch = mbox_request_channel_byname(cl, chan_name);
 		if (IS_ERR(sc_chan->ch)) {
 			ret = PTR_ERR(sc_chan->ch);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
