Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732961DB3B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=597Ixj+m/oknABHG8oAmkoHJdnpcCkUxhV52mqDKeeM=; b=Ueasot3D3GyTXN
	iRNAbe7e3lEdkVOZ0Pjx6+vUQ610xpVi7YG9ipfLyG5jgtCbs8k2jNoS8LLw8hsMBmpejKn6XHJyd
	TCSV6X3vDTktda/o2r9kqMthtALqKcmJwHkUdkxtKFab4ouswevu+7//H/1MyCsc4p80xO74CUsBa
	452ZlegDkZwOb3bdDKFrSuNlcslvBctzm8Q0DVhOG/ptP1OEQviBbL7rszFDH2jLa7dHDGGIE+pE3
	xQtx8Dd6sNKhNypeOqa0d9fEiiZDUf83g6HL9OMXujhNCwBmsi6Jc+vKBVTARAxy4mr5HUrawj/k3
	Nn74JxDIrCza80a4/rsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNzI-0005Ia-FI; Wed, 20 May 2020 12:38:20 +0000
Received: from mail-eopbgr50081.outbound.protection.outlook.com ([40.107.5.81]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNvx-0000Uo-Rw
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:34:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YndWWaVuhD4xYB26c/Ih1sxJOoWWhty5oVNtJ/yHt27B/p74X1DTwZIlpmwbfC8HqgQdYbflScllbxE6Rsb1ARRLIRdrPBgb/68mbTMC1n2t6eq0CSbuPoNaI57uVaBtBaZ1TTRJnQka5GWHrccdX0NvG5dBKlH26H5+ax5Oc4PNoLKf0Uh8d13z7zuCO7rqRR46ulBEucGOtgdjR3BctHKG5u4/nqeXiMA+rR6EApxIR+RJgKVuAHKRlOdgMGrDNrNV4dKPqV6rlkUWPgZePaxLP+qq76Y+78q9CchZ3n4w4/Boyxbwj5vUDE6QR0PV46NeeVO5UtozG2r3v1sdkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E3U69uN0DL45TP1sCU2rBpvu0XorFo1Mf6dwI30ew/0=;
 b=eUBNqIz60j7tsBRIVeOIi2YCS7Nm8prAq/2pmd9j6EAnVco7cgrhMPLSFpxH9xle5a7fafT/JFyAsTwIaBIyIDu13Jy9m9QRpgnQ0UW2KCuDvgjpIb8JWE4TPyAmrwFvpLErRUB5A5l91ZEbs2Is9i2CxcnN2lBvvFL3hzExdiVBUzrL14O79LulDVKYmVJoy8rF17NQn33WHEbV+gkaAul2d96k4dTQrF/u2Kn0lPTK7sZ7HJ3VbHjE0Pyz9v8Vkbsv4Kt+ppYnI1xTOTpX/4Mf8ciANSzGHvTdpSP11xId/xEcH0C3gAVt7G2D2X02Fqx09OGqUppG3w4JunRxtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E3U69uN0DL45TP1sCU2rBpvu0XorFo1Mf6dwI30ew/0=;
 b=Vo6vY+YRDaJaeR2sl6YPSFJXw8ln7cXBHDq+/EJ3oeMZG02R+M4Z0ysBITsZoR6pSylFpC6k62GNodmOBzvsbs0m6CXOAuh5wmm6/j8fEUtnFO9MWFNDO0eBImWjoFCLo3GSPZsAhNdmcgkSLuAySbtyJfDHZON/w8ehUuAV2M8=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (2603:10a6:20b:f4::33)
 by AM6PR04MB5480.eurprd04.prod.outlook.com (2603:10a6:20b:96::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 20 May
 2020 12:34:50 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 12:34:50 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com
Subject: [PATCH v8 10/13] dmaengine: imx-sdma: remove ERR009165 on i.mx6ul
Date: Thu, 21 May 2020 04:34:22 +0800
Message-Id: <1590006865-20900-11-git-send-email-yibin.gong@nxp.com>
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
 15.20.3021.12 via Frontend Transport; Wed, 20 May 2020 12:34:45 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fa0da7b8-23dd-4d0f-014a-08d7fcba3086
X-MS-TrafficTypeDiagnostic: AM6PR04MB5480:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB5480EEE3F307B300AD48BD2389B60@AM6PR04MB5480.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WmDw4cEjSwRbDwKrNqjW4snjJZLWNKItgjG5byXIsbXDvcX4OociAOFCu1kvHvP/PAbA/Q25d8PubTG1TNQjbCpaf+vUe6i57I3+OEPavwn23Wbs92m0mGweCSjaM+aPNd4srEyxHPbL4C3CUJqYt2sysGrfH/Jp9Lnb9/Hf+rEgF8LfogKTYGmMtiVUUylMbpotUnbpOpiGsyDZENfaFyJ1FTh1knQP+M1quM0or1XyNyZyKJkpGMBX88n/gUYAEWHesjz1q9wPq/sefevhI20JxPc+lfQW9Z4u8KKfLgEs3+4s7jhFzFdD3FKpTOiTSU7oLABg7g/vew5ekEA5jNgKad1Mhbr01RHKdPpjPvQvrwNxbr89L6YXs6WL328goKH1qOI9zDZ9yx55xm0oXVckKy/WN1WeSjfelIp5l9CxwvnchDF7oxQMS6dV2Xg6DzQhRLUKO7Okc3DT9QQQNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6630.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(366004)(136003)(396003)(346002)(66946007)(7416002)(316002)(4326008)(36756003)(8936002)(5660300002)(2906002)(6666004)(52116002)(966005)(478600001)(6512007)(6486002)(2616005)(956004)(6506007)(66476007)(26005)(86362001)(186003)(16526019)(66556008)(8676002)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: aho53+BuGEHvLchGkB+S9tkr28wxaInJZRtmZmrx1A08bq/7mNDtwjC9TQThERyMmkb93R51rjShUDF36vqnw5aNdrD+UL3t2S3pvqer/3CBCHKEPPWduk/Xq2I94wLHjAm5IszF4d+kJcaZhhT9zXRuTuPCG5EPBRhrTALdEzpQpZw8EX13UDGrUFXS/yWt5V/ZrVKmeAB09tG8nDDBEffZIrc8YCwhOUMoiwxqH0AcqddX3QHxjm4CbGPLcjiwZqCaqzttvtpMWgY98kZjhCzt0BxyMGht4ztuiiAkFiwREv7U+kExKwpuQmQ4MG/ONNqV4K6AfaftORzJ61RR/hJ4YVh4UWx1kClZF/vU2+l8NX0yNKy82x7Q4CtL8gbtxGVgXq7oPqj3F4hrS2p3ddiUCMibHJXsUGlyJvGK4YzuZF2sIgGekIEJ6+H9g8mLzvuTGAKio3d6HqOBlhl8yXmns29OxNrOpg/jtUbPrWM=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa0da7b8-23dd-4d0f-014a-08d7fcba3086
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 12:34:50.6808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xreeeYMo/2Mc+LXdlIJcNgXGK71kJPSQwPXYltGBG7EF4X2eDITAhe8nFxIKLrrO6/D1DflhKsnxQYRnDm895g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053453_920177_57430A12 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

ECSPI issue fixed from i.mx6ul at hardware level, no need
ERR009165 anymore on those chips such as i.mx8mq.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index db4132f..be86ae8 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -419,6 +419,13 @@ struct sdma_driver_data {
 	int num_events;
 	struct sdma_script_start_addrs	*script_addrs;
 	bool check_ratio;
+	/*
+	 * ecspi ERR009165 fixed should be done in sdma script
+	 * and it has been fixed in soc from i.mx6ul.
+	 * please get more information from the below link:
+	 * https://www.nxp.com/docs/en/errata/IMX6DQCE.pdf
+	 */
+	bool ecspi_fixed;
 };
 
 struct sdma_engine {
@@ -539,6 +546,13 @@ static struct sdma_driver_data sdma_imx6q = {
 	.script_addrs = &sdma_script_imx6q,
 };
 
+static struct sdma_driver_data sdma_imx6ul = {
+	.chnenbl0 = SDMA_CHNENBL0_IMX35,
+	.num_events = 48,
+	.script_addrs = &sdma_script_imx6q,
+	.ecspi_fixed = true,
+};
+
 static struct sdma_script_start_addrs sdma_script_imx7d = {
 	.ap_2_ap_addr = 644,
 	.uart_2_mcu_addr = 819,
@@ -587,6 +601,9 @@ static const struct platform_device_id sdma_devtypes[] = {
 		.name = "imx7d-sdma",
 		.driver_data = (unsigned long)&sdma_imx7d,
 	}, {
+		.name = "imx6ul-sdma",
+		.driver_data = (unsigned long)&sdma_imx6ul,
+	}, {
 		.name = "imx8mq-sdma",
 		.driver_data = (unsigned long)&sdma_imx8mq,
 	}, {
@@ -603,6 +620,7 @@ static const struct of_device_id sdma_dt_ids[] = {
 	{ .compatible = "fsl,imx31-sdma", .data = &sdma_imx31, },
 	{ .compatible = "fsl,imx25-sdma", .data = &sdma_imx25, },
 	{ .compatible = "fsl,imx7d-sdma", .data = &sdma_imx7d, },
+	{ .compatible = "fsl,imx6ul-sdma", .data = &sdma_imx6ul, },
 	{ .compatible = "fsl,imx8mq-sdma", .data = &sdma_imx8mq, },
 	{ /* sentinel */ }
 };
@@ -1169,8 +1187,17 @@ static int sdma_config_channel(struct dma_chan *chan)
 			if (sdmac->peripheral_type == IMX_DMATYPE_ASRC_SP ||
 			    sdmac->peripheral_type == IMX_DMATYPE_ASRC)
 				sdma_set_watermarklevel_for_p2p(sdmac);
-		} else
+		} else {
+			/*
+			 * ERR009165 fixed from i.mx6ul, no errata need,
+			 * set bit31 to let sdma script skip the errata.
+			 */
+			if (sdmac->peripheral_type == IMX_DMATYPE_CSPI &&
+			    sdmac->direction == DMA_MEM_TO_DEV &&
+			    sdmac->sdma->drvdata->ecspi_fixed)
+				__set_bit(31, &sdmac->watermark_level);
 			__set_bit(sdmac->event_id0, sdmac->event_mask);
+		}
 
 		/* Address */
 		sdmac->shp_addr = sdmac->per_address;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
