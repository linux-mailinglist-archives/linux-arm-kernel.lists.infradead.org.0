Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8013A1A6352
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:58:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa0DvwmlGWKtLZnXh5uRWdzFQKma8HQuIl95KYbFS3o=; b=o9pXW6wXch0qEv
	djyRhjGKabNCfcEBF34pmc1ilVwQAiFkFdxODbADwJZgTI02i5QzG+OYfitcZhwvH9bQkN5Y1Kdst
	jJFBDXsf+N3x8nAASStRg00GXN4r9jjLlCzxYFfPOJ5Upv1m3WOfLotsykdacefQODpTT+qdpDg2q
	yHlx084yHCmS9sLxoBd06EqUmcSL/mz+k/rCpt4thhq5uD92YtK69WsTLM6QyvFc9pJ+4MfTfapMu
	4kPRGoomDxZT13BGnGXTu2oFhbSV8ajo9djR/tqzh3CojPgxiEWuBOm5gZTWVo+J5kzlQ4PEWqgis
	W16iuEv4s8DmICeRil6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNt3M-0006zK-69; Mon, 13 Apr 2020 06:58:44 +0000
Received: from mail-eopbgr40086.outbound.protection.outlook.com ([40.107.4.86]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNt2F-0005zA-BJ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:57:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgnJw+rSwlHlCGDYrOQTfnAbdEDNa2akLDZzzwwO8N97E9FcSzq07E77ehHEdrOXqq/slXu+s4D9dPz/LUZV2QxPaa1fn8W/Su4ba8ErRP430fHW4WfOFcbZZwgj26gMduQy0B02IEXuB8PT1e3VVpk1r/0owE/qe0usAd3JtHUDDkQ2IxDzCS4AuvriY5megdgLV5mVuGfJ7ab617aMsNAU6d5QL6Z+fML2j5ejISQrpyMJcNoMp5JlLbb6VmYfyus1dLxA0RzjVfWuosElaSPEwIdcOypecCUnRNg/cgeOa/EpuHkpCPTNfhISnh0hXfUMLEBj+WEM2rHdCLQcdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G5bNGB4Vj1ndOSm2R0ZXcZjkYN8QJ6Q5K/dcnYYyrK4=;
 b=ih89WqhdW+cHoO0VuDC4zgOV5A3qMIKOWWbupY4zUBk9JK1bceh7NXwe20utq/K+jDeddp6uHnFpn4cSiMIMc/+z2+pMpt8q34fN6XVIxw5dFt9ZGTnhMaP3lkqw7+wozmYZeYfXGoJfFE5zpu3AOfZztah79ocfa9bziobIw73/Jq7qA2KRmlfiLdHpPXrjqYcrmh4VlbEEGKu1hSjTZnpCw3oiHSwFQxeMkUaEjpzVmw0k1xda+J0E/eG9E08QRABRgLzTsCVOx09kN1C1ZWqCN7qy0DBYnIijvDiiaEzQfIQJcgFJ0oE87TlDAOYQb++58Zgde29gpMAZpKl42Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G5bNGB4Vj1ndOSm2R0ZXcZjkYN8QJ6Q5K/dcnYYyrK4=;
 b=qGb06RJymLFHu1u+ZThbRleLNA9P4J7wh7PqxhmN5mEjTD2rsaQaQY4KZmHi3EIiZOgSDWvUP/QZe611IU7nFfd/MCtD/1TN+EJOZKRPOYHNq7Xvq5qjSOoxRSj0XpRhlRJ9IgtFYv1+COm4fjEkgij5/sQAMM/3zmS5Jw/iK4I=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB4564.eurprd04.prod.outlook.com (2603:10a6:208:74::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Mon, 13 Apr
 2020 06:57:34 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.026; Mon, 13 Apr 2020
 06:57:34 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V2 4/4] ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when
 HSRUN
Date: Mon, 13 Apr 2020 14:49:08 +0800
Message-Id: <1586760548-23046-5-git-send-email-peng.fan@nxp.com>
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
 15.20.2900.15 via Frontend Transport; Mon, 13 Apr 2020 06:57:30 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 44ffc4fa-0533-4cc0-511d-08d7df77f154
X-MS-TrafficTypeDiagnostic: AM0PR04MB4564:|AM0PR04MB4564:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4564FBE802C76011877F154988DD0@AM0PR04MB4564.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:64;
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
X-Microsoft-Antispam-Message-Info: M8bQ6w+3ovmmvW2CpEYxoyC3f38saQDP+Ftaqn81zuuCFmROCAY27ZuR6PUloSzBaaMvj5wOf/WtTjVe9fRzhxpPpAfONxHIUFnOu0hTjp68D00cxmMYkXJ/N+zHKAXVAtAsymjH11FCNb3Qjxk2iL2MgshtrDwsD4nLKlN7+H/MP8W4Wd2njRobiSiW1S/6SuRY0iBN3M+UZnXiK+G84FryRGYgiRsTe18RYuunxtM75gpuNAQ1Cw0vYEaGJ8MVB66R4N7/BQDTSETeCwuBSPmch9jJIxX/jDo31MHN9jI1tYANSuLiH6gyeJrRu6/x9LH1jHfBa6TsRCCA+NiM+PAfRxDe1im/jO8033oxjh/eDfA6HVUv7WfxbWPZTUlV9tq2/nW6W1ZOPdwlSm3/5dxuSpVsmJCykd1Wc9d/3rmQsobH6LNQVnjJUgGfraypRAq1dCC+KZPeAzismQxZ3hrlMbe+MwKUNep+T9mHMbtCDGZsZFldeVkVeTIysqp+
X-MS-Exchange-AntiSpam-MessageData: ocnVeYye+I3gXEAzkGIA3zEbNMBnSvgWz68vt/2ELxD5GUU8rixLJK4x73E3KwZMsdrty5NrOHV+7MAYpWe+xSl7zVjKY8vv2JPsTrVNOJW7rOrUu0AeicyottOHMmhij5omOVN7U/2kdsEs3rxBuw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44ffc4fa-0533-4cc0-511d-08d7df77f154
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2020 06:57:34.1670 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WI56JPmiNZuHbR7+kCFMSkqpW6X4eQtPhQ9qqCHbfAr80dbmSPhOGgtQj8huIHLeeAqg6+h0CRvwU34DIwZhnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4564
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_235735_401143_86AA7AB8 
X-CRM114-Status: GOOD (  12.35  )
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

When cpu runs in HSRUN mode, cpuidle is not allowed to run into
Stop mode. So add imx7ulp_get_mode to get thr cpu run mode,
and use WAIT mode instead, when cpu in HSRUN mode.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 None

 arch/arm/mach-imx/common.h          |  1 +
 arch/arm/mach-imx/cpuidle-imx7ulp.c | 14 +++++++++++---
 arch/arm/mach-imx/pm-imx7ulp.c      | 10 ++++++++++
 3 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
index 5aa5796cff0e..db542da4fe67 100644
--- a/arch/arm/mach-imx/common.h
+++ b/arch/arm/mach-imx/common.h
@@ -104,6 +104,7 @@ void imx6_set_int_mem_clk_lpm(bool enable);
 void imx6sl_set_wait_clk(bool enter);
 int imx_mmdc_get_ddr_type(void);
 int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode);
