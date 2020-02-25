Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8985816B805
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 04:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R3nYZdXaCk8BZdtBJ24s4Df+DnKn8Q2cauU+eV2dv1Y=; b=OpyNuWVl0Ew2sS
	wjisAR04fCkHg7SzptTqQoprKQ+02CV9J9DeYUsjPdB6CeYOcRVxwaMTQxhlC7h/WPrn83y6le+ZU
	opPLEwjvIlmjliMIgwPIKOEYiEIU7G87OIy+53udEAe8d6P45TChILkLPJTQ9KINxB334sSCAA9rR
	xAYuPJsxlJ5Oomy1kJ4RmaSlZZtMdXVsbhR+aDwFA32P/y1cDVmh0dJmsagJPAApiLwBIvK2TQ1fP
	igO7dvg9Ct/PrcOGAKG1hZYdbmMVyXlE1E5QD1fY9k6y5CHROox/2XeYDIPkKz58b+H1XbXH8IaqE
	aHjGQIqhdpEXqnxoGRDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Qpd-0001NK-RC; Tue, 25 Feb 2020 03:24:25 +0000
Received: from mail-am6eur05on2086.outbound.protection.outlook.com
 ([40.107.22.86] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Qos-0000oA-3v
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 03:23:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aKJkqglk+Kvfk2/X6OwP5d+dqQvFha6DPeUIi0JBZD3yrdXPVp8wWLxSIj2RiaE6OuMxG+fuj9pScWA/1mT+o8u+AP4TQseVAqpYyUP8DG8PYoB24LHsdTqcq5v5rxTqiWz3NgHS453hPmSOSH29uExIks/8GPtwabK7/LabhriTBNOBIKelS4D7p7y5b1Xs/Hx2sOnLD8mHiTI3nwApzc181+fE4b77R+hjrwx4KZQb2JZMO6kOwjD+1SFnn2F7S8YIn5Ph/Mb9JEWiS5Y3hH7/TV4D6uUf5d9ybvxMQEST3cY+7ifJrK+rgQQd+PHeC6z76FuSO6BA6v4MJLU1lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XpSDWjkQvRdr+pe2M0T1r1Ml2wXcjK/cOuA6L+RZEPU=;
 b=gQ11INHnCDl2kshMfjTMB8RQYJ3PY7VE9L/wUFUYah3/LgWdXXvDxwzN/gGKvNvH7fD47yrKLT2E32MqthEQAbu9m9x6cKd2eibOuO/gQvNY+IiMlkRgEGLFSr+9RJZhAef1nhjgtmcgT6ZLqseAKyPouM6euHSEUGUIiNRHqBRCpD/li5clO9MNcCw1cKZodfZYy3afwXRLUzmZhN1YGQrmZ1Ppu9xeDVNz89NV4ayaWJwL5Fkue30NbYpRgg1g3Y52C7vncU1phX25Hl5l1+TLS3TuwJjbfNxccNrcOMsSjULPXtje8OlW6xRAQnJONgBQ099WYtl9uTqleMs5rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XpSDWjkQvRdr+pe2M0T1r1Ml2wXcjK/cOuA6L+RZEPU=;
 b=Pe0HY8p1N6FqgYKA7AFqP+huEVx+ZzBYMb1cagTXyzsy9foHKfywKN2SjxkXuSn47C1fQG78/7Ib1uMWUliUEqaSJ9ewLGbkj3Pc87s1QN1TnnhOIMUH7yVOnh7Urf4OCZDptT8HXkDr1wgLT5hlQAEGtg+COHlBXjoM1SAQMh8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5938.eurprd04.prod.outlook.com (20.178.112.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Tue, 25 Feb 2020 03:23:35 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 03:23:35 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V2 2/2] firmware: imx-scu: Support one TX and one RX
Date: Tue, 25 Feb 2020 11:17:07 +0800
Message-Id: <1582600627-28415-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582600627-28415-1-git-send-email-peng.fan@nxp.com>
References: <1582600627-28415-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR04CA0089.apcprd04.prod.outlook.com
 (2603:1096:202:15::33) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR04CA0089.apcprd04.prod.outlook.com (2603:1096:202:15::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.18 via Frontend Transport; Tue, 25 Feb 2020 03:23:31 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9efa3a74-f3e4-49fc-8633-08d7b9a218ce
X-MS-TrafficTypeDiagnostic: AM0PR04MB5938:|AM0PR04MB5938:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5938220413C62E6F8C7E958C88ED0@AM0PR04MB5938.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39860400002)(366004)(396003)(199004)(189003)(6486002)(8676002)(81156014)(81166006)(316002)(66476007)(66556008)(52116002)(66946007)(5660300002)(8936002)(186003)(478600001)(69590400006)(9686003)(6512007)(36756003)(86362001)(6506007)(2616005)(6666004)(2906002)(956004)(4326008)(26005)(16526019)(83323001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5938;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3HlGJTLsmykGNSrLzZSY2nVRvAaPT1cYPqLhEoxhFFsjdbZxhIPoF++QBxuZQ5Qpu+bpvLL1cjo0TC8cmCqJWVmr+wBtECRmyxGxKvqgMuHx7ihfjoECo6iRBE5zJsp3wsB1vir3pzvAhwusFk8C7M8IjdcK6mQtLtU9eJfImT5dLUMj1WlRPsys8+id1vPeQMfYcVd/pcGAE9nGmZu+9Rtq/lrOTmSTS65hlVH6B39M0dKhRrzNkslVqlqZvz1f9WDNQabOphzomK100LIuJ9ztr4clhgGdHoPzmE76rFP83PLPGEpI2yOnQNWicoblbn9i/6F0vYo3f0cAkNgGnrqREMUlpLn0rTWnTHOIRHuJPmHrAsqQLMLwwE6FlchVrBXSIVGL1ejr64+Hv9/lNu6/i9hB2LNyWpJ06lj4fbQweYJud9BKM9r/R004DRrBsrigmZA3zNCbYbpC04geBkQP0iREfUiq4fv3cyNRGnGJSR1/dMIl34GkR+YD0HpWeWc9j43zqyKXdhuvafWYSz63ERVlLRnR+gxYaeEy2v0ZpYDvxhVjPGFO/yWPbKO7
X-MS-Exchange-AntiSpam-MessageData: lOUjU6bsDRJiiMlFju6FdqBlnZRGDU9WrLTJ0ovfSrEx51jaDDMNNA9uo9sJurB3OCtaYLCnXxyjorqVAPAsnkRd09k/5/IQeknIn9czzKF9S5EQgNgJqfhnVWjJ6BUPm4eEpRc/G0p6IdI2+ToqYQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9efa3a74-f3e4-49fc-8633-08d7b9a218ce
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 03:23:35.0171 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: haAXJPEa6f7b7ib6S1h3uS/0eeMmr7GquvgCeGkwj9Qqzyr/FvxeDSuGGylB/F9pF4CtlYl9pwRCiLkdIm1t3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5938
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_192338_171838_45523DC2 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.86 listed in list.dnswl.org]
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
 drivers/firmware/imx/imx-scu.c | 48 ++++++++++++++++++++++++++++++++----------
 1 file changed, 37 insertions(+), 11 deletions(-)

diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
index f71eaa5bf52d..c839dbaaf3da 100644
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
@@ -246,6 +265,7 @@ static int imx_scu_probe(struct platform_device *pdev)
 	struct imx_sc_chan *sc_chan;
 	struct mbox_client *cl;
 	char *chan_name;
+	int num_channel;
 	int ret;
 	int i;
 
@@ -253,11 +273,15 @@ static int imx_scu_probe(struct platform_device *pdev)
 	if (!sc_ipc)
 		return -ENOMEM;
 
-	for (i = 0; i < SCU_MU_CHAN_NUM; i++) {
-		if (i < 4)
+	sc_ipc->fast_ipc = true;
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
@@ -269,13 +293,15 @@ static int imx_scu_probe(struct platform_device *pdev)
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
