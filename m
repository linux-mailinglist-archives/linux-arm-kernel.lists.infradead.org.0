Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCA7181363
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:39:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcjHhaIRMHChjL3+rtSBqY+5202BjhuR+z1wc51Zo9Y=; b=pv3qBqe8GOdT1U
	eJRRtZ1DrFY1j3gkVO/ccwkjvlQqckwUGklMbDl6dE1SikCwCwpuNJ2/F2kwjS7X3h7hpYVmi3hHc
	ezfDMVjkp2sbo/Vh0cpI7gtxVW0mE+135v7cTGTe9FKlUzkIn8GIe3RXhL+Gznova23QKNKpgjPum
	lA3SwUCru5BfgXdPrcjzQ1ftpLxm0L2dIrwoeo3ZOBgsNfpt/YLxoJcPwK1hzTUqEp3fwd17p5VaL
	WXNhdLEOWNCd6fsGovxT9g9ShR8SkKQzUnf1PUZqr3w1H34u/SPhqZ6dPAO9AercYMxmsOsW16QKa
	Jt0peXUmLE+KhIVgzVcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwtK-0006yv-H4; Wed, 11 Mar 2020 08:39:02 +0000
Received: from mail-vi1eur05on2062.outbound.protection.outlook.com
 ([40.107.21.62] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwqd-0004bN-Qa
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:36:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VquLrC3Lbq0hpbNzCmXApRSyeSQQQARhhVr8I6PzLWjpEMOUqVlla/xb6YM/+7O4X3f5YWS1+kr58Ozvwqum0mET8k5mU3hF849CiTnkrboaNr67nAPT2IYhtQ7xdHafn57eFo6qLlcRrpnB+2LDs3bmFA9IqZrTjEKlKxPs5klPNFPZ0mLRKIOdCKzdemVXswiKEBipcxnKJbMiUjduOR5OEIVrFh0LNoWMBXJ6cyCd9CXrQwD1BNTTr42TJpPXEnTzpFqxOBG4TqqyjTGAJ1wztNA9DlLVO62gRG7uElYL2VfhChDa3sdt1h0QpTeC8iqoype80ZrGuNBddAPW9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5QVrrxM5V3to/01OHwbgEbI8kMuWaoA4cgqaP9yoGU=;
 b=oFXICM8iFZ0HnosdZcFBosD5D2WPOOEgmOlWkb3V2+JSEsep/quDDj15idNzgxCWLzjbbedzK85mm70bgaZ/Q3SAFcQJ1xBFZavsgrHxnhBDIi0dvWOhjuKCMzjIEhSyX4FkWTLn+toXFxJwrumZ3yvSLtDGMcGXVXRRBvWxwgULJHXnA6rA1CBdCBWJ7dE6uH+HAUJeMo4SyyGtrbVTbJ+acx0MR3EdtJ2hDSFhiow9VO+3P0AwRV+MdfRjpFMzhQ+0MzPj1ne+O0tBVw6vNFZ4yECeRpSvrr3p51jW3y54ecg/brqgWdLrpaDcY/+U/nNPBZI0IHnsuGFpWDQLwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5QVrrxM5V3to/01OHwbgEbI8kMuWaoA4cgqaP9yoGU=;
 b=RuEC6P4CGBLmV7ZIeFPSPx1NrVrc2KcT85ndMrCtNWmht0Bwe9/u6KBAYkt8W0fIyeQYnrt+ElQI7kVhxq4hy1Pzb+ABownNCgPlQ9UoduLcAVGn4qWpWLkYiCAXCKVzuDTbWnKIRnGhTTtPBEv/RPweJ9JMNif+qwHIfgbnMsc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6462.eurprd04.prod.outlook.com (20.179.232.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Wed, 11 Mar 2020 08:36:12 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:36:12 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 10/13] dmaengine: imx-sdma: remove ERR009165 on i.mx6ul
Date: Thu, 12 Mar 2020 00:36:33 +0800
Message-Id: <1583944596-23410-11-git-send-email-yibin.gong@nxp.com>
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
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:36:07 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 59c27a2f-9216-4683-9015-08d7c5974172
X-MS-TrafficTypeDiagnostic: VE1PR04MB6462:|VE1PR04MB6462:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6462C40714D5A689FE7F9A4F89FC0@VE1PR04MB6462.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(199004)(52116002)(7416002)(36756003)(5660300002)(6506007)(8936002)(966005)(478600001)(66556008)(66476007)(66946007)(6666004)(316002)(2906002)(86362001)(2616005)(956004)(6486002)(81166006)(16526019)(186003)(81156014)(8676002)(6512007)(26005)(4326008)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6462;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QvldDmulQq258XGsLG/1pqsymH1mqrSv/i4SlrZL76aLA4FTBO3HsYNSonYejJdZyxkkocKHgtGQlWJ+hMndw/zX7+EjqJZPhdlU6TaRNFyGlYKTDpQP8hW/BPnXMwLl4eP6RlUuUcaLfxSCOj5YCr/3Pmidwa26nJQNd9C9S80fge1pf+VsyPT/YsQkothFD/reKqz1vL+dLk+ND4u4B2KvRgo3AnMXZxPTDbvJbyYcKC0MbTgbKbGO85d2XhxEZlBlVUaUDtg0a7L96t9nCzTMB7gSlnW8DcNaZe+nI6iizVO+YS7BHRhT2JlCj+mNYA352gJM7rkW2MOVpLVMxMamD1XgKlhBzkZDT74bsk5EHBo+UeS09HhYBBX+s9nbNzv7+iiSu9k0S1qo0//TujQoM+zXCtEHpFQdJV6rcOy6a4/OG+uGGawuiiqKAc4my/SyTOB0+do+Zm8zXugKRoylDJnO4HUHQZewJvZ/6WyiK7UbQQvb+IZvPIpLfcFZ8V8OgWtOLUI512zOjT4lrWfG7mdC0+EhrzUIUuhtBgSC3mx61K54bBf/Pxggl08xKUGUSsBO0+zPj68jwlgvMQ==
X-MS-Exchange-AntiSpam-MessageData: CyhZNdVMmmxv5mTseaASWlNElTahm9d8KTCRmHjgmYzYZ4VR/wm0ED94KhAQrEcvjXCb0WG8K8fjIyYYvXhoEZOsFzftbv3965P/BYwBsrfia+1LNGAd4l2EuPTLYbrhuvMWx2vLjWDrfNWSdKZqAw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59c27a2f-9216-4683-9015-08d7c5974172
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:36:12.6764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Lei2V69UAQRCmDxT1R1LSIvlPV3J2TdQTbdiWMt+AaPAEj6cYABG46IVO/E3FV7EWhY5Gi7MDDtz1VCAdTx7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013615_909029_ADE7189F 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.62 listed in list.dnswl.org]
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

ECSPI issue fixed from i.mx6ul at hardware level, no need
ERR009165 anymore on those chips such as i.mx8mq.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/dma/imx-sdma.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index e034375..22f9f20 100644
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
