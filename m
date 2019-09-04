Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4094EA7D33
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cLe8htPNvKeUZKC++k/d53cFmhmXhcBCLTidecHbvmw=; b=A2N
	qcvl0Qwp64z5O//qEbGiqgZ6X50B4W1tYdGqMgwYMtmRjU43INiEWyM8tFTcmZ4FwSJkwQKKvKRmp
	qAUYQrblTUzTFdmITBcRLLvODBMmOx5fkYBAq2Ek45h+J+WpmTSofDYZbXPdHGopiVRjrQ/s0fAiV
	AcErzK9npHHF1UI00p7zrCKcVgr3GjS7tfuVlmZCKQXv9P97vWrMHOxOh0CZSIXXvzp/n2eEcfd2U
	BqSTCFYWKMgsAFWxY9vZ5IWozR/WU7wFG8gp65JzmV/QOgouQqt52UsTKexgQz91fZMtlXS6MrRkd
	q4y08FhMZ3ADwtTMK9BWPtjSY0KQBmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5QA3-0007m6-Pd; Wed, 04 Sep 2019 07:57:04 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Q86-0005jP-TL
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:55:05 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 566D31A0122;
 Wed,  4 Sep 2019 09:55:01 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4A4121A027B;
 Wed,  4 Sep 2019 09:55:01 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E2C3C20612;
 Wed,  4 Sep 2019 09:55:00 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Anson Huang <Anson.Huang@nxp.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] firmware: imx: warn on unexpected RX
Date: Wed,  4 Sep 2019 10:54:58 +0300
Message-Id: <ddd1f5cd5341db0ca347259953135eaf9e782873.1567583496.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_005503_416416_84F9946C 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Fabio Estevam <fabio.estevam@nxp.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx_scu_call_rpc function function returns the result inside the
same "msg" struct containing the transmitted message. This is
implemented by holding a pointer to msg (which is usually on the stack)
in sc_imx_rpc and writing to it from imx_scu_rx_callback.

This means that if the have_resp parameter is incorrect or SCU sends an
unexpected for any reason the most likely result is kernel stack
corruption.

Fix this by only setting sc_imx_rpc.msg for the duration of the
imx_scu_call_rpc call and warning in imx_scu_rx_callback if unset.

Print the unexpected response data to help debugging.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/firmware/imx/imx-scu.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index 04a24a863d6e..869be7a5172c 100644
--- a/drivers/firmware/imx/imx-scu.c
+++ b/drivers/firmware/imx/imx-scu.c
@@ -105,10 +105,16 @@ static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
 	struct imx_sc_chan *sc_chan = container_of(c, struct imx_sc_chan, cl);
 	struct imx_sc_ipc *sc_ipc = sc_chan->sc_ipc;
 	struct imx_sc_rpc_msg *hdr;
 	u32 *data = msg;
 
+	if (!sc_ipc->msg) {
+		dev_warn(sc_ipc->dev, "unexpected rx idx %d 0x%08x, ignore!\n",
+				sc_chan->idx, *data);
+		return;
+	}
+
 	if (sc_chan->idx == 0) {
 		hdr = msg;
 		sc_ipc->rx_size = hdr->size;
 		dev_dbg(sc_ipc->dev, "msg rx size %u\n", sc_ipc->rx_size);
 		if (sc_ipc->rx_size > 4)
@@ -163,11 +169,12 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
 		return -EINVAL;
 
 	mutex_lock(&sc_ipc->lock);
 	reinit_completion(&sc_ipc->done);
 
-	sc_ipc->msg = msg;
+	if (have_resp)
+		sc_ipc->msg = msg;
 	sc_ipc->count = 0;
 	ret = imx_scu_ipc_write(sc_ipc, msg);
 	if (ret < 0) {
 		dev_err(sc_ipc->dev, "RPC send msg failed: %d\n", ret);
 		goto out;
@@ -185,10 +192,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
 		hdr = msg;
 		ret = hdr->func;
 	}
 
 out:
+	sc_ipc->msg = NULL;
 	mutex_unlock(&sc_ipc->lock);
 
 	dev_dbg(sc_ipc->dev, "RPC SVC done\n");
 
 	return imx_sc_to_linux_errno(ret);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
