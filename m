Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F99BDBDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 12:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xoHOvaw5FMkx3xWId+tswS+S2e7J1xb5nTdfUw9T0RI=; b=Typ
	eMXV5K8RwERaECOuSSTRd0g/O2291/ULnWRf++yiqNuPx7okO4H2Is2Di+kA4WJSP3fEN39NfKA3W
	nthoeQqkfIad9MFjZKajascfuyVRTJ5m/ARb2wkb53kt2m1+AmkNs1uN+AJX+7qMMOiQeA0R3WVTB
	CXQogrfTHSZ+WhojGJVawbLAcUAgihIXfwEDPVdSVBl0VGI3L0Mz+PsvkkZ40B68OtyF45b0i3Wj3
	ZO/9Szm4z0gwFsiMemPPoLuJb7EYVxvAuwNpOrqS1cXNOVmVXcyli4T50Xfh47W/Q5yWA92mA0/BJ
	s3hvODxiV7/iRdIuYcIDQsoKkhb6QUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD4Fl-0004TR-6o; Wed, 25 Sep 2019 10:10:33 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD4El-0004T0-TQ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 10:09:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CCC431A0824;
 Wed, 25 Sep 2019 12:09:27 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9B6C71A00DD;
 Wed, 25 Sep 2019 12:09:23 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2FE40402ED;
 Wed, 25 Sep 2019 18:09:18 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] firmware: imx: Skip return value check for some special SCU
 firmware APIs
Date: Wed, 25 Sep 2019 18:07:46 +0800
Message-Id: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_030932_101114_832394B5 
X-CRM114-Status: GOOD (  12.42  )
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
	- This patch is based on the patch of https://patchwork.kernel.org/patch/11129553/
---
 drivers/firmware/imx/imx-scu.c | 34 ++++++++++++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index 869be7a..ced5b12 100644
--- a/drivers/firmware/imx/imx-scu.c
+++ b/drivers/firmware/imx/imx-scu.c
@@ -78,6 +78,11 @@ static int imx_sc_linux_errmap[IMX_SC_ERR_LAST] = {
 	-EIO,	 /* IMX_SC_ERR_FAIL */
 };
 
+static const struct imx_sc_rpc_msg whitelist[] = {
+	{ .svc = IMX_SC_RPC_SVC_MISC, .func = IMX_SC_MISC_FUNC_UNIQUE_ID },
+	{ .svc = IMX_SC_RPC_SVC_MISC, .func = IMX_SC_MISC_FUNC_GET_BUTTON_STATUS },
+};
+
 static struct imx_sc_ipc *imx_sc_ipc_handle;
 
 static inline int imx_sc_to_linux_errno(int errno)
@@ -157,11 +162,24 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
 	return 0;
 }
 
+static bool imx_scu_call_skip_return_value_check(uint8_t svc, uint8_t func)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(whitelist); i++)
+		if (svc == whitelist[i].svc &&
+			func == whitelist[i].func)
+			return true;
+
+	return false;
+}
+
 /*
  * RPC command/response
  */
 int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
 {
+	uint8_t saved_svc, saved_func;
 	struct imx_sc_rpc_msg *hdr;
 	int ret;
 
@@ -171,8 +189,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
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
@@ -190,7 +211,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool have_resp)
 
 		/* response status is stored in hdr->func field */
 		hdr = msg;
-		ret = hdr->func;
+		/*
+		 * Some special SCU firmware APIs do NOT have return value
+		 * in hdr->func, but they do have response data, those special
+		 * APIs are defined as void function in SCU firmware, so they
+		 * should be treated as return success always.
+		 */
+		if (!imx_scu_call_skip_return_value_check(saved_svc, saved_func))
+			ret = hdr->func;
+		else
+			ret = 0;
 	}
 
 out:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
