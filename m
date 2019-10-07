Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4679CDA18
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 03:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EyldAWl5lT6zLTEzx92FkxfnZKI35mbGQP+xSQ/W4ls=; b=BrP
	HPtRDUKxrluVsiYF/jxruPTY6P5D5vUgLP5VyVTBYfOSs8Sri/hR77aOKbpO1oejpdUp2/4m2V+qy
	yDcDo0JcfOdtguzveWwR7uPBfhUx6mAjzd2jUGcDxKMcuULzU3oJM8c+7WM6LEVKJj87PAz+Eyu5J
	x7nNojSAWt3dnvE4ijEv0sLjs0ugyDtbQQPFbwHPKSFASGoXHW7mUNmJVZ7VXRVy7oDhSP1l3oFyE
	XMBC9SMIPApmpXUJ+n9TsLfb7GsW9ijXGs9l3ISI7b0QkyEjHD3uqOVNnk2/62NqtRysxsivIindj
	nHSVL2qa5x1cU9WXF1uJfqxn8+9XvZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHHfN-0004Fx-Io; Mon, 07 Oct 2019 01:18:25 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHHfF-0004Ey-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 01:18:19 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3BEFB1A05E8;
 Mon,  7 Oct 2019 03:18:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C10E61A0009;
 Mon,  7 Oct 2019 03:18:09 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BC8B44031E;
 Mon,  7 Oct 2019 09:18:03 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Date: Mon,  7 Oct 2019 09:15:59 +0800
Message-Id: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_181817_357501_6EA25930 
X-CRM114-Status: GOOD (  10.10  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SCU firmware does NOT always have return value stored in message
header's function element even the API has response data, those special
APIs are defined as void function in SCU firmware, so they should be
treated as return success always.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Use direct API check instead of calling another function to check.
	- This patch is based on https://patchwork.kernel.org/patch/11129553/
---
 drivers/firmware/imx/imx-scu.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index 869be7a..03b43b7 100644
--- a/drivers/firmware/imx/imx-scu.c
+++ b/drivers/firmware/imx/imx-scu.c
@@ -162,6 +162,7 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
  */
 int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
 {
+	uint8_t saved_svc, saved_func;
 	struct imx_sc_rpc_msg *hdr;
 	int ret;
 
@@ -171,8 +172,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
 	mutex_lock(&sc_ipc->lock);
 	reinit_completion(&sc_ipc->done);
 
-	if (have_resp)
+	if (have_resp) {
 		sc_ipc->msg = msg;
+		saved_svc = ((struct imx_sc_rpc_msg *)msg)->svc;
+		saved_func = ((struct imx_sc_rpc_msg *)msg)->func;
+	}
 	sc_ipc->count = 0;
 	ret = imx_scu_ipc_write(sc_ipc, msg);
 	if (ret < 0) {
@@ -191,6 +195,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
 		/* response status is stored in hdr->func field */
 		hdr = msg;
 		ret = hdr->func;
+		/*
+		 * Some special SCU firmware APIs do NOT have return value
+		 * in hdr->func, but they do have response data, those special
+		 * APIs are defined as void function in SCU firmware, so they
+		 * should be treated as return success always.
+		 */
+		if ((saved_svc == IMX_SC_RPC_SVC_MISC) &&
+			(saved_func == IMX_SC_MISC_FUNC_UNIQUE_ID ||
+			 saved_func == IMX_SC_MISC_FUNC_GET_BUTTON_STATUS))
+			ret = 0;
 	}
 
 out:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
