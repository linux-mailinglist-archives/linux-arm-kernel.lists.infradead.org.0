Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA40182C5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:24:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzEsvn2tCGhW5cFzPp0QEc/HVHBty8I0HZd4lZn5WPU=; b=Vtw5wqWx5x8GYX
	7Fzqg/jXfeG3qXlzQYtpdQ+5VsbWrfroRo0Da44p0vG8MOyu5rVQYOLLronXydPbtdEapLMa1SUZt
	bos7nRKYV6VaajlZjcQgmXuPxOVuHyQtz3cfO0Nthm+nfzZK3NEQ8wyEgxc1ppB802dG9yFb3MwHs
	bFcmlqsPJ8UQpTEiZ9D98hMuO9Wdi+vR5tjaTnQ49riWkNWuUxciGK7uFGzLuBND/NU5L7gMi+Rnq
	DrK++cLrSa9LxKf/aULHtEokv4EG+gBIeuo13qNBXEslr7EI6UeA1F9can+QtAGJKZd40BzNWqvuw
	v+w6vemdLZy6YDnisiNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK56-0004DT-T3; Thu, 12 Mar 2020 09:24:44 +0000
Received: from mail-vi1eur05on2057.outbound.protection.outlook.com
 ([40.107.21.57] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK4Y-0003vI-Jd
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:24:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVOXqqRdlSxcLAtxCJKc/UMMgDAh8ntkcwsbvLPTCJZAJWOdWTOupmaP8RVTFb0YOGIPrd+4JQ+H/ZzpMWwAsZPirQHnVV4dj0ZTVaiAOvhXAy6SefJ0ULmsOUzmlqitscomtaEFtDqdJizpNMsuwRVsBxRMHfImnsnojLmfuq62Z4WjzwGOgPiW2dHZU9h+T619m/WzcBLUwiF492WMasVgIlJh499dgDEaXDFtNHNpxC3Mdoiu/TqxSt10ILcfHMwUMnMp6js1bXkRfITWzuw7HvWCjnVv5EslIc8TMYJdABszCK+cDJFyFQ06JLsxW7tPxj9dW2ZkT+WRG2cNgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s3zY1hA9XArfHrBjjcGidvPAQR+wMzk/fGaUOjcaGVo=;
 b=MdhJdtQFN8aHRn/GRBP2+t0JGN8ttCFu3whYIpkg96SARGJ85IFHtSrnSMI7eo2PDePY6EOZx50RMcQdguBgtj+M2IOHnDxj9L4KnXbvfaxZU8KHhGjZdIfoyVzosM9ILW96UlIPThkj59KAhe42BjLAyr/SnsHZA9BDiIikVXQZC1AySAl2DEE0M5GxV1Kyb4W/p9ztuwlXFHPDstG0iuiKptlcM/SX7vIyPXQRQnchKno1jhY2IbXemhRFUqNuN41maNQZ4cdMC/gCVEy/v0wTFabfnCbHdgIsLiz8JC1CBIgYjnat3i/4DrLQ3rhzpnX+unhcxRk2BtlXdxybVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s3zY1hA9XArfHrBjjcGidvPAQR+wMzk/fGaUOjcaGVo=;
 b=mTx31oe87LTdCcSqb0o14DDVVr4NkQFrvgrwmfporFw7Xcu7KG4EuJQ0Wvc20WqhwGx1PHLs20X96UUh06/DktexO3X1OhmNrzOCyAYzaDVVTDOk7fOdR91gIa4dxt78iXugQSPr0EC0oVy/cX7PlhweHdS0s3PgP3Z0d97TpXE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5569.eurprd04.prod.outlook.com (20.178.113.156) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:08:18 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:08:18 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH 01/10] arm64: dts: imx8m: assign clocks for A53
