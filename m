Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C74D1CDAA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 15:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4Ldhm7P5hyK1hBcOibnnl+3tFxRwzigDBBhzxPvdzI=; b=hyc6KGcJdpVkkQ
	v98BWSwv3LleqsLIeTokckWHLdoe9w8rJIr4hWP+2ecTQvRSk9IppO4SImTBHIJgq17zf9rilfpic
	kwjKowM95XiUg62NQYH8AjXTIW1F8sy6ENvcaImSkvRY6dq/v3mLBOIl6XOJ/+fY4SH6Jia2VImlv
	1ULmiU0GGkcvkAwftuyf9VBlHvL7cGADe+pXUtLym8Wa69twDd071yEqqD6On72UDrW2Mf6WPhq9s
	1oxcqzPI6e5qYxL2dfolsRSWpex3A/SSRIEm24ISf5zQQkqBo3cFH3O+zSsIxXKDVs1K3owQ+auqi
	1mGuuZAvO/VWNFWtVfXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY83h-0004uE-BB; Mon, 11 May 2020 13:01:25 +0000
Received: from mail-eopbgr30064.outbound.protection.outlook.com ([40.107.3.64]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY82l-0004G1-I1
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 13:00:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XlLLslnQi6x6WTSESZ92HsgQFR3j0etKipjM3Ei12jcXEYAw8mZx1JrylrCQeMp9XCDOqm60no1npcWilLPxv1er19CdbSZYt2WnptN5e2eaCT5XC/AmBMEWTkpwc36Eg9ISf/BkgA2mTBmbqoI0jck0q88b+jMpI6f1094jfjOTmLPq/HH0czi3xWB2vHcfjn2xTgJZ2r7kIioF6cfEJiWaLH2EzE2Sm2VXX27om3pE1rOl79e8EMaD3UP/5q2KVzpJcx/GeFgVZSsJzTpnK60DCatd2sOCzGahslpY/+6x6v1TMcRWYU5PazXpgOWFd4rWR9ftMntD0oS0V9XZ5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbE94RXXb1PGc57/+DWQQG3Qm5eLZrZMgFVcM//jU8s=;
 b=lQKbSHQVJQKG1RDKQXyGh6zU409BtRq5WCBBkjE4o7QWrdm13CDnjDmh7x4GnpkPH3bMeBZrUYp+kOvmFUcQYxtn8K21KynuL+MCmANRjWCq27TBp9roa/iholayYZF+Jhh6Mm9Sbu/Imyazehx+qB7unVnY3foYraUYyf9JJyZmAGQMQT1wQe77YZGexGP8fAsr+L9oecCzk7VSqRJuLANa/Ti1foU+fyNPM+BZlfgsgtORWmOvksXxDk86wmhUcYbArtBsFKWhCS+GA7VeqCs1d299VOqQ//QI7NaQ5CwZRXZayDkH5w1XyUHIM0enXPp3HRvDAkIkZWmRyq4VMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UbE94RXXb1PGc57/+DWQQG3Qm5eLZrZMgFVcM//jU8s=;
 b=MXYauqukxBZLI/kwB8MNMy+b7ojOpb07dy1VEziBUXAOZRoirqCytIt0ZpQHqLCIX/M3SLVHU8EFELz6BMstKeXMy26QNf7A/1KOrJP04Bd1hY+6lk5gN6Gr1uaPuR8/O5yd4W7LKlRArQ8PBHu9cWQDZCl9UaQubggPfo6YQCo=
Authentication-Results: huawei.com; dkim=none (message not signed)
 header.d=none;huawei.com; dmarc=none action=none header.from=nxp.com;
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com (2603:10a6:10:fa::15)
 by DB8PR04MB6586.eurprd04.prod.outlook.com (2603:10a6:10:101::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.28; Mon, 11 May
 2020 13:00:24 +0000
Received: from DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e]) by DB8PR04MB6795.eurprd04.prod.outlook.com
 ([fe80::2924:94ba:2206:216e%6]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 13:00:24 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: john.garry@huawei.com,
	will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH V1 3/3] arch: arm64: imx8mq/m/n: remove unused compatible
 string
