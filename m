Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D11B1CEE39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 09:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4Ldhm7P5hyK1hBcOibnnl+3tFxRwzigDBBhzxPvdzI=; b=LhklNA5wTD1KhD
	wvB7MDH3FVFBEmWk/qq4PxruEkO4lygW6hCbXnixXeUJHBwlv8N/zPDjF1/veJc2shq2OrJegxFO4
	E6tB3/EZAftcL0Tw3dLh8FJYd42tXY8wObUWuJT79v+g/a8eq3HE99RKJz3HedKgH2uiz2DmMeoBU
	0GLQVtq4/nQI7HuM6XwLHEFL9EhXRJIIw0uSSoU+0sKBd0hOQjVI/WNtZiWUSyXRmG2vGYOJZlz0y
	v8eWLU6UepO5zpJGBzYYjGL6FP8JhTJgCiIuoIhQzEOjSAeN+dOn4Y+oMiUVPlYsK49IxbfKD1HOn
	gmJvJrO09dsaxz97w6eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYPSl-0001Im-JZ; Tue, 12 May 2020 07:36:27 +0000
Received: from mail-eopbgr40068.outbound.protection.outlook.com ([40.107.4.68]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYPRB-0005yi-3j
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 07:34:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IoEVtvLIAmUuYT7w/KEoXjGC8LZVhy6FhGzHDQZNwfetg7nM5nrT0Ed7BgKmi/GzgfsA+ZSEhLCIX3XSDnMf4BInm5xrXchmkgxgwf1DwydyyE4W9j74E9Z6b/x2R2wV5nAsTvHWfC3r7xwJMBcdYyfmYLXw2czVdnzOxRWg8eothAaGJM70n8V4ShNcgIcvVwIZVV0whqP4T/zBa95K2UvFzmvMsQAejBNMK0a7/Ch0lJPlf7I8HT7MhfbChCszFX5LAW/JTo+QWg8Yu57NP5HF3/1sMX4mgsa3PmNd4UzAbs9GiGJHfaLdXM2UIrcbu2pX8CMaYi+KmOZwsxn1Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbE94RXXb1PGc57/+DWQQG3Qm5eLZrZMgFVcM//jU8s=;
 b=JMnTHZ4B/ETda53Osu1G+WxbZRrPVMsOXBTWlCjm+WIBlPhO0dbYKtSFawCxakiBaThNMzjLubyZ7UViEbeyrc/P1TtOl5rUunV2ESUw+zd1NVFFxQxHxeOqZGDcolQJ5J2RmYY1Gi9AMnGnLgmxq+PahajOkxmsabIvC4bClB7hVbOQfUc5mtSJZ3+ojRWsz2FVsIjwyAfpuFXy/hnLiDcnzCgnEAAHjDab6yJO1qPU1ZIXJAaHOcU/6YRheG/Qvzm8vBi3H0//Q1CFe5FPV8b0KbiHjgNbp5BRFV0ufI+jwCOg4P5tQyamxyOJzd42bFKIx4A/zt6LwHJ8kwz56A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbE94RXXb1PGc57/+DWQQG3Qm5eLZrZMgFVcM//jU8s=;
 b=ckBD9Rn+BKeqivtp3sRYbYQ7FL7rlJTaD/jEP5H1LqwCOdBM4L1o14JZsiK6732IORdJN9OF7sIzoEflDLv9Z83Y31du72y+TDUTsA1T1Q8mHWQVUwkpOXNA1NbnYIDJLxB8JoGC2vMLa0dEHF1cwW9CiZfWKv5P60karHKB9y4=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB5882.eurprd04.prod.outlook.com (2603:10a6:10:ae::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Tue, 12 May
 2020 07:34:44 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 07:34:43 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com, will@kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, shawnguo@kernel.org
Subject: [PATCH V1 RESEND 3/3] arch: arm64: imx8mq/m/n: remove unused
 compatible string
Date: Tue, 12 May 2020 15:31:15 +0800
Message-Id: <20200512073115.14177-4-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
References: <20200512073115.14177-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SG2PR0401CA0006.apcprd04.prod.outlook.com
 (2603:1096:3:1::16) To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR0401CA0006.apcprd04.prod.outlook.com (2603:1096:3:1::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.27 via Frontend Transport; Tue, 12 May 2020 07:34:40 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 7fdc86f4-99f9-46c6-4405-08d7f646f016
X-MS-TrafficTypeDiagnostic: DB8PR04MB5882:|DB8PR04MB5882:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB5882012F7180F45186CBB5E8E6BE0@DB8PR04MB5882.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:626;
X-Forefront-PRVS: 0401647B7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LxdisFZZWnAvbv0wDdR5nUNbJvQv3PJnIsAuvYzXSyr5ek8Z6ubYQTU8T2ZnUteqdwN853YkNZ99PdLNBb1leKSbbRliKcuzL9uApd7VkKd52hghgCuNFWK6e9hBlMt1dLxcYdf62FIMQ3Oz4NFWEIQsfgNUixyww2qfyK55sLx5C73RcPySnwJ4RE1XDz7iHOZ5x/zqqjeWAN7XLrX5r+DxMeBEwb9ncDc4Vol4qSmvIcHzjpqvoeUht3FAYCe6K+geuMeAtCBZInQz2/4QLPPA9kWlKiGDNTjLj1LeXCCnffqZUzh4FQJKh0mUi8E0nDZEg8S0DZ2yxtJWWGab30R3HIZ1O9+N3epDUnrWDweHLTUJFpHJRUbYnFJDjQTRzWfqnrDBHnIQiPCgpmjlRBke62EWOmvWsdcPDJ27LiYLmPRlX8+UEb6G4f+beNUpB0BpnI+FcDrImArTqsp0mD7JoArh63pgjJqEWB4VGZl/wypeCzcvEi5VwDorJgOrhyFxzRohtaO9icL/Q6pnXGF++XH5xqI99QXWVGiGwXzMJMXnKQXfQo7NCcsFtkGAFUfGBrRx0rM85FpqYpkXwA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(39860400002)(346002)(376002)(366004)(33430700001)(8676002)(69590400007)(33440700001)(5660300002)(66476007)(36756003)(66946007)(1076003)(8936002)(66556008)(186003)(4326008)(86362001)(16526019)(6666004)(26005)(956004)(316002)(478600001)(2616005)(6512007)(6506007)(2906002)(52116002)(6486002)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: R39mFwyfNWpk6xH0RJcAAWZu3vdyGNwnjfuNooEgWgz5VpphGhhgQMwhQcRnE7Fnk2gP7939/pYcPy8HkaTmY9oY5D3sWibvMoCn7GFU3mjgN75Yh+8qH7mNge3aqLSIDvIey5klCEFPqKpfvKGJz6wSM5EjWX1A5oZ8X1beS6qgr3aqjsSEC1QwNqGQsEXk36mNvD0E6u6OWhgH1rS5IPxy8hzeOLKbQS8DP63BdoaxO2ez31tiQHkowtETOTE3aJdeAN5vkqMutUf9CgSRNr2L6gnnPlFmSckTgDxCK2Gy7ggh3rNKHLw9T5efLn9G2rBUFIa06TPqaPcTKzvW58oFPm8EVVua2ltHZ82MBFkqA45U6QqBaGsrrHKxIbbs9R2Q1i+LjTABOsFFX26mIFRID96bKq1/L8g1QK1t8guch0gH0ThISVpkDK9+E800IFnVKzkY2+Iw7ibT+Fi42i6qK7ECe0D/X8MAhsGJCkD3Pwa2FMAFLkhylnbS55kn
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fdc86f4-99f9-46c6-4405-08d7f646f016
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2020 07:34:43.9029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VxLfpfQNUWUrD/ux8UjFMbmsDUHQUpSA4UxCB+smJE33QEtaFaoD5S2oVTpYp27UqWaMUOa5tyf9C6uD4snitw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5882
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_003449_255758_A2616838 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the unused compatible string.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 1e5e11592f7b..136a6653252c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -894,7 +894,7 @@
 		};
 
 		ddr-pmu@3d800000 {
-			compatible = "fsl,imx8mm-ddr-pmu", "fsl,imx8m-ddr-pmu";
+			compatible = "fsl,imx8mm-ddr-pmu";
 			reg = <0x3d800000 0x400000>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a44b5438e842..76c8db04b4f7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -793,7 +793,7 @@
 		};
 
 		ddr-pmu@3d800000 {
-			compatible = "fsl,imx8mn-ddr-pmu", "fsl,imx8m-ddr-pmu";
+			compatible = "fsl,imx8mn-ddr-pmu";
 			reg = <0x3d800000 0x400000>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
 		};
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 6a1e83922c71..970ffcc664b8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -1213,7 +1213,7 @@
 		};
 
 		ddr-pmu@3d800000 {
-			compatible = "fsl,imx8mq-ddr-pmu", "fsl,imx8m-ddr-pmu";
+			compatible = "fsl,imx8mq-ddr-pmu";
 			reg = <0x3d800000 0x400000>;
 			interrupt-parent = <&gic>;
 			interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
