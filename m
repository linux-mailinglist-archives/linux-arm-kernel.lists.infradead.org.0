Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E19618675D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:03:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cXlzuqjBbM4Ops99hVmEXvuwul7Q3FeEiPlDjuOE6d0=; b=Fk68pz1grfsMZ4
	vzXoYlJ1OqFSlBaI+YpelqG8YpFMloEl8dodSVUywaQ49KS4OAULB3Vd6XpU1bnBkWwy3/16nbFOC
	JhsDEySJT7d3vzNwLH7Q+1p2fKlnAcfTvYI3JKmVihxANVCsks5yDGs6rcRRL8q59OaAGI7hI2Ime
	9E+7erK+932B4DYrW/E2/kjCaj7wIOOeOO8DiY0DuT6eZETO3fm/9z2pitB1IxhUcK+isre6AISbk
	lNJgYccp0dzTGm62T65iRsT9WRNL6YcC4og4j3jpTjrGPhwY67pbkPFXHrF9bMoOwXHbN4sTjo7Z5
	tgbVAkezL+WayVww0iEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDleh-000057-G0; Mon, 16 Mar 2020 09:03:27 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDle1-0007vK-Nt
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:02:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MEKOeh6yAtFhtAjAI6j3VVLHU4ngEjLXXDbUcTnG9lbzKI9B+vMpW2UpeAflm+WzaguKJVUeU5qMtAEI1griO6NO978SPQVIpKWkkn6hOs55+lFPuG6W3MlH/SYsI9RkNA+2BHrEebWTckM1F3gwmGqvTGKjFzwAimi8kzvYvdQRVT3V+sdoRb0seE2+FiTWjxbqaXSXAgU2XtWXiGUUgEK0LyYV7Czfz2TPga+L5Yfp7ZCxnsGBJO4S3XUe3wWIl39foR8S5nxptT1hdRR+P6JGhh8X4s7APJOYGRCDd3SJwf3jPtvC/jM4XFXNRV+FSjTbKS6FZ/wgDi5KbiVRXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DybavP3i85ng06H4iREbLPAYZErvJ8NosgtwtwVJi8M=;
 b=HdPg31Nv4p+pnD4fMr5b3MMKesKn2xVU7l/SWWlO0eTxyOu57vx4NYR5GDZTIXM7KuFt2ZlNBVc37XwIGQPeUAFiVMyV8V7n58+rjnqZCX79gOg3Oqv8Zs+bodDf7yAis1eSXAa2XM0jrgN+eQj6QURTNr81Ew4BbEFvZShAjAejcr3E3ShLcPZEjzslQA7ggZ5uTM4o2Qgjg5PQP/ONsmrMNBkV2QLrqXKZqk+nMWIE28xaLU86mZ37c0sd3oO56y2PuLIp8xHLa9/NRpsoKCpKXye1gLBNgD4vtnMBscdkJpdaCxAL0D9avPpDSL6Cv8l8P6IOMlUpeeRLWaviqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DybavP3i85ng06H4iREbLPAYZErvJ8NosgtwtwVJi8M=;
 b=ShJTMTlIzCqGtXEKXANqJH6al6Ng6ehi9ddSPiLf+jxo53x4y6YsNDAfBgUxxieR/lR8dwFU0S+BZFYVUXmeb3640xoQYeWMQBLSJ+xBBU3bUxRXI3YwGoaID6GtHnjd4NmPukuOW4aMmROuiO8TJSY7f2Wb8Iv5GTosFY6sIuo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7169.eurprd04.prod.outlook.com (10.186.130.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Mon, 16 Mar 2020 09:02:43 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.019; Mon, 16 Mar 2020
 09:02:43 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH V3 2/4] ARM: dts: imx7ulp: add pmc node
