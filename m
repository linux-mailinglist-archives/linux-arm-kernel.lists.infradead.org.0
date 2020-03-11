Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C79418136F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:39:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uv6H0cQ1k4MYnJckhP9+aZRzHU/Q4bYm8FrCjkzndQM=; b=AFoGsPu632i3i+
	rVWYM9Giph87rUYgtB9LN73E7O80R4QP5kqv8Q26tGhPy5nuzOSOKVeNv4KhIKN1UgSIt6apxLt33
	o4JSBV3H0fGGpcXUvAz9k9jSLj7bD5lVexgl1/pO/rXqt0thrk6XumgXzmPnJwOdyhK/r006Avet3
	dMZjHYexqeEbI/50LLnD3W9OW6FAjHIr+NGjhqhrHdae/XxeH96nvmeqsgxIFGAv9R/owRkKA6GvV
	RiU6IvH7RJlp+YlCRvcDXj0WfriOtMq+IypK2mkt3mYCNIsJPRm5m5VS1pZp8qV7DtmUyk7wjLVzL
	bP54bZG7pojJd6qZX8Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwtu-0007Zq-Pl; Wed, 11 Mar 2020 08:39:38 +0000
Received: from mail-eopbgr30067.outbound.protection.outlook.com ([40.107.3.67]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwqp-0004k6-K9
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:36:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZO1gkrgaZ4X+orPaS6Jt0jds8/Rgci7Gfk48EgUQKURGz2tDfb9mXEIQ9RqTBIYlo4Yqfdwj9UyClNimaHElT8ArTNOqbzG/n5kCnSVD9YbOUIDrgDlyfpf1xQf2rdYaDSb+2Kvvbcha+9nDnHgJ2WdZIuC+pfDBJLiqURamEJMNDDGK3t9XeSju90By5jlzZsMByNQsZrBhKtr4ADT8fmk7Yah+dIG5JNRs60ncNDtc9HgZTcJLLD84OR+rTKLoLY/zoF45T0PTm1+RiIjJnaWmTBWPek4E9qym6+yzkKEk98v2ACdi6SuAiQxvcjcRxo3TXYIpsntxjXcUrjmpcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bEsJd5W8L4lcrfETj5LCErO6H6I6ixkqKq0GzEKt13w=;
 b=VKjHnz1HO68Z20JY8RmR3eO2kSI2cX5RKYnuteoqeXhLwn0mMyjvk8RZFRjVIZyFbDPfTx89Y5YfRDgebg+MeqEmKb/WKv8Xjjp7l9QYOmNcDA+pFoLtV7NsI9UNaMUDj6Xo9NrP9Y4XhHRT34QqZDsNb0y8Xd2VL5oVvph7mE63dznik7Cb7cYhOL1YVpoSac1EYINdBaAGQhIEVBSuf5RLS9GOyFJIw2T5XPdHZ/8y5bpJBf7/fNhBEVeVJvWAJoMUiZcQBdmPwDvRwBOHGD70sMgKUokyp+PbwEkhz8u3eAnJ+Oi3T7AjFWTAY3xR3pIBbZtgY/iVBj4RftPgTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bEsJd5W8L4lcrfETj5LCErO6H6I6ixkqKq0GzEKt13w=;
 b=RetKRGuJ0INWEHL+w7vRPDdPTVcJJcX4niEfpupxy9X82wpYWPg+WwWz950q82pykaCFm2Ibc8169Dg8YrOY6uCZskI6eThZJkEomNz9CEldWdoPQd5YARJlZV1Eim8DQhQwFiPFzuDkuoPwSHCR5DBgDFFa+rjK1FAG9+kAKoo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6462.eurprd04.prod.outlook.com (20.179.232.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Wed, 11 Mar 2020 08:36:24 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:36:24 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 12/13] dmaengine: imx-sdma: fix ecspi1 rx dma not work on
 i.mx8mm
Date: Thu, 12 Mar 2020 00:36:35 +0800
Message-Id: <1583944596-23410-13-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0158.apcprd04.prod.outlook.com (2603:1096:4::20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:36:19 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1bd3c779-b199-4842-a3b3-08d7c59748a9
X-MS-TrafficTypeDiagnostic: VE1PR04MB6462:|VE1PR04MB6462:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6462BCA0B762D37346812ED489FC0@VE1PR04MB6462.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(199004)(52116002)(7416002)(36756003)(5660300002)(6506007)(8936002)(478600001)(66556008)(66476007)(66946007)(6666004)(316002)(2906002)(86362001)(2616005)(956004)(6486002)(81166006)(16526019)(186003)(81156014)(8676002)(6512007)(26005)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6462;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nzbEe7s5QZjWGSNlsTV7ccbfXEkRgUWQwfNt/5gqSqPBlm7AVRvJntyuDvlv1uetnp5y0D7O5sfeDFkKmEDz7JMwMxBFU4mnA229WD1ph1IzELk/lC6FuyoqtqYw7awp4XCy8X5BEwAQ/xIN/F+2SWRaVd4whsEWua4CcPi34vSFyuG2pkrQ6fc4oShBmqXOKVJzpjrB3A7xvh4bLciGF5xF85pMPwkwnLfO+NxgEdLe2twTmbmVvUfX8Uq+l0/0mKeyTSQ5oFztCJG5SGiytgeB0nJbts2ICD/+KZ88YwZPOIs9KiIO0HjXmHq9UVXFQ7n0Qkv2eLNizEGLD4Gfe40vwcFkxea48Aa1V1QDcKINKvdC3kVJS2FvN1xLZvhXuY7kKaZJJJKAwo7IbfeEx/xTH4oT7BNq9VxYg58tnTDqJaU2DBh57Ias3tu3bt+4Hp3NOlfbxPfnOB8GlrOl3KY4dwK95OUXgURjizGU74W7wGdkXpB9fW5i07To5+4O
X-MS-Exchange-AntiSpam-MessageData: JdjZ2BH4Gz3bamWvGiXbgTmZCvlPhVbVQp5ifCFJh8WEGMhexRI2hkwgitqU//aPvvopB7qRSR4pIn62TTgylKKfnCStqNAi2HK5ux5ICTOG/3PfJTHhiCwCf04NwYIqlS8iKKJze7boUD7JULYY1g==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bd3c779-b199-4842-a3b3-08d7c59748a9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:36:24.7844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kuyuThBMVase9JbwvmXo3kOfzEjKUOgKqj2grZBBb9EMN3sc1dFqp11hDs3kP7Rivw7wb4OLLf+w7VmDJ5w4MQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013627_783603_099E8756 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.67 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Because the number of ecspi1 rx event on i.mx8mm is 0, the condition
check ignore such special case without dma channel enabled, which caused
ecspi1 rx works failed. Actually, no need to check event_id0/event_id1
and replace checking 'event_id1' with 'DMA_DEV_TO_DEV', so that configure
event_id1 only in case DEV_TO_DEV.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 22f9f20..9d49aaf 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1183,7 +1183,7 @@ static int sdma_config_channel(struct dma_chan *chan)
 	if ((sdmac->peripheral_type != IMX_DMATYPE_MEMORY) &&
 			(sdmac->peripheral_type != IMX_DMATYPE_DSP)) {
 		/* Handle multiple event channels differently */
-		if (sdmac->event_id1) {
+		if (sdmac->direction == DMA_DEV_TO_DEV) {
 			if (sdmac->peripheral_type == IMX_DMATYPE_ASRC_SP ||
 			    sdmac->peripheral_type == IMX_DMATYPE_ASRC)
 				sdma_set_watermarklevel_for_p2p(sdmac);
@@ -1351,9 +1351,9 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
 
 	sdma_channel_synchronize(chan);
 
-	if (sdmac->event_id0 >= 0)
-		sdma_event_disable(sdmac, sdmac->event_id0);
-	if (sdmac->event_id1)
+	sdma_event_disable(sdmac, sdmac->event_id0);
+
+	if (sdmac->direction == DMA_DEV_TO_DEV)
 		sdma_event_disable(sdmac, sdmac->event_id1);
 
 	sdmac->event_id0 = 0;
@@ -1651,13 +1651,11 @@ static int sdma_config(struct dma_chan *chan,
 	memcpy(&sdmac->slave_config, dmaengine_cfg, sizeof(*dmaengine_cfg));
 
 	/* Set ENBLn earlier to make sure dma request triggered after that */
-	if (sdmac->event_id0 >= 0) {
-		if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
-			return -EINVAL;
-		sdma_event_enable(sdmac, sdmac->event_id0);
-	}
+	if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
+		return -EINVAL;
+	sdma_event_enable(sdmac, sdmac->event_id0);
 
-	if (sdmac->event_id1) {
+	if (sdmac->direction == DMA_DEV_TO_DEV) {
 		if (sdmac->event_id1 >= sdmac->sdma->drvdata->num_events)
 			return -EINVAL;
 		sdma_event_enable(sdmac, sdmac->event_id1);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
