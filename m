Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1444B1A6350
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2+cMLkOyCCiMBTevClC6pLWmZdrc/vReIxJcbc9qZo=; b=jiHAMKRPsuWaVf
	xfEyC3NQMT1q4H64hMYL520Q3yL7wAUzzKd2FtLsDgNKVieQODE1iGI00BO+0ZovvsNXms/0HnnSR
	fyIHaEbEPGPqAFEYrWScx92MSNSZLXHpOLJZmvnwlKFuqPrFnu05QgfKb2fq+5I31qRKlkUnbTQy1
	wBOxMPi5k+PndXrsx+G7L5gkehiZSHxt8ZH09j+t622PczJTL0GGK45JoV9lkzo5zaPKdk0ggXVsl
	+0ZwSHp8llA44HbBQusYWDjdtICkyAMAYBQdNY+K72EuPvTGMB0WY7l/9pCFXCXKKJB+FG0AQ5yEk
	LTOgbnCdBUwF6IDxGdTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNt2y-0006bb-Cj; Mon, 13 Apr 2020 06:58:20 +0000
Received: from mail-eopbgr40086.outbound.protection.outlook.com ([40.107.4.86]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNt2D-0005zA-FB
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:57:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AaJmxwakooLUfKRReKXajVek4WM2Kd8e0TAihUcXr2O0DoPJwM4fd+tRN4o4QQSG8wINLxLNhzs1UEU+w+wi+S66LBKOlz/KC6zwet8u0YXw1CzD4B6h9yUx/q5uX8iqSBFv2W1wjUT+HotPCL+8XFY9CNPc9/OJN1X8MHsmlCkZSf2iVlA98BkcRSobACvfZVuAtN6JLciOErLqlJp6mDEpPi8WaABzJlRUmgc0JncT32e8nnFrbbnt4CA/+5DtrqOxjL/fUmoTPTYP4l9DiQQVb7zt1MCkb2nUqQVnEI6YPL5uVkmDapjPtf76hQ6JK6wsXcODzGBck0p5liM4Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=80QGD5YNpszAHtt5BhayU2MGMa+5+rTJjZ5tMrlTnc8=;
 b=oLDf6RnKUm4KKT7oMuBRR579QWPcYeyMsowkF+kk8nV9XCJjjy0yB0vQ8PHiKii/0QFrya3CZQMu3QGaLLRR9YK+wkZqri6SgBvxr6/lOeupNLBMYwUxYu7Xo1lO6XwoEEQ6NJ1/Lp+Zn5TRUO9vP4N1az8s/HcdcFPWPJiivmKZ3ZW6fd/7qIZLs2vsCZEhn4z4QiUP5liWrNUJUjAFXujOwxIwvScZLhrszudHxbIV55TvmX0EMbdoA6UbQX59xy6a1z7XumByB6V0+SaLW8gRQGoAzoM7rNJMpzVoKyxusfUG7KfJe5a+Yz32WztaFuqpjrokwYRY5e3wFIC0nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=80QGD5YNpszAHtt5BhayU2MGMa+5+rTJjZ5tMrlTnc8=;
 b=n9AxKYHKHtZeW9siGEVpC33MLy4qWSFByH2ONHo5KZAtqNe0nISZXq4G4huoKL5gEoi+NSaOChIeyJKPWQsN/pgPsx6maQwlI3YIBwr9+bl2RvkLK2SMSfdbUkGTg8ni9eFnCD4haPfIw8aQLT4hmuKGxzc2+/43tXPvF2Qd/88=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB4564.eurprd04.prod.outlook.com (2603:10a6:208:74::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Mon, 13 Apr
 2020 06:57:30 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.026; Mon, 13 Apr 2020
 06:57:30 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V2 3/4] ARM: imx: imx7ulp: support HSRUN mode
Date: Mon, 13 Apr 2020 14:49:07 +0800
Message-Id: <1586760548-23046-4-git-send-email-peng.fan@nxp.com>
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
 15.20.2900.15 via Frontend Transport; Mon, 13 Apr 2020 06:57:25 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d78820cc-0e70-44bb-d4af-08d7df77eeec
X-MS-TrafficTypeDiagnostic: AM0PR04MB4564:|AM0PR04MB4564:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4564949ECA176AE2D5E6923C88DD0@AM0PR04MB4564.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-Forefront-PRVS: 037291602B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(136003)(346002)(4326008)(86362001)(8936002)(478600001)(9686003)(316002)(16526019)(26005)(6512007)(6506007)(6666004)(52116002)(186003)(8676002)(81156014)(6486002)(69590400007)(66476007)(66556008)(2616005)(956004)(36756003)(5660300002)(66946007)(2906002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HAZ2jJer+Q/6ySIpMCsBmNoHTe8GZnOfXod70HU1W8tsfG3Uku2187TGIkbnbALgfqQyAmt/diUTLyNymF/25eZw3uPkiM6N6G6lr6nXCRotsSjR+gAttlt8KTCKJYM4cBvr1NeHuLRKOtn2vMfqwMZLLQh9GX0mRi0EunF1Tvi4C64L65JnhxvoQWRq66LVR+PANjZY5NiZP3rfDuMkXeK0kBIw2b7JEoRw6Chc9ZzV4LvuCX/pu1dhr01uhRsvzYAMgnXqXWzH+yzNDVrcxAW+gzEtbU86EVt7IuC+ucPzrs/eirbOs9zGXMzUCLW+5JgOhDo8Gr2R00cnha7XOKecuiDXg8uzcBZQDr2qZvGkSzOOVm8W/nfjyLnJVcSIB/FjXtuFqdXvL+uhogOEgO5KwOethblvrlEFucGTFTyrUL5zn3xlv9eZN3prXaLJUgKDY05Fz23tBG4raFMZeUZ7CR/rEKm0auRvuaotgeMJwpEkCttsuMMmpSsNacon
X-MS-Exchange-AntiSpam-MessageData: NQvOYsyFhttDA2g7JG0QX+/G5a9zvnqn05zwDFfTNNK0YnPVX35cyC83h8ZnWptZ5VfN5mSSYDdZI58RKuvXSkyNhmNeb1+SCYN8FrX2pWFheGFT8p9mieoV39A2B04qI7B8QpCt+MiJDpzS7tA9aA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d78820cc-0e70-44bb-d4af-08d7df77eeec
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2020 06:57:30.0953 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3L/82YeEMhAX4/1kdS+mTn65hbXzNSKQsFXe9q144ZneIus0MZjY2f9Y7HmkKeBHzLIZGCC4Ba0bSLRoKHc1yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4564
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_235733_530778_9153745B 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.86 listed in list.dnswl.org]
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

Configure PMPROT to let ARM core could run into HSRUN mode.
In LDO-enabled mode, HSRUN mode is not allowed, so add a check before
configure PMPROT.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 None

 arch/arm/mach-imx/pm-imx7ulp.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/pm-imx7ulp.c b/arch/arm/mach-imx/pm-imx7ulp.c
index 2e756d8191fa..393faf1e8382 100644
--- a/arch/arm/mach-imx/pm-imx7ulp.c
+++ b/arch/arm/mach-imx/pm-imx7ulp.c
@@ -11,6 +11,10 @@
 
 #include "common.h"
 
+#define PMC0_CTRL		0x28
+#define BM_CTRL_LDOEN		BIT(31)
+
+#define SMC_PMPROT		0x8
 #define SMC_PMCTRL		0x10
 #define BP_PMCTRL_PSTOPO        16
 #define PSTOPO_PSTOP3		0x3
@@ -25,7 +29,10 @@
 #define BM_PMCTRL_RUNM		(3 << BP_PMCTRL_RUNM)
 #define BM_PMCTRL_STOPM		(7 << BP_PMCTRL_STOPM)
 
+#define BM_PMPROT_AHSRUN	BIT(7)
+
 static void __iomem *smc1_base;
+static void __iomem *pmc0_base;
 
 int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode)
 {
@@ -65,5 +72,13 @@ void __init imx7ulp_pm_init(void)
 	of_node_put(np);
 	WARN_ON(!smc1_base);
 
+	np = of_find_compatible_node(NULL, NULL, "fsl,imx7ulp-pmc0");
+	pmc0_base = of_iomap(np, 0);
+	WARN_ON(!pmc0_base);
+	of_node_put(np);
+
+	if (!(readl_relaxed(pmc0_base + PMC0_CTRL) & BM_CTRL_LDOEN))
+		writel_relaxed(BM_PMPROT_AHSRUN, smc1_base + SMC_PMPROT);
+
 	imx7ulp_set_lpm(ULP_PM_RUN);
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
