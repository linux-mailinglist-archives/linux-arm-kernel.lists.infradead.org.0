Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 555791DB390
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVP3z79KXPrCwm1DUc+CEN/sMqY6Wrd3UHxwNOPPKZA=; b=oSIUzzoIR+6ayT
	EowYHaqPNel0STnV3mN1ChseyQVRk4nqxEwdwRluK85Cxe9MzbRtaqQ1QKfkNIpkXze9Rejew6UFG
	Gperr8kAyH/RpUMoSWRkNx0Rf6hHcoBs1dS+xMUuMQuggjDhG0ov1R3oPxpM1xHESGBkBMrnhaCQc
	EvPUOOdqQVYnuoc2A+tK+nW0h0jS0v4P4UIxtf50SN60lD+ytM2wqIsayS55tPEVtFlpJsOw/bQTN
	PhC/dAiKxOQMJnqfr72PlbA1fEVz6nkcISoe2QDPth5FVaqeuwfvR1p7CXKJVAhXk+EjUnWtHjhZF
	W6b+dF5d1aqE6cQfZAzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNwD-0000JO-2e; Wed, 20 May 2020 12:35:09 +0000
Received: from mail-eopbgr50052.outbound.protection.outlook.com ([40.107.5.52]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNvH-0008LC-8Z
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:34:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hEdoUFePiZkIsw4CqqrIOdZYMUUXVE2f7KCuiIxX7d1JMav3C2tCaEPMMve2Li1mb+VbgxjovRptgjTmEqYkwR7TEUixU4gPgxzjIy71lYh4YcDa7YBWFR1lDIqRatE5O7Fi+dLR39+0VBFG9UK8Rfhd0jfgHwzuZ3FZ9bxDG0PI+XY/NYS0Ka6kTamtoQvjRyKOwJARm96gG5XkeQRix+8+Cd/DXfezYVtuCGvtC9o1yQd4SACG655iBuSU4z4LdQkZlyw9T/52Na2XkdUnGO9jXZIFwu71dvg36TyALEWDgg3kUKUOXZsQmk/imhsNRnOw73gaa5tryYW0GbBEBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kkWel5GTo4Ihj7UHKviP/TaeYL/ZKKWPea2xxel30eY=;
 b=jogScNNwimgJX8thUYjeY2t0SkX5ekAomqlCaF4x4o9l3F2KlJoEkS2QjI8H1wsviYjctvcTnNHoIai8q9cn/yC2X26qI5P7IV47P2Y9j1gTDhRqEmNLgZh0oFnZ8Nz7DqH45FQn9/AYy4vcTIXUrzSm6Dp54DEh3FkomKGYILm0CNT+WMAA/DtbhxlCzMd0xiHAsPquDAb3U+z4TXuTpJlE9BNboisEvdzaliGyxHxJXMKe2QIL9UdwuZld5jcLRXG1j3UYN75FFOqoyZrC/Xm8HE5IeZwSrX8+gdcu5VPNTYB4of5giXU1jgic591GytJFobqO0bwbg9g5N5Hg6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kkWel5GTo4Ihj7UHKviP/TaeYL/ZKKWPea2xxel30eY=;
 b=RfMk337X4W5+eLfP6ANNY1SlpdEFBwdMaQXlea9mGRG8az4sb/5tGsIHoYD9LdeqhqwbQObVeV2PPJnbPdmxdj6Hh36ludaIkDFtcu3DgEttQxzvodv6794VSvycDxsLZOdmt+rKdfQwuGbX4i7IrX+ZM/od9yLM68o2hgusuIQ=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (2603:10a6:20b:f4::33)
 by AM6PR04MB4279.eurprd04.prod.outlook.com (2603:10a6:209:4a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Wed, 20 May
 2020 12:34:07 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 12:34:06 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com
Subject: [PATCH v8 02/13] Revert "ARM: dts: imx6: Use correct SDMA script for
 SPI cores"
Date: Thu, 21 May 2020 04:34:14 +0800
Message-Id: <1590006865-20900-3-git-send-email-yibin.gong@nxp.com>
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
 15.20.3021.12 via Frontend Transport; Wed, 20 May 2020 12:34:01 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5a604e03-0f41-47a5-ea49-08d7fcba1663
X-MS-TrafficTypeDiagnostic: AM6PR04MB4279:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB4279B149006CC8C205F8D2D889B60@AM6PR04MB4279.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:660;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: itqrnfTEUV2I5WkH0hJfoAvJN6s9X3e2870/MDBgTmycxDnAg8zuTpNFrUhftcxv36lAzr6aUCMlU2kNjRPI+AbECl6643mCsn4lasBuuXnDlWaUH0cuwQwF89x/LbfSvwSX0eQVZGCLNChQS59gFsynywG3bbt/+FY2Er/pHA420+ysFENTroE9ekXutm50+HYuJoFjo66zNBq5ljlXUn4UWqfdNIBD/97bFmGqMENkL4eY8fz04NuHjIXZ4nN7aGrbJsqPKp5DkSqtAV2wObpWXQzJ4/ljunSkH5B100ocAaeQCi47kHNt8N8D4t3henQDi7JsUDFnwZGFTa72oElnoMTXEK/6y7b+S16Ht85BcezpMXI2ZuyABHRCIMpwf7pnDfolKWmoVn88+sG+brSgio3yhwFnzUdG9I91m0QZ0980WC8HZbfk5611Gbyz0oXvPYdG2ntRXG8HhCPUW4sDUMr0mj1muTNIybjefYw90JJbsiC6LGl8Ds3w7MuyYEcJRM4xwS7VrcIkebiYccIOY8zR8YzmMPY8N6LPikDglXr0173mVsiGqQt/og6W
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6630.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39860400002)(6512007)(36756003)(8676002)(6666004)(52116002)(66946007)(66556008)(7416002)(8936002)(66476007)(86362001)(5660300002)(186003)(478600001)(316002)(26005)(6506007)(6486002)(956004)(2616005)(4326008)(2906002)(16526019)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: lv2V2twpuKz7aPNiJIrlmRATay5skuOEcBZu4yX483IacEAN7GMUBxpRX2QQX+mB/hxnhBbg1zZKHkN9O2IOMX5GjXANKHCVX+qvtzApBb3CYAenukCwsdsoKxBOmlFFNAsAIOdvkaPM4r27H5Q5vH0zIZYLaWq7IFXt0LenP/vjlwzKf0W2a0hN+KcaZaODYl2WaPhPaxb578dNBhu/qXLPW0VlNGDRu0DG7YOaewYdtLYH6YZwB0J4j56erEnFSvKVa83TWbbdISQhnH7fhBh4oq9quVcCRxiVnxmxKkV255rZuWcZwyW9Xh18uBoeg88ms3Q7/+b3fisXVJ6zlLLBOeNJFzA/6RnSnH2hwc+X3t08G0YAj+2Y91GuI+qzmS8kpLC+kyr0P3aDrj8HLh0kUpDD/mu+H93G98IInqsADrOMB74+KXtYmze8YTxcFrYCCPMUbdK70xFIFLw9gYxOdXaJ9bXdwQgLSsiN8qc=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a604e03-0f41-47a5-ea49-08d7fcba1663
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 12:34:06.9176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sYJwY6FvVbbDClT4wPwZXMqcY+qoFC1YEj+8sTeJeprmTCwho+eTVZx3Qgh3+UoV3AythYEMvA96Le0vAD2ohw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053411_335357_240AD71F 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.52 listed in wl.mailspike.net]
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

