Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21007182D7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:27:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0b/EXgyXkXxOc179siLJ1yrBjXaR16y7/HJRVD0fB0=; b=E7xx3MQFXNtMr4
	O5CqCB55caDJDktNOgW9GGa0LwnVcvXC36pwbn4XbJLHOZJfsB79LmrNLX05PyfolegeriUIiO3j7
	wSm634VC8quagn0+mNQrfvoEqwfF0cTyP7koaynYaxp0ZRATF+EEUVsKYQxkjcztYm7jbvdrIBpFP
	iU9F71UHBOHQC+LGg6K6Adf7Z7H3wPU5wdQ48oHl1ReLJNgnAFqgmNGekeR0Wm07fzGK75B/hQVrj
	GKd0LmskbXNGMjp+mlmp2Zkx/Bxdy4KxqdOprp9caSXuscoFLYwBGbls80HeD3+T/h8G01p2lk6Ja
	o7QIKh3WHL9xPpBMATaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCL3T-0007NP-1n; Thu, 12 Mar 2020 10:27:07 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCL33-0007Ei-Qo
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:26:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iMu3DemGo+3eCaqYZX+d5avjwqub4aVTG3LO398+fxn68OYbogUlpSTquq12VscVHzWxdMCnx8HeIiGGQ0YPOfXYIspIpxnIhR8nOvSGl2pBs60JeAm1M4TGXLP6BufbCzo/nlYvENv7sK3g8JArvJZtWp0fGOrUQkqcUyqISjdJbeRKzgxG18W/KCT96epHYF20AeTvosRgC6LMNYxPpp0F2mbrqyp9GKkSngsP3nkbnu8Vq7HuLpa0mKV145OjG9+5Z5ntlytfIL75QxCiojU2iYdj7cRgF2LJQAxep3QofH6a/AzsjK6bJSpUI4oBg7svPe3NhFjdRNVSRz2NiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XURsQ3ph57qGOEQvOXPJg4UyHgVXsGwV8I+nR5oEFF4=;
 b=MR5+wI4LRLBSGw0CRtwMh72nJSttcILjQeZt3NjEgMQur7thXltFYfKWCuTfcwzEIKXKUDqLFqHHKc2MlMObzj/ubepBkUIFlrSntMbX95h5mN9wGg8OkzHEBrlQ2xmVWatm7PNIrsIUbk3RT2DmXTdch9wU/muxtqGpGADzqpP7QNRByj+uP7R7187v+CDNffuMHaMGGfJi02b+DwaZhhYv3nMtmzePa40p/dkBauAfLez0fP/Pjm1UcGAWWMTNfacGcxwJ1FiVxrc8nXkySJSk1UznXRby7v8CAAMeAyLZjuSOXIs0myFOB/O7LvXFZOV8KwB0sAjXzHFS/ev1Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XURsQ3ph57qGOEQvOXPJg4UyHgVXsGwV8I+nR5oEFF4=;
 b=biNyjw6yV1iGkbDYQOGxyxR9RSLopyuc7sG4PmjCV2fZS8zgwKUILa+PNWgDU3VKg73UMKNOYI+8eyxZKsV9lomTNqZOgWidKa/leNlpsaVa5PDU3VerCZp819NBmCYeLoNj5xJ+LUAhA6uKb3kOflAaCYdGhZHQ/160cJ3vDMY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4195.eurprd04.prod.outlook.com (52.134.92.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Thu, 12 Mar 2020 10:26:38 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 10:26:38 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH V2 01/10] arm64: dts: imx8m: assign clocks for A53
Date: Thu, 12 Mar 2020 18:19:35 +0800
Message-Id: <1584008384-11578-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:4:91::17) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0113.apcprd03.prod.outlook.com (2603:1096:4:91::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 10:26:32 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4e5d82e7-a4e7-464e-5178-08d7c66fd91a
X-MS-TrafficTypeDiagnostic: AM0PR04MB4195:|AM0PR04MB4195:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4195515A1918678FD2E921DD88FD0@AM0PR04MB4195.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(956004)(26005)(6512007)(9686003)(2616005)(86362001)(8676002)(186003)(6506007)(81166006)(8936002)(7416002)(6486002)(478600001)(52116002)(69590400007)(316002)(66946007)(66476007)(16526019)(5660300002)(66556008)(36756003)(81156014)(4326008)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4195;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lyngkK9CiztpZ/rS8ws3479sWtfTuDQ6tHNQU2TDaM3p6wMMdxtw/kfRQRLdbnCzKJyXWTwVbb1L763W3OwP/d/ETDca9q12WCF/SYk501dXEOgqUvI7K+buXPU2MbVbzkEh3GPEdp+1wlCExn6Y0r6HVfrcZmaG4bC9vHWThJZMnlBB5jOAO4KbI9XrglM0O/ofT4KO18ntrB4CiQtHb+9RxYYa3qTbvhV66+99ogkbocwA71R7bDh3qUVEdpL5fTu7TG5balgKf36iuUHuAtrHZeXUnBYEfjX1q8vJCgcnArl8q42+cnxA26+/nvXZyjDVhvIIrpaBgRiU3LoHI0FXFhnP1vzKoW0i5tdgyTs/sp2KHnyVTO/j6QVu9SXD3GFvE7Ts4EQsPxUenYYaL6DLYLGytYvBQsyFhbhJg1TZJGR0qm5XxpaABvyX9VfTtg846HaCtu/G8SS95Z5phBaSfe/x1xWV5xeIJqCZq7UAaJluex4Pf3d4xyAlJWR92MRzcGgRrdwzXZ0U0QMOjQ==
X-MS-Exchange-AntiSpam-MessageData: oxvVu5/b4zUmh8bXrDhvZXaRw1r0QjvKIBfZKCZLYXXitW/ItmCYcYKDOgpXXgOEsGlnkUXGPqqNsUVIDTCzlfSAY6pcnP6NN+2Yyy5drv48I0xZIOIjoGQidL99NqQtw286iDD959v5YpA/93KDlg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e5d82e7-a4e7-464e-5178-08d7c66fd91a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 10:26:38.4963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SLd45n4u502SG3p+R0dluUPaIxt+LbGL2g7gxFJyhVBr0wRZG4Cex6CW+1nf6kVAerE+Og8wF1I5B7ZITrDYyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_032641_889090_646EC925 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.66 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, fugang.duan@nxp.com, ping.bai@nxp.com,
 Anson.Huang@nxp.com, andrew.smirnov@gmail.com, daniel.baluta@nxp.com,
 agx@sigxcpu.org, angus@akkea.ca, heiko@sntech.de, linux-kernel@vger.kernel.org,
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
