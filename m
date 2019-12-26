Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B08012AB9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 11:21:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KvxxUj2Omuk92LWSbfDhUGfDKufwX+o+9ymfGNHjwdU=; b=hLY4VjyMIVN6CC
	ld3IkEVtXGIxvsJb007CPvfNsP1v2McDFPITWBjxyU6iS7wEAhGM/uvnTopXuDJc5RIJFo08fsoJR
	Jl0OXk2g8NF2CTQt16Vvpzh2SSAJgSiUjfKtjP98moQcuO9b1Y9MTXfEI7iC1VQtlvGVtZouCeXh/
	WAYOYCZ0uAwpnT2NEJlYERgI9O41uL0mSIOXJCHo88bBNbaOPUlYLYXIx/VBbLw16f7sFoDE2gSGs
	i3RhvqfyrqBt+Fov9T4Quer+KZnX9Jv88sy2Utx6Db/r1mxIqnp1fqsrM7+Wf49OKfdFqObOLpuMU
	OitEX//DkApGOIsAqdkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikQGQ-0005LD-Qi; Thu, 26 Dec 2019 10:21:06 +0000
Received: from mail-eopbgr150070.outbound.protection.outlook.com
 ([40.107.15.70] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikQGF-0005Kj-Ew
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 10:20:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fD6X816fK6OkJ2oYltZrNaJQSSXbapOvzwtkxqwhRzuv3RR30g7spyM3wwb3JwYU4vKQlPM395V5heyYYp/ASIKap1Ngq+2li3NpaXvHk/HID38lu/9dlslZzr8o4ggDUVarJADK6BQKhNHQidzLxJs9LSBAA4a3pY7AJMmw574GiOyhN0YHVieu4UBxw5b+5qjpygL59GZ8zTwtDE+rTpAXvRjRUbNxCT3jmI7MMp1+IWlbslVCwthi1xk6O/EOE5Vgxkr5yGRjtDnKzKvWKU0fstJ6BM21iPBwYSVve2XV70LKoTK4jbedFAZNdpED9lJ5LBDOh74vjvoXr6Nm4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+cYKgkrpJdEsZekjmSkDokTj/PTrNyoDlS9Bp1qLnE=;
 b=QznldWhN0a+bkhbP5+oPQE35Q58rBuxPkJ+CpAVy7txsOM4BjyANbVTZgGbFWo3LI2TtpaXd0rWAQgCc0YtCK9fB2mt8OvA0tKq/55bInI9lmyU7ozfTb541n4CJJkx/jNlx/ldNwdUPTqoc2Z+kEjk8ZJQhX5A5u7SqSjENRapGTPjfJCqq0BsENCIkZeS+xRLHQNMfWljx7pJ1kmr+evDGToCX8p3RmgXxC5qFi1BjBGDPOYFOfrUlNwI0f+MfyJ9t9rT5roH3Zbu3Uax5vn4O2AL7m9sLovGOmlPC2C1Gxjf8Y28qS34yejoeG822BYWOjVZuNh1WIE+qA/8/uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O+cYKgkrpJdEsZekjmSkDokTj/PTrNyoDlS9Bp1qLnE=;
 b=cw5E3jy6W4VhoxgxDnXmAhUYQuKB82KUDJvjOuTC0UfXt31PIyb15ivbj+FV0HiavQD2W7vlCzUifWXGCHZgiiRekJ2z424m3051CDEl1Hf4imED2pH3oTz0Lpa7JhrWuzCo0y2qYQd7Unw1DBkYUQYdpwaReuZ3MQC5rDN3OvA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4001.eurprd04.prod.outlook.com (52.134.93.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Thu, 26 Dec 2019 10:20:50 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2581.007; Thu, 26 Dec 2019
 10:20:50 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR0401CA0018.apcprd04.prod.outlook.com (2603:1096:202:2::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2581.11 via Frontend
 Transport; Thu, 26 Dec 2019 10:20:45 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [PATCH] nvmem: imx: ocotp: introduce ocotp_ctrl_reg
Thread-Topic: [PATCH] nvmem: imx: ocotp: introduce ocotp_ctrl_reg
Thread-Index: AQHVu9YkWVS6MuwrQ0+tW7iZWrxuBQ==
Date: Thu, 26 Dec 2019 10:20:49 +0000
Message-ID: <1577355442-2140-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0018.apcprd04.prod.outlook.com
 (2603:1096:202:2::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0c9d0517-f1ca-42a4-c212-08d789ed471e
x-ms-traffictypediagnostic: AM0PR04MB4001:|AM0PR04MB4001:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4001C33E6B00A851F05A45C1882B0@AM0PR04MB4001.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02638D901B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(376002)(346002)(366004)(189003)(199004)(81156014)(81166006)(36756003)(8676002)(4326008)(8936002)(956004)(5660300002)(2616005)(6506007)(44832011)(52116002)(478600001)(186003)(16526019)(64756008)(66556008)(66476007)(66446008)(66946007)(26005)(316002)(69590400006)(2906002)(86362001)(110136005)(54906003)(71200400001)(6486002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4001;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7HxbP+36MFR9mKXI54zxgIbQAiU++LjSyFVBn/gY2gphGYBwbGJ3a59qb4p7hWXsLCv2tVRPEuFqt2dhwJ6X6wEIAu3V18U7BSRFG3BOfMO9syAxF36k1cAH0q6vOqMaKjv2tGikShRuawpuIeaSqpbxNz0kEdUscx6A6OxWN4nRDi7LPql6oOzWUW6zfC+Zs/vZ0XHilqZWaDoEVnK7GU07CBi3QYGvDKUanriWtiedtdYoCLB6rxhlS4P1KfFnmMJlZ4lW65y9T5ISziyoN+B2dK1xihjpBjd3orjCBcmZpYL9nPeUKhd1dPU1qcbdTSwDoHacD+illMX8gDCXTmAdseg1BX+OwQ/puYsFAWNiISlga1sfTkkgNPqgEJfq4pL7g3kbMeulhFVcKnpZzJqIliUbLH1XZTcK4cblKYrqe6wFnfGuccq6dq1ToUTCZxz7ELxsmMRfICXxymwsd0G8YLtIezXhQZFUtQHuG8NPL4c4v/32rupvuNxKc8rQ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c9d0517-f1ca-42a4-c212-08d789ed471e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Dec 2019 10:20:49.5453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LOItwtozHuFZ7wBSnbUMsGyHlUasAkP0WI3C/OSSOvdbNkG60KLxGIMDOtapg854am2rxKoDxmpy3tWtW6/vOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_022055_582416_B93468D7 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Introduce ocotp_ctrl_reg to include the low 16bits mask of CTRL
register.

i.MX chips will have different layout of the low 16bits of CTRL
register, so use ocotp_ctrl_reg will make it clean to add new
chip support.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/nvmem/imx-ocotp.c | 79 ++++++++++++++++++++++++++++++++++-------------
 1 file changed, 57 insertions(+), 22 deletions(-)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index fc40555ca4cd..4ba9cc8f76df 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -44,6 +44,14 @@
 #define IMX_OCOTP_BM_CTRL_ERROR		0x00000200
 #define IMX_OCOTP_BM_CTRL_REL_SHADOWS	0x00000400
 
+#define IMX_OCOTP_BM_CTRL_DEFAULT				\
+	{							\
+		.bm_addr = IMX_OCOTP_BM_CTRL_ADDR,		\
+		.bm_busy = IMX_OCOTP_BM_CTRL_BUSY,		\
+		.bm_error = IMX_OCOTP_BM_CTRL_ERROR,		\
+		.bm_rel_shadows = IMX_OCOTP_BM_CTRL_REL_SHADOWS,\
+	}
+
 #define TIMING_STROBE_PROG_US		10	/* Min time to blow a fuse */
 #define TIMING_STROBE_READ_NS		37	/* Min time before read */
 #define TIMING_RELAX_NS			17
@@ -62,18 +70,31 @@ struct ocotp_priv {
 	struct nvmem_config *config;
 };
 
+struct ocotp_ctrl_reg {
+	u32 bm_addr;
+	u32 bm_busy;
+	u32 bm_error;
+	u32 bm_rel_shadows;
+};
+
 struct ocotp_params {
 	unsigned int nregs;
 	unsigned int bank_address_words;
 	void (*set_timing)(struct ocotp_priv *priv);
+	struct ocotp_ctrl_reg ctrl;
 };
 
-static int imx_ocotp_wait_for_busy(void __iomem *base, u32 flags)
+static int imx_ocotp_wait_for_busy(struct ocotp_priv *priv, u32 flags)
 {
 	int count;
 	u32 c, mask;
+	u32 bm_ctrl_busy, bm_ctrl_error;
+	void __iomem *base = priv->base;
 
-	mask = IMX_OCOTP_BM_CTRL_BUSY | IMX_OCOTP_BM_CTRL_ERROR | flags;
+	bm_ctrl_busy = priv->params->ctrl.bm_busy;
+	bm_ctrl_error = priv->params->ctrl.bm_error;
+
+	mask = bm_ctrl_busy | bm_ctrl_error | flags;
 
 	for (count = 10000; count >= 0; count--) {
 		c = readl(base + IMX_OCOTP_ADDR_CTRL);
@@ -97,7 +118,7 @@ static int imx_ocotp_wait_for_busy(void __iomem *base, u32 flags)
 		 * - A read is performed to from a fuse word which has been read
 		 *   locked.
 		 */
-		if (c & IMX_OCOTP_BM_CTRL_ERROR)
+		if (c & bm_ctrl_error)
 			return -EPERM;
 		return -ETIMEDOUT;
 	}
@@ -105,15 +126,18 @@ static int imx_ocotp_wait_for_busy(void __iomem *base, u32 flags)
 	return 0;
 }
 
-static void imx_ocotp_clr_err_if_set(void __iomem *base)
+static void imx_ocotp_clr_err_if_set(struct ocotp_priv *priv)
 {
-	u32 c;
+	u32 c, bm_ctrl_error;
+	void __iomem *base = priv->base;
+
+	bm_ctrl_error = priv->params->ctrl.bm_error;
 
 	c = readl(base + IMX_OCOTP_ADDR_CTRL);
-	if (!(c & IMX_OCOTP_BM_CTRL_ERROR))
+	if (!(c & bm_ctrl_error))
 		return;
 
-	writel(IMX_OCOTP_BM_CTRL_ERROR, base + IMX_OCOTP_ADDR_CTRL_CLR);
+	writel(bm_ctrl_error, base + IMX_OCOTP_ADDR_CTRL_CLR);
 }
 
 static int imx_ocotp_read(void *context, unsigned int offset,
@@ -140,7 +164,7 @@ static int imx_ocotp_read(void *context, unsigned int offset,
 		return ret;
 	}
 
-	ret = imx_ocotp_wait_for_busy(priv->base, 0);
+	ret = imx_ocotp_wait_for_busy(priv, 0);
 	if (ret < 0) {
 		dev_err(priv->dev, "timeout during read setup\n");
 		goto read_end;
@@ -157,7 +181,7 @@ static int imx_ocotp_read(void *context, unsigned int offset,
 		 * issued
 		 */
 		if (*(buf - 1) == IMX_OCOTP_READ_LOCKED_VAL)
-			imx_ocotp_clr_err_if_set(priv->base);
+			imx_ocotp_clr_err_if_set(priv);
 	}
 	ret = 0;
 
@@ -274,7 +298,7 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	 * write or reload must be completed before a write access can be
 	 * requested.
 	 */
-	ret = imx_ocotp_wait_for_busy(priv->base, 0);
+	ret = imx_ocotp_wait_for_busy(priv, 0);
 	if (ret < 0) {
 		dev_err(priv->dev, "timeout during timing setup\n");
 		goto write_end;
@@ -306,8 +330,8 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	}
 
 	ctrl = readl(priv->base + IMX_OCOTP_ADDR_CTRL);
-	ctrl &= ~IMX_OCOTP_BM_CTRL_ADDR;
-	ctrl |= waddr & IMX_OCOTP_BM_CTRL_ADDR;
+	ctrl &= ~priv->params->ctrl.bm_addr;
+	ctrl |= waddr & priv->params->ctrl.bm_addr;
 	ctrl |= IMX_OCOTP_WR_UNLOCK;
 
 	writel(ctrl, priv->base + IMX_OCOTP_ADDR_CTRL);
@@ -374,11 +398,11 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	 * be set. It must be cleared by software before any new write access
 	 * can be issued.
 	 */
-	ret = imx_ocotp_wait_for_busy(priv->base, 0);
+	ret = imx_ocotp_wait_for_busy(priv, 0);
 	if (ret < 0) {
 		if (ret == -EPERM) {
 			dev_err(priv->dev, "failed write to locked region");
-			imx_ocotp_clr_err_if_set(priv->base);
+			imx_ocotp_clr_err_if_set(priv);
 		} else {
 			dev_err(priv->dev, "timeout during data write\n");
 		}
@@ -394,10 +418,10 @@ static int imx_ocotp_write(void *context, unsigned int offset, void *val,
 	udelay(2);
 
 	/* reload all shadow registers */
-	writel(IMX_OCOTP_BM_CTRL_REL_SHADOWS,
+	writel(priv->params->ctrl.bm_rel_shadows,
 	       priv->base + IMX_OCOTP_ADDR_CTRL_SET);
-	ret = imx_ocotp_wait_for_busy(priv->base,
-				      IMX_OCOTP_BM_CTRL_REL_SHADOWS);
+	ret = imx_ocotp_wait_for_busy(priv,
+				      priv->params->ctrl.bm_rel_shadows);
 	if (ret < 0) {
 		dev_err(priv->dev, "timeout during shadow register reload\n");
 		goto write_end;
@@ -424,65 +448,76 @@ static const struct ocotp_params imx6q_params = {
 	.nregs = 128,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx6sl_params = {
 	.nregs = 64,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx6sll_params = {
 	.nregs = 128,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx6sx_params = {
 	.nregs = 128,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx6ul_params = {
 	.nregs = 128,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx6ull_params = {
 	.nregs = 64,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx7d_params = {
 	.nregs = 64,
 	.bank_address_words = 4,
 	.set_timing = imx_ocotp_set_imx7_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx7ulp_params = {
 	.nregs = 256,
 	.bank_address_words = 0,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx8mq_params = {
 	.nregs = 256,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx8mm_params = {
 	.nregs = 256,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct ocotp_params imx8mn_params = {
 	.nregs = 256,
 	.bank_address_words = 0,
 	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
 static const struct of_device_id imx_ocotp_dt_ids[] = {
@@ -521,17 +556,17 @@ static int imx_ocotp_probe(struct platform_device *pdev)
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
-	clk_prepare_enable(priv->clk);
-	imx_ocotp_clr_err_if_set(priv->base);
-	clk_disable_unprepare(priv->clk);
-
 	priv->params = of_device_get_match_data(&pdev->dev);
 	imx_ocotp_nvmem_config.size = 4 * priv->params->nregs;
 	imx_ocotp_nvmem_config.dev = dev;
 	imx_ocotp_nvmem_config.priv = priv;
 	priv->config = &imx_ocotp_nvmem_config;
-	nvmem = devm_nvmem_register(dev, &imx_ocotp_nvmem_config);
 
+	clk_prepare_enable(priv->clk);
+	imx_ocotp_clr_err_if_set(priv);
+	clk_disable_unprepare(priv->clk);
+
+	nvmem = devm_nvmem_register(dev, &imx_ocotp_nvmem_config);
 
 	return PTR_ERR_OR_ZERO(nvmem);
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
