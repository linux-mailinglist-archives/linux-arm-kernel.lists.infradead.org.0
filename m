Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC22A1EEF57
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 04:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iI3m1hDOca4CiryQSFUzUoxkySjqziVMAmjHC6AocDM=; b=fapcSd6eueyKQ+
	9wxewpYJL7J533VXYetCyHzkV+RoBWE7jRdEWcCzBi+/CI+hw9oQ8VYdaHSSN4B83K25gMYf9aNO2
	Nd2yVIBe6+vYzP8tfFP9HSYKkgKeoCteYEVENsfzr0Ew6olNd8GGf9qQeYcgMBVrvLcmDjIu5rxiG
	OBbxBIDpwy5GHt5NCcx9y2kif+NGXtDBwt5gEcRDKdfZqyKMAmPNoMpwKqYxgyeaVqgQryzm61aVl
	SJ+oO+yjsG+50imH1MYE/VLff8l5+HdogNP3o/TrUhIjx4pgP1JY3Za/fK84M0aD6ZByN5LBS9uNX
	F5At/32Jabm+nq5VBGMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh1pY-00047L-79; Fri, 05 Jun 2020 02:11:36 +0000
Received: from mail-vi1eur05on2045.outbound.protection.outlook.com
 ([40.107.21.45] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh1om-0003ap-9H
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 02:10:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=POXDS+Cg0PIg9P9yJ9SgCYudsqaxeOoxARRNGhPvAEXa6aNH4VAE7nx6tymls8TEMcrTOYXrdg4CMSaNxQw0P62N9SpWzZiHOqOH8EXtcsssuUh8Hj/edKkNah8EZBy2mRZzQhakZzPlWOs5LWkYXCnkwl3lDvsJLLJ6onhscRxuJyhhlVLACVfuD9kSLcpsTE+uEKKn79+w2QKiFLMA7KPemIXw2128//dFnDnY2p7L+5kjOG5a8m0yCX5avjbGgXxLnlQGHz76aY4SkNF7vEKrpJ/x0fBVyYm6NL2IDViHocccBtx6LRXG9NdvpKSO/m8WBOHTR3wUNhe2vCVVGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTNMJKnmzYPf2aJxxbbqOyDbOxZ83LKwA9t9cMSoDrc=;
 b=AT+IzNx5vUUUgkFAMFJucgxLGyyJYpBOPU7SASXBekAsZ69QhrAePXko79miCJU0USLa/4Z4eDNzid0we8H7C+iO70Fs/Iq/euUyz0Jd5wqu4Tg+TTZmghclsmoSbijtgihoQwreHXPXvDYiLF3lZ5sUsPMJG0tkVqLytrHtCb3iJhGz9OztRuwtyIZm8ce3oOEe0toZPOFq86afAlHnyb61C7N+eBlx/zjNdWpICaZkvao3MIksZxdHPyrNEq4+UFvgHyo19tHFmaPq1y7qdzXn5Fyf6CfjbjbvP1HIn71awBDbxMQk3IQBzYZTZybFQcoOMO3MwXEcJveTGDfGcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTNMJKnmzYPf2aJxxbbqOyDbOxZ83LKwA9t9cMSoDrc=;
 b=ax2Rzb74CRGG9d5pF0pFsSi4QvrUETB2o6CQKcTwNK0pz0lnqLYwyzDkhCjMcTkfaDXiPUlP/WaxT1t7X5r8ybDBAEBXb7vqW3J6W3t6ObqpWzfjvBE0IkRdrrEe9ON4ESuHYbqbtqBu2/0eymVk1+IYvu83+76elDJ24Kdt6nc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2696.eurprd04.prod.outlook.com (2603:10a6:4:a1::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Fri, 5 Jun
 2020 02:10:46 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Fri, 5 Jun 2020
 02:10:46 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [PATCH V3 3/3] firmware: imx: scu-pd: add more cm4 resources
Date: Fri,  5 Jun 2020 09:59:32 +0800
Message-Id: <1591322372-3793-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591322372-3793-1-git-send-email-peng.fan@nxp.com>
References: <1591322372-3793-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26)
 To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SGAP274CA0014.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Fri, 5 Jun 2020 02:10:41 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f79eaed5-4b36-47da-c4ea-08d808f5a865
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2696:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2696DB0E2FBDB2C2D8B22F8388860@DB6PR0402MB2696.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:364;
X-Forefront-PRVS: 0425A67DEF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NrGuVoncW1u9tnGuSHmL3wFuHKr8sM35Ej7M/azG8faU5QBEjL99R6g+5j1DEXO4givrCOiEz6VSkheyRPj41OA633qdwWWz5nRiFoXMBu/Nz679T2VCUtboeiCxC4dqVWhkiwP/1a+sFGWuN8cIYoIReVqvgsJ1z9bY0l0kvrx9z0fLFrct8x1ZiEN+jIq0wsHL2cuADAb7Bw/0GDb/n1h/Ck68c2U3HswAzmTKUlY1tpZGrBjcjdD8qnqBPV4lwl5pXT411KWLGqOlo4lO0qtIvynDM7hHqMDUdZFixoo3HINcUVRExpyLLFzExuUIk3TSRRw0p454AeX8HOv79jPkkn4XGWs6Ws1wClw+4jqPiysw13w1iYskcJFZU8kl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(136003)(39860400002)(396003)(366004)(86362001)(83380400001)(6506007)(52116002)(478600001)(66556008)(66946007)(8676002)(9686003)(66476007)(6512007)(8936002)(2906002)(186003)(36756003)(2616005)(6486002)(956004)(4326008)(69590400007)(16526019)(6666004)(26005)(5660300002)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: CHKyqFLh6VGa8efsS7qiLWV9x3qY1ehlZtc9Sq9e1o2r+W7Nd/MP+7cRw3VnJGZWblSrf0jKM/t+gHQ9FRQqvZRHsjnz6vASz1GfUOa7yBgPK5X1LX0bpOGuQYWjgRMVHJ3Z3Fjj0Bfnjalvsq0BEkvtqKzOg8mOI8WGxTcv6PfzaC6bHERW18iKB5YuLltxOjVMsLXqoGE72qa1N2pUqy5Dtc4mF9/ZCooZtTuMHOva1WEZUD2WOxYZzYdc2e8yRsAHIqj7os4aHPsNbZCtEpzar4REM2SinP77e/DiF7sHRTpgA+pbYKidBTng5VQH1wB5RpmghusRuBju4UpK8nbpRZtOWkKsFcbMON/HyiLe9vf5ykHNlsxQIf40ToRmoVBPVnmTFZHQWdUwL0H9WgpX0pgVCYF3GKkMT/ibiYU1CDw03cknC5NwmpQhevZCfH+l1CrroRtEMY7S4rwODnw5grv8yyQhr/TeV9+aNT1EFMNqYYDuMhx7y63AmUJ0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f79eaed5-4b36-47da-c4ea-08d808f5a865
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2020 02:10:46.0555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c63ZYavQYsfLWxToPVop6E+BBFA7erYoxdocm1nRcW2WJEWF8ihIFEJIax+H+tpPnHeIrx/UfrokDroGJHla8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2696
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_191048_442348_35F322A0 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.45 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, festevam@gmail.com, qiangqing.zhang@nxp.com,
 linux@rempel-privat.de, franck.lenormand@nxp.com,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add more cm4 resources, then linux could use cm4's i2c/lpuart and
could kick cm4 core.

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/firmware/imx/scu-pd.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
index d1b313fa7b96..af3d6d9ead28 100644
--- a/drivers/firmware/imx/scu-pd.c
+++ b/drivers/firmware/imx/scu-pd.c
@@ -167,8 +167,18 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
 	{ "dc0-pll", IMX_SC_R_DC_0_PLL_0, 2, true, 0 },
 
 	/* CM40 SS */
-	{ "cm40_i2c", IMX_SC_R_M4_0_I2C, 1, false, 0 },
-	{ "cm40_intmux", IMX_SC_R_M4_0_INTMUX, 1, false, 0 },
+	{ "cm40-i2c", IMX_SC_R_M4_0_I2C, 1, false, 0 },
+	{ "cm40-intmux", IMX_SC_R_M4_0_INTMUX, 1, false, 0 },
+	{ "cm40-pid", IMX_SC_R_M4_0_PID0, 5, true, 0},
+	{ "cm40-mu-a1", IMX_SC_R_M4_0_MU_1A, 1, false, 0},
+	{ "cm40-lpuart", IMX_SC_R_M4_0_UART, 1, false, 0},
+
+	/* CM41 SS */
+	{ "cm41-i2c", IMX_SC_R_M4_1_I2C, 1, false, 0 },
+	{ "cm41-intmux", IMX_SC_R_M4_1_INTMUX, 1, false, 0 },
+	{ "cm41-pid", IMX_SC_R_M4_1_PID0, 5, true, 0},
+	{ "cm41-mu-a1", IMX_SC_R_M4_1_MU_1A, 1, false, 0},
+	{ "cm41-lpuart", IMX_SC_R_M4_1_UART, 1, false, 0},
 };
 
 static const struct imx_sc_pd_soc imx8qxp_scu_pd = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
