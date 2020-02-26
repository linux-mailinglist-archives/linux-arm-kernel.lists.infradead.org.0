Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7792E16F69B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 05:48:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAzdnmm/VmWkCbciUVnDD5DWVPSTSihJBNfKp83Ju5k=; b=k9KYIPsTolZQze
	hDKuXEqhjktHdIVwQ3EkWooM10SFieU08sq83U5CsKT/wLOcMJGDfrHtRNb/pcn3oGoy79U6DoNkz
	Ir+tpVZhrEV9Y20aI9C+6NlBHOT1ta5B6dvOBaWKnTb3EwptmEc4dEL45qJBX/4TMKUHXP5IJrA1C
	cY7uZJvopaljviuFusrHvyfcHPKkyMHOqchQ3q6ZXty3+dHfSBxFSs4HOIKWW4b+A5IJj4AEetYNa
	SD/EFMwzWcZQciEUOEHVJ0KFp0JsLgQOIsWQ4biI/EOU/yVZwje/cGSdLOU8j1r0g/ywM0XOVD4ua
	cUjcl3IihLwftoipqb+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ocF-0003v0-2k; Wed, 26 Feb 2020 04:48:11 +0000
Received: from mail-eopbgr10076.outbound.protection.outlook.com ([40.107.1.76]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ob9-00038C-CA
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 04:47:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K6NiU9mqdBNGpZ+IdXARr+UAjn9qTTjCg0pl5o6u3+cZr1qUGxafSeZ16kvnS3mOibZw0bT1DULIeivTHecU14yCDJjFTEmOIT6igMtItWbrNbExR1+bKyDtEzNRPFyx2RY7KO1hbfh33zme7z94lax7iI6tWjeI2CwBa8rAOnvJIy8JjxSdCpRfJyus9EKR2+NCwiA2wXb7CLH0ihra5ZwM9GmUnYHx1wODuS7qWff4uUi1WffZeRZdeXbLmB8I8LM5RHnWFbqrRvEniqrgUj4+OdeAiV+pLoBFZgszE9/PhvTe1smLrddZxwW524sagMKgTSJqm9hCK6rr/RgODQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JB4oOK9X6V1DyOYfK55ZRT6JrkMN//GHXBi2ubqrv6o=;
 b=A5CCutH/WU6K9KaJwzKmEnxHPXcrUHbDt5CSFgBcbMr7YZ21U/hBCneIN6c84aDGvx1rjx6q1pH3T/iHPnQJYD6CN7d1OpPnuddSn7BxzPFsf6Y91AA8XetexPtJXH4IYSyYllJjss3BEkm3htX+hv3bQmAx4ZMpA6CO+CQ7BQALdcHy0DrNDXDaRqTnSI9ssOomb37DxGInTPzWydLyBsRBboTyqKcJP6DX3O2ouLLGUuIxPnGJd1VGJNzCuQGYLnjW7iZ0M6VrWrQRXnEQvo6iOY5OOLoJdylRBOygFNPxlInevDtlm8tTAgIJa5fEfDyxfex85r5FUHWGbcpZdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JB4oOK9X6V1DyOYfK55ZRT6JrkMN//GHXBi2ubqrv6o=;
 b=ZgPI+WVC/RgW0GF3/ROhKqeJ2nvr2pvtW52dGt0cGVIsttnS8Jn0g3KJePH9TiGzMjns1nNxpPwt1yHe42lTcRPJhf9P92bLihxNCheFNw3pJb7j5DiTncYA1eptSIZfwc4h4VzL+d/Yn/wZ9BgiIUB7ibxGdnOWloD4iVG/9x8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4291.eurprd04.prod.outlook.com (52.134.126.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Wed, 26 Feb 2020 04:47:00 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 04:47:00 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de, robh+dt@kernel.org
Subject: [PATCH V3 4/4] firmware: imx-scu: Support one TX and one RX
Date: Wed, 26 Feb 2020 12:40:43 +0800
Message-Id: <1582692043-683-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582692043-683-1-git-send-email-peng.fan@nxp.com>
References: <1582692043-683-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0135.apcprd06.prod.outlook.com
 (2603:1096:1:1f::13) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0135.apcprd06.prod.outlook.com (2603:1096:1:1f::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.14 via Frontend Transport; Wed, 26 Feb 2020 04:46:56 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ba083122-7a17-47d0-f7ae-08d7ba76ea9c
X-MS-TrafficTypeDiagnostic: AM0PR04MB4291:|AM0PR04MB4291:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB42911AEB90A067846EB66E7688EA0@AM0PR04MB4291.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(136003)(39860400002)(189003)(199004)(69590400006)(6486002)(6666004)(316002)(6512007)(9686003)(86362001)(8936002)(2906002)(36756003)(4326008)(8676002)(81156014)(5660300002)(81166006)(52116002)(478600001)(66946007)(956004)(2616005)(66476007)(66556008)(186003)(16526019)(6506007)(26005)(83323001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4291;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6Jvj2aIwE3OljBYUf0FGUT8h+6+0qPt4aOaQx8sjtQYytxddlDOIrPbEOEs2a8kQhzA52HutWQYox69D+ZfsT94WqIAlvXeTrKYPwwYSAkeHaB0AGFvmvuR2R9kKYke9BUXCgUD99DdI8XoMSJKY0aisSfsBonNQxntsfaeuNKCJxwo4QGuIHsOMsF/jnHG4BNmMBuodbIDz7CYuSb7rKNGVbzDR6D6GKCB6g0Ik8WxMK3USdkroda5+s7MOXCh0VRyw4DNlmVfZckG+N6g1HoZk36Tt0g/Qlrd4P0JGSv8HMqCEr0AFShZA4I3cUVQif6L6khZCGDKkZqRD74xpUuXYXgQfOco9QRO4XisA7xTDSOKWFAUz9/yPsY3cYpfImGLhpU99qVNFG7VYb68QrrGPNTdAAdLCMe4Adzu4IA/yJih8vrmizfH6/seyPdvM9pLmfrtOT3qdIUjAN6KGZyvVqFp6ManABhTV/5aZyztcabvkwf7nf2zNSwJhQhArouykj+c4sZnVtejKeICUVFS7gEc1zK/uFsC3NcKU1vOc4yt9n65m4rcULx3HBrSF
X-MS-Exchange-AntiSpam-MessageData: +MSMa8mwhQrRxGSO447vVI+mCBmdWDdlGjSO4jy0SnDG2aBo5X4OFQL1DqFvLW4x7EHGG327SIlVatCnCo7dsgwGWPmVNJQI5ZD6yRSnsKHxMgafuoEePKGZfQktYfx4fFV48qHcr0gVxDqiJwNLgA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba083122-7a17-47d0-f7ae-08d7ba76ea9c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 04:47:00.3216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pFIB/BKrLLQJ12NFxZ4S/dQk5bL98P1Mqw5j09Je3H8DTtCz3etXz5rPUZoESP36gjNzOnUqoi4otP74iELNAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4291
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_204703_453652_283B503C 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Current imx-scu requires four TX and four RX to communicate with
SCU. This is low efficient and causes lots of mailbox interrupts.

With imx-mailbox driver could support one TX to use all four transmit
registers and one RX to use all four receive registers, imx-scu
could use one TX and one RX.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 Check mbox fsl,imx8-mu-scu for fast_ipc

 drivers/firmware/imx/imx-scu.c | 54 +++++++++++++++++++++++++++++++++---------
 1 file changed, 43 insertions(+), 11 deletions(-)

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index f71eaa5bf52d..e94a5585b698 100644
--- a/drivers/firmware/imx/imx-scu.c
+++ b/drivers/firmware/imx/imx-scu.c
@@ -38,6 +38,7 @@ struct imx_sc_ipc {
 	struct device *dev;
 	struct mutex lock;
 	struct completion done;
+	bool fast_ipc;
 
 	/* temporarily store the SCU msg */
 	u32 *msg;
@@ -115,6 +116,7 @@ static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
 	struct imx_sc_ipc *sc_ipc = sc_chan->sc_ipc;
 	struct imx_sc_rpc_msg *hdr;
 	u32 *data = msg;
+	int i;
 
 	if (!sc_ipc->msg) {
 		dev_warn(sc_ipc->dev, "unexpected rx idx %d 0x%08x, ignore!\n",
@@ -122,6 +124,19 @@ static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
 		return;
 	}
 
+	if (sc_ipc->fast_ipc) {
+		hdr = msg;
+		sc_ipc->rx_size = hdr->size;
+		sc_ipc->msg[0] = *data++;
+
+		for (i = 1; i < sc_ipc->rx_size; i++)
+			sc_ipc->msg[i] = *data++;
+
+		complete(&sc_ipc->done);
+
+		return;
+	}
+
 	if (sc_chan->idx == 0) {
 		hdr = msg;
 		sc_ipc->rx_size = hdr->size;
@@ -147,6 +162,7 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
 	struct imx_sc_chan *sc_chan;
 	u32 *data = msg;
 	int ret;
+	int size;
 	int i;
 
 	/* Check size */
@@ -156,7 +172,8 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
 	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
 		hdr->func, hdr->size);
 
-	for (i = 0; i < hdr->size; i++) {
+	size = sc_ipc->fast_ipc ? 1 : hdr->size;
+	for (i = 0; i < size; i++) {
 		sc_chan = &sc_ipc->chans[i % 4];
 
 		/*
@@ -168,8 +185,10 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
 		 * Wait for tx_done before every send to ensure that no
 		 * queueing happens at the mailbox channel level.
 		 */
-		wait_for_completion(&sc_chan->tx_done);
-		reinit_completion(&sc_chan->tx_done);
+		if (!sc_ipc->fast_ipc) {
+			wait_for_completion(&sc_chan->tx_done);
+			reinit_completion(&sc_chan->tx_done);
+		}
 
 		ret = mbox_send_message(sc_chan->ch, &data[i]);
 		if (ret < 0)
@@ -246,6 +265,8 @@ static int imx_scu_probe(struct platform_device *pdev)
 	struct imx_sc_chan *sc_chan;
 	struct mbox_client *cl;
 	char *chan_name;
+	struct of_phandle_args args;
+	int num_channel;
 	int ret;
 	int i;
 
@@ -253,11 +274,20 @@ static int imx_scu_probe(struct platform_device *pdev)
 	if (!sc_ipc)
 		return -ENOMEM;
 
-	for (i = 0; i < SCU_MU_CHAN_NUM; i++) {
-		if (i < 4)
+	ret = of_parse_phandle_with_args(pdev->dev.of_node, "mboxes",
+					 "#mbox-cells", 0, &args);
+	if (ret)
+		return ret;
+
+	sc_ipc->fast_ipc = of_device_is_compatible(args.np, "fsl,imx8-mu-scu");
+
+	num_channel = sc_ipc->fast_ipc ? 2 : SCU_MU_CHAN_NUM;
+	for (i = 0; i < num_channel; i++) {
+		if (i < num_channel / 2)
 			chan_name = kasprintf(GFP_KERNEL, "tx%d", i);
 		else
-			chan_name = kasprintf(GFP_KERNEL, "rx%d", i - 4);
+			chan_name = kasprintf(GFP_KERNEL, "rx%d",
+					      i - num_channel / 2);
 
 		if (!chan_name)
 			return -ENOMEM;
@@ -269,13 +299,15 @@ static int imx_scu_probe(struct platform_device *pdev)
 		cl->knows_txdone = true;
 		cl->rx_callback = imx_scu_rx_callback;
 
-		/* Initial tx_done completion as "done" */
-		cl->tx_done = imx_scu_tx_done;
-		init_completion(&sc_chan->tx_done);
-		complete(&sc_chan->tx_done);
+		if (!sc_ipc->fast_ipc) {
+			/* Initial tx_done completion as "done" */
+			cl->tx_done = imx_scu_tx_done;
+			init_completion(&sc_chan->tx_done);
+			complete(&sc_chan->tx_done);
+		}
 
 		sc_chan->sc_ipc = sc_ipc;
-		sc_chan->idx = i % 4;
+		sc_chan->idx = i % (num_channel / 2);
 		sc_chan->ch = mbox_request_channel_byname(cl, chan_name);
 		if (IS_ERR(sc_chan->ch)) {
 			ret = PTR_ERR(sc_chan->ch);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
