Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA321CD531
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:34:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlcHJDtWFWzey7K68CyRKRbPiGc5Q4tf/nj+nHoX0Ko=; b=XW63Bw6VRCjUw5
	tkUanWGplr9JIlgv60xlT3lvTYdsdAFcwn2nW3uIoilntmRUdjFXbBanJfQ67lp8exPVo9Fzz2LsY
	fU5rcSKq+dMbj8s+HaVOcp2OCiKhZj7kaVwzY6VUyh8bt/Oy16g7kmKByDZHDUUmNnVLPz/yfOFZ6
	MJEhmtiwhExq3NRqYObq29uxP7vKsvVnPhRjBujo3Zjuz12F3DXmLqQNp3dSOUvhmOP6QJ9my3a9i
	5N1wNvG10oUXXUVfE1OxVJg/cTkRXW4jON2edCexvwL/CJFYo0GnA5aZd6gLAlC1PoZpNyEkZsMJM
	yLqwppQ6AzEXCPVVHx6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4p4-0003k0-VO; Mon, 11 May 2020 09:34:06 +0000
Received: from mail-eopbgr00057.outbound.protection.outlook.com ([40.107.0.57]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4np-0002lH-Jb
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:32:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AAp/GoHUXdz0qpLuUXearEoI06lLCoyKGqBeWGqjWEsvAjvtMjM5m7EM1PQ5ySFXDrAvRN4qIccm1JFijaL1YiPDugD1vz4Hww72E9rH99bhqMW2IX8GTZbM6iJaM73qHujuUL8dpVWFhM/4YdbwanSkScBfj0yiPiKKOTiY5Sv4DocOg37zeNyf/hH1TetypRFbjLYpNANzaHP5oWSUH98FHABC71G3YOycNPA3Q0sEpnKk5amZ5bvm3yITpDtN1piUXeglvS4zdAWLkb9d4J0ky9thiwKFtBbeZ49aCfLjPYXMa7z9+cR2l71G41NENrUjsPglefOvL1XjN8e5cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CRtb6xu+gu9ZrxAl+TPW+7oDi/VRvMarGC139iV3aBo=;
 b=TIwXTs/0hNYJnVcrqhHQMpTRxYYIELAPp/S59PP4R+oM+TZB1l5Z9Nl3A6YJdbdp+kq12Wp+5wiQzC5FXi43QJ8jjkv2uWqQd3udwkllpsPW3xVDTDGHPAO6VYPx7QSPi6/zhvBx6uDeYSgd2NobEjUuPuP5HFyjs55tCunzvo7URsRuV7iG2XXnBM9bFTRXyxnZqdcPa6BW5mL2vqe/vlfkr7y72Bppi2S+YB0/w7H7wUTJ9rl+pFjsV2FOXS4P3suVTSZS4kzqcTFBJQgumime1o7TROWF5h2SQD4UnKetbrPwEEiXHe0QPxRULWI8k1tr+4QzyZLany/i0O1sJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CRtb6xu+gu9ZrxAl+TPW+7oDi/VRvMarGC139iV3aBo=;
 b=OOXYQOcKvGZYEpLxjYi3to0DSUzYq9f5m+p4EmmkXJ1tLSfvNXqeSXLvFSTGvYKr+TCt7BdPU3YKbiMEwXHsVm9CRPZU16UAmCX/tRcNKgBTFIVI9V1ahI+X3fp5yV1+VpRGU5yBMey2QRbWwyAj3iZFpg4Bw/iEh6NrTltHbBM=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6637.eurprd04.prod.outlook.com (2603:10a6:803:126::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.33; Mon, 11 May
 2020 09:32:46 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:32:46 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 05/13] dmaengine: imx-sdma: remove dupilicated
 sdma_load_context
Date: Tue, 12 May 2020 01:32:28 +0800
Message-Id: <1589218356-17475-6-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
References: <1589218356-17475-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR06CA0141.apcprd06.prod.outlook.com
 (2603:1096:1:1f::19) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR06CA0141.apcprd06.prod.outlook.com (2603:1096:1:1f::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:32:41 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1a082271-e689-4689-9d5b-08d7f58e434e
X-MS-TrafficTypeDiagnostic: VE1PR04MB6637:|VE1PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB663727B8AD66E232719D11D189A10@VE1PR04MB6637.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X/KmZUUm4zdrAS18EzTXfwNdiOwfKBZ41hXO/9p+V/EUWqLRAokP5YOgOZKxE4V4uSgRkK+rpBG8AN7BUheXiqX6oKNUspWH+JwjM8ahcptLk6zdzwclV+FlS6I4XaDfSdSOvpi35T23aZkEpmz+vWi2d4JFnNaumaveDvc4tdy3vfDc2RxtZ7spqhrLDhO3q0s0MhTCGHitAfbiagxsEguFepv7PRL2DRi5P0cfYiZ1uLYPXiYufDud5QFXSv5cIST0BwXOdwUHUXRK+OvyAzBYpe4Bh0x7UZbbcwwop46S+jJRrynsaSK03exipFYKZnC2gRZr9DVJ7ETl/4nsj7Zb7iXvzCpYkKDIsoR/+WBh6lPfXv1DSbdNUfFkxVVl+azm5P86VuSoA7wnv0UjUNe3vI6Xj0pa1HjLkIwkbmB1gNx27VbZGzBYZF2BXMpuKkUare6IOWxwkn/1KCqjhFnjWjpyKjJgUycE2CqSPPDMu4gkyX/LI9RvCXWf9thevMDwQEXKbrtPfDe48YqSzw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(366004)(33430700001)(8936002)(26005)(52116002)(6506007)(16526019)(2616005)(186003)(956004)(6666004)(6512007)(7416002)(5660300002)(2906002)(4326008)(6486002)(33440700001)(66476007)(8676002)(4744005)(66946007)(66556008)(478600001)(86362001)(316002)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: pKWfMmo5bg4hkVgmSIqqWI2oEPqEI+V3M+yji7NOUID9iSc9a6KDFy8XoF4DHOKi61CL+iIcKsY/646MWN4RIa/xCLNqeOq2fbVaTKb3VO2NwoXQKA9IoAv2AtqFZitO/KIyaflWyzqfHdnralbbd/ay2R/GyNJugUfV3gW2pwCrjbXRJk+ijrP0QRlhtCSvziUpzOmfe92JPu3JdhrgcNS3itajGI1JQIFYLF7ndb7fvi00Ujc0HBbUDla9mVLWhq+uiydVbeWwcBl+wVw8m4mlc8mRSTdmPjMvKBe8DEh5TtWXyH89eQOSAcBtCbiPqJ+OxqFx0BoWzbmPr+Q2a15Yt/+5JjerTV4LVlDq9ElWVkUDJaGRiMQud6+lcHQBf1nQWpi78xhE427RamCCYNzrb3hgLVFI0sIJHbEZ6kQvIZV03WN5BubYWpVkvgthWc9Qtv9OGp5y2RomkWM0F4DiOlf7mdYIyksFXaHcyzk=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a082271-e689-4689-9d5b-08d7f58e434e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:32:46.2539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1OhbURJ5p1dFm1CcOXH2cut+ULfoAVKaYxAMmSWdFqcNcNYcQsQDslOf10Jyy/KzvON7l8s5B7D0r0hns22Ftw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023249_666679_D74BFF31 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.57 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.57 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, martin.fuzzey@flowbird.group,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
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
index 397f11d..69ea44d 100644
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