Date: Thu, 12 Mar 2020 17:01:23 +0800
Message-Id: <1584003692-25523-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
References: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:54::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0052.apcprd02.prod.outlook.com (2603:1096:4:54::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.14 via Frontend Transport; Thu, 12 Mar 2020 09:08:12 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 64931536-c59f-4bd2-0ebf-08d7c664e7e3
X-MS-TrafficTypeDiagnostic: AM0PR04MB5569:|AM0PR04MB5569:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB556994618F5CD750899FEEA488FD0@AM0PR04MB5569.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(366004)(39860400002)(199004)(69590400007)(36756003)(6666004)(26005)(52116002)(2616005)(7416002)(956004)(6506007)(186003)(5660300002)(16526019)(478600001)(86362001)(2906002)(66946007)(8676002)(81156014)(81166006)(66476007)(8936002)(66556008)(6512007)(9686003)(4326008)(316002)(6486002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5569;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IcPY82xykl8JgxCnnQQMqjEbj4skpPJi3MTx/gcBSIy6qIzylpH1h293xNZ9fue9GIU+e2QilXQ36WFa0hy19o2LwdJCcklkaGUBE3CxL9C1xFBWlNqGEsV5q5Zh3EuMKsBjIvcGP79P1ozrTPANFhuBNk0n+wy3QMTGaVtYzOW1XrxYoQ9YUhCQxN8GufwquQQfxMjCRIQ2rvMTIZolYDsrLI8krkDwT7qvA1ye6iXJBSaUBHr29RutDH3ORa2VMhCMfasb+wowDrVAq718NpAO/fM0mfTk9ZeKXFYUrSgwlIjBD641TuosY+/9kudDoaE260T5VEeouLSd25+SQaF3voMc1BsfRyQBh6TI29lcQHVITYZPEg3i5KWFOnG7p5uX1EjD4qL1VxtF/epJ/9GB3Tdh0FzvxvE3g94Hi0Buk1B8Ph7HPoL5c/orc5MJa8h7VTu5k97+SD/+cWU/mkTiAzxgms+XWomyr22o6//oiZY1demIsKfXZk/M7m+wrkuT1x/o1f4nYsmH/TFnLg==
X-MS-Exchange-AntiSpam-MessageData: baVbMFO7wKhTVfuRB2HNguK0jtddBW/lEpV0NEonQ9jwsMC1Vm/jgc7eopD+gQ0tYl6WmVVRU6OhPx6NjHKWbAXvhQQWO5w54jltbnOwjOAi6EXn5IfdB+ShJ7lpWGnm4tDh0mYoIg6DmC6v9lRAtQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64931536-c59f-4bd2-0ebf-08d7c664e7e3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:08:18.7719 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k6dRcNIqSaQQwTEzENlwAfXyeUduMQlZWIsQc0vMbgxEhlF+mie99yd11cgUXJiPTJT17e5L01oKaealOHxUwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5569
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022410_647747_5EE1BD7F 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 fugang.duan@nxp.com, ping.bai@nxp.com, Anson.Huang@nxp.com,
 andrew.smirnov@gmail.com, daniel.baluta@nxp.com, agx@sigxcpu.org,
 angus@akkea.ca, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, aford173@gmail.com,
 l.stach@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Assign IMX8M*_CLK_A53_SRC's parent to system pll1 and
assign IMX8M*_CLK_A53_CORE's parent to arm pll out as what
is done in drivers/clk/imx/clk-imx8m*.c, then we could remove
the settings in driver which triggers lockdep warning.

Reported-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
Cc: devicetree@vger.kernel.org
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 10 +++++++---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 10 +++++++---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 11 ++++++++---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi |  9 +++++++--
 4 files changed, 29 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 2e5e7c4457db..8d2200224db4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -471,16 +471,20 @@
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
-				assigned-clocks = <&clk IMX8MM_CLK_NOC>,
+				assigned-clocks = <&clk IMX8MM_CLK_A53_SRC>,
+						<&clk IMX8MM_CLK_A53_CORE>,
+						<&clk IMX8MM_CLK_NOC>,
 						<&clk IMX8MM_CLK_AUDIO_AHB>,
 						<&clk IMX8MM_CLK_IPG_AUDIO_ROOT>,
 						<&clk IMX8MM_SYS_PLL3>,
 						<&clk IMX8MM_VIDEO_PLL1>,
 						<&clk IMX8MM_AUDIO_PLL1>,
 						<&clk IMX8MM_AUDIO_PLL2>;
-				assigned-clock-parents = <&clk IMX8MM_SYS_PLL3_OUT>,
+				assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>,
+							 <&clk IMX8MM_ARM_PLL_OUT>,
+							 <&clk IMX8MM_SYS_PLL3_OUT>,
 							 <&clk IMX8MM_SYS_PLL1_800M>;
-				assigned-clock-rates = <0>,
+				assigned-clock-rates = <0>, <0>, <0>,
 							<400000000>,
 							<400000000>,
 							<750000000>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index ff9c1ea38130..ad88ba3bf28c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -380,13 +380,17 @@
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
-				assigned-clocks = <&clk IMX8MN_CLK_NOC>,
+				assigned-clocks = <&clk IMX8MN_CLK_A53_SRC>,
+						<&clk IMX8MN_CLK_A53_CORE>,
+						<&clk IMX8MN_CLK_NOC>,
 						<&clk IMX8MN_CLK_AUDIO_AHB>,
 						<&clk IMX8MN_CLK_IPG_AUDIO_ROOT>,
 						<&clk IMX8MN_SYS_PLL3>;
-				assigned-clock-parents = <&clk IMX8MN_SYS_PLL3_OUT>,
+				assigned-clock-parents = <&clk IMX8MN_SYS_PLL1_800M>,
+							 <&clk IMX8MN_ARM_PLL_OUT>,
+							 <&clk IMX8MN_SYS_PLL3_OUT>,
 							 <&clk IMX8MN_SYS_PLL1_800M>;
-				assigned-clock-rates = <0>,
+				assigned-clock-rates = <0>, <0>, <0>,
 							<400000000>,
 							<400000000>,
 							<600000000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index d92199bf6635..3a96082e8717 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -284,7 +284,9 @@
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
-				assigned-clocks = <&clk IMX8MP_CLK_NOC>,
+				assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
+						  <&clk IMX8MP_CLK_A53_CORE>,
+						  <&clk IMX8MP_CLK_NOC>,
 						  <&clk IMX8MP_CLK_NOC_IO>,
 						  <&clk IMX8MP_CLK_GIC>,
 						  <&clk IMX8MP_CLK_AUDIO_AHB>,
@@ -292,12 +294,15 @@
 						  <&clk IMX8MP_CLK_IPG_AUDIO_ROOT>,
 						  <&clk IMX8MP_AUDIO_PLL1>,
 						  <&clk IMX8MP_AUDIO_PLL2>;
-				assigned-clock-parents = <&clk IMX8MP_SYS_PLL2_1000M>,
+				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+							 <&clk IMX8MP_ARM_PLL_OUT>,
+							 <&clk IMX8MP_SYS_PLL2_1000M>,
 							 <&clk IMX8MP_SYS_PLL1_800M>,
 							 <&clk IMX8MP_SYS_PLL2_500M>,
 							 <&clk IMX8MP_SYS_PLL1_800M>,
 							 <&clk IMX8MP_SYS_PLL1_800M>;
-				assigned-clock-rates = <1000000000>,
+				assigned-clock-rates = <0>, <0>,
+						       <1000000000>,
 						       <800000000>,
 						       <500000000>,
 						       <400000000>,
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 9bbdaf2d6e34..1f3ffc8c8a78 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -594,8 +594,13 @@
 				clock-names = "ckil", "osc_25m", "osc_27m",
 				              "clk_ext1", "clk_ext2",
 				              "clk_ext3", "clk_ext4";
-				assigned-clocks = <&clk IMX8MQ_CLK_NOC>;
-				assigned-clock-rates = <800000000>;
+				assigned-clocks = <&clk IMX8MQ_CLK_A53_SRC>,
+						  <&clk IMX8MQ_CLK_A53_CORE>,
+						  <&clk IMX8MQ_CLK_NOC>;
+				assigned-clock-rates = <0>, <0>,
+						       <800000000>;
+				assigned-clock-parents = <&clk IMX8MQ_SYS1_PLL_800M>,
+							 <&clk IMX8MQ_ARM_PLL_OUT>;
 			};
 
 			src: reset-controller@30390000 {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
