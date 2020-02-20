Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5E61661FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RdR4q0h6X4gjvrRQ7wc0mjysxfdco+rNDFQ+OzLh/7o=; b=A6R
	8asvNgumEMHIm9xHT9WTD8wVUxkSXlb7yrlTkjosSDnpmOLRzzg0em40mj//xfKNJh5xmsbPzHNPR
	OaY9BfRZuQHf8NtPn2ICEWgys09TmLijXBYsXDE56lYTWeMzBvxEF2zWIStGmkr0JxRKTbwpMHICu
	SyMVsc1uLOBhfN+9FnYz+bhI0wYfntGW8IfWr8xjqDKN4ST5zDZ0Vdfgal6Qz5UOeX1CfNr9sWj2a
	UniX9COf149cVJDTvdGmYnhARQuaLksAMxqr8Gi0Sfwpksaj4dlDOOxJMLLePB10PcPDuhoHKqU8y
	x+tU7NrdJTFWfjZP8sT01Q+ki+/oY/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4oRJ-0005xZ-Kj; Thu, 20 Feb 2020 16:12:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4oRA-0005xF-2x
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:12:29 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8C09C200BC4;
 Thu, 20 Feb 2020 17:12:26 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7F3F1200BB5;
 Thu, 20 Feb 2020 17:12:26 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 069F120328;
 Thu, 20 Feb 2020 17:12:25 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] firmware: imx: scu: Fix corruption of header
Date: Thu, 20 Feb 2020 18:12:22 +0200
Message-Id: <4389d4185aabbb94dfcbe79a9d0937fb57182335.1582215013.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_081228_267726_E7A9D8DA 
X-CRM114-Status: GOOD (  13.33  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 Franck LENORMAND <franck.lenormand@nxp.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Franck LENORMAND <franck.lenormand@nxp.com>

The header of the message to send can be changed if the
response is longer than the request:
 - 1st word, the header is sent
 - the remaining words of the message are sent
 - the response is received asynchronously during the
   execution of the loop, changing the size field in
   the header
 - the for loop test the termination condition using
   the corrupted header

It is the case for the API build_info which has just a
header as request but 3 words in response.

This issue is fixed by storing the header locally instead of
using a pointer on it.

Fixes: edbee095fafb (firmware: imx: add SCU firmware driver support)
Signed-off-by: Franck LENORMAND <franck.lenormand@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Cc: stable@vger.kernel.org
---
 drivers/firmware/imx/imx-scu.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

This can manifest as random crashes so Cc: stable

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index 03b43b7a6d1d..2cf09f8a075c 100644
--- a/drivers/firmware/imx/imx-scu.c
+++ b/drivers/firmware/imx/imx-scu.c
@@ -132,24 +132,24 @@ static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
 		complete(&sc_ipc->done);
 }
 
 static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
 {
-	struct imx_sc_rpc_msg *hdr = msg;
+	struct imx_sc_rpc_msg hdr = *(struct imx_sc_rpc_msg *)msg;
 	struct imx_sc_chan *sc_chan;
 	u32 *data = msg;
 	int ret;
 	int i;
 
 	/* Check size */
-	if (hdr->size > IMX_SC_RPC_MAX_MSG)
+	if (hdr.size > IMX_SC_RPC_MAX_MSG)
 		return -EINVAL;
 
-	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
-		hdr->func, hdr->size);
+	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr.svc,
+		hdr.func, hdr.size);
 
-	for (i = 0; i < hdr->size; i++) {
+	for (i = 0; i < hdr.size; i++) {
 		sc_chan = &sc_ipc->chans[i % 4];
 		ret = mbox_send_message(sc_chan->ch, &data[i]);
 		if (ret < 0)
 			return ret;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
