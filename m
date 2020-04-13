Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47901A634F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:58:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oPtRSlzVePC4mKtEugCZMPORsp0PC9RhJsx2dNKaf4E=; b=HjKLS8IXlrvasN
	EOcETKf93tarsCHju0j5MNDuwie4hPLyxvt1GJO0jTtLk7IJ/e0vjkD6iQW/y3vElAQt9hvCuSdnJ
	Pzmk8FwBByvqRkEn817wcnA0Gs7Io9cDUOG/Znv3o0AQV56+5qvPtaPZVOV9lE/c/8HGWi4j14wfD
	ia1TNB92osIYyRjWF8lQ0QSLYrmmkC7GcRSLZUVzzD2C7RfAW8M2wjlDczkey/uqclq+x2B+KTz7d
	mFanawtjWs5/Q467pWbKqre2VdgFYrqIgnfr+9o2sAEusEH+UlNbmup/0sqgBNswryPs+2DTe58nd
	MRCvqpyTjqLT5yz8fFsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNt2m-0006Mm-9k; Mon, 13 Apr 2020 06:58:08 +0000
Received: from mail-eopbgr40064.outbound.protection.outlook.com ([40.107.4.64]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNt28-0005wO-2k
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:57:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyDFea9EoQ8NYlo5rvbj4tTSRbaNpRoSvFymDL/4CQ7pDoFfN0z0YCDKaTmV0I9VLV6bzqTY9ZERStcF6fGIw2wLhAqgvyzOEK9ykK0WpsxVLpwj/umebhJ9/E/5b0q2QAvwzVA5XWOgzc2JidIUnNlfnXzTUHGhcm+q86u98rY03ywoCP9gMKFSJYVg+ozF8h+7AjAtLuNbX1U2bo7F2yY7Mrw2QvXsWIAu2RPjQsAtC2o6/LC8NjvPyUoFDaMX25QSgzDuCxYr3pFHN+BfbARrD+9zFgxv9EgKI+P/6hv+3D0BNvAhF5tHlXzM1zIa2dMuAZq4x0h2eJ2orDObPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJtwwi9R8AkYKYGMATprxuv8FqEL0gqBmcz9s4hqO1k=;
 b=NloUC4f9whDFHhLpw9M+oDj2Xvo7LMx+N0OROE+iztTtKva0tv0cIMj4LLm3E5BUT+pTc08k4z362WXNa+RjcabOopvuzmxa7uE4QgI9Nfm8WJv4ZO7w2s9i+AXpVTAT5cOhmlxq8j16oQDmhIhaoi/ekD0i49eIKPp4Qbfza0n105NEppKQHnCnqoV3DrWkm6g2xMas7/8V3pIwpqV8WLubFKX9M3J3OBd7/zH0zIgtJYrBTCpEniW+HlxumCuEENYPfkKxU6SolAGoKv9ZxiaVXi6W/PQOETcHehhhuTBCEPrk6ZEzbqQOzbtGKkSbjEUQMjXl3Z09/Sl5eXEUwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CJtwwi9R8AkYKYGMATprxuv8FqEL0gqBmcz9s4hqO1k=;
 b=RyZzeDuD6zKXe5EybzLxDd51gEMcWrIcJWtxQMOW962OfAz7Jfjlp8ZXWi6+YGCvJvugFoz3Db2bwxVkKqhgYcs7PfNnKwTUUJJ1++nSvo+PMPkzZIiuqJBa/pUYdKL2CoJl2NV/Z5gsvHmCNVQEcneSRzbPIvuR7UMMl85A2eQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB4564.eurprd04.prod.outlook.com (2603:10a6:208:74::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Mon, 13 Apr
 2020 06:57:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.026; Mon, 13 Apr 2020
 06:57:25 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V2 2/4] ARM: dts: imx7ulp: add pmc node
Date: Mon, 13 Apr 2020 14:49:06 +0800
Message-Id: <1586760548-23046-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586760548-23046-1-git-send-email-peng.fan@nxp.com>
References: <1586760548-23046-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0143.apcprd06.prod.outlook.com
 (2603:1096:1:1f::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0143.apcprd06.prod.outlook.com (2603:1096:1:1f::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.15 via Frontend Transport; Mon, 13 Apr 2020 06:57:21 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 0e615546-2713-44b4-d3ea-08d7df77ec2b
X-MS-TrafficTypeDiagnostic: AM0PR04MB4564:|AM0PR04MB4564:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4564A13225FC7A3C860B0C7D88DD0@AM0PR04MB4564.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-Forefront-PRVS: 037291602B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(136003)(346002)(4326008)(86362001)(8936002)(478600001)(9686003)(316002)(16526019)(26005)(6512007)(6506007)(6666004)(52116002)(186003)(4744005)(8676002)(81156014)(6486002)(69590400007)(66476007)(66556008)(2616005)(956004)(36756003)(5660300002)(66946007)(2906002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +umwrqagFyXlytNl7OhCXgM0B3y4U8ICVbuCFonB6NK+3u0386EO/gQOQ89hgNBqMhmKVQo83jfHsvtmYhqOKo0W6C+FkTS88taq4sAvY83MQ0XHNuVtHS7wpOf0H0Zz//43oXK2ISgZRyuGO/ox6RTdVwqBLES08771MjWWC8bQni7Gtppcx3XXa7Rmki/7L7MUu7++Owa8OofNqPN8U9mZTuM81n542+jJfSfxg1qHTRCGYS6GFaGIUU5UhveS0ROA0JJTt2BzP/DbNxj8HTwJQOw0Ud9L8Z8ZFpoYjofpP0oHAeyqLVSKoOtMEQUSGcg1u6D/BXyxijHIwQkValIYPkHRNVT1ZTc/IPQ3Cfv/45EAG9fH+kMm3xWNudf0a8VORXZaTiYQx7B9X1TurK164nmX2Q0O/fd01yf+JOU3wAfa/RL3Oavp558st0bHvn+vx0/3ajYqpFdnDv4e58lAdrnQ5wevYurjzLHtt7R+Q9nDKeYB+zMda6k46EbC
X-MS-Exchange-AntiSpam-MessageData: VGEV5e2PBDY+bAzLhkYoqGUMn6WiGZuR8iXAQQPe7lD55UaGD+N118GPulzKdWhcT9RqEN36GfjnQ/3SVf6etAqhy++ty5Y5ZuNbAM9nO+M4+IONv4mWFmhOnq1II39sclW6Cfd8smV123Rz2o+HAg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e615546-2713-44b4-d3ea-08d7df77ec2b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2020 06:57:25.5830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HsbSVvIGfmXM1BrjY3DvNUFq0nmiw1oVDno9M+VYTEVQmvq65Tucgp+wx6fXUlCAK347WY0S3vY6nT2LLyw6Jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4564
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_235728_122836_B7DB5D23 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add i.MX7ULP pmc0/1 node

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 None

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
