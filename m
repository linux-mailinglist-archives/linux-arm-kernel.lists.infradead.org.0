Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 630C6178A6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 06:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCm/uSfehmsz3Jd3Hpi/aASognDWtVK7cu932FOT058=; b=CPALQqZfLqO1mt
	QUa0LWflilbeYHysrpL3FZ1XMWPiB/I18Dv9FnCGgK/KZNfZMSM/iZN2UtphXoLKOFSigqtaJegBD
	4o4HYiSwgmtcO4PcEMxJj16zRnNVopRyIomlgBhVcRPyxsjaOMBhGgdWciWcljH3RKu4JXYpRxE/K
	ONyHl0L4c3hbgVrdspsrILyktiH+uG6yu3T190RR87WBA6sILJPktNdXY2tuLdKuEc62/f4/Gslnc
	iM2uNorN3IlRYny7Z9YWo6L8fjx4QdLV874W9u4zHCIpyIULV4ERCrne8paQItDrdr5aw8h/JQssP
	65h1AxEYk1SfUXC8YCgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9N1w-0000W9-Mo; Wed, 04 Mar 2020 05:57:16 +0000
Received: from mail-eopbgr10043.outbound.protection.outlook.com ([40.107.1.43]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9N0z-0008JK-GE
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 05:56:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P/Qq6Lnqvbx87dPWQJb860VVZJdym8Evd+Tv8l6CNMOVmuj8mXQjVAqaMUcmBK0AbsmljAMwsFCwZmpxDZzgf4hXEZfKODUl4+/D4/W0S3e5Ot2U797DYqlkR89cPwBGGJvkMkXtZ7aKm3eW5fmh2TE5IeZzK68fSaLx72e+mii+nfRDlwNMFlOemF2HLuxxQVfwM+FWqoWBvkSm4fhoxy5aUgUG3EVoWsAEvfDc2Yrz390C9J67DvCgb+DMtntha/F51c/8FdOKJT0/JtCgVAs/PzHaW1x+GFPUGP52DjDEBWkV9Z8gtBnQ9srJ+OXtdcy7uDyIE5zR3Vni9N7Qug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8r4S9Oxc0CwVaJwTeOGVH9gByqHlRlRg1FfulDUxjuc=;
 b=N7O42db1cf/khGtX1bgQN7HtIj208mTByYUCDDcQQeKbobj+7PbWfSoTXT8C3WI5F6xYjhI1mrEztvlJOrcS71cByol2V9/sC/MbnuZ2/ehCf8EAJKG77smbM+g3JmPgS/Jfncm7vFF5ZSDr/4a7dzc/Y1V6WZQTZDgFDLbudgjR54+AlbyBr+Z/Q1g53zIRV0vr0Ec7659xVey1ZNU+TbAGLzINZmE7zLMD9JiBh1FJdUuEN8qicQEr9CVTuK1v9Uo41gTFtySIrIbw5MoJcKH9NZ/GkKwmNMksA6BfbEY+SSIjkpohmtiVdZ+AhKrCh9VtDqq4t2MT8C2yMRF0DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8r4S9Oxc0CwVaJwTeOGVH9gByqHlRlRg1FfulDUxjuc=;
 b=hJzt7tGlpCt3iVcagbGVwHGO40PsFsS+OMLioZoiGplCNsxSm9rDuyYw5rcoHIuUHGitW4/O+BXgJ4MLde8zsZ1rDgBX3d708u/3SEjDkhMrcm9wnjClXPAd95sZBNkvj/9rZhWNUURLbYhUMohpnsmKiNi8w3/C2zmSZXwUbqo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4947.eurprd04.prod.outlook.com (20.177.40.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Wed, 4 Mar 2020 05:56:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 05:56:11 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V6 4/4] firmware: imx-scu: Support one TX and one RX
Date: Wed,  4 Mar 2020 13:49:37 +0800
Message-Id: <1583300977-2327-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583300977-2327-1-git-send-email-peng.fan@nxp.com>
References: <1583300977-2327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR0401CA0010.apcprd04.prod.outlook.com
 (2603:1096:3:1::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR0401CA0010.apcprd04.prod.outlook.com (2603:1096:3:1::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Wed, 4 Mar 2020 05:56:07 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 69c1ead0-7c0b-4c15-76a2-08d7c000bdb8
X-MS-TrafficTypeDiagnostic: AM0PR04MB4947:|AM0PR04MB4947:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB49478D736B03EC0C5C7B674D88E50@AM0PR04MB4947.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0332AACBC3
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(376002)(396003)(346002)(39860400002)(189003)(199004)(52116002)(66556008)(66476007)(316002)(478600001)(66946007)(2906002)(81166006)(8676002)(6506007)(956004)(2616005)(81156014)(4326008)(69590400007)(6512007)(9686003)(6486002)(5660300002)(26005)(36756003)(16526019)(6666004)(8936002)(186003)(86362001)(83323001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4947;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LtOe7eNU0kqIuWZlSBUZrkxOoL3ss6TT2MSj2IZmjCjhwyLrDAdH95s8gCvY94vslg6WgLX8DaMm0fy9A2PQdSrMOrZfMWY1rCj+NcR7aqSgQW7Moe8DfXn+RABIRj9u2AsIPZ8EGMXpGocmklOsEl6pvSLA32sNRyPxlQ/GJl4VPABymo4cCneXMd6CUtag3EqN0ZU7dbxBbU7/1i2ymcGRB3quzjXN/RxV57hTBfTedUQQ+MhZ7zD3P6GH8NSf0uNiBd6+JYWL0l6yIGci+/0kRpuTlL6ttL+7ASnbnhy8UJIr+9CrF2W86u/C2Pd6ZrN+xgImqgOFws3mdnhrYQA76X2fje87jkJstKYIuffX71C3ebMG0EHe8r6c1gR9QjLG6q1MWLNHF/VYLWYgSS24ICT3A7WYqG5UvZAiHkIh536LR3wS2IKD+Yta0waWULNXW5FoUU0gNfjQUYJ/+sIEcBqax0Gin6PYa1AzbhGmho2E5etDuUw5HKoCFY3rv6ETB+FcbO0ICcLXNK37iA==
X-MS-Exchange-AntiSpam-MessageData: B3W5VqR9g+wIt+7cR9YRsgPNEgYTzVfvb34A+t9e0+vRFbZBp4VVd0U1iVDAid6zVgureITc+noiJEk+W/BZhOu8Nvcl8KNgyRGgkdD2gbvYyGIU7GjL5QGoIhv0GvxSHPZtW3HCPWLpPrcNO9s09w==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69c1ead0-7c0b-4c15-76a2-08d7c000bdb8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2020 05:56:11.3499 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t09Vgjg6clWfAsh/+u7XmKiN0mXeU6fxR8WFV/oN5KbH5Vkg+fX7hQPGxv3A+apI8P4I2Yl7uLtnlOAPvJLyxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_215618_096712_E0A47B81 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
