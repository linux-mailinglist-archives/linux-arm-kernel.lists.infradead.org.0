Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0007F1DC6F0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 08:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAlQ80YrXx7q9UfnVad2tMSwEKO6gvE4fcue4Rvah8Y=; b=HxrBxGHP6s7LQZ
	dXeJhq/99gp4Y6rLPjwOXAknd8O0O9WjNPqBwXPOABG9WVE+BELhTfcrMCXkBtLrjD18ln215xumW
	xEhInkUZKNOEkLTpMlc3W9mAzqqCHuD2LmCj8Kq1Jk6cB8JQq2bIN8oF7T/d0tK0E/F41aWf0xciA
	LznKP6ogYlPgD2+wVlpDOY8w/bVFL8TRi9d4yB3inQjd9wpsa7EGGkPwKpX2AUSUwzGD25wDQ6n8F
	9cucsXUJnPNIaDLOuk8jLMBNXWmb4Rdslz1bb8jQmcphbJ8vA3WuYdb/mt5mjAurLbIMO/sVZcDRB
	ihbMw2ll50h3x+3Putng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbeWw-0007ZO-G7; Thu, 21 May 2020 06:18:10 +0000
Received: from mail-vi1eur05on2076.outbound.protection.outlook.com
 ([40.107.21.76] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbeWU-0007QU-6y
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 06:17:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AgL8Wm0Ms1BdffvtOMD+NdMSrCDWUesaKpLEWAIHUvN3c0y1LzrF7txSLQhnHiafuMS7BVJQR5f8f5eLI5iiI8v0zxWLD5UoMpAp3Qznfph9RLDx89vSALwQoIC7UC6Z9q1cO4DMV4vC0L+8cNqk9bkLDa32kDBTUTBNFUm9jkcN3NF/E21AcQEPDt8iQjASWk88tJ07qZqM7b4Dzc2BMhf8DMYa0LV5/wYjbqPXeHMZJNrGaSl5F/IpQfu3haS+Z33f92m9HjrPOUcEX+FtrxMfEpHJDLVUX70/sD6rBFX9vky1Aq3oEDYkVgPd2IEqPq5D4+Z49IXmZLgGptI7Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jl91O/enUIS5CewE0lxQjFELsh1ZAJYlP7AtKwtSs/c=;
 b=Tve/qtgesv0UU6AGmNjUz70J3PdEJVoKABmazIGLOkmitn0XWuqtRY9GSB1RkdvPvee6+Q3tnbbRyJZqumcpuQ0LRwLQgTezUAVNJ8Z055fIm0JHGgnc/T6LMY3rMF04UQySdbgV+tx9knjOUI6Bz+48nkLtQPmmnRjDqFRUIcFjRJkcNUAgulqr114Kj9skZYHGGBNpf0/zliWr+eyJNWBlCFacWCKVlrMr1V1epS5/DCmTTPSQcndqpqJ3NX0yOs371QG3FF0GHyvv73XQJUvLH636F4hYDbtI+Ye7HRvOq3wJQl/x2Las7B0CUrBj7SqTjOBe3wtQQFfGG6fLZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jl91O/enUIS5CewE0lxQjFELsh1ZAJYlP7AtKwtSs/c=;
 b=icPfX6Hz+lV0WO4Ek+sxTlQgSehUQb7PQ62W+ubuFL3xJDAJKI0sQF+gJCtnJsxoGNdXSsP49Rul9PtSLQjtfBuLroyoCBahH/SRUzFUIMdDFbfDXlBtbl34pA2QXQCbsk0qGPfOK66bKgU10i3BbeW+ctSYwiXSLR30gWtYjxA=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6720.eurprd04.prod.outlook.com (2603:10a6:803:123::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Thu, 21 May
 2020 06:17:38 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 06:17:38 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, anson.huang@nxp.com, peng.fan@nxp.com
Subject: [PATCH v2 2/2] arm64: dts: imx8mn-ddr4-evk: correct ldo1/ldo2 voltage
 range
Date: Thu, 21 May 2020 22:17:54 +0800
Message-Id: <1590070674-23027-2-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590070674-23027-1-git-send-email-yibin.gong@nxp.com>
References: <1590070674-23027-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SGAP274CA0010.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::22)
 To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SGAP274CA0010.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b6::22) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.23 via Frontend Transport; Thu, 21 May 2020 06:17:35 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9ca4a6dc-314f-48e8-79fe-08d7fd4ea941
