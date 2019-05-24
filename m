Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2220D29083
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 07:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=e9ubk9LjOZjte8RrAGlx/QcdkqmC9wAPt2bbfNgFcY4=; b=J6u0E+yPR1wP1Y
	GNwXA8u9ohtt+ry22oX/ccrPn3DXXnHkZ48x42ywmCNg3xbhGewWn8Gl4lOlB6cnMw38Nbo9YB5Vm
	pEfm4AGqrsus5jZTIx9thOGdfEXMloHaikXzBNpWDDEBghNYRVjm3C1LlWD+AsfuWnEqn1+k7bfWU
	EHUq9N61TrtrWHHN/vZAxCUCVvpB/QZZPxS6ZuKTJak2210pTtRQtGR557E2lSmoFdzFnj1Iq4U3H
	nM/On245xNfWd2b/3FsuKgvkXEZMn89uW8s/61nLCkMdsf40BIWki11JZjtLGVFeVLV4LBIm76eHa
	HQSQuFoy+VyOGzrC7heQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU35D-0002wy-IC; Fri, 24 May 2019 05:49:35 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU34w-0002pW-1P
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 05:49:19 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DC6472000FF;
 Fri, 24 May 2019 07:49:15 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id F019B2000AC;
 Fri, 24 May 2019 07:49:10 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9A1D74029F;
 Fri, 24 May 2019 13:49:04 +0800 (SGT)
From: Anson.Huang@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, leonard.crestez@nxp.com, abel.vesa@nxp.com,
 viresh.kumar@linaro.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, hyc.nju@gmail.com
Subject: [PATCH RESEND 1/2] soc: imx: soc-imx8: Avoid unnecessary
 of_node_put() in error handling
Date: Fri, 24 May 2019 13:51:00 +0800
Message-Id: <20190524055101.3424-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_224918_256536_86DA7383 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

of_node_put() is called after of_match_node() successfully called,
then in the following error handling, of_node_put() is called again
which is unnecessary, this patch adjusts the location of of_node_put()
to avoid such scenario.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/soc/imx/soc-imx8.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/soc-imx8.c b/drivers/soc/imx/soc-imx8.c
index 02988bd..d5badde 100644
--- a/drivers/soc/imx/soc-imx8.c
+++ b/drivers/soc/imx/soc-imx8.c
@@ -115,8 +115,6 @@ static int __init imx8_soc_init(void)
 	if (!id)
 		goto free_soc;
 
-	of_node_put(root);
-
 	data = id->data;
 	if (data) {
 		soc_dev_attr->soc_id = data->name;
@@ -135,6 +133,8 @@ static int __init imx8_soc_init(void)
 	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
 		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
 
+	of_node_put(root);
+
 	return 0;
 
 free_rev:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
