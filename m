Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7A41B5532
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 09:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zglAUb6Xcw2graM3/0LHgywAVMmfAwLooiMkzZezVTg=; b=FF9G00twXun/Vv
	gi7tdOzqDNKHWR/DxitwbWvvXKjVmtmRXKmxLIHbeG/7Wc3mb0v1VV/ZtPNpRo7Bsumw0/0XxCMz5
	8BY3WRbpkGEYoL2jOc1ZVZfZWtqmCusQiSgAzCpbmLghXeiqV2+XsefngHucINzE+iioT0zgg8nFS
	AtlQDkZK4q6/XvnQ/kLqC7u9agMTAOuy5SKuQUXrJEAyHxHSrd5OivvkUQrwFQpj/AT7g66dmhhtf
	8G2gd3zVU9QpwHQijdfuykMJ94i5vMNME1Txy3+70xAlOIm9GrWV9DttTclbXrdxnOt/iVvn4AMm1
	orF3di2rZozl+CVS+1Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVyZ-0003sy-0O; Thu, 23 Apr 2020 07:08:47 +0000
Received: from mail-eopbgr60071.outbound.protection.outlook.com ([40.107.6.71]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVyC-0003ju-3r
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 07:08:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IjCgockGVONWTR1/HSbHOjTA9NbGSxrSC0dwe6mOy9PBnA1ejqiVC2WQEQWz6eAu2myorM3mxStiIHnuFCZTOu9+lY3vdaO27yGg5tTVVTzRGwGIZVrEk80cWKVW5n5fM4ZRTwFBx+IHB7tSky7CZ0DOWigqdB0kdp1iS4szEzMBVNLx1LRMMyz1DZrDEGtbCUIChnzeX0bzk9K+W/CFXBvoPtKd2u6Z2yADHhyr7akUCUPav7h2wSXAbhzjOW8ymAHZRVfKmPBTgUaJxY9X+2gQn0TWhjIs+bJDSFO4dG41pBUT1qhWkheL9MFPVEuGW3r7BMeWUYH7RNsvHO2PJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ur8Au3O0xO7Md6JZwcMzv0kfcjxps9aYPr10QkeweZg=;
 b=jo6MG9V94ht0pi9wJlj+2fLQ6xUi2rlxzGknRmeI7QSfVY3YT5A+978bthf3q28Tkm6hkqB85PJlBzBUoclrajg7a9mgDsKR6r/HZHFhc6vBFcDXK4QgkbBA0PGHqtDxV9TpNeiuvztvqzq8agMvpOkWRibjnZgpRGW7Up5s7LyScBIpvIo69nRQLI15ibEbPRcIJXr1CpaXQq5q8d/ZRNVzeIUd+0aMsqjWAMLXOKfRNCY4bmjz5zHj736wjXa6sC8VcLYX6r8KK62jKnLaOjUWbE/5Dl9FML4pl4uHHjhMQpP5w5m7yl65JvyxyYA1oLYbni8vw1REs17GoKD2Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ur8Au3O0xO7Md6JZwcMzv0kfcjxps9aYPr10QkeweZg=;
 b=gBtctP/Dw3RhZ7DBKXRcDuFgGRCHVEXrDBqf488fWv2xEfCgV3+u/h0d4okeSs7FkxwzWEMkjgFJdR4UnwTTbYDznJFoxYE/hBOgxn6EKynmc3HAwTAt0GS1ZJ03StzhLYt/T2p5vlxs5bQMZBAXIbYM1hE77vFWIjTXeCP3ROY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2855.eurprd04.prod.outlook.com (2603:10a6:4:98::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 07:08:21 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 07:08:21 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH 1/4] firmware: imx: scu-pd: fix cm40 power domain
Date: Thu, 23 Apr 2020 14:59:31 +0800
Message-Id: <1587625174-32668-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR04CA0149.apcprd04.prod.outlook.com
 (2603:1096:3:16::33) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0149.apcprd04.prod.outlook.com (2603:1096:3:16::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2937.13 via Frontend Transport; Thu, 23 Apr 2020 07:08:16 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 71d9c54d-9967-4146-50d4-08d7e7551b02
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2855:|DB6PR0402MB2855:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2855164FCE981F81C2A18D2388D30@DB6PR0402MB2855.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 03827AF76E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(366004)(136003)(376002)(346002)(26005)(66946007)(4326008)(6512007)(9686003)(66476007)(4744005)(6486002)(66556008)(69590400007)(6666004)(5660300002)(86362001)(8676002)(81156014)(6506007)(52116002)(16526019)(8936002)(2616005)(316002)(2906002)(478600001)(186003)(956004)(36756003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kdJIvjKUk7r7WM6lRRx+NL5CVTHr+8ElrocAA2CrDHECFhFLUBtZqduHSKyk6UTAJpySL+mXng611jNeano9myrknuC0H0ft3ZaS3Bq1a9EJEFmLUH1+ctp/NHo56yvNlpxVdrZas/pgW1TJsgcDVcfYdBIBD3sssHRL1ZIH9WSSqye7lv1O9yTMj5+4zPNsPmell9b/zQ3qyedHdZF/eWZmj63eyg+8fbHVwpQEBPvQrK0Tm0S9vDgI8iwxMxWnNESVbmn8jef1uKFWp8XqpB/4E8oyxV4mLlCy/doZQNUxv/bugWgt2GlCnvwf2FF+t0Vp9vvTD2/qNAVAQkYG07DLJNeh54AYmDcKO7HnRt+yLB05JA7wCS3trI92uEjRFsUMr1rODTcTT0P6VsdI6GusOd0kd8Xz6qW6f0Yw/ODTEx2iwbcABygxU0MI6k/YvZc5lwrRO+xe8bRLaPF3AdkEcYqHGIiLNp4HdktL4u17QPxB0BzY3FkpCOZxcdyr
X-MS-Exchange-AntiSpam-MessageData: KChe8/LwsqOcGv+2+CYapbG0xu9zIsQh3G3IYZ+uZR5+RFVJfoCxTvYumzCj4VeO2GfScmrUqKZrETylRZcBZkj6lFnhaBkrXyk7+SxaPrFKqjB5NbPNej1pqryJ/A0NWNpYVtVU8iWO0A2h6UMdhA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71d9c54d-9967-4146-50d4-08d7e7551b02
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2020 07:08:21.1385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kCro14OwojSUdZ8ikP4TgrD/IwfPwtNiwHai0HGGmzgh0wo9cQqpbLxp/0Djy2QHRiHKIEDHAMPFe3cLLXiq+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_000824_206884_854040A6 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, festevam@gmail.com,
 qiangqing.zhang@nxp.com, linux@rempel-privat.de,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The postfix needs to be false. Alought compiler use 0 for postfix now,
and take start_from as 0, it is better we add explicit false to postfix.

Fixes: 705dcca91d0a("firmware: imx: scu-pd: add power domain for I2C and INTMUX in CM40 SS")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index fb5523aa16ee..d1b313fa7b96 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -167,8 +167,8 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	{ "dc0-pll", IMX_SC_R_DC_0_PLL_0, 2, true, 0 },
 
 	/* CM40 SS */
-	{ "cm40_i2c", IMX_SC_R_M4_0_I2C, 1, 0 },
-	{ "cm40_intmux", IMX_SC_R_M4_0_INTMUX, 1, 0 },
+	{ "cm40_i2c", IMX_SC_R_M4_0_I2C, 1, false, 0 },
+	{ "cm40_intmux", IMX_SC_R_M4_0_INTMUX, 1, false, 0 },
 };
 
 static const struct imx_sc_pd_soc imx8qxp_scu_pd = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