X-MS-TrafficTypeDiagnostic: VE1PR04MB6720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB67201B781AF6B9031F3F8F2A89B70@VE1PR04MB6720.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6+5C3mz28XLB11gmjp3eK4CnLZF8MzTfA72GyXfq27Z4ved9EogSCBOjldUbKNzN2Bmc/3ThSE9GUVAlkSblZ4MA7/oQNSOYw1H7NI8PFG5V0PIzK/ZRX5IH4UbXwhjuMhzX2AMcUFFAsHZWyEuK2CPtE76UB4eqYQNJhIAbSpOHExVrA4i3LS29vAt53JsScooP5fWp4M3Zvx52Eg/0yL8OtMlBpie2bC5zksTkAzMYGzGP1V5h1T2tyx6qxXnucZbUhpXYrGe7GKwIgsAaSLk5QwI98naulAYOzWFClajXvQ1j5YEkjKS9ysOf3CDyH9fVZt8hrrm4dxOe2MkR7Ga/egUqet4/tWFkoUeF68/dHdeUL3mK0Ni3fEkp2hsQ5+H9It7n7svQxlYnAXq9Yon6Lf5gdPokT6RewzOyCMAyKczR2+Sz1Jlj+dP4LOMUCXr2BsjhI7ziSP9eeR30CZDn6KTyql9ov6XVH8cshC4OzcMaMw86ebbQh9qbRwNP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(136003)(346002)(366004)(39860400002)(6506007)(36756003)(6636002)(2616005)(86362001)(6486002)(956004)(52116002)(4326008)(5660300002)(26005)(8676002)(186003)(16526019)(66476007)(66556008)(8936002)(316002)(6666004)(66946007)(2906002)(478600001)(6512007)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 3UJrDjQex/c8fhm3Qcbv/jLWle7Y2wKtapGT2yW39+lIfYkl6Wip4kGQ8YzD3rCOpZhQ9F5siiRl25epc3VH5yYlzBftioICDP9JpuAtBtfClPpuiqGmmYC5CWbozEpJplXpZyvgZnCZu7Sheu7xIAlNXUOwrrk3yEXRl46j6ibIKsLvhSrecGHs1d6lMTwlBt00IUCecf6Gv9PtVoHk/JmECMI2wPrLoEJBr4KjlSn9mTmmt7jM9Qoguoufa9QRT/QXl2g68MH2f/Zd5i0mzf5pYqX+FnjuDl9VfbLwUB3HPF1Wup1YCc5aP6hR0XNYy43KutQjOTFHgG17J4Ck/VmoYVyoaU3jhg7Qmu6mH4TYIqVrllGnuz2ccJKY933wEnv/BaUyQuke73gn246rYUG4ZzGMGHV02e/pJBHbQsyvjPOVzBoqvEuIro42QGVSbjNfuR1a8ODPQNtw0OqAvR8FwBy37g32UuEfe9tEZZqWShHVVOVcdfrWizu7nB+w
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ca4a6dc-314f-48e8-79fe-08d7fd4ea941
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 06:17:38.8129 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j6O2/BdXOc7iEbhwuanQz+dDUbipzuNvvN0ZqqnbKuhRNxhBO6T+WWxzqZnLFkfL2GOg9Dgg6A3JfjP2qEwCxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6720
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_231742_251894_F28DEDEB 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.76 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.76 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low group
(1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage groups
have been supported at bd718x7-regulator driver, hence, just corrrect the
voltage range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range too.
Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate i.mx8mn
datasheet as the below warning log in kernel:

[    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
[    0.999196] LDO2: Bringing 800000uV into 900000-900000uV

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
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
