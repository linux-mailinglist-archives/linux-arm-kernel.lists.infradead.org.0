Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC9F163E74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:07:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3hTlMXJdndXXWiM9BhL4uMhkyqpueKcOKM+dEKcM5Y=; b=ARkoO/gd2UGP+G
	QPSSueSJibY72gzOQXECbFrz1hl6SCpkNiyRcRN+u7xUlD1hpVGMmE+ySIK5EFw89g1FfFESwb9V3
	1MkApKycIhk81SV4wwRZ/fPlJ+z/dm9VkYEYS4omC1OlOSeyd46lObgZDJAM3bDJdP9OGuEmAmcYe
	jwiR6eicUd3v6tcxwtQHQMTb/qKyvRkV+auCdpNPK7YsIVSz7dbHIOKXc/dtMNgA5xogkrAPknh9O
	RXbXqAEvUNqwguy7woqOBqmjiHWzk5R6Irn8YlXdpOYMag506Z6DOMnSDV/mv0IyKKGQ4Z8DFZV9I
	PZS8N57sk8j/3O5Rr3zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KNs-0001oS-Vn; Wed, 19 Feb 2020 08:07:05 +0000
Received: from mail-vi1eur05on2064.outbound.protection.outlook.com
 ([40.107.21.64] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KN4-0001HD-CM
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:06:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f93elHpcQq060gUNxP9MedsvvCAWWXQXY7FLeHmYGTsV0BVVvb4fhoPl7TVS5qKZlFEMOxv+TJVWukjMU3KAHWok2dTZZVTl6tBFe8dQgO1ymFp5tUpJqX4HjtEx6RxjGH463T+CJWUJI58fwJKcjo3awHnjhYX+N+n09WUB99heAugLb151WC2giRjyO0b8P12WWcAhw4aR6wn5Hp3+xdtZmwkDs34CEuUSWGK1Igq98GTqs5jzUugIKr8uerH2JD4YeZKW0o0sO0bzS08Gt9HO2D2NVpeqxfR99aQDlvWgEhs4eZqGRJhrC+3rv94ZzuMpDm87Xp9jJjD1jhHkaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lt+E3byxpxw4yGz5p/ITyqcuR31aI8PMY9W1MyE+fLM=;
 b=jhlZy+RdhM09kbt4gxSDkkX874qpXyUqmxKCNX4+VViG7rzjVa0HFHE4AS3Gp0yawE/BlZz0z14EPUVim0natwy9ERd2iCzvNQESCORkno5v9/32x6k6K/rdnQgIli1bkgDBv0aOaRxWVVRxhET2DQWW6+R5uO0C3oHXWHq85YY7JGKw/ZjFvZDbnUl2Xc59i+wFhOWq4HlF4zn5zx7NXOb3oHBCxD4CLNHZvu/xFllwuLtGUKIxMO3Z3uJyC02xb7jRMsyHR5RXnk8PrCQyA5Qxk8H0u1WHuVQ4gz6p7plTNe7xR7nt5AQIi+xrpKokF9G41jRr+xr9parSXA8m/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lt+E3byxpxw4yGz5p/ITyqcuR31aI8PMY9W1MyE+fLM=;
 b=Wea5RKCh5He3laRfu8wt24/teRCSRIkjm4TKccvKKbF/thx16pcqcoKh/ri66tTTZysAYLuDVT4/0DXsqllH+cmJv3fJqZnd4R9B+DMNF2TZv7GFRs2b77bO1aZTvYZfGeuMTOKC0kyJk30fgbUs+3VIMC6xTn2x4WHzwgrSL+I=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:11 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 02/14] ARM: dts: imx7ulp: add pmc node
Date: Wed, 19 Feb 2020 15:59:45 +0800
Message-Id: <1582099197-20327-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HKAPR04CA0013.apcprd04.prod.outlook.com
 (2603:1096:203:d0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HKAPR04CA0013.apcprd04.prod.outlook.com (2603:1096:203:d0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:07 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 25b9cfd0-25cd-4e59-3840-08d7b5129504
X-MS-TrafficTypeDiagnostic: AM0PR04MB6401:|AM0PR04MB6401:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6401604BB880C26D1B95734C88100@AM0PR04MB6401.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:243;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(199004)(189003)(2616005)(81166006)(8676002)(9686003)(4326008)(66476007)(4744005)(8936002)(478600001)(52116002)(6512007)(6506007)(66556008)(69590400006)(81156014)(316002)(86362001)(66946007)(956004)(6666004)(186003)(5660300002)(26005)(6486002)(36756003)(16526019)(2906002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8P4vXpe6ZMrY07bQtsNK4teErsr8uZUAxnS9u9eCa4ljNTXLErhZBlphXtLkNZ/t5a/OmIiV7a8GaIdI9N/Zc4Yak/XgOgm2F3/qfzzk6FkhyY2oEr1yNL6c1WIa4fwVu2glxhtUBRnpbCMvI9FA5XFXka+ZKjJTGYBGmSzZBaO+QKYhbrFoDSC/jsOSuGmX2HDUbcZisCKGA+XaHG4z4SRBCTfnVCKe7ORoBakuZ3skXBY2sZ9KVfbLGG9d1GwYW5O56bpelI15e3AsijQomQt2bs15KWifTyds3dJU+CaMFhgb5r47ru5HHcEwb64+8ZaWFgLLLHfh5o588YKCV8TujhW/6Vxi7FI/riaeeEWAx9pBj/ZV3qHQL38DnvGHJ2sld6mJyJmMe6+SUtPA7qmPxiqyEswdKe3yGgvCzRUQ7GHPrWjbY6ANZBYEHom9Bi2wuQngGtA4as8ZHkKnA0KzHfULeP1DUckkmjmj1Q7uDz19iiFS2Gj1JXqTMhqSs5d2p7OjyuqhbTf1iP4cplQETA6yX/VGK8F7SgRO4zo=
X-MS-Exchange-AntiSpam-MessageData: ceZAaI8fGzzv6ATynXCwXF69/nJG7R09oVM4HqaiNGTOWT2YVHCTHW9L+alvq0WLKO45DtodGJyiwJbarHc8qkRcnECBLwi9hmXv0YxPMrYuLDOjY+5XXn5+4o24Eyt70ZpEqPFG2kM6wUAZrGtY+g==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25b9cfd0-25cd-4e59-3840-08d7b5129504
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:11.4092 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dlbXbn2qRzcpZWlER2DiwDD0s250qNlsc4epRLqHRnelpkyB1mnR9w5oJV48Y1QLFCvLzg4/Mf889rXWLy+FDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000614_441389_2D68ED4A 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.64 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/arm/boot/dts/imx7ulp.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index ab91c98f2124..32c218123662 100644
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
