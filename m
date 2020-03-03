Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3C5177065
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:50:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmduU/bgoP/5i47XAiU1eh1O8c993IqmnT9445kadsE=; b=HX0fY6GijEbBzP
	Tr6r+PttxPW20LiSjm3uo4INWFTCpXJDk/AkOPw1Q7rZJu2hRmpJQVjsmSoFD4HxmzF+VOzW/d4F5
	Ptta5ZB4KddvPeHsPmlzTE2OJMLGUYujldePkjkynC7YlGRGoOeTpBYEJ3VuFJiEdVghi9OQxBpA7
	VyeXtZF8BeurPCraBiCBiHbJTwE6IG5FlBIC8OpgcQHileeR6M6mE/hU2BChValaHTu/Mlbza0kAX
	YDgSqVPGUn1QsYPsZjdL52xWVAeE/az55ZzrKTk3L6rJpLKBoQi3YFYyt2Erwua6ZE0DEtHBfWKi6
	kTzgAyiU3p5CZ54aIs9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92JM-00036S-AS; Tue, 03 Mar 2020 07:49:52 +0000
Received: from mail-eopbgr80080.outbound.protection.outlook.com ([40.107.8.80]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92Iq-0002qu-9k
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:49:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SlPcfEOtr1u585vRLxFTaJt+60BD4Nssto6ThPjnDssVNIkctoVMiABPNETpdA8CwP9zuRHn5RDz3ii8aH3Ltrv4yVkVnor5CunI2oVf8vWaOckd/pzQXNUb+Vqax4sJoLEhbjTVHCqU2AzDbvZ5qN++vL+uiCCljLWKLKG+V48NCoUBO6P/DZSaMBwkLRGQuy4y2bKUfvQuJuIKisc8hkqfEDBRhWTmtG6D2FnHC6yGphtajg1jxlGhMFuRmTXw/fl7FxjkIn/XnlxvB8Bdj8ju0yN2LKB9In81gTDXZzkIuTfYwLUyToJ8ehmgOEMDYVvqs1pKdHWWsZPVs6wnRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2IUUtzyZiT9A+3b/0gSn47gsIUIm5W29iNixTA2SaXI=;
 b=ekpjhTQijlOYEcDQbvzXTgdmy2C5lVFLNL7K32CMWphl1q+78p4kd/s18qimLlYhUWhr5iccPWEWEuMHGV9077e6i7kg9y+W2OnitVSYHrGlmgdmp7RzzkS5EpmG0yyljen9akgIrwJAsCEO0Y6FQwZM7wxq1SLDV4OOD/QGU9Ou47JpPkwmqdZRULy+FeaUSf71FVmUjH40ahvmCv3qtbe/ojL1EFsWblSW4zH+KkQa0vOgD+o1x55Fm30nkdsEr/ZzH3lF1AfB2IVFuw9vAsgb8icW5+x92swffg3LCgM4KZjJEid9rV6Ff1u+bPfJwPzkEEB1ZSFOaGjDXwqeew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2IUUtzyZiT9A+3b/0gSn47gsIUIm5W29iNixTA2SaXI=;
 b=DRJO6DuuthrLdPg7Id37bLcTUYc5E4GB0VhVEdNPLK5+WKcMJXBRAYlk56P1p3mqRySjuJWr/ZBkzyDKeIZbvF2xY0EX0i3W/VS2yOEQ+sSiZhIhAOzYrYqMnOsSlfLpgeGYjVLsniGBmnzj5AXIYrQNKIgyeV2BG1mt/MT1Ggk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4114.eurprd04.prod.outlook.com (52.134.94.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Tue, 3 Mar 2020 07:49:14 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 07:49:14 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V5 2/4] mailbox: imx: restructure code to make easy for new MU
Date: Tue,  3 Mar 2020 15:42:37 +0800
Message-Id: <1583221359-9285-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
References: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0250.apcprd06.prod.outlook.com
 (2603:1096:4:ac::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0250.apcprd06.prod.outlook.com (2603:1096:4:ac::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Tue, 3 Mar 2020 07:49:10 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 241683e1-32f5-4b59-f44d-08d7bf475e0a
X-MS-TrafficTypeDiagnostic: AM0PR04MB4114:|AM0PR04MB4114:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4114E44E58CA3ED63C2788E188E40@AM0PR04MB4114.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(199004)(189003)(8936002)(69590400007)(52116002)(9686003)(6486002)(5660300002)(6512007)(8676002)(66946007)(81166006)(66556008)(66476007)(81156014)(26005)(36756003)(6666004)(956004)(478600001)(86362001)(4326008)(2906002)(2616005)(316002)(16526019)(6506007)(186003)(15650500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4114;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M5zwrqrsPdmyvkyNNW4EeadpAOD26HgCE2ST53LZ405QJVUDpl8t5lGmFdclwNB0qutWrCuZxbCpZKMjyUSB8jo/Ik2mj1hIpWYPjQlSq+DYd1hB2SB9THuzMMIkjOHB9KnWMjHOxRFYUV4kCOSs7eBIaHHCMMYvkW9K6UfdmxQTPIk7WqCEzaX3b2V3c9afsrwRcBq678d3P773EcXW3vut8xs7ilFIe+pGwAQy4QWpDXeKTRb2egYOxDY4/Dr/DRrl6NlKzIn+X8iy4ccYy/zMUiAXDn5Gyowv8CueOEhrrk1nHEPvxFcB5Hjf3iCWO86Hqpzl8ZLkBYyeTgaJEkLEshLGp2I8F/AipUdUWZZITHLF7+lTlUOjr/+z1m37OkV8uDmX5BzfdsL2wpG0/A/kGzRmbnScA9ZBsBK2o5RY/aQThEfDSlwTIm8/AgNHcZIR9Bh7WEUT3C3t5BAOM6A5SgtZgFHsnXt8YtkXyyWvx+B9ePL8AfpdY8jpBSv4
X-MS-Exchange-AntiSpam-MessageData: qKL5Osl6Us6F692hQE/lSdEAKBBfImRF2Lwpk9P1oDnTzzjX/l71XD3Se2lZvHCdf8uHRbuyVEGAGnyr0huClzVsilfhLHPeg6l2N/x2c8S/rQHn2yfT1yvsYblsOUV7d52jJwPJAQZAxVQWtcAWeA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 241683e1-32f5-4b59-f44d-08d7bf475e0a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 07:49:14.0672 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p+BX58rTPBbDeeXVIJf4wRf1oSHKQ+zL0qG7L2gED3STcUpEsu5WI7P1aJOdTH84LDYx/XBwa9/BbvHib/1AMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_234920_415020_0E1C6865 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add imx_mu_generic_tx for data send and imx_mu_generic_rx for interrupt
data receive.

Pack original mu chans related code into imx_mu_init_generic

Add tx/rx/init hooks into imx_mu_dcfg

With these, it will be a bit easy to introduce i.MX8/8X SCU type
MU dedicated to communicate with SCU.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
V5:
 imx_mu_dcfg moved to below imx_mu_priv
 Add init hooks

V4:
 Pack MU chans init to imx_mu_init_generic
V3:
 New patch, restructure code.

 drivers/mailbox/imx-mailbox.c | 137 +++++++++++++++++++++++++-----------------
 1 file changed, 83 insertions(+), 54 deletions(-)

diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
index 2cdcdc5f1119..df6c4ecd913c 100644
--- a/drivers/mailbox/imx-mailbox.c
+++ b/drivers/mailbox/imx-mailbox.c
@@ -36,13 +36,6 @@ enum imx_mu_chan_type {
 	IMX_MU_TYPE_RXDB,	/* Rx doorbell */
 };
 
-struct imx_mu_dcfg {
-	u32	xTR[4];		/* Transmit Registers */
-	u32	xRR[4];		/* Receive Registers */
-	u32	xSR;		/* Status Register */
-	u32	xCR;		/* Control Register */
-};
-
 struct imx_mu_con_priv {
 	unsigned int		idx;
 	char			irq_desc[IMX_MU_CHAN_NAME_SIZE];
@@ -67,18 +60,14 @@ struct imx_mu_priv {
 	bool			side_b;
 };
 
-static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
-	.xTR	= {0x0, 0x4, 0x8, 0xc},
-	.xRR	= {0x10, 0x14, 0x18, 0x1c},
-	.xSR	= 0x20,
-	.xCR	= 0x24,
-};
-
-static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
-	.xTR	= {0x20, 0x24, 0x28, 0x2c},
-	.xRR	= {0x40, 0x44, 0x48, 0x4c},
-	.xSR	= 0x60,
-	.xCR	= 0x64,
+struct imx_mu_dcfg {
+	int (*tx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp, void *data);
+	int (*rx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp);
+	void (*init)(struct imx_mu_priv *priv);
+	u32	xTR[4];		/* Transmit Registers */
+	u32	xRR[4];		/* Receive Registers */
+	u32	xSR;		/* Status Register */
+	u32	xCR;		/* Control Register */
 };
 
 static struct imx_mu_priv *to_imx_mu_priv(struct mbox_controller *mbox)
@@ -111,6 +100,40 @@ static u32 imx_mu_xcr_rmw(struct imx_mu_priv *priv, u32 set, u32 clr)
 	return val;
 }
 
+static int imx_mu_generic_tx(struct imx_mu_priv *priv,
+			     struct imx_mu_con_priv *cp,
+			     void *data)
+{
+	u32 *arg = data;
+
+	switch (cp->type) {
+	case IMX_MU_TYPE_TX:
+		imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
+		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
+		break;
+	case IMX_MU_TYPE_TXDB:
+		imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIRn(cp->idx), 0);
+		tasklet_schedule(&cp->txdb_tasklet);
+		break;
+	default:
+		dev_warn_ratelimited(priv->dev, "Send data on wrong channel type: %d\n", cp->type);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int imx_mu_generic_rx(struct imx_mu_priv *priv,
+			     struct imx_mu_con_priv *cp)
+{
+	u32 dat;
+
+	dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
+	mbox_chan_received_data(cp->chan, (void *)&dat);
+
+	return 0;
+}
+
 static void imx_mu_txdb_tasklet(unsigned long data)
 {
 	struct imx_mu_con_priv *cp = (struct imx_mu_con_priv *)data;
@@ -123,7 +146,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
 	struct mbox_chan *chan = p;
 	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 	struct imx_mu_con_priv *cp = chan->con_priv;
-	u32 val, ctrl, dat;
+	u32 val, ctrl;
 
 	ctrl = imx_mu_read(priv, priv->dcfg->xCR);
 	val = imx_mu_read(priv, priv->dcfg->xSR);
@@ -152,8 +175,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
 		imx_mu_xcr_rmw(priv, 0, IMX_MU_xCR_TIEn(cp->idx));
 		mbox_chan_txdone(chan, 0);
 	} else if (val == IMX_MU_xSR_RFn(cp->idx)) {
-		dat = imx_mu_read(priv, priv->dcfg->xRR[cp->idx]);
-		mbox_chan_received_data(chan, (void *)&dat);
+		priv->dcfg->rx(priv, cp);
 	} else if (val == IMX_MU_xSR_GIPn(cp->idx)) {
 		imx_mu_write(priv, IMX_MU_xSR_GIPn(cp->idx), priv->dcfg->xSR);
 		mbox_chan_received_data(chan, NULL);
@@ -169,23 +191,8 @@ static int imx_mu_send_data(struct mbox_chan *chan, void *data)
 {
 	struct imx_mu_priv *priv = to_imx_mu_priv(chan->mbox);
 	struct imx_mu_con_priv *cp = chan->con_priv;
-	u32 *arg = data;
-
-	switch (cp->type) {
-	case IMX_MU_TYPE_TX:
-		imx_mu_write(priv, *arg, priv->dcfg->xTR[cp->idx]);
-		imx_mu_xcr_rmw(priv, IMX_MU_xCR_TIEn(cp->idx), 0);
-		break;
-	case IMX_MU_TYPE_TXDB:
-		imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIRn(cp->idx), 0);
-		tasklet_schedule(&cp->txdb_tasklet);
-		break;
-	default:
-		dev_warn_ratelimited(priv->dev, "Send data on wrong channel type: %d\n", cp->type);
-		return -EINVAL;
-	}
 
-	return 0;
+	return priv->dcfg->tx(priv, cp, data);
 }
 
 static int imx_mu_startup(struct mbox_chan *chan)
@@ -280,6 +287,22 @@ static struct mbox_chan * imx_mu_xlate(struct mbox_controller *mbox,
 
 static void imx_mu_init_generic(struct imx_mu_priv *priv)
 {
+	unsigned int i;
+
+	for (i = 0; i < IMX_MU_CHANS; i++) {
+		struct imx_mu_con_priv *cp = &priv->con_priv[i];
+
+		cp->idx = i % 4;
+		cp->type = i >> 2;
+		cp->chan = &priv->mbox_chans[i];
+		priv->mbox_chans[i].con_priv = cp;
+		snprintf(cp->irq_desc, sizeof(cp->irq_desc),
+			 "imx_mu_chan[%i-%i]", cp->type, cp->idx);
+	}
+
+	priv->mbox.num_chans = IMX_MU_CHANS;
+	priv->mbox.of_xlate = imx_mu_xlate;
+
 	if (priv->side_b)
 		return;
 
@@ -293,7 +316,6 @@ static int imx_mu_probe(struct platform_device *pdev)
 	struct device_node *np = dev->of_node;
 	struct imx_mu_priv *priv;
 	const struct imx_mu_dcfg *dcfg;
-	unsigned int i;
 	int ret;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
@@ -329,32 +351,19 @@ static int imx_mu_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	for (i = 0; i < IMX_MU_CHANS; i++) {
-		struct imx_mu_con_priv *cp = &priv->con_priv[i];
-
-		cp->idx = i % 4;
-		cp->type = i >> 2;
-		cp->chan = &priv->mbox_chans[i];
-		priv->mbox_chans[i].con_priv = cp;
-		snprintf(cp->irq_desc, sizeof(cp->irq_desc),
-			 "imx_mu_chan[%i-%i]", cp->type, cp->idx);
-	}
-
 	priv->side_b = of_property_read_bool(np, "fsl,mu-side-b");
 
+	priv->dcfg->init(priv);
+
 	spin_lock_init(&priv->xcr_lock);
 
 	priv->mbox.dev = dev;
 	priv->mbox.ops = &imx_mu_ops;
 	priv->mbox.chans = priv->mbox_chans;
-	priv->mbox.num_chans = IMX_MU_CHANS;
-	priv->mbox.of_xlate = imx_mu_xlate;
 	priv->mbox.txdone_irq = true;
 
 	platform_set_drvdata(pdev, priv);
 
-	imx_mu_init_generic(priv);
-
 	return devm_mbox_controller_register(dev, &priv->mbox);
 }
 
@@ -367,6 +376,26 @@ static int imx_mu_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct imx_mu_dcfg imx_mu_cfg_imx6sx = {
+	.tx	= imx_mu_generic_tx,
+	.rx	= imx_mu_generic_rx,
+	.init	= imx_mu_init_generic,
+	.xTR	= {0x0, 0x4, 0x8, 0xc},
+	.xRR	= {0x10, 0x14, 0x18, 0x1c},
+	.xSR	= 0x20,
+	.xCR	= 0x24,
+};
+
+static const struct imx_mu_dcfg imx_mu_cfg_imx7ulp = {
+	.tx	= imx_mu_generic_tx,
+	.rx	= imx_mu_generic_rx,
+	.init	= imx_mu_init_generic,
+	.xTR	= {0x20, 0x24, 0x28, 0x2c},
+	.xRR	= {0x40, 0x44, 0x48, 0x4c},
+	.xSR	= 0x60,
+	.xCR	= 0x64,
+};
+
 static const struct of_device_id imx_mu_dt_ids[] = {
 	{ .compatible = "fsl,imx7ulp-mu", .data = &imx_mu_cfg_imx7ulp },
 	{ .compatible = "fsl,imx6sx-mu", .data = &imx_mu_cfg_imx6sx },
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
