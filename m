Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDD9FF9CF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 14:07:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MvPvPuSraxGBGIovEgxbU2A4nIrQbxDyNa1RncoPJXk=; b=o0t
	XF63Tr2bbOyPQAnGPA5VAMGXsLUUPo4aI3c3agmkWxNT7mNszTBUE4Ibui1crFx4CnKw3xXDx5a/K
	MrbVUrKjE2Mcx4XYias/pgna8jrs3MY7gcZ6G9KFpL6Cj2JyOSQl7lHiTF++hgPhN4+7EwFdHtpei
	HKUQDgiaW9OpXFKS8xhWTSd4xINy2F4EQXm4myx12YqfXBBbNxvB9YESfag/292TwcjLZz/WTKIof
	ROBXnu1MQL5/JH6FlPCkIupOYp73mM4q5xkZBegy7Y3WaYu5saXe9hrNWKsIoso9cGuSD8VGmAD6L
	Zkn67chNBcsH7+7Lf2qSVY7qPOp9E8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWKHC-00024j-6C; Sun, 17 Nov 2019 13:07:38 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWKH2-00024H-Iw
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 13:07:30 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 53DB61A0215;
 Sun, 17 Nov 2019 14:07:27 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 743B61A0016;
 Sun, 17 Nov 2019 14:07:23 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6030D4029F;
 Sun, 17 Nov 2019 21:07:18 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-pm@vger.kernel.org
Subject: [PATCH 1/1] firmware: imx: scu-pd: do not power off console domain
Date: Sun, 17 Nov 2019 21:05:24 +0800
Message-Id: <1573995924-14752-1-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_050728_763345_5BC2A37C 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 dongas86@gmail.com, linux-imx@nxp.com, kernel@pengutronix.de,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do not power off console domain in runtime pm.

Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index b556612207e5..770e3681bbbf 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -85,6 +85,8 @@ struct imx_sc_pd_soc {
 	u8 num_ranges;
 };
 
+int imx_con_rsrc;
+
 static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	/* LSIO SS */
 	{ "pwm", IMX_SC_R_PWM_0, 8, true, 0 },
@@ -173,6 +175,23 @@ to_imx_sc_pd(struct generic_pm_domain *genpd)
 	return container_of(genpd, struct imx_sc_pm_domain, pd);
 }
 
+static void imx_sc_pd_get_console_rsrc(void)
+{
+	struct of_phandle_args specs;
+	int ret;
+
+	if (!of_stdout)
+		return;
+
+	ret = of_parse_phandle_with_args(of_stdout, "power-domains",
+					 "#power-domain-cells",
+					 0, &specs);
+	if (ret)
+		return;
+
+	imx_con_rsrc = specs.args[0];
+}
+
 static int imx_sc_pd_power(struct generic_pm_domain *domain, bool power_on)
 {
 	struct imx_sc_msg_req_set_resource_power_mode msg;
@@ -233,6 +252,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 		      const struct imx_sc_pd_range *pd_ranges)
 {
 	struct imx_sc_pm_domain *sc_pd;
+	bool is_off = true;
 	int ret;
 
 	sc_pd = devm_kzalloc(dev, sizeof(*sc_pd), GFP_KERNEL);
@@ -251,6 +271,10 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 			 "%s", pd_ranges->name);
 
 	sc_pd->pd.name = sc_pd->name;
+	if (imx_con_rsrc == sc_pd->rsrc) {
+		sc_pd->pd.flags = GENPD_FLAG_RPM_ALWAYS_ON;
+		is_off = false;
+	}
 
 	if (sc_pd->rsrc >= IMX_SC_R_LAST) {
 		dev_warn(dev, "invalid pd %s rsrc id %d found",
@@ -260,7 +284,7 @@ imx_scu_add_pm_domain(struct device *dev, int idx,
 		return NULL;
 	}
 
-	ret = pm_genpd_init(&sc_pd->pd, NULL, true);
+	ret = pm_genpd_init(&sc_pd->pd, NULL, is_off);
 	if (ret) {
 		dev_warn(dev, "failed to init pd %s rsrc id %d",
 			 sc_pd->name, sc_pd->rsrc);
@@ -326,6 +350,8 @@ static int imx_sc_pd_probe(struct platform_device *pdev)
 	if (!pd_soc)
 		return -ENODEV;
 
+	imx_sc_pd_get_console_rsrc();
+
 	return imx_scu_init_pm_domains(&pdev->dev, pd_soc);
 }
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
