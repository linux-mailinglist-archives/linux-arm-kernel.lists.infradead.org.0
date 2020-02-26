Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A3E16F89F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 08:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4Ldhm7P5hyK1hBcOibnnl+3tFxRwzigDBBhzxPvdzI=; b=cC6Cfw3Q78Lmeu
	kQuYBNs539qbWFz/K01gY3Sdqrcw8HOAncA3I5W79CIyNscHBvm0MqEeFGjXaiHubbRaycgF/Tjkd
	pYxqtVpQ37De8D6DP41lajkm8n2yjDSl2oShZQpOZ3Fm0OEbIruZEwPHbRXP8Y5hfzdXGXC6JUPCx
	KIBWYwhlmzsJGJ9HPdTbEH+JZdA+LKkDzbH3eHcHILqI6092QaUZoIfb1kYYOO8eXTmYeLFDGOzB2
	O7blcyJVRnskB1Zzjb6PusiLreGey23XrfUTZox+P/EIIQ3xBbQ3vAwzOuYVAAUSyDtTz7Y16y7bG
	/0t2HtWPgsPLNRQVTqgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rH4-00068h-L6; Wed, 26 Feb 2020 07:38:30 +0000
Received: from mail-am6eur05on2042.outbound.protection.outlook.com
 ([40.107.22.42] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rGD-0005Z5-0D
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 07:37:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jrIXtgDcA+UP05CYG2PTJ2gs7lTPeuRjSzlIblwsPvzo9RF489Cp8Jzr1kAH13mfTYgGw6UuQyR+bx4qsWf+szP7w+gc9jDAsKoWspu9C59wxF9c/fTk9CMQBfeg7l2yZZKVsn2HD8Otn451pZq+wU8kc47Maxp1SXG2GcOw+kspSZNWyL2edFG95pimtu52yMC9kqy/uqLG7wfm2ssvZYjXkf+ereWfGqWHcnMJ0GZr4h7VdWVIYNAymXQomm/QQUizeZRpeKhZOf0vSI54y53Gyu+Xu8/ql/t+fYIz0U8ycmbQYyLn8xGZq3mMZuY22SBWlEF6l5IXf0DejruB9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbE94RXXb1PGc57/+DWQQG3Qm5eLZrZMgFVcM//jU8s=;
 b=kMSFN+/N6Ev6EACHJS6XKwYwtO4qpY7LjdosDSLIGjAts2+OW6pixq2QPyHF5IS+XwCOYmTmhD6khBEHtFK8xhly7qkDfYuCXLqQl4KSDrAxwU5CGaigPITSc/y65ZOEopMQqblbocokrllROq2iPjTCGOdfT4FfNQKCAapTMztSz7ZXcp8N4r9EiTNlr6oUCQGWwJBVKelkMb7gDPFPqEBDogp3sUMZq2pCJVcUIzRScEEu3XeA44DMCsF97j9d0vF2AFxTIANTRw3kRxCEYmPdOvKaV3AjWLRrbk0Vo1lumsP5YM/S0dxPJb5axEfTbt+1woZ0TpScmQWU+cxjbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbE94RXXb1PGc57/+DWQQG3Qm5eLZrZMgFVcM//jU8s=;
 b=DJIdL2GrxhiX5TmOlnmnwq0TJ3s3/ZuXxjf1Jy8N6CBOcWXzkYfKFcILFS/hUPUJX027DKXwOCAcW8ilgQCon6YKXf8KYHoAzLrTRrKgQzprstgwaPgnbbI/aJrwEdi0hsZ4Z/PALPcqHY1kTEXEPmgSjGzv9FxZId80LRAAzIM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5081.eurprd04.prod.outlook.com (20.176.236.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.22; Wed, 26 Feb 2020 07:37:33 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::5cb4:81c8:1618:5ca%7]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 07:37:33 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com,
	will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH RFC 3/3] arch: arm64: imx8mq/m/n: remove unused compatible
 string
Date: Wed, 26 Feb 2020 15:34:33 +0800
Message-Id: <20200226073433.5834-4-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
References: <20200226073433.5834-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SG2PR06CA0133.apcprd06.prod.outlook.com
 (2603:1096:1:1f::11) To DB7PR04MB4618.eurprd04.prod.outlook.com
 (2603:10a6:5:38::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SG2PR06CA0133.apcprd06.prod.outlook.com (2603:1096:1:1f::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14 via Frontend Transport; Wed, 26 Feb 2020 07:37:31 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b1112a45-b7de-4b08-507b-08d7ba8ebe29
X-MS-TrafficTypeDiagnostic: DB7PR04MB5081:|DB7PR04MB5081:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR04MB5081C5809EA8E3D07B7D4442E6EA0@DB7PR04MB5081.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:626;
X-Forefront-PRVS: 0325F6C77B
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(39860400002)(396003)(199004)(189003)(6512007)(4326008)(2906002)(5660300002)(316002)(66946007)(6506007)(6486002)(478600001)(66556008)(66476007)(52116002)(8676002)(86362001)(16526019)(81156014)(8936002)(81166006)(69590400006)(26005)(186003)(2616005)(1076003)(36756003)(956004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5081;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ORcBi8PF2BnF7o4E39DxBdQhrpdV3hXqlJo4fQFuKgHI5td8WRbcP8wxBDsTy5R4IOY2w65gS0u2OhsGsf1BN4wKKZh8N7VUst49JsA9Hr8evjof2F8fdowit+ezfXFsuurjXyUeWEIh+8EaU4OQ1RKIhQwFhdWdCzxWMNMwmN3ea/MB1ZNmTUBa3KP8I8EErTaiCtnD83rJWcmDBAfxEvNFEsWV1swjiI728di/qSVTm9toOhebd3FGzfZRYJPod/yIn7hQ7ssHmAjalDcMPvBflKY1Zcek2pW1QnepeFZH4nLthHAT0J3UQh+LSpzSkvb3xKa7FwuwOA9G2zKmGO4M8ZwegHbjER77qG8Ivhy087kSMJYthGgyiKHg2pusm/g32jfnGOxQvevLKJOM/FYCaPqQpW1vE6XiyfzHaiBWzIq6KBKhrZ5KwTfqdWzmhRQIBfHXa4FRalUJONXcWDyWgDP+lmtIb3nw0KWVi8hfezP392FSw/6FNeId0KbUVNCkZaDVgjUwccNvgiXUVmOENm9YSP8E3CES+ZrQHIBbB+4IovYwLFWfBcV5wpJ4
X-MS-Exchange-AntiSpam-MessageData: tippmyWte44JA6y3ZEbv+1WZFaTJ495E3VmT8i26HizI/mecVfUKfA15wAMAooTXRYeah5C/gQpX7EmaX8n4wDfLEW8bgSpE9lfYuwaB/2FkHcDIEKRvGSUqHj4zkMPHIIySTc6HcaUgqRGmiSARfg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1112a45-b7de-4b08-507b-08d7ba8ebe29
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2020 07:37:33.6724 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EyUESnQnSB4S9JRUeOKpirppY/7p+eO1u9zy2RjZtzmgozOoDBNgprXN7OulMFrCXmlO9nHi9nCIA7kU/t7glA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_233737_128754_D0DD1169 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
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
