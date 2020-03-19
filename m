Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F308518ADDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 09:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=88Qmcmb9eiPJz0v3S4IcRSVDGQLuHp6iJoxYchaBKv0=; b=kV4
	S5SCavzv9Jb+s+WFDM1F7ABKFNF+1attuyXt9FCLMDLOiD9pZ4kxp8kVK8XR5OrwSaGXOsZe/++jM
	lwfIFqY27WuFn0qYpxepIi09fNdbMonutok6LJOLlUbWKq5eHymYPtIqYbP15pXryEKQoTirF8mkA
	IJrZ/HbKvJ6NQDkp21z+0oI8XtNDIUvuuH6ZN+AQ2ahWv+g3RpcAHkP4uXrthWUyoO96iLYRe+U7v
	FiF0+BDfAFcHqFqJrHU2MoZhYnslQTMu5VkdFW6uwqWF475yAbSAueJ1jFkunUPQ56+gMH3s6/UqN
	qZ5tyuMlVmYJfArue8lK/D+VQG3Q5TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEq8Y-0006W8-Sn; Thu, 19 Mar 2020 08:02:42 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEq8S-0006Nb-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 08:02:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A80D220150E;
 Thu, 19 Mar 2020 09:02:31 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 752E920151B;
 Thu, 19 Mar 2020 09:02:27 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 80B4340246;
 Thu, 19 Mar 2020 16:02:22 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: srinivas.kandagatla@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] nvmem: imx-ocotp: Improve logic to save many code lines
Date: Thu, 19 Mar 2020 15:55:40 +0800
Message-Id: <1584604540-10097-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_010236_190286_6D9A11C4 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Several logic improvements to save many code lines:

 - no need to use goto;
 - no need to assign return value;
 - combine different conditions of return value into one line.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 50bea2a..7a1ebd6 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -196,7 +196,6 @@ static int imx_ocotp_read(void *context, unsigned int offset,
 		if (*(buf - 1) == IMX_OCOTP_READ_LOCKED_VAL)
 			imx_ocotp_clr_err_if_set(priv);
 	}
-	ret = 0;
 
 read_end:
 	clk_disable_unprepare(priv->clk);
@@ -435,17 +434,13 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	       priv->base + IMX_OCOTP_ADDR_CTRL_SET);
 	ret = imx_ocotp_wait_for_busy(priv,
 				      priv->params->ctrl.bm_rel_shadows);
-	if (ret < 0) {
+	if (ret < 0)
 		dev_err(priv->dev, "timeout during shadow register reload\n");
-		goto write_end;
-	}
 
 write_end:
 	clk_disable_unprepare(priv->clk);
 	mutex_unlock(&ocotp_mutex);
-	if (ret < 0)
-		return ret;
-	return bytes;
+	return ret < 0 ? ret : bytes;
 }
 
 static struct nvmem_config imx_ocotp_nvmem_config = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