Date: Mon, 16 Mar 2020 16:55:42 +0800
Message-Id: <1584348944-19633-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
References: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0126.apcprd06.prod.outlook.com
 (2603:1096:1:1d::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0126.apcprd06.prod.outlook.com (2603:1096:1:1d::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.18 via Frontend Transport; Mon, 16 Mar 2020 09:02:39 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5b672b19-6abe-4702-7180-08d7c988c957
X-MS-TrafficTypeDiagnostic: AM0PR04MB7169:|AM0PR04MB7169:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB7169467D7539223D60740F9788F90@AM0PR04MB7169.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-Forefront-PRVS: 03449D5DD1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(199004)(9686003)(6512007)(4326008)(16526019)(8936002)(81156014)(81166006)(8676002)(2906002)(86362001)(316002)(26005)(186003)(956004)(2616005)(69590400007)(6666004)(36756003)(4744005)(6506007)(66946007)(66556008)(66476007)(478600001)(5660300002)(52116002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7169;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MqkyZcUzlKfalqAEQp4mZgEne63AL7lJ70LHmjfn+vfrVRAABrGOaPsRLFhZitfCs6y8PuTZWXvlhRRJPWZ91Em8MfdRjZac9qMvSMsmR6QufQTcGSbdhudn47JoP6fEDsfZ8Qpc5PkO8DSb3v2QB+FCZn8HvG6gNBdy3Dtov9WuFQmV+b0R8wd9M50HlAMSbPLlDfAU/XiIKz8YbKuvZhGejS3idOVUCKtyXJBs7dBEqiWpFFXZyf2C+CoRde934L6QEFk5yntpeK2VnguJrc6QtQzFLjRaZJoagqx3sbnEcBMTceDKG6KcZgwC3L4wrNonMgmqfJ1ONY+i7HAhdlxb/OsQU4jawM9nfAW3ERlCrnELBvF2n3FH9Rd8QJ4t2xamch+r2/1Xci1ava2YGoIiMELWLu81tJTC5qzV9z3WuHsXpnTGi74TAzL4J/SGpEzYLq1EUVTrToIGSLdwzskhv1j+Oiyh4e94wSxuyeTbfRGFkIkUxthQGbrzYgtb
X-MS-Exchange-AntiSpam-MessageData: wpvSxyl+MAtTI2KiHMcd5XJPecFmmxAfUKVRzisiZg+aUsuX8/TYHw6YJrA0DO+J6WSG/N7k6pfvELnCfJiK711Q6LcxLJ3Pnp1g6Fy+sPC3VXZ1xGTmg3aDIzArvx8GFm6UKovzDy3JfWspzxYSnQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b672b19-6abe-4702-7180-08d7c988c957
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 09:02:43.0598 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gs3NkqcVuKMhlhL9cpFo+8Nx10jadjtiOdmCH692EEYzLkTOF46CALpVkvzZG8rTtXX3OyYKglEgd/wprO/nhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_020245_801762_8C4C229A 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add i.MX7ULP pmc0/1 node

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index f7c4878534c8..bc9d692c0530 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -286,6 +286,11 @@
 			assigned-clock-parents = <&scg1 IMX7ULP_CLK_SOSC_BUS_CLK>;
 		};
 
+		pmc1: pmc1@40400000 {
+			compatible = "fsl,imx7ulp-pmc1";
+			reg = <0x40400000 0x1000>;
+		};
+
 		smc1: clock-controller@40410000 {
 			compatible = "fsl,imx7ulp-smc1";
 			reg = <0x40410000 0x1000>;
@@ -447,6 +452,11 @@
 		reg = <0x41080000 0x80000>;
 		ranges;
 
+		pmc0: pmc0@410a1000 {
+			compatible = "fsl,imx7ulp-pmc0";
+			reg = <0x410a1000 0x1000>;
+		};
+
 		sim: sim@410a3000 {
 			compatible = "fsl,imx7ulp-sim", "syscon";
 			reg = <0x410a3000 0x1000>;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