Date: Mon, 11 May 2020 20:57:13 +0800
Message-Id: <20200511125713.13536-4-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200511125713.13536-1-qiangqing.zhang@nxp.com>
References: <20200511125713.13536-1-qiangqing.zhang@nxp.com>
X-ClientProxiedBy: SGBP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::36)
 To DB8PR04MB6795.eurprd04.prod.outlook.com
 (2603:10a6:10:fa::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.71) by
 SGBP274CA0024.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b0::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.28 via Frontend Transport; Mon, 11 May 2020 13:00:22 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [119.31.174.71]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 13ef70a7-36da-470e-4568-08d7f5ab4538
X-MS-TrafficTypeDiagnostic: DB8PR04MB6586:|DB8PR04MB6586:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR04MB658619E03701A1D9CAB2640FE6A10@DB8PR04MB6586.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:626;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WTRc+4K00YX0y0uyc9DSJE4aPjZXjf4cEm3L0Mudm+hTw+XUBO0ekVgYb/eZHrCYPy3d32sqNOHNFN+YbuUv2SZhgykwNflPARsHAwkgMjhJ1Sk59lNBta84cxGOgIjd/o2oe1cbrkme4SFExDf1Jfa86VValp+G0W2GgdwB2F+2Rvo02EcAOZPkkpJtwILageTxulDJoQuLeB/mDGGlZ/0Qk2VgeBVF9M5P3ZH+7gbfgMNuNYplPYBdSyuKPr8rC4x7wSmPdpVJpg7v2rCF32XZ9o9QzZwTv+uPV4EpqeFooMzR3BTT2ozCziiWI1otuCtPz/Ed0oXnN+TWiV1EDOLXvfPfL/i6qLA6KAtSdRpCN6yynie8X7wR//62EIv/aI6bGsl7wUO94hbEXBelDKv5CqZCJ7Niv5KJLesu/Qfv+rCSwN3rMhfAvSDxf4HG4U1roUYtvkUYZuwDjg15WnoIsME07SVr5QnNKLcxn5WC+a4whowmVbuxu6mLlCkfMdhpZVqCLUzaqjSxy4zTxXaoxWAy+5IftXjvThPKNXTzIcZ8N40QbkXEbdLDu6zho2KAzadLNGMQduxkZz587g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR04MB6795.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(136003)(366004)(33430700001)(956004)(6506007)(6666004)(2906002)(33440700001)(2616005)(6486002)(6512007)(478600001)(186003)(1076003)(316002)(26005)(4326008)(8676002)(66946007)(16526019)(86362001)(5660300002)(66556008)(66476007)(36756003)(52116002)(8936002)(69590400007)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: No2h+2OYuagcjWTl3aZ1U4pGeCPkHcL3CXowBuInFVdhoyLJ95ZVOZU9u/HYLOO6B6P8O4fbqqRQZJlG0f8xXQlUy77i3y/3SQzvUiru0ycgOkt6ZuJA8lk4tTsxJgMM8vzu8i7RPfv2tJ5WHKWeUDJkFyZbrFDExSJBVGe2R0/bFfGH6fvUB5Dh6BMrVPuWbQmIelnG4yemawsR9OWsmBkWNr4M+/96oNGEgtJBRyYg8GvDrXXm+B7+Hirr5Ze9Wt1IQuqt4tjJtSUp0O6v/2kfUIpu+SvrOUexDyqXs27S2hsVgFJNj8c5z9Jomqib6ha/Z/PLQj9fTZ9HtnPOgEsWJKuX3266Q8iOoD9QY/f7pjPwoxIY+fX/DhCuP1YSJjc+AJ6tJLWiHHhS+q/2u+MDb8ysV2JonDXp7nrsXpvLikZsFOUEA6uFHdr6NP8QY3IJAr84NlLAHdJV9INxvB2UY5GXIL9jUr5DzlUjccI=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 13ef70a7-36da-470e-4568-08d7f5ab4538
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 13:00:24.8142 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wFLsFw51BAYINEm2H+BPSuJVzNW4Mj2xMIgXLAfU0sClLc+j1NBI/RMVChObJzaAuBPzE2UXlUAyjcji1CXqzg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6586
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_060027_595563_0CAC16CC 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.64 listed in wl.mailspike.net]
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
