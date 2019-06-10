Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CCC3B70D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 16:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cz58tBalrZpIY8C9T+zu0FmLWLg8TgvEqeFGfx5hgKU=; b=WjpntmYeh8CoHMyDMUNabONvS2
	bPRG/BKmzXIgxPOv1b6CYJtobP6ZByuMjTZHKglBpg3/cOHKuh3ZXwBZqEpu9ANrkN5OJxZqHPhtF
	27wCwaCTX/DzpjQ+fmLhaOJzT2XszbAtC6NfRYfmnZQCUDFrktksW2b1+cVIEhwLIPDIifIHk9qnG
	M+6WEO/8OFmmvozDNOejGN/MfF6KJUrckgLqrMR+2E5Xx022k8WKC8AlK34SAuQ/Xzrl59wSNuhMs
	wwan2QddBiXirV2NWG5xYGpB1zFf/qOMyVmrTVaK4xLauTFQRGRQM9ea9Mz+q85rPCvFJP5+VqGqv
	RkemCPyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haL52-0003qf-Ky; Mon, 10 Jun 2019 14:15:24 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haL4F-0002fF-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 14:14:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 320542007DA;
 Mon, 10 Jun 2019 16:14:33 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 48C0E2007D5;
 Mon, 10 Jun 2019 16:14:28 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id F1B6A402FB;
 Mon, 10 Jun 2019 22:14:21 +0800 (SGT)
From: daniel.baluta@nxp.com
To: jassisinghbrar@gmail.com,
	o.rempel@pengutronix.de
Subject: [RFC PATCH 2/2] imx: mailbox: Introduce TX doorbell with ACK
Date: Mon, 10 Jun 2019 22:16:09 +0800
Message-Id: <20190610141609.17559-3-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610141609.17559-1-daniel.baluta@nxp.com>
References: <20190610141609.17559-1-daniel.baluta@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_071435_944803_82356A4C 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
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
Cc: aisheng.dong@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Daniel Baluta <daniel.baluta@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

TX doorbell with ACK will allow us to push the doorbell ring button
(trigger GIR) and also will allow us to handle the response from DSP.

DSP firmware found on i.MX8 boards implements a duplex
communication protocol over MU channels.

On the host side (Linux) we need to plugin into Sound Open Firmware IPC
communication infrastructure which handles all the details (e.g message
queuing, tx/rx logic) [1] and the users are only required to provide the
following callbacks:

  - send_msg (for Tx)
  - irq_handler (Ack of Tx, request from DSP)

In order to implement send_msg and irq_handler we will use two MU
channels:
	* channel #0, TX doorbell with ACK
	* channel #1, RX doorbell

Sending a request Host -> DSP (channel #0)
  - send_msg callback
	- write data into SHMEM
	- push doorbell ring button (trigger GIR)
 - irq handler
	- handle DSP request (channel #1)
	  - read SHMEM and trigger SOF IPC state machine
	  - send ACK (push doorbell ring button for channel #1)
	- handle DSP response (ACK) (channel #0)
	  - read SHMEM and trigger IPC state machine

The easisest way to implement this is to directly access the MU
registers but since the MU is abstracted using the mailbox interface
we need to use that instead.

[1] https://elixir.bootlin.com/linux/v5.2-rc4/source/sound/soc/sof/ipc.c

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/mailbox/imx-mailbox.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 9f74dee1a58c..3a91611e17d2 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -42,6 +42,7 @@ enum imx_mu_chan_type {
 	IMX_MU_TYPE_RX,		/* Rx */
 	IMX_MU_TYPE_TXDB,	/* Tx doorbell */
 	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
+	IMX_MU_TYPE_TXDB_ACK	/* Tx doorbell with Ack */
 };
 
 struct imx_mu_con_priv {
@@ -124,6 +125,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
 			(ctrl & IMX_MU_xCR_RIEn(cp->idx));
 		break;
 	case IMX_MU_TYPE_RXDB:
+	case IMX_MU_TYPE_TXDB_ACK:
 		val &= IMX_MU_xSR_GIPn(cp->idx) &
 			(ctrl & IMX_MU_xCR_GIEn(cp->idx));
 		break;
@@ -200,6 +202,7 @@ static int imx_mu_startup(struct mbox_chan *chan)
 		imx_mu_xcr_rmw(priv, IMX_MU_xCR_RIEn(cp->idx), 0);
 		break;
 	case IMX_MU_TYPE_RXDB:
+	case IMX_MU_TYPE_TXDB_ACK:
 		imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIEn(cp->idx), 0);
 		break;
 	default:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
