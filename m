Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9896E1CD546
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XcjHhaIRMHChjL3+rtSBqY+5202BjhuR+z1wc51Zo9Y=; b=q9sXM9v/6uYSZn
	72cBtm35zwA4enjYIO1Yzatz7xIiIq8HMNuUsY/+gfGUxmFjnh4gsxbyNUTu9ExuymVK2Hg5YICKT
	IFU17+9YnBVqp4NgxCOml95HV0aJqelcn2DtJpu2tOwLIFlOtfb0CCOZPnUcYU9uyvS8RQK/uhT6y
	8KLJhDD5Bv6YgBlnmP5kEPo2mwEtIH/hJ7MclCQzLsLl/DO/6MGbloesJZ3ViV/wMT+1N61S4aqGv
	BgYh0HZbO+6heYlmR3cyNtEOwf6r2UaqnT93UEQ2iSWLD6EWX7HumA8nOw7Y/uVSR041wK1Ys6k3m
	Ei4rpAKSG947s56j2tGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4qu-0007qi-Rc; Mon, 11 May 2020 09:36:00 +0000
Received: from mail-eopbgr130087.outbound.protection.outlook.com
 ([40.107.13.87] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4oH-0003Ac-JE
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 09:33:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CnsgNxW0QzA9kAmuQ2ncwOZVbbUlI58tjvDn6MkbiJ1lJz4WH0svFBJ0+iLUntvNUgeGd9Kp2NAj83V0htDOEAURWjK+jbvDU5FKW844Ahd21IPOShKq9temn2QMP4q3xo0khkWfe6KT2s43Y3lZwe0ybFGw835u4SzUxn6ebrPCQJ1L9k/0tfksX1zQQtFOWua0sGoMz6kImvpMKi3rq3S7ihTA/+VULjGkri+HdVdTOmX4S3eXu7fyF8BgJqzp0Dv8BFSRFkWrN3nKqS3CpWXQxN+QIbdlLEjZV4DjN40GDw99P1gtRCU4p5rSFqj4l+CGAgLYeKBSu+I3vOIpNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5QVrrxM5V3to/01OHwbgEbI8kMuWaoA4cgqaP9yoGU=;
 b=nQ1j5T9GUKEGWOLfYC/Gnj/8XyjiN63ve5otYSXevEN+w9/9s7p/nVGglNmESpSdx3jpow8utGuFFDCAncrudkEUUYgIkl74EP38umxdcNx6KtlNS/Oy2yXfS0yRoKZHe4zO48egC3DaJfPaf4FD1qZhtGKJVZFiM4B3f9R19WgBd76hAv6uJD57DdNQbp1kWUN7+iPOqv5OfjPgRWELEd4G1ZHgJVk+3dKCGfxO58W0d11ChlpxpaY0fevWcf2UrfM/ihPkXPS7R4skeCzeeLVeDeQI5ZK8TjMIfDgzYyKKbhmX79FL01nHPodxAYyYd/PtiHzf3KNrE5Ue+pbkAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5QVrrxM5V3to/01OHwbgEbI8kMuWaoA4cgqaP9yoGU=;
 b=nkzFZn/JdeQFyPGjAHf2d7UOiQVAjFl6S090wYrhJhEYVrTzHM9q4nco+FMUb2AlQFM4DxipigKeFOiRSgmu9fgakRMqoJqgaaF1/tLiC814mj8EXvcossw6bsLb7GCLLRiGm/TCqcamLjZdYzWBUzA/ZugjDyvkYmeIpSY0d8U=
Authentication-Results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6733.eurprd04.prod.outlook.com (2603:10a6:803:11e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Mon, 11 May
 2020 09:33:13 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 09:33:13 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, robh+dt@kernel.org, festevam@gmail.com,
 dan.j.williams@intel.com, mark.rutland@arm.com, catalin.marinas@arm.com
Subject: [PATCH v7 RESEND 10/13] dmaengine: imx-sdma: remove ERR009165 on
 i.mx6ul
Date: Tue, 12 May 2020 01:32:33 +0800
Message-Id: <1589218356-17475-11-git-send-email-yibin.gong@nxp.com>
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
 15.20.2979.27 via Frontend Transport; Mon, 11 May 2020 09:33:08 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9a07ee4e-c4bd-4756-3e06-08d7f58e53a3
X-MS-TrafficTypeDiagnostic: VE1PR04MB6733:|VE1PR04MB6733:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67332C87F28D4DB7240A441689A10@VE1PR04MB6733.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y5O9KHOYQA6KTpp1pFti8+ug7NaAwh6p2itJx69s/yJAZ2D7GQHvGbNCF3Vp9pFB4tL4kR4BcrCCl9Q+Q3QoPDsR1c/s6ai7GSYNm/Gr11F0BpjliN15EPFqyQaYH2SjWXxVrrYP390y0zFvK7Jd8xMpgKT2W18kpCj4szVNHJqBrz4byVW/QcpO4E/jUWTr36fK9hed4SeqH5xbdDPAVob/bTyadUbT+J1ExW2kMTdB6ampLXDyuVzPoZ++nSbCTx33RzPEIl9Fw25RZEprsfneWUayR7AOMt4Ew2TDlUKo/3xbnIzAx3rE6PnpXH+cK65bX1ecadOhVfbv6gHFah3n8FzqVfTGmkWlDwVbXu9vhT4n2a0sP5eYdrtx4wrK6GQCQVQhYGpkMUeddhmMuYh8GvxcKTiRMBYEdDxkcUriCRf+CjxO0ZIZM8GZL3/yaWu5CBUykc2h1OM/7B6TMtMz4S3LKx+c+BXs0XvPNLNkY/L01rgCmunnskjVmaQNdyMq9odb+mDM0U5Qi1icTP40lomaFRVMo11duapllsL8fDD/y0M9yjtW14rqA//n7LCD4+dzpBsx0HIZZM9UdYg7A/bN0x1F4znU0BWoZeg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(33430700001)(5660300002)(66556008)(956004)(2616005)(7416002)(4326008)(6666004)(52116002)(478600001)(8936002)(86362001)(8676002)(966005)(26005)(33440700001)(66946007)(6486002)(6506007)(66476007)(36756003)(2906002)(316002)(6512007)(186003)(16526019);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: w8CI3su9fInfOw+XcLA1w4gUxxzm0CXXufHm1rpuqW8otEoAxojGCBg952ThpDFh16BIYbPVAg+MywGiiKOoWhiqCx09Bp3Q6cfF3AqRbEo6SvIsZ5+9ChCJ6gUQBGn2VnBiiyOske6RmrRPnbXde9NtYhGGsYYf+zEtPmV0np0MGGP/cGsL5HSsxSlLy5Poa73zrcO52ojGCu0KPBBy0xyKv0PW9qZO4o8b1txZ6FmbhfNF9rrUDX2H3cXpGhz13ORaqEx9qcn7fR4pkGMWFtGjtlcTyliqelKSn44MQmobveTDk68HYhjKMyyV9J+jT5E4YV0uijGxmmcV5wzlLCSVjD/DlGQGyyp2EtZnRrnM396b7BSmI/ooyIwAQARJ2qrv3vzjdZGVJ51reZqf7PPJ7eVUREYBDvXoRAQV+VjSmAMVdRs9LZIbHIGis/mw7QqoL7+qB+TTnWERBCs8LQ1bnzEjRnAYCuH5Bm4Vqws=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a07ee4e-c4bd-4756-3e06-08d7f58e53a3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 09:33:13.5331 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v8Y8StJKVXMTYbNvuaA7Whtel15pXMhbLDhXCGa8S6+1HVug8wAHQG74B/kaGfI1oh58FTFoCv+w+dvRg9f86g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6733
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_023317_645669_3DA37183 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.87 listed in wl.mailspike.net]
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
