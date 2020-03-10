Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2D217EF4A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:32:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHjbJtBNsNJIz5Zi0bd69SOKh/gIEDVi1yxx1msihdY=; b=A5SD+6RV0Wzaes
	4yDn0vwcNo74QjvFuw9HL4Y4UxWv4zEmWLb7HIZgJmeRhfqfeyVom/8SX0GURnkPBU4Q73iL3ak6s
	yirFyz9L6hpV2w6D9FxcygWZhwpvl9PwRpXevRghx5zO1ZtBs1v3Bw1U3kMZy4DZOF0h2IQInhD66
	XxHXiOIBMmnoNwlrEaLgsXydV8xG9muVeazBg0P8blcifja1B5QLMcYtVFpasZW+MxQPw5xHnW5Ag
	rUo8AjDhu3Vn4U5ednVMa+rLW/JpUeYnj/LQFJjhKxw/PtZRa8gnEkuNvpwwqpKdt4ph77eWqmT7b
	yQfxTkr5bbEIrQCQ2wmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVd6-0003NY-1n; Tue, 10 Mar 2020 03:32:28 +0000
Received: from mail-am5eur03on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::626]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVbh-0000rS-Oq
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:31:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jRAk2XPT0ocw8OuRmCMOP7sWH+BmPu2RGUYtdfgmpLvNFRzyGV1K9BcTRSua4js3jDfGIg8EnDQ5JoyVqXadQVJpt4QuPxoDNRhl4ZvP7cc7nCY4Av6EBj8juUEt8n6gHZIfG+69VnfhO6+LI4856qXF8A7JVrCmF+ocC/wwo8RqJzgJjLAy4m/RhrgKik4LPyrVtvJkp8562ny4xiMShdp2KKDd2suDuZ1Yy9rhJI4halhuEHKLDBy4DFs/wuw62w6d3wQFZf1sPh2agQ/2wS8X1b6TTn709DukS0gSzpnRlf96T68HTMnEO17AZqiBtJKO5W3KDWB26b09HQcO3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NWCHSljtftrIp+DHwbCimqckASBry4ZIAy9jLYxm5No=;
 b=Qcc6NT+VM/XVisIKpVBjGpPgRiAqonFal8F4FIch0OO4JW9x8msRZyl9J+L7JO3zpkVu7O8UK+tAv61MHbPdYvOTIrbjBpkUisjCkGsviGO0gtCQDYNDwYbac2nwrg3D5PyXFgb5HOmx+ELb/gfGdc4vvlMdoNzYIPjkdKZjPuNpODL0sbMHEWy7Rfb4kQHHSvvjmMgYQLyhozfrVR21tKjgtRuyHvUAHlBN+425s/ucoalz0Ta7791wyk3KF/MEvR84YoiSuKHYsc1Hi61y9E/H/DBQztgyyEZJ03IKR2oCYaIkh/lMBkGLG5olKjrtgJqJJiR+lvgji6RCM36Nzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NWCHSljtftrIp+DHwbCimqckASBry4ZIAy9jLYxm5No=;
 b=Fyf6hYf9M0hJ7/vV1FR3iZmbiMJSqDwHVQZLzuGWHjIKO2OlsdF9AiFtFHr90EPiT6EvnK7id/ZBzdfVivuDEvRyhy7ZtmG+z1xeUamFFQ92zqCjbbWrswiNGX0oFYIGCs51F0YN4kxmwNz8JHzMvEcAvq5O5pQfGzft/Ycg0Ms=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6621.eurprd04.prod.outlook.com (20.179.234.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 03:30:58 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 03:30:58 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [RESEND v6 04/13] dmaengine: imx-sdma: remove dupilicated
 sdma_load_context
Date: Tue, 10 Mar 2020 19:31:53 +0800
Message-Id: <1583839922-22699-5-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
References: <1583839922-22699-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0241.apcprd06.prod.outlook.com
 (2603:1096:4:ac::25) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0241.apcprd06.prod.outlook.com (2603:1096:4:ac::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 03:30:52 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bfceedbf-47dd-45ef-e731-08d7c4a372df
X-MS-TrafficTypeDiagnostic: VE1PR04MB6621:|VE1PR04MB6621:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6621F957AD72D7020735782B89FF0@VE1PR04MB6621.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(366004)(376002)(396003)(199004)(189003)(4326008)(8936002)(8676002)(81156014)(81166006)(4744005)(2906002)(5660300002)(2616005)(7416002)(36756003)(66556008)(66946007)(6506007)(52116002)(316002)(956004)(26005)(478600001)(16526019)(186003)(66476007)(86362001)(6486002)(6512007)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6621;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qeGSVKy5kRQ7qfLf4JrBEEm628NPYWmRcL7Lbzxlqd6xtbx+nXeMSMX3+mpt/gCSi3+Q0FL7vHB0UX5y/Prian1DtRMlDCbf3exofkIsgWlUkaztK80QObRpbf0PagpQmvvf1JZiX3zcWPLhiUbKwK82Pny8NgFLtSRl7b/6YAL3jzuS+wTGRxjwxX1j9kI3LhQJs4EMRS4Y5oxl9Yx8gtZpe3XxtUOSq1Qohhc/WJ4tBing2koUgVhkZ+hvZLsu21rpUvw65piqeBncY7I7fbL3veHZnY7uBpWxTMPevq+OBh9dhqwkWXsQLkJVfmYXWCA65hOyRL6WGJ0bN6ZI2KneCJTWJV1vYz/Yj8df4EdDEPZr9lf4hSHhglEHzBy4On6spL0ulB98swMtxgTllOUe4r4qKF6lyXrxEjPYpAnUYPDpuLxXYQiihUjSM9tZlG4yjW5oqIavV3NbAyXAvgjjkP2afPYFKleneVJykLuSYubTrHPFAM1aySVLJix2
X-MS-Exchange-AntiSpam-MessageData: 9/DKZXpTY5R9OAJ0qp5o3EcNCm1Ei7aDiWrEIbqf229y3+dOkbtU/BT0pDyN/yrHruI4bS8OJHh1HT1LEuI3M0PtZpqY4qds5bIu/H93fwUE7qA31cDknXQdiC+iy3G31vttACdPevR0fcnMH55anQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfceedbf-47dd-45ef-e731-08d7c4a372df
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 03:30:58.5702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gwUACiP6G+yA3giLlV2TuMyWdQIZiL7MnCuEe1KnhutF95nsAlR6QDe05pt7HLuxlaSaLE82bPquADYNS0A0NA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6621
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_203101_863419_997C223A 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:626 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.0 FORGED_SPF_HELO        No description available.
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

Since sdma_transfer_init() will do sdma_load_context before any
sdma transfer, no need once more in sdma_config_channel().

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 4c11c38..a7656a4 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1137,7 +1137,6 @@ static void sdma_set_watermarklevel_for_p2p(struct sdma_channel *sdmac)
 static int sdma_config_channel(struct dma_chan *chan)
 {
 	struct sdma_channel *sdmac = to_sdma_chan(chan);
-	int ret;
 
 	sdma_disable_channel(chan);
 
@@ -1177,9 +1176,7 @@ static int sdma_config_channel(struct dma_chan *chan)
 		sdmac->watermark_level = 0; /* FIXME: M3_BASE_ADDRESS */
 	}
 
-	ret = sdma_load_context(sdmac);
-
-	return ret;
+	return 0;
 }
 
 static int sdma_set_channel_priority(struct sdma_channel *sdmac,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
