Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A13A7C64
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Wvm1As4jldcyXC5qJacSpFvGVneH6CU1m8E1cbItlTk=; b=DuA
	F94Yq7oM9ll8CWx+uYOh+gGVLgWZKKkeE8+0lGlmHq7xgw0ffEG/MqEmR9wI82uXzrjutKqwy7xNg
	wBgOK3JOqqkTeXbuqGvdX1+c9teTxINndKCJPgaqBjeSq3CfmlyOiSKbd/nTMH3xBYb4NwtkvxqBt
	6FWr1ePprqh/0IxTl+S2kyqdizsqAE96q8OPTod1hHmdwJi1dCckpqGNf59Uy0QlRfZ/NGvVJAs+v
	b/E2a+1rTOa9UO66e0NOeutKDYdhFAiPI0dyehqjERJfdyjmm8LAfVZVf+U0ltOtsOfujxRTP9VCI
	XeOXlHKrXPvaCc+Bp6c2R55fjZjMGnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5PUq-0006RQ-HC; Wed, 04 Sep 2019 07:14:28 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PUa-0006QV-Dk
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:14:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 85BFE1A0063;
 Wed,  4 Sep 2019 09:14:10 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EC30A1A0194;
 Wed,  4 Sep 2019 09:14:05 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 09A5540296;
 Wed,  4 Sep 2019 15:13:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, daniel.baluta@nxp.com, aisheng.dong@nxp.com,
 abel.vesa@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] soc: imx: imx-scu: Getting UID from SCU should have response
Date: Wed,  4 Sep 2019 15:13:14 -0400
Message-Id: <1567624394-25023-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_001412_611844_F9B5D8C2 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
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

The SCU firmware API for getting UID should have response,
otherwise, the message stored in function stack could be
released and then the response data received from SCU will be
stored into that released stack and cause kernel NULL pointer
dump.

Fixes: 73feb4d0f8f1 ("soc: imx-scu: Add SoC UID(unique identifier) support")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/soc/imx/soc-imx-scu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
index 50831eb..c68882e 100644
--- a/drivers/soc/imx/soc-imx-scu.c
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -46,7 +46,7 @@ static ssize_t soc_uid_show(struct device *dev,
 	hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
 	hdr->size = 1;
 
-	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, false);
+	ret = imx_scu_call_rpc(soc_ipc_handle, &msg, true);
 	if (ret) {
 		pr_err("%s: get soc uid failed, ret %d\n", __func__, ret);
 		return ret;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