There are two ways for SDMA accessing SPBA devices: one is SDMA->AIPS
->SPBA(masterA port), another is SDMA->SPBA(masterC port). Please refer
to the 'Figure 58-1. i.MX 6Dual/6Quad SPBA connectivity' of i.mx6DQ
Reference Manual. SDMA provide the corresponding app_2_mcu/mcu_2_app and
shp_2_mcu/mcu_2_shp script for such two options. So both AIPS and SPBA
scripts should keep the same behaviour, the issue only caught in AIPS
script sounds not solide.
The issue is more likely as the ecspi errata
ERR009165(http://www.nxp.com/docs/en/errata/IMX6DQCE.pdf):
eCSPI: TXFIFO empty flag glitch can cause the current FIFO transfer to
           be sent twice
So revert commit 'dd4b487b32a3' firstly.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 98da446..4a50331 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -337,7 +337,7 @@
 					clocks = <&clks IMX6QDL_CLK_ECSPI1>,
 						 <&clks IMX6QDL_CLK_ECSPI1>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 3 8 1>, <&sdma 4 8 2>;
+					dmas = <&sdma 3 7 1>, <&sdma 4 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
@@ -351,7 +351,7 @@
 					clocks = <&clks IMX6QDL_CLK_ECSPI2>,
 						 <&clks IMX6QDL_CLK_ECSPI2>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 5 8 1>, <&sdma 6 8 2>;
+					dmas = <&sdma 5 7 1>, <&sdma 6 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
@@ -365,7 +365,7 @@
 					clocks = <&clks IMX6QDL_CLK_ECSPI3>,
 						 <&clks IMX6QDL_CLK_ECSPI3>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 7 8 1>, <&sdma 8 8 2>;
+					dmas = <&sdma 7 7 1>, <&sdma 8 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
@@ -379,7 +379,7 @@
 					clocks = <&clks IMX6QDL_CLK_ECSPI4>,
 						 <&clks IMX6QDL_CLK_ECSPI4>;
 					clock-names = "ipg", "per";
-					dmas = <&sdma 9 8 1>, <&sdma 10 8 2>;
+					dmas = <&sdma 9 7 1>, <&sdma 10 7 2>;
 					dma-names = "rx", "tx";
 					status = "disabled";
 				};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
