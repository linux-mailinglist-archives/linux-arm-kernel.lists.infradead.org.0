Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8933816A60C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 13:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8l9b1PfE0caedP1yMkPHGbFPjje6zXxs7znBhK8anLQ=; b=ENzzcIB1uDINqz
	uW2sNzGZvUzkufo546tZauHNUI/XIqQ/k8JmLdj0u476MDXouKrhuO8RM308jmTxGfOnZuF0LdOUy
	s72cDfYITE0Yvqpa5qNfQDMExmNN8SlxUEjkoGNwkzCklXb6fL67MPDvFBTRBoj2z+c1/dU6XiPoB
	hPJOugjltA8z0icsG+XVlFR8AoiZ7jxhQ/9KZCJWNbJNY2GW4I3bD7EzYXj9VrU7SHqYria7soV/S
	ZWsg3+2dEXF0XpEp4WwTNOW7l299rtxIfzsjRF319TiJKYBleHe8GQUpSa2WJRJid81D32kGuJvcc
	7WrmkamzMfL4AyqwfOHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6CkJ-0003DK-4N; Mon, 24 Feb 2020 12:21:59 +0000
Received: from mail-eopbgr130079.outbound.protection.outlook.com
 ([40.107.13.79] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6CjW-0002bB-Vn
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 12:21:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H1sQAtqR6ia8blevxBa2bNDHuB1X0AuRloW1aOjxoy665Drfic6ZbGZFDQRvaIkHDCXHNh/hK9QFUP5E7K6xd5i2d1cMCtBGENw/NCV3INGde5fG0lNj4B2ONT9wd/BBfmCt76RQ59mfJY9Gf3GqC5aAJougx7pY3TNDjDaSeyHKS+fHvv82Z2wO0xiqrJ/1QUAWJVx904FMmbgMbdyXVdK6Tm3aYIoiYbw/XtWXPaxbWtYTV94kxc7Qo77MZWW6JahJxWBtjK2ffHH9siLpYLFsrBZn8EErebJdctNZxfkRLxW5WZ9hfoMb6q/YFF06LLADZPV40beHeuK5Pa+gvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8e0Pj2l9Phzvi5gj2ULZdlmONe1fxAkwFZLgLFcYS9w=;
 b=iQq4Vqqs9AMb/5tY16Ly8tCNO+L+tpS2Z2m5vj0lEFAyDeu3gsqvgmQD2jq146q0VGRwHWKtw2K+ksZstdn5KEpuQrdAZnBFE+xl+1Jsp0a7nxLdKHMwMk6mhI3ErQJRAatk0I1z6II03uHbVtVmciTKaxShvduNFbU4ZtuG2WYcTprZC4Tzfoyha3jHhR0uiVHKgUXl/ltfhxzik2awUV++rvN61n0f1GtlseoOANvgrwwHhfdOYfO9WJSKVZu6XuVA9ah1hSKvMpxFxxTENjmkUe4U2g4xpijuWQ/Vd4UjJXstqz4HWkkasyD6eLvz0y/zR9+WlVQsjkINn2+BFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8e0Pj2l9Phzvi5gj2ULZdlmONe1fxAkwFZLgLFcYS9w=;
 b=L35+SuEsYnI2jtaoHd5PBAN8eS+J5Z68piktJzE0RRpI6uAT2Lx9ZAz/LEuuPcc6abW4IzIKtMID6+PgmeHgryKfPvYsMX/NhAo3yrBhypOEFwsUnaXygCp8OGtEg8pTmdsEdwO7tfAOUKJ6upFNjjLb/saaxnwtyagTQigIoCU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4433.eurprd04.prod.outlook.com (52.135.149.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Mon, 24 Feb 2020 12:21:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 12:21:08 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 leonard.crestez@nxp.com, o.rempel@pengutronix.de
Subject: [PATCH 3/3] firmware: imx-scu: Support one TX and one RX
Date: Mon, 24 Feb 2020 20:14:34 +0800
Message-Id: <1582546474-21721-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582546474-21721-1-git-send-email-peng.fan@nxp.com>
References: <1582546474-21721-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR04CA0077.apcprd04.prod.outlook.com
 (2603:1096:202:15::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0077.apcprd04.prod.outlook.com (2603:1096:202:15::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Mon, 24 Feb 2020 12:21:03 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2aed960e-9267-41ec-9798-08d7b92406a5
X-MS-TrafficTypeDiagnostic: AM0PR04MB4433:|AM0PR04MB4433:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB443342150F25994A4BB6126C88EC0@AM0PR04MB4433.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 032334F434
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(136003)(39860400002)(199004)(189003)(2906002)(66476007)(69590400006)(8676002)(66556008)(6666004)(52116002)(81156014)(8936002)(81166006)(66946007)(7416002)(6486002)(36756003)(16526019)(6506007)(4326008)(2616005)(6512007)(478600001)(956004)(26005)(86362001)(316002)(186003)(9686003)(5660300002)(83323001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4433;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nQE3+X//1VNrHXBSX9uOGqdMnOzpkvPFDdAwN/79q0OhQvTArtoNBOZGaHAhc4R1V9ijPLH2KXC7ArjFZ+kAQqhsygfDiaQ0mvSoOeNdZwcOEPNMFCCJf43RnYQvzbnAGgKMNvCJPq+0RS6nTFyWFkExbLkUNww3QVfizHUrpv6WwaDd5/bPYvDRVnh8rVYF+uqIihX1qKl+6QFPqmEHOox8+vV3+ZlSOtYuC7g0sKvCcHJbH2a560O46jF/xCzSQv+YVBAjuXNNiAjcRf8GXpdJpR+UZQqJxHDWlu7RETro0b4rBlBTGIgG2pOKvY0gux7oX2nqA1K7SxygHF/Gb8ECQ0yKqfBpyXUglddGX6c3tPYnbvE4FtBvCaZHm6hRta3UkTeDG8XE1EhPnWLt/uO/h1SDOaFLZzNNXrH2y2l0C7GsBE/l/soUH4zPSGPXHyl4ono/NaVBY0kelzyn2Ul1Gwjns2kfKM0aFVDUZ9DkiOTqJejTsfSIr0+lp5wKaSEOjUtYFnEkVHP3dBH0ovUjTn+9a70xw0h839Nx3dUvUkYW+OqzQJeHKFa0Qgxc
X-MS-Exchange-AntiSpam-MessageData: zq4AtmVC87q3PVrMj6tzaSvYFw1Zq4Z18jYcH49ml0EfcifUpiulrHY5RiGYqmgSx+CqOsXs66qZdAF76WDgXr0TWk6OO6LU6ZCP9xcpdyZxeFjkk1S+6JOE4gqR5ffNfTgUIFNuC9oy53tUhZDchw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aed960e-9267-41ec-9798-08d7b92406a5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 12:21:07.9600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wR+dlEfmnEwvGvp7iCT8awYFzyJxqgAwKUc5eJ3siae9erfm71/lelcn5GG/5ey56ybicyqJgYH9AfEEvY2o/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4433
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_042111_050667_530A1ED6 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.79 listed in list.dnswl.org]
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org,
 Peng Fan <peng.fan@nxp.com>, hongxing.zhu@nxp.com, m.felsch@pengutronix.de,
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
 drivers/firmware/imx/imx-scu.c | 54 +++++++++++++++++++++++++++++++++---------
 1 file changed, 43 insertions(+), 11 deletions(-)

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index f71eaa5bf52d..953446b3d5e5 100644
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
+	sc_ipc->fast_ipc = of_property_read_bool(args.np, "fsl,scu");
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
