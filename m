Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6563E1DDD58
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 04:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tw4rrZ1z1d2rvtbwhDHQ+prmMdYLIDToDxYA4h1C6kg=; b=PRLGblAzgYrc6t
	EZAgI6Q8xG/NJMsvW6348BuBFlv4eKbvpxYfTeQATjJGygu7fK5bpsRIjfmmBc3qH4/m5svD546GW
	iCkCV8TOivm9REHyJ00Pk9R+/Zg+p8/83VDyvF41QpqWjXLBsWvohX8Tx8T3/epepe5aoI/BRjXdk
	NBFz/tGy7HMrZmDo9wQqiPqD6Ej7hmLHQdjPu6qFyhqFlVSxYrok1OhmC6F1HThSgaMxA6EFOtGCB
	dZVA6BrrkCRsNG/JKXsFX47rLw+8ih2pz2SyiYmNCyV1SJDKzutHjxtiC9aweVDpvOEGemBy+u/Z8
	uMAcvzQq5eUPKV9aATDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbxgC-00007j-N4; Fri, 22 May 2020 02:45:00 +0000
Received: from mail-eopbgr40063.outbound.protection.outlook.com ([40.107.4.63]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbxfx-0008Se-Kt
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 02:44:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EdndsT9aqB18mI1qNEykWuBCpqg5N+RYvy8Ipjuu0WfgbJe7MXfYHRiqmql4jbM2JJWvUkG6r12cQxGPhPvnsgi7kztA+FEun6tXa03bkYkyOhUKbabeXe8e5evG4JHTomo7c9sJXNOYrS3nYTYw8PigTAFcny/Apy+CMoQwnupC7nYk63ZuE7MUz2GnI5/3klbohqTdxfN3qXuvXyss/Zi2pA19NSKNZ3gsVzBzSbav/3qjbWkeu5AYTq69b7Doted0bC17BOZcfD5Rr+qhs9Ny+806zPuyuIIaPH4hm7sdA/9Q+fNYIl8b5F4ZO+7V+ti1e2LSY5krgWJH47jc+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcueDrUqi1UomUnJUpQM4UwF2jbdiWcHhBDsG6Js25I=;
 b=L/YpDwH4ycX2d9uDyAk8Ra2ho3rj9MwJqhy/5zy3NTMSY09l/YdC0gKH8dk730XcTw/epJwuYTUmq0P0hHQPxWyqCxXLyic5gqwunkJSOggcFpyggFf3huu1EO6ViUdEyRB8dd71mfEu5SShvTDbkoMC3nWJggbQO9eX0F5VSV2rJf2cUEKPbmj8OerrFmfJV6ZU2XIz871tuikrDj9PCtZwx00vJ1ff3BMKvLysIgxDNbF/r7oHN6wTh59HwUU0BDEBpcCCkvMLCPXONyui3C7dELcRkxABqRW29oSjO1wZ+PeTNcA0I7pqHUzdTqeqDkz5btQXMc1Ttv0sL3EeQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcueDrUqi1UomUnJUpQM4UwF2jbdiWcHhBDsG6Js25I=;
 b=RwpVKEgWAZlFzuHgl7iwOZCYP7JIWzh5+odhvOwpuNyS8E5z9o7n454kMbyDXbMWRwwt0NpZeH1OOX1mSGRKFXSnxOxKiRMcqdaGRPzVkZO7kumnmTKkst1P66FU+YiU1rvq/zuVKL+aCDM6WjR1JfsypCT08ra105Kz8U/wSVg=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6365.eurprd04.prod.outlook.com (2603:10a6:803:120::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Fri, 22 May
 2020 02:44:41 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3021.020; Fri, 22 May 2020
 02:44:41 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, anson.huang@nxp.com, peng.fan@nxp.com,
 leonard.crestez@nxp.com, aisheng.dong@nxp.com
Subject: [PATCH v3 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2 voltage
 range
Date: Fri, 22 May 2020 18:44:51 +0800
Message-Id: <1590144291-18526-2-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590144291-18526-1-git-send-email-yibin.gong@nxp.com>
References: <1590144291-18526-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR04CA0169.apcprd04.prod.outlook.com (2603:1096:4::31)
 To VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0169.apcprd04.prod.outlook.com (2603:1096:4::31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.24 via Frontend Transport; Fri, 22 May 2020 02:44:37 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 00d3f00c-e6e1-4c49-6dcd-08d7fdfa13c9
X-MS-TrafficTypeDiagnostic: VE1PR04MB6365:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB636593B16F6F8D79F9CF48AC89B40@VE1PR04MB6365.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 04111BAC64
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O2ZutoW7Nii8vbYSyjkCBfyQnSWIXrhw1iHn/e+fVmMw675zprQ8u9TRWhtX+zt2lzdj8Le1Qy1hJdsZfyYNE+90zvLpwkuq7VBSuq1Nkg5d7dDlJkuz7LVN9BVy27GuKYiWvoBmtifCCTSEKFm61V43n3XhSA16szd2ErHh86LyQuZEA36zpKEhxL73to1hUy1cLsjKqOWLzVPoh++5GfbA56a9b1UMeUCEVMZwrKIlReIVNQSQpVHa5gS4vldpMCp6xfQyabDXsIa7dV9xZRp2fHfe2M2RfPh/D/ulsDG/+WGiZIyekslXzAF4NL2m2ernSv0WA9/Shu+zNEGXUA5lf1dBz9iTxTWXa5YMPVrxsWNPTjgBbYJBx2wUpIoycvLwYxkzzcaab0wwOGfMkU0RAiRAzFYRmWNiOf7AFBecfBink2d7KfuJFqtKePRFgZAJFVPPmpLHuFzOfU15YnCVQU7wndItwi6V92DEhqsABXbDWdJY75TvgHLOKyMT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(346002)(396003)(376002)(8676002)(6506007)(4326008)(2906002)(6512007)(52116002)(6636002)(6666004)(186003)(66946007)(6486002)(8936002)(2616005)(36756003)(956004)(16526019)(5660300002)(26005)(316002)(86362001)(66556008)(478600001)(66476007)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: HNetlR84k4kdlxinzqZ/XgyMaDjlTryIzBbCLPDSSOaObkctiqpnqLyk0zyjcjzN/a11qvRozgNFHdA3jE6zuoM2vMgIuHHA8Ui6DX+0aTezb3UD3q01tnimUOKn8NN1IVJ8PociFrxRX+N3PD9Fg0PRy1f91ZoWJHpKK46LQeg57zaBf5G/5SvTi7LkI1X3FHU2D01a6vMYcjDHVI/Q3Ogfs63fdh9638hrVOQawnCJ/knBxDtee9Qa6KltJS05nISMc3gdRuIlD3kcUHnv3geSOP/VWY3HWXgH69aVPS8n7AcIZBd1DfN8lp+Tc2QvFXqZgykN90RqfE5usjyYhHDzYyhqp85tcQZZZ9z8QBCuM0bn2PWBwKsJsVzbzWWe/Zz/+jvuD4bYswZd0DHfFe7nmUFVK0ngGTLIyxs4lPh19Bey8ElDWr8witHZI0q8qpJp5emaMHMIlypL2dGPTuFL974rOAP8W+35XCcylOY=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00d3f00c-e6e1-4c49-6dcd-08d7fdfa13c9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2020 02:44:41.4532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lOjYPf/h6aUCWFMk4so3EjNLg5ESy+yemDLi3ZleDaj2w/gGywJKKX7iKxDH1pPlH57gTVqEVZJ+CdjUiCw0kg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6365
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_194445_691952_F776C4AD 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.63 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct ldo1 voltage range from wrong high group(3.0V~3.3V) to low group
(1.6V~1.9V) because the ldo1 should be 1.8V. Actually, two voltage groups
have been supported at bd718x7-regulator driver, hence, just corrrect the
voltage range to 1.6V~3.3V. For ldo2@0.8V, correct voltage range too.
Otherwise, ldo1 would be kept @3.0V and ldo2@0.9V which violate i.mx8mn
datasheet as the below warning log in kernel:

[    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
[    0.999196] LDO2: Bringing 800000uV into 900000-900000uV

Fixes: 3e44dd09736d ("arm64: dts: imx8mn-ddr4-evk: Add rohm,bd71847 PMIC support")
Cc: stable@vger.kernel.org
Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index d07e0e6..a1e5483 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -113,7 +113,7 @@
 
 			ldo1_reg: LDO1 {
 				regulator-name = "LDO1";
-				regulator-min-microvolt = <3000000>;
+				regulator-min-microvolt = <1600000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -121,7 +121,7 @@
 
 			ldo2_reg: LDO2 {
 				regulator-name = "LDO2";
-				regulator-min-microvolt = <900000>;
+				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <900000>;
 				regulator-boot-on;
 				regulator-always-on;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
