Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F62E181347
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 09:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3G6i9cYcydccTMjpNWLIqrm7oDkot2uqF8NNIsLFFY=; b=PFTUSi4+FLxGYt
	paLymJR3eBSBi+JkOpCFhffQGrExis2o3qjGLMyni/eWa5XQe/HhauGuCDWQvv5BrDdEMIMcz9aqH
	O6qt9Nl53vsikiZOaWsGmCzr8CLnMheSQ/9EAW9VA5kXmAEYWWem4PF4cDuyTsKeSkRe1C3H5loKi
	XyjRfaTL2LPel+EKUzLsUJVDPgVjq+M24Tdj7TNwGslxiaCmsF0eQhpROpEzwHhT8vu9SPmRwBUO9
	l0uDkQ/924/ePboUOiMaN/wyBpsR7KfbMjkleBpnQ4YPkUHU6ExFY2oT5JHBQqJSmcoTHa6/tqDFP
	wUKFc23xXH4O1mFOLuQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBwrP-000535-Q1; Wed, 11 Mar 2020 08:37:03 +0000
Received: from mail-eopbgr10050.outbound.protection.outlook.com ([40.107.1.50]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBwq6-000498-AC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 08:35:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DXKHsa5fkEBs3wUWZLOVEIk+wWjGd8ZJdVmvgDpWoYFR+dLFZXy0nJAa2IIEdzaf0X+MO3aMfbAMcv5qd5Et73MLyD/sA4tDOLNjnCUPI3dwMni4t2VQW8cOuTsoDfC5NlAvtgYSMleAUFKFuanQ5eVRgAYGaE1usyrNEh6GWpdpK7YSZbcoHKDOxAv2J4wBLTrCMNrHGCMpeRjhHJDeOMjsoERKTYXkdPTXG7OTuH9kTD1Fuwu48ZdUuKr1/CyOEQht0zyaY/XBrGJ3eBQWvwG1bNAalSrM4ilgrVeEuXjj4j1Bred5iTGn3QIhkH07R6bGLjVA6BlBKFtSt8PI3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQU5tzf+t2t35X5OIBCsPxLxNbwkyyrYCJLs6DM0iyA=;
 b=fkIDSL/HOjIDhy2QDawZEcXWZJgB5qpPWmtmQTdWOE71GCNsT3fdD/5CnoDa884OjaA7j30YGFVv7BNqU5t21eJP5cxaqi3mpOHHmPwa86a+O3mt9j8/1bi4IWac05qLxqQnJSsebdJ+iGmK/uaDBBnvBMnSlph71Zo2M/vkAIatVP3tiCH+X9y1dYO648v4AhLW+HBStvUsQTKh/ttXFBG4n+Ydwu8lOyjhgT63ATMqHFJWULNx0oXaNkK2m2h+ck4PH/bljyTkf7jzVuUBHD0m1UdUIWCFJ88RhptY8D6cPJtk8lVa9iOvevYzNYtAZRGElAHkTz5SiNe7G/9p4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FQU5tzf+t2t35X5OIBCsPxLxNbwkyyrYCJLs6DM0iyA=;
 b=U83t7UyfS3wn0Vh39lQMTGH0/nhNgMXWpnOc/A2TUKGOAoHTQxH4a3IiGKsbiSowJP1IgJNK7sVhiigfCbkQZ+tYk17A88JBOI/SNxXPRdNzv2WJazd5A0w61ovvFltt/aewI66viqP9SaXECXfQsgxtV6Z/Axmzbwu/OxIsiPQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6702.eurprd04.prod.outlook.com (20.179.234.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Wed, 11 Mar 2020 08:35:37 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2793.018; Wed, 11 Mar 2020
 08:35:37 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: s.hauer@pengutronix.de, vkoul@kernel.org, shawnguo@kernel.org,
 u.kleine-koenig@pengutronix.de, broonie@kernel.org, robh+dt@kernel.org,
 festevam@gmail.com, dan.j.williams@intel.com, mark.rutland@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, l.stach@pengutronix.de,
 martin.fuzzey@flowbird.group
Subject: [PATCH v7 04/13] Revert "dmaengine: imx-sdma: refine to load context
 only once"
Date: Thu, 12 Mar 2020 00:36:27 +0800
Message-Id: <1583944596-23410-5-git-send-email-yibin.gong@nxp.com>
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
 15.20.2793.15 via Frontend Transport; Wed, 11 Mar 2020 08:35:32 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 54c8e11b-09e9-43a9-b43b-08d7c5972c8e
X-MS-TrafficTypeDiagnostic: VE1PR04MB6702:|VE1PR04MB6702:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6702B0E281DC4519AD9E299289FC0@VE1PR04MB6702.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:119;
X-Forefront-PRVS: 0339F89554
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(199004)(956004)(6486002)(2616005)(2906002)(6666004)(7416002)(66476007)(66946007)(8676002)(66556008)(316002)(86362001)(52116002)(478600001)(81166006)(6512007)(26005)(81156014)(6506007)(8936002)(36756003)(5660300002)(16526019)(4326008)(186003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6702;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BWiYWxK/lbGWy+OVuEwoGIXG3kzkenGWR09BP5FUT73RuVWju3dGduIRT6t4ycSZeGYLPDNytQjtL7FTu36/6ohUNfnsRwqtMCy234lVh3Q4sywqGqYnyk8T7q8lvhAOsUmihl+RLForB9OZFLHEExwxLU/tKb8wJTP2K0t173JjMD1FPtuEqMLQVWVcTS/P2aob9fwAw+7Of5dNVYJ+ztzPOXUF2GxeR4j9tzWZmGXJmtvxpfTwfdbPxO6wmXk8Y5cjVIOLG1NNGII4SuacDapok40Rk3AJcWVRYm9HuhbTuh+lHPdPVhLRWD3pnxPeCDmM05VxhiEmG0aF5WT4IllqpKiCVBEjuSR8KsHWHhYOMqLIbYljusEd6SOPF+5fDtuyj1QPE7FfZ5yEA/nldlSv6WjDAkjYQ60gqLloxgHjO10Anytioh9rMoJQyGdUMNqt3V5qfeBsDHAoaK3fXtOFei6NDlLHetWv3OTCgzjbyqbevcHXo4KAdpiSoqPg
X-MS-Exchange-AntiSpam-MessageData: qGBGjy9N+6ormD/ZsS2h9WLk6nyfUOrCh3o9f/8hOZDQbV82yDB5wfIvivsSkcA2PYNhzCFe5UGadHffO41ZsNkLZck8PWldhljrdUnB1SOuDy+6MXJVPc7JvSENNyI5qdu2smQouSP5cimZPBUVTg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54c8e11b-09e9-43a9-b43b-08d7c5972c8e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2020 08:35:37.6426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KiUTSyY5Zvv2PdyoYTXWskqpKzJ6jRh7Gx5CsYMmMJzuWXEmZezd2Qu8oNRPB8F5gGRTmDtz0/pc/NrPT96/lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6702
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_013542_436358_10C3485B 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.50 listed in wl.mailspike.net]
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

This reverts commit ad0d92d7ba6aecbe2705907c38ff8d8be4da1e9c, because
in spi-imx case, burst length may be changed dynamically.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/imx-sdma.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 3d4aac9..397f11d 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -377,7 +377,6 @@ struct sdma_channel {
 	unsigned long			watermark_level;
 	u32				shp_addr, per_addr;
 	enum dma_status			status;
-	bool				context_loaded;
 	struct imx_dma_data		data;
 	struct work_struct		terminate_worker;
 };
@@ -984,9 +983,6 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 	int ret;
 	unsigned long flags;
 
-	if (sdmac->context_loaded)
-		return 0;
-
 	if (sdmac->direction == DMA_DEV_TO_MEM)
 		load_address = sdmac->pc_from_device;
 	else if (sdmac->direction == DMA_DEV_TO_DEV)
@@ -1029,8 +1025,6 @@ static int sdma_load_context(struct sdma_channel *sdmac)
 
 	spin_unlock_irqrestore(&sdma->channel_0_lock, flags);
 
-	sdmac->context_loaded = true;
-
 	return ret;
 }
 
@@ -1069,7 +1063,6 @@ static void sdma_channel_terminate_work(struct work_struct *work)
 	vchan_get_all_descriptors(&sdmac->vc, &head);
 	spin_unlock_irqrestore(&sdmac->vc.lock, flags);
 	vchan_dma_desc_free_list(&sdmac->vc, &head);
-	sdmac->context_loaded = false;
 }
 
 static int sdma_terminate_all(struct dma_chan *chan)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
