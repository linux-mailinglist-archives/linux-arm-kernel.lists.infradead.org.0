Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0762C176A51
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 03:01:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0IJxtG1jaXzzdV1zABZpZevIR5myd7YSE6JSag1xlc=; b=mTVbg/xf41pdDO
	7AU8pcK/A+XecVm3UeKLOr0P5t5VwzV8UaMbzZzYVdLczSgqKc4xMbjdS5ZSNiU0ScnGppgcgFi7N
	ix/YgB4LAzSsbYGT892OVJgrSeXNQ+W20gUPgIU/9gGJrCFJiVN2HmQLFziHx+MryWQnGNQm2dqoA
	usaymMetMG3mpgMhcSjMwFfA2LH14DCKlyOFZCUfOp/vnlQAJ+zfrxXezGGdykLJys6dcUHtki1Wd
	Q82lyi68mvcnSdfCHuTWrC4LKCdtu0uQ5+NMJc0Rz+83JRp9/kykmqymHd8vtTFyrCqXpBOk4yclJ
	er+zT+dJ8738ocmThUHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8wre-0004ms-VI; Tue, 03 Mar 2020 02:00:55 +0000
Received: from mail-eopbgr70041.outbound.protection.outlook.com ([40.107.7.41]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8wqR-0002e5-JC
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 01:59:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fHviazYhLzT7cg3W16e8KZqUmOPdY7yaopMz4gnN9lESt7onpUt5r3J+ZRCHJsi1cYG81+0yEt8tVPcCUAD16jqeS4I6wTuwjSwkjAj1c0TzgGchgOGHOVTa8ldCYqwwRtnPwvGzGLY1RhotQKThc7T0UPS7cSTtuu8f4Pg3ekf8xQu2ns2a0wtgLeRN7UtKJzN74c8ArydOrVWHZL0MB9/eZq0sGF9ZZ1f/kmj4hkVNTloTwKnk8DLMx6I8lo597fy2cYmD4cg4zgF15h1Km6UlqbXvbrpZJoXsgGVbuRWtvu/Cswj1Q2TwWAAwbzkSvKumtlp6rV4+rfSwKUpjNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DTvoRVO9xBz7ueGSJ3OZsxJs1anDLM+ApXbtx5gXwqY=;
 b=DqRRBOeCGYlGfMB34kNCGB7NGMT1b+gls5nKYP7bDWp3xkZaeW0J9iTS/ggAqgjuXpg8kdgqI9FKqc1XaH9nBuxJjrc2kX0VH/FnbVU+74GclhV7V4lHGiut0s2/gIRO4ZTlGI6ExO7TND7mhnKMYqXdmDjAQezX1dzZ8sjwMfiw3PT1aXRHmjI0mugAWP1GPNFxbUQWfT55nLavJG+RCvRmhMTId8WGlDMACDoavWpyhZQUuSOlHxLqy9Uh6bQqCxfA3cSRpuD6DdSMQhf88wHAiXhdbheS0gqCsXCPHTTMLXSJBKYI4gjqqk7bJ7hp2xcfwfE6cuKtXjopU7SWRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DTvoRVO9xBz7ueGSJ3OZsxJs1anDLM+ApXbtx5gXwqY=;
 b=oeD5FChEi7biuw7sCGR3P9H+9DkBgLeErrK4GemKVyTVYONhymxAGsJmyCmHV4tlYfBqRBI1Z3T13I0ZstwTQTM7wL3/u1BtbKzZaTW2EPr/aLmZykQnQ9Df+etVZUnzJi6umVoQsyoNU+X7V1MLjHHtcV/2zbtEP/m42aB2exk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7057.eurprd04.prod.outlook.com (10.186.131.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Tue, 3 Mar 2020 01:59:34 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 01:59:34 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V4 4/4] firmware: imx-scu: Support one TX and one RX
Date: Tue,  3 Mar 2020 09:53:00 +0800
Message-Id: <1583200380-15623-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
References: <1583200380-15623-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR04CA0147.apcprd04.prod.outlook.com
 (2603:1096:3:16::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0147.apcprd04.prod.outlook.com (2603:1096:3:16::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.18 via Frontend Transport; Tue, 3 Mar 2020 01:59:30 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c8be9a0a-3368-4845-ba5c-08d7bf168540
X-MS-TrafficTypeDiagnostic: AM0PR04MB7057:|AM0PR04MB7057:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB7057129C329AF239DE2E020F88E40@AM0PR04MB7057.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(136003)(346002)(396003)(376002)(189003)(199004)(9686003)(6512007)(2906002)(6666004)(6506007)(26005)(956004)(81156014)(81166006)(8936002)(52116002)(186003)(6486002)(2616005)(4326008)(16526019)(69590400007)(66946007)(66476007)(8676002)(478600001)(66556008)(86362001)(36756003)(316002)(5660300002)(83323001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7057;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t2Lyl2oA5ZPiOz+BcWCsCETHhasy3Oinwsm0fIvMBfoV1LgnT8PvYlw30KnVyaR0myO57C51roOKT87XNjT1TvX4OXNisdEhCF+vTKLAuFFtG3nyKbBVK+M9UshxZgHzk0dpa6m6YRBRdmqzEZIXE1us88ww2wIbBtJ+Wxh5V5c9Aakf0JQStvuHhcX7lnQK97gtqpuaYj6pdZKcR0xjOHrXaSgDakhDaC0agu6afLhp0u4AJEdMAdyMpqh9iuiEubhkt2iLEVJ6TlIfN0xaPlXqtIV+T5ovRNUGJ2W76av/ZZSeSzS2+t+ZB5R/FvbzZtktPOupY3GEUC3YYd7z5QleSMOgThFswBheGFDEVMua0pd9y8ec61lCcI2pmWMhVzj2ulYZje84I3+PeYPb96g7g5lmx1xNiEeqUpPJc22JiY37zy0s5de3kZlMk5KM4L0U60DM6+F+GktraqU9VDW/X0sVBsLnt8WQfrES2znqmgoOqDNfFGVot4vIXI22cTR7ldWoCpJPk20KbTSZuw==
X-MS-Exchange-AntiSpam-MessageData: Z6LlZZhhIFawx4ibiAfcgqydpZiIjNHNDkM8NZZm5IJznQUncZV84g/636xiIr8f582bAka3SRMYxTBrgETooYosNZEDFEii4WfvOgzlI2eUYNjeHjZsaXfM8YMoM0lbTmyS813ARwa5qwzRq2RjhA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8be9a0a-3368-4845-ba5c-08d7bf168540
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 01:59:34.4120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5R605ZNPvkN+PkO3ba6ArC6ersVwUHoiRKkLC0BIAI5IXao7lgOJ47NG6rcjSQx2MYnZquvrvvZ8mnFUiZsEJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_175939_736053_F712F632 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.41 listed in list.dnswl.org]
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

Current imx-scu requires four TX and four RX to communicate with
SCU. This is low efficient and causes lots of mailbox interrupts.

With imx-mailbox driver could support one TX to use all four transmit
registers and one RX to use all four receive registers, imx-scu
could use one TX and one RX.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V4:
 None
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
