Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523A8151B71
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 14:41:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GUhPgX/NxkUQzjKud4zGrT/E8oZRw/+zryvR40oHYVY=; b=sXfX373EMfdy58
	8R5QXf85yvZgleRQ5aBfYtVzPZ1EPNxYWZzy5CGkIGaSH2QseoRd6etJjbXWQL/8HfnIRw7OdIJ7Z
	SAhH7CQpNqsDaNSkIF9+8ALUx2bZaQBwRMRAbSSCXTh0FOeDE3jT18qq9Xbq8ZYF6M+XEuOM5UAVZ
	1+hKD5oFF3KgUo7QMLfDQKERF2aJXetNxnbxVdoWHm8P2IAeUwX9+uQis1vc2DZWZ/sx6u8jPsCAy
	COGQefj2J6XFpOhmrpxuaJgN8qrSAnhX9nTYQpk7/QuWJnGpTOKq9Kui8WoKNmISJD9O8/44Y8sp6
	FxEDNvTC5HV++kqVt9Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyySC-0005Ri-Vc; Tue, 04 Feb 2020 13:41:24 +0000
Received: from mail-db5eur03on061c.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::61c]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyyS2-0005R4-OM
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 13:41:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BUb1eUKBw5hKUYNJOUJVZixxL0lcp1xNS1FmlpWGp6VsFTb5wViI2p6YKfyO0rI4nBhsoZWCsg46mpt+onQIv/0YfN7wiiyBFH+ExdvGgkYqz6HA/gHnkfGVIflFrsa4DA2+TJlIr1VAoJJ7hqmAfxWNVI921q52z6BHDSb/4wOUlGYLpIQ0Im/P1RvRSPDXraWy9WCLxZ++SP0kvM968mTqH7q4+Bx2+1q/Xzcq7lkHs6DyiTP5DNWZ66GSFBvDBrVeZQ/XRey2evPTFv+Vnb9EiTwIb3jrW7tLrZywzJyhhNFH8qFLIL9/9coH7y85hBzoJmeI9u+1bcee915YjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBlopLNh6wMXuG58P/lUZJO6Fuv4jSLilngPYWM4Si0=;
 b=e5i5eTU6czPhU62lR1BlzSgDTAMzpf7aYsYjdAMF0wsK6l5anE38/Lfiz34sGyIuMjMaCLLuw3ob8cyGTeXLoD2zMxihMCGpuCUArKFO7+VXovYDy0tKLOApf8gmdCLMfDFMDCJO6sqbRn+Mh1iL1W2WaRmmpYA2+VdBrsY6v2RPpYGhXHQXoxG2OkR7KAD4MmuIDTiyLLKUvwZlVj5hrUr4uyYO6vZbWFUesJXcXxlU2csS4DDdR4GHDdEuxOyjzdGpf5Jxf3dskwWShPMIe9+hdCyDB9QrQLQ/OsM6DTJ9k5VAIdrdeZ3Pl68obolJaDXlYRjas0+nmTMCRefm8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBlopLNh6wMXuG58P/lUZJO6Fuv4jSLilngPYWM4Si0=;
 b=lFM54PVJjTKaL540pzxoXp3+0Ce3iCRy5tDz3zS7B+gOEZ6rVpBryQBV1ZD7D+HDYKMJ2GYPa/BS06KQcMkuh1FDN1556nWwREPHnsYkQumEW/WpKDN7RVhu37yMo663tcdYNsTksERuDncfMQlAMDmkZ8wxb8tKgCx39N6WMEo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6932.eurprd04.prod.outlook.com (52.132.213.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.27; Tue, 4 Feb 2020 13:41:09 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2686.031; Tue, 4 Feb 2020
 13:41:09 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 abel.vesa@nxp.com, aisheng.dong@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH 0/7] ARM: imx: imx7ulp: add cpufreq support
