Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34681DB3A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:37:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WQ4JLB1r0uT5mA2jjOlaluxznZ110mdylzOR+3kv5E=; b=myTNxBTushYtAz
	NKkeovQGZ36hgHQiT3we+KIV2JhKkhaMQ+M5YBjDEEyAsGwIXHxX1kTNqKTuUHG7hBfmmDXKgvW+2
	uFgneVsx0lMav49RT21/rj3MOmNR1V+RQ7ZDaoFmid0iMQn5hrVm3850Cxrcv9clR2U35aMlVAMKE
	kHF2qUUDK6s0sXCvLYVp2R6JrfsznBTbkb9RD8pLuC+9uVxn1QEl5j80vNQE07Or1hncAjO4iNLyU
	ajbRKRV8c5XKxGgnJLzIPfY9bYouV2UAJtjiGTvZC5xmyl2e/GTfBhVQ6PdT8AJOEd3VpaBAxmHo9
	XFgzy1okxOOWXdksy2xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNyE-0004Ux-VS; Wed, 20 May 2020 12:37:14 +0000
Received: from mail-eopbgr50068.outbound.protection.outlook.com ([40.107.5.68]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNvh-0000FR-9l
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:34:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SroHEq9hJ9s68NZpkrch8dOd4Q1ta2RL5I0yv9LI/ks1T6cjlgvXvJad0YaO21WNWTDX1D6tBqW8m8QK58oswy2oaxS8iiJhzHUrIJxXoJe2+U5hjtzG0Na1vrjetyuv84TY6qqEqK9VJtFErxGoExCk1JZOkMMddaqMmbsuS+aeb7h/Kn65XG8F6R9HtaTgbGEAn4Ayauav72dpWZyu1lTe2RDSwzrVxu6GvApKRuSvaVxkP2p/ZDEV8Umx+5X/IAmtJnlipPdgkAH82JKpZFv8ab96ZB0zHBc9xgQDNxMr/ElqyG6Rx1BXBWir74SVBn7M4jIGDZKSc1fbUuLPcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s4yIptoCrdNFAHnc3pttjP4cFetMmBRlB74P6Bc07Qk=;
 b=OArAauRGwP7nJ5S1uGoD81AuXrSc/jFWQNzekwzW1KiPidQDdJcmg42n+tnjtMp5AAfVPFmjuvXBdNYWt3tksGl8nM3u6SkjFAzuMDNRD+BB/iDHsh2cfUF4JDbXRgDfQE14qLb0BZIn9zn6hvoRMayqArpT0R4alHsOlPzr43K+gzsHIw/vJys/YjbNO7abX5aMWAAZrya5HjoZd1O6PeLOd53mObQ3gThf4GvqakuxkOjDYa7BGdV6oOXYjtwlHcBCCt85W2RKTLfaSUNYKz8OSM77iXHvx0M9eT/RQMrFZd/CXwjSEQ3jb4D7IWy/eNJkadKCzu4zPXS7joJ0ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s4yIptoCrdNFAHnc3pttjP4cFetMmBRlB74P6Bc07Qk=;
 b=TX9ztJRiQs7Z/gZzhYfPvidPNnXT+IgrvXv+D9ERVbP4hAm91vOQAT2NR/rWb+sY4DWuHGaZv0jcx60F6kiOgWYKrC3W9yLeTYKK672EKwOIcQ67nVS4JNHoLKeNJNqkSLI/pBFi6tea6fMn/lRlb2vitmSiQwf6RFgFC1TnPZ8=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (2603:10a6:20b:f4::33)
 by AM6PR04MB4279.eurprd04.prod.outlook.com (2603:10a6:209:4a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 12:34:34 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 12:34:34 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com
Subject: [PATCH v8 07/13] spi: imx: fix ERR009165
Date: Thu, 21 May 2020 04:34:19 +0800
Message-Id: <1590006865-20900-8-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
References: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR03CA0103.apcprd03.prod.outlook.com
 (2603:1096:4:7c::31) To AM6PR04MB6630.eurprd04.prod.outlook.com
 (2603:10a6:20b:f4::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR03CA0103.apcprd03.prod.outlook.com (2603:1096:4:7c::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.12 via Frontend Transport; Wed, 20 May 2020 12:34:29 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e6244095-e0c9-4dd0-ac29-08d7fcba26c9
X-MS-TrafficTypeDiagnostic: AM6PR04MB4279:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB4279CD43079F9A0B8E55D09989B60@AM6PR04MB4279.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ne+MgkIsMnaTLTkLpJ2z6gqLrrI4Qx2IoVfE2AKc4tS807kftAgHXnZVzPIKTmHr6jFM3b+hzmJJhmkQku8JxW8BOL3/W07GuLAkcGjPyWE/uHV/8+MvJnRAXwuyo6q1uKF9FmV6Y4L0ho66qH4rlrLehYr+q5Kw8dI2sN1SbSDfTEJWzXdzWcqBXroRYoADa++7hjaLiabzAZGKk4hsO2slPusfl2BtfSlvXpG2BTOxim/nqjDF90/yZUp2J6dtrjmrY73cTrJpb7KAfu6QpbJzyoZ7K56cQa0T6ohzxpoWYdt45T92pjFPeadWkRTl9UPzEH6oVhV44Rsmenr0HVFaFR6zGGuGA9WVI0Hma8xqkmnl8WooRFTULS/HbwicOQMnqL/q0xg1aVgQ5YQ879XJwv9zPG9bCdsspWB0nIpLnr4YIlI/xOTau9IuIFls39d281RFDg6ikOrZKfbTKPwpG6lQgHXZTw/ujBt130jeifkqu4sedkH+yYWzgrBokmmeA/lVWVXexBiM8VgES6EuKScuMor2vJie6EzasotDy8/gwL3yKUbdDGqflCX0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6630.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(6512007)(36756003)(8676002)(6666004)(52116002)(66946007)(66556008)(7416002)(8936002)(66476007)(86362001)(5660300002)(186003)(966005)(478600001)(316002)(26005)(6506007)(6486002)(956004)(2616005)(4326008)(2906002)(16526019)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: vmGcoHJotYLzHqbJfL5zT79CKHnUcTuxpUo/OqKyuJ6LfMByseArbeXKAbcZ+xQyg1p8AB6pf/eW5xxPXdxkp2MOk4RoEjbVFs6dbtF6e9fvc5SOFmZKJMORzGrKg3khxeVpq5Ctt22ghN9DZAP+tv1Wj7xpdrY50SxGYHxAmqiJzzWlb3KeSp04lzMGo1owjWrDt0gXRkDSXb529+GbnQLRCvtVt85fsTazawrzFj5bSTRNb9HarUFiScFb27IeGPTSexz26GqoVphnhBZu5qpSUMjjaGXFFGtTfzcDv6pi6+cDyGdSIAKRyBrDdyA+QXqa3BYM7U20DK4PkjpyHnLap9Y08nvda4FQGEB26JtyxckRyyCMchZCM4wPa+ftlUQENoGKB6fdrhAdA/mpmIIjc2fXVTDfs3fMzCqpXHEveFHE3fA+iE/a7496ZVBeWj67rU++NtX3nl9r0WYdhO+Y70cQciS7Xr5mjPkf0SU=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6244095-e0c9-4dd0-ac29-08d7fcba26c9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 12:34:34.3450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8Z4lFubiPYOp2CfcA0ZN6dx+fOzx0uhEDP1QkggxBEm59iqI3XySLq+z5c7lch3Q+G3AcyMK2HuAmiLDrHFD7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053437_347152_736D754C 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.68 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change to XCH  mode even in dma mode, please refer to the below
errata:
https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-imx.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-imx.c b/drivers/spi/spi-imx.c
index b7a85e3..8f758db 100644
--- a/drivers/spi/spi-imx.c
+++ b/drivers/spi/spi-imx.c
@@ -591,8 +591,8 @@ static int mx51_ecspi_prepare_transfer(struct spi_imx_data *spi_imx,
 	ctrl |= mx51_ecspi_clkdiv(spi_imx, t->speed_hz, &clk);
 	spi_imx->spi_bus_clk = clk;
 
-	if (spi_imx->usedma)
-		ctrl |= MX51_ECSPI_CTRL_SMC;
+	/* ERR009165: work in XHC mode as PIO */
+	ctrl &= ~MX51_ECSPI_CTRL_SMC;
 
 	writel(ctrl, spi_imx->base + MX51_ECSPI_CTRL);
 
@@ -623,7 +623,7 @@ static void mx51_setup_wml(struct spi_imx_data *spi_imx)
 	 * and enable DMA request.
 	 */
 	writel(MX51_ECSPI_DMA_RX_WML(spi_imx->wml - 1) |
-		MX51_ECSPI_DMA_TX_WML(spi_imx->wml) |
+		MX51_ECSPI_DMA_TX_WML(0) |
 		MX51_ECSPI_DMA_RXT_WML(spi_imx->wml) |
 		MX51_ECSPI_DMA_TEDEN | MX51_ECSPI_DMA_RXDEN |
 		MX51_ECSPI_DMA_RXTDEN, spi_imx->base + MX51_ECSPI_DMA);
@@ -1273,10 +1273,6 @@ static int spi_imx_sdma_init(struct device *dev, struct spi_imx_data *spi_imx,
 {
 	int ret;
 
-	/* use pio mode for i.mx6dl chip TKT238285 */
-	if (of_machine_is_compatible("fsl,imx6dl"))
-		return 0;
-
 	spi_imx->wml = spi_imx->devtype_data->fifo_size / 2;
 
 	/* Prepare for TX DMA: */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