+u32 imx7ulp_get_mode(void);
 
 void imx_cpu_die(unsigned int cpu);
 int imx_cpu_kill(unsigned int cpu);
diff --git a/arch/arm/mach-imx/cpuidle-imx7ulp.c b/arch/arm/mach-imx/cpuidle-imx7ulp.c
index ca86c967d19e..e7009d10b331 100644
--- a/arch/arm/mach-imx/cpuidle-imx7ulp.c
+++ b/arch/arm/mach-imx/cpuidle-imx7ulp.c
@@ -15,10 +15,18 @@
 static int imx7ulp_enter_wait(struct cpuidle_device *dev,
 			    struct cpuidle_driver *drv, int index)
 {
-	if (index == 1)
+	u32 mode;
+
+	if (index == 1) {
 		imx7ulp_set_lpm(ULP_PM_WAIT);
-	else
-		imx7ulp_set_lpm(ULP_PM_STOP);
+	} else {
+		mode = imx7ulp_get_mode();
+
+		if (mode == 3)
+			imx7ulp_set_lpm(ULP_PM_WAIT);
+		else
+			imx7ulp_set_lpm(ULP_PM_STOP);
+	}
 
 	cpu_do_idle();
 
diff --git a/arch/arm/mach-imx/pm-imx7ulp.c b/arch/arm/mach-imx/pm-imx7ulp.c
index 393faf1e8382..1410ccfc71bd 100644
--- a/arch/arm/mach-imx/pm-imx7ulp.c
+++ b/arch/arm/mach-imx/pm-imx7ulp.c
@@ -63,6 +63,16 @@ int imx7ulp_set_lpm(enum ulp_cpu_pwr_mode mode)
 	return 0;
 }
 
+u32 imx7ulp_get_mode(void)
+{
+	u32 mode;
+
+	mode = readl_relaxed(smc1_base + SMC_PMCTRL) & BM_PMCTRL_RUNM;
+	mode >>= BP_PMCTRL_RUNM;
+
+	return mode;
+}
+
 void __init imx7ulp_pm_init(void)
 {
 	struct device_node *np;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