Date: Tue,  4 Feb 2020 21:34:30 +0800
Message-Id: <1580823277-13644-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: HK0PR03CA0107.apcprd03.prod.outlook.com
 (2603:1096:203:b0::23) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0107.apcprd03.prod.outlook.com (2603:1096:203:b0::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2686.28 via Frontend Transport; Tue, 4 Feb 2020 13:41:05 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 5943aa3c-205d-4ba7-e5a0-08d7a977e44c
X-MS-TrafficTypeDiagnostic: AM0PR04MB6932:|AM0PR04MB6932:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB69321DDF3D56EB0A07CDC90D88030@AM0PR04MB6932.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 03030B9493
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(39860400002)(396003)(136003)(346002)(189003)(199004)(16526019)(8936002)(26005)(186003)(2616005)(8676002)(81156014)(956004)(81166006)(4326008)(36756003)(86362001)(6666004)(478600001)(6506007)(66476007)(66556008)(66946007)(69590400006)(6512007)(9686003)(316002)(6486002)(2906002)(5660300002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6932;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gbj7O3cxuqi5rMuqGvXyd9YZmiP1nrJK+cU+je2Y8r3BD/euEfiFxv574iVrRfoSkpbsGkh2s5afXk2nqJSarTpPPoyTzRLZGPR4dDeDgmdFbtNy638g6A9P8sG4WnZoWGq9/9g2aWa41iXUXyvqSF6dE2r0cAFmFRMR0T9Cv3iqe7qNnDwS3ZqtZs6Trwfb0vEaiteWdgKr8PpoJ1KTImTSMS6HJYmJUY+pB8Uq/2uO968dtSI0qFvZXW8H1J/Jg5p9ox5bmYDJ0HXdZpXLuF5SuzpA+JZCyLB1r42k2ulphhJJRC+mVqdIYP+g70xEFmkbPGZeC7OOeBtiOOjv7NlBU41BPm5ZQcfly03Vwa0fA8oIzjS/WrR7oylBH0rwEssvZrV9bsm9qT+6jjI6JVRWYXDxz/B1a089srNtlpERunAsfSR0USSFwJ2BZGw4ArNZm5vG+w9MYHrVbIy8o5F7DBxhDnhbDgxLEeR5QBWnnmRTo6FKbL0imgHXO6mJW8Qc//WOmsB2oM/llVxsbwjhAnLJrh2y88AggqNIjSE=
X-MS-Exchange-AntiSpam-MessageData: B3BDUcnekYlAqAfYWhbjKV/rUrJ3Ln1E+okJ8/UErVjzSyLKHiZSe7Jb3x2oqJCaMIjg4zltV5iQnKbEIt1r2LvzLuKoD3fUjRMaTpFYYPLR9mEOeTBHyx1FEzWGpQVr9JXAEUy1dcM/q0sNUD0Z+A==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5943aa3c-205d-4ba7-e5a0-08d7a977e44c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2020 13:41:09.4160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U+uhDKtLu9QPXdoXzG0FEmOXBqU1ULkIc/Sq1pKJnPmGRNBm9K9j4vEIyuZlOl9Vd3gH9rCgVCvjSoHzVT5gBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_054114_897694_4B4C2617 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:61c listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
 1.2 FORGED_SPF_HELO        No description available.
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
Cc: Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

This patchset aims to use cpufreq-dt for i.MX7ULP to avoid
plaform specific cpufreq driver. To use cpufreq-dt, we need
a ARM core clock that could be easy to support freq change.

However i.MX7ULP has some specific design that we could
reuse imx_hw_clk_cpu that used on i.MX7D/8M. So
introduced a new api imx_hw_clk_cpuv2 to add a virtual clk
that could support ARM core freq change easily.

Patch 1,2 is to change pfdv2 to make it could determine
best parent clk, then we could directly configure pfdv2
to get the best clk per i.MX7ULP datasheet "6.2.4 PLL PFD output"


I have tested with following diff applied, and mark fsl,imx7ulp as
blacklist in cpufreq-dt driver(I also send out when this patchset
is ok)
diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index ab91c98f2124..11085b06506e 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -41,9 +41,29 @@
                        compatible = "arm,cortex-a7";
                        device_type = "cpu";
                        reg = <0xf00>;
+                       clocks = <&smc1 IMX7ULP_CLK_ARM_FREQ>;
+                       clock-frequency = <500210000>;
+                       operating-points-v2 = <&cpu0_opp_table>;
                };
        };

+       cpu0_opp_table: opp-table {
+               compatible = "operating-points-v2";
+               opp-shared;
+
+               opp-500210000 {
+                       opp-hz = /bits/ 64 <500210000>;
+                       /*opp-microvolt = <1025000>;*/
+                       clock-latency-ns = <150000>;
+               };
+
+               opp-720000000 {
+                       opp-hz = /bits/ 64 <720000000>;
+                       /*opp-microvolt = <1125000>;*/
+                       clock-latency-ns = <150000>;
+               };
+       };
+

I not include the voltage configuration, because imx-rpmsg
and pf1550 rpmsg driver still not upstreamed.

So I not included dts in this patchset, when imx-rpmsg and pf1550
ready, the dts part could be added then.

Anson Huang (1):
  clk: imx: Fix division by zero warning on pfdv2

Peng Fan (6):
  clk: imx: pfdv2: switch to use determine_rate
  clk: imx: pfdv2: determine best parent rate
  clk: imx: add imx_hw_clk_cpuv2 for i.MX7ULP
  clk: imx: imx7ulp: add IMX7ULP_CLK_ARM_FREQ clk
  ARM: imx: imx7ulp: support HSRUN mode
  ARM: imx: imx7ulp: create cpufreq device

 arch/arm/mach-imx/mach-imx7ulp.c          |   2 +
 arch/arm/mach-imx/pm-imx7ulp.c            |   4 +
 drivers/clk/imx/Makefile                  |   1 +
 drivers/clk/imx/clk-cpuv2.c               | 137 ++++++++++++++++++++++++++++++
 drivers/clk/imx/clk-imx7ulp.c             |  15 +++-
 drivers/clk/imx/clk-pfdv2.c               |  61 +++++++++----
 drivers/clk/imx/clk.h                     |   9 ++
 include/dt-bindings/clock/imx7ulp-clock.h |   3 +-
 8 files changed, 212 insertions(+), 20 deletions(-)
 create mode 100644 drivers/clk/imx/clk-cpuv2.c

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
