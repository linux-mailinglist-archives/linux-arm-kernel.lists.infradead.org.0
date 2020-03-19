Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D97518ADC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 08:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xns3RkoXMukbQjhT4cEDtsLdLzcNgIdrZY1AmaSOzxE=; b=IFIcDzkjTrl4sy
	KokMgcqSlDL6ih76fKkUzsq9nM00kO5v5GDdPwpyljvIf2SaDZWv+58Gitmi5FpwZgLyXrvh1spfL
	eqjzWEZlZTBTIS00EkVWR8hDek0gEfLsXE/1e98DZeFk310R1D9eSUppcNjJY7bnae1E8hExa4P/t
	CJFp5ubP62h+z78Zs6DhHDjU3G+I49QYb5F/+RyURsQ1lHvuggnhIwlvMRI6JiPlAjegZPuXpKMGq
	tqOtHsOLwOQCBGuZzfJQgemoPA1ptUikVBjX1SGiefPBZgS5+k0+De5wsjDFZzZoBYINuv0jSl1cj
	TYzfpHi8uOYTmlZUZ5Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEq4Y-0003oT-I6; Thu, 19 Mar 2020 07:58:34 +0000
Received: from mail-eopbgr130088.outbound.protection.outlook.com
 ([40.107.13.88] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEq3g-0003CE-0M
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 07:57:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RjwSrYuNqMqgwcguziTKK639e6ajSS8SVbWd6I7YFJwEsFtfjPKi2B5LRdjN7GA+7em9LhDkNeZTMFMlzDAJHE/z0FXxsPuL75FS0phIzHs90WwbidiJ6fZWBNlwO4aOQTkebT3hlsvUEoyzS/vesLZf5aotwqZxEhGcHyaC2NYeE9AniLv/pNdJ8l7vz5Cga3pyh0zZ8yOHOffYqGM9W2tyCcV4GgQf5iazrPtFqHd7mWXbFc2YsnhYDi8rz6PiMQhEWGqruiLFVmQyWU65xtgcOA1M9yXzPphURItWwCLyjMiBwiMViP8uRTGw9HLJMiNDhrhDnQUstuh/7y6PVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c7buiXnKm/D+xO/GO2VsXzVG3Yx3wmEXN9nDB+aq8Y8=;
 b=fqydm1YRrSHk4FsQjIEVv/gvabv+iuzKYp68B1pUZ+B5jawjV3c3J7KMkolwLkj7KO6kptBlyC+Fqc+p9ip5jTEtHBWpwL919b3N3tt6b7oJySQOLn8plaK4yXzjwqnzsWE0dOeeUVz6alSxzLD6rQN7eTnGuUlVCb4RLS1UY0aTxk95HXski2Wlz2oFDWyqvDWg6I1zaff/Yl4mKymRL77fgGm/XZK8asNllaCZLUNcZfixIxWKQCvpWjaNvQlqNkrNIVBjnIolFJlC+aD1JdRzgLuBjZK1XVUe3B4nDLw78ilEu/bs2Ogh5OcskYMpPJqQCYWV9VEbZQwSiGZUPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c7buiXnKm/D+xO/GO2VsXzVG3Yx3wmEXN9nDB+aq8Y8=;
 b=R4pE8X5kr9qv1BAAESaMMZCF0ApbY1GSPw8/kkU3nKxSlvh/dD3gV4P8AunpgewLCzZ/aQJdcUTiSDmORaxOBFc5jSVpWCD0DzmgwQbroHZ9tdOWLea9gQ8stAvrtF6HXvDZ0pc3y355CAA4HsCl8+/49rcz5GxrHkeDOJUAph0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5780.eurprd04.prod.outlook.com (20.178.118.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Thu, 19 Mar 2020 07:57:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.021; Thu, 19 Mar 2020
 07:57:36 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de, leonard.crestez@nxp.com
Subject: [PATCH V7 4/4] firmware: imx-scu: Support one TX and one RX
Date: Thu, 19 Mar 2020 15:49:53 +0800
Message-Id: <1584604193-2945-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
References: <1584604193-2945-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0118.apcprd02.prod.outlook.com
 (2603:1096:4:92::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0118.apcprd02.prod.outlook.com (2603:1096:4:92::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.18 via Frontend Transport; Thu, 19 Mar 2020 07:57:32 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bd907a9a-b7c9-4d08-c9e0-08d7cbdb300b
X-MS-TrafficTypeDiagnostic: AM0PR04MB5780:|AM0PR04MB5780:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB57800951561E41CBAEC008F888F40@AM0PR04MB5780.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(346002)(39860400002)(376002)(396003)(199004)(6666004)(66946007)(36756003)(66476007)(6486002)(5660300002)(478600001)(6512007)(9686003)(69590400007)(16526019)(4326008)(81166006)(81156014)(52116002)(6506007)(8676002)(66556008)(316002)(2906002)(8936002)(2616005)(186003)(86362001)(956004)(26005)(83323001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5780;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SKpOXp8fUFYya7fUY+34cP8TqvkZ2rImNGsCZJeb+ZhcOBWGTeFbRdy4+ABo4dsciwrYkSQn1DSIgpkP4TaFO8y2KUU3r11nBZ2clV3ETKnu1Y2E3CigHgKJRa2Rz4TuSJkzX0Or9LIjZ7h2+hk9w2pfSBeXo6fL7nFojvLxFnhbAawSrBV6P6EoXyltDewdl/uE0Y3ms//jfNLPz9hXSsrzVRrgNuJhpe+ypIOQhhTcEQ5daatijAWPv3kYLFgs0jkSrdG3lXTIk6WCQMa3eTk0m5krLlr773qXiG/n7MyK/qMf2Gjtx113KrTT31VGfeCK02nkkjkWUsRpAhXtqHqcEUUSVmw8epfWEe3S/SFqnQB53kxtBpJrmkeKXGyzqZeeYe+OS9TCMSQzVoFalm2pKhu2YTPiUEH7q8TXQg7s7ZqRg4MTntyW3TsOIqc7bWUmlXDXCGRIQYMelBvYiHFVzYKyp+DgvXdMbLQVkSVF13Tg3aeliOLyYuLJzBweGkH9rFXyvh0aQTmeZRkqXw==
X-MS-Exchange-AntiSpam-MessageData: 6Q/5LCl6M7t4KAoloNX/iC6P8lq4mN0qJxaGXArWgiNWb1RMo5IOMqs+e/aGuoica6HG9fQWJ7EHYld12EZPaeOlTYyItNnd4Vh0VrvRrro98/YdK0XQXHZ5Xn5RmKFnSHRNfTclV1RmCUldzCXNpw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd907a9a-b7c9-4d08-c9e0-08d7cbdb300b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 07:57:36.3927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MlF+kiLF9lkgYxDEZph8N3/w7jZybQjsIjXh9uS7dI2b7o32+LG/V1Xmugp8z4mTMs3HTYcr926UKClMBtUHuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5780
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_005740_076387_F9DAADE3 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
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

V7:
 None
V6:
 None
V5:
 None
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
