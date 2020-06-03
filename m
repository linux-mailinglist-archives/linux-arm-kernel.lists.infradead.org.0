Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163541EC7EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 05:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRGTAkgccZAn6SNSFieSUPd0W1/4Vge0ikPmjSM+338=; b=lxeZBvN0pC7YIR
	ytH/6GTvx1Bfpn/bF5nl6lskphaWv3GC3CV3jB0N4656BudNeEhRWs+NZYCW1orrLZvlsbdMlIL3N
	ylexS+GtQS/BsQUknZ/5ipDHA6VprTrjIUduzEwOzagDrqS4MDgY15FoapVnQakJiIrxq5TpY3Kac
	Zpwv2ahoWofq2/DU5fz88iDAktEYpeHoYRAksPP95JL9xFvN5hSrKggISjtl/IyJoWuEzKx+91Tbe
	OA/ljylCTo+XhSR5AfG6w0lpROdG0Je6rMaWATPjEMEEwEd3N5rQ+QO0IE+V4ViYOSFZpUJXSjVla
	qR4lxs5LjNeXi3X4yxhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgKMp-0006dK-T3; Wed, 03 Jun 2020 03:47:03 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgKMU-0006TT-9b
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 03:46:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h9mgUW3Wx1ziq4w+HiIFP5EBGUHzBcETkkwBj+S7rvaz0m/5WPehtofcLXIiB4HBN5EdVfjcL6caSGNVv5VJCpMa9vsQoevqYtmA2FekljC5kSA+2gNOOQ54Qw7lcARUcnsko5bAQdQvbdJhM8NXY/ddKjdKmBelhalPd8PMgZ48j/Jp5Q6IGoACib/sfMz2/T0/OHqFAEVdNleEne6x88YWPJzH8ZC13MDVdvDuan5hRClvYEMZBOmk4JAPsMBYLVyeOsxFFM0/0nnerFE51sRvh1WN4X3mpTBrhyN79EHngvsw9+JVITAwCemwB7bVa2ktvT1Wykfe3SyDjJFvZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AeocGKgvvyhVRr6Gqbu/0R9S8596JGJ4FVMhJ2zTxzY=;
 b=AMBg+na6G352nMoPCl/vk0OxRo8zqFtF+fNKtu7SKykKdarRVKfrJXjvEhtpErrFfm6t6GfRJ7W2JQQ1P/VGbq58lgiyCR5vQI1b7/s46FUZsPKt9J2z9Qie4zyi4Isjp9FGBRjYW9QCAaX9rMsBiDEEKFPpqB5QRLM6BgIgDLMujUvQycwhtNSkMaEjCsDKE4CNbxwHRktXJ9jxEX+f7cnMwWdzs7Wdqhr7KqE5G3g8FUX5SFeXAwBERsDISSrT+jkUGbwzo63Ti//Yks1Iy6gCt+rMp9YzXQZ/O0Gc3ieTt3EY5ubJIsLD2FYLlfRDyjSVguHOdORIhuldq26mHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AeocGKgvvyhVRr6Gqbu/0R9S8596JGJ4FVMhJ2zTxzY=;
 b=ev66pPKJpuu8xHLibnsrxO8PMDDsb1Wzzwgj7eL9BNRy7Wu8B1Sk4iPombPGksE8IAv5BLFE06YmW6GQBWLgfwmZZiafuj9Z1jZPXWPhMCVHW4sk4ZXPuFEwu2+upms5SRXF0nqdWiwTsP5RSm14XHbrvI5D7L6M9wt+Ywd76aM=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2870.eurprd04.prod.outlook.com (2603:10a6:4:9a::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.22; Wed, 3 Jun
 2020 03:46:41 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 03:46:41 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, fabio.estevam@nxp.com, kernel@pengutronix.de,
 aisheng.dong@nxp.com, robh+dt@kernel.org, sboyd@kernel.org,
 linux@rempel-privat.de
Subject: [PATCH V4 1/2] arm64: dts: imx8m: add mu node
Date: Wed,  3 Jun 2020 11:35:59 +0800
Message-Id: <1591155360-26173-2-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591155360-26173-1-git-send-email-peng.fan@nxp.com>
References: <1591155360-26173-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0113.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::17) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0113.apcprd01.prod.exchangelabs.com (2603:1096:4:40::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.3066.18 via Frontend
 Transport; Wed, 3 Jun 2020 03:46:36 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f528c88f-20ea-48d0-c299-08d80770b9fc
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2870:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2870EBDD27D96BA73C0586EC88880@DB6PR0402MB2870.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:459;
X-Forefront-PRVS: 04238CD941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KQZlSKBgV3mUgri9T50KC7Mt8n4Q/pPkvJ6CLJnDgIGwNvrFqDA43eQSxBV99I5y96qolmL2bDawThhJEs73jEwWXtzEuYKEPEJm3n3elCA5PoPfohf7b88HCln5qQeF3qEOACZa1O3RoEUkn3GLaA17ZZIHRrZSZTTO7UuIuW6VBTd31ILzuzk+HxLA+LkGaJlbfzbDZnSBrDR3AFU0hXsYQMyZMGlMG0X2GiyewLdNZzBYQHBEV0qvfd/5j0Sy1diPUDjB31sQp01CQBSWlRWMbNYO4sbYKbIWFkWAa+JK87FXr8MfCdv4W3cpG5NMsldmhBMQm+4vbJUD/WDWzW3HIGImkyRNvzc62AtP5mtAT42ZjSU0XGz9cAISbjdlMIPqAyfhfYXtIbIgLLiALjpCu6q57q2BaIY37G5TZQE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(136003)(366004)(396003)(376002)(6486002)(478600001)(2616005)(6506007)(4326008)(26005)(956004)(6666004)(9686003)(7416002)(6512007)(86362001)(16526019)(186003)(66946007)(36756003)(8676002)(5660300002)(8936002)(2906002)(83380400001)(316002)(69590400007)(66556008)(52116002)(66476007)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: OUhRb5sxZKELINGEoIUPaW37BZvPmDXchaNaKuvVwcsLX6WeDUXbgOK3ibu4JFW5au5svDEI285o3X9vpsw7Vo+mq0xF54QJCRZrQi28a8fIjTpWe6OIDkvSF2qAJYjapdx0w0AYqCZXucVh1LxcL+u7VuEEyekYDfqOAO1B+vmcsDZTIpL2fTOhm4j+9pYJ9Obf7CeQkMP/Ha5J65suz4+Mj2Rjmzwfiu1+0iLlbUmuuKtk4jRXKcITIjtU1j7UeqjEcXq8A/I5NrUDB0cpyYHwYLIhRrOibyVMy/C1UkRclW/mq9UK4L1aX74ly19/ZrPHm2NItkrGPpvWvNMjHtSZC1H2JUgwI5wN7euXED4dCTnfQQYp58CDDEKlv4dCZkSOitQMK1fNypQsY74JK87vJjvluWpV+TB//1Uo/RwehvdR/vJvytfkbjugluto3Se+soQHt7fyNo+PrVRTtmeDGd/5YJF6uHAUCu2px+1q38a1Jpg2qYExnVj7ROu4
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f528c88f-20ea-48d0-c299-08d80770b9fc
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2020 03:46:41.3165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WiZLMbR/dAnh06t0laUXdW2C5KpdojTCHOrCEwHsZwdT7gZDiGnXr3sulSATAIsdVRZGglbg7H56eINbwiAnUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2870
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_204642_337224_57C082BA 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.82 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add mu node to let A53 could communicate with M Core.

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++++++
 4 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index aaf6e71101a1..d9e787ea246f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -775,6 +775,14 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mm-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_MU_ROOT>;
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mm-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b40000 0x10000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 9a4b65a267d4..3dca1fb34ea3 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -675,6 +675,14 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mn-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MN_CLK_MU_ROOT>;
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mn-usdhc", "fsl,imx7d-usdhc";
 				reg = <0x30b40000 0x10000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 45e2c0a4e889..1bc14bb44d90 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -621,6 +621,14 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mp-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MP_CLK_MU_ROOT>;
+				#mbox-cells = <2>;
+			};
+
 			i2c5: i2c@30ad0000 {
 				compatible = "fsl,imx8mp-i2c", "fsl,imx21-i2c";
 				#address-cells = <1>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 978f8122c0d2..3e762919d61f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -959,6 +959,14 @@
 				status = "disabled";
 			};
 
+			mu: mailbox@30aa0000 {
+				compatible = "fsl,imx8mq-mu", "fsl,imx6sx-mu";
+				reg = <0x30aa0000 0x10000>;
+				interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MQ_CLK_MU_ROOT>;
+				#mbox-cells = <2>;
+			};
+
 			usdhc1: mmc@30b40000 {
 				compatible = "fsl,imx8mq-usdhc",
 				             "fsl,imx7d-usdhc";
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
