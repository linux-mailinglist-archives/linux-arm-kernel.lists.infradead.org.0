Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E12F7163E89
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:08:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVgnKP8qlxaWQjP9x00rY1t6flw5Ovt1f7u/CoouBE0=; b=Eh4co/3ooMtiZm
	QXnBaqYfDm3ptOAVQJo7rozYD39Yw25hJwetBPEeGW98CEoZgmwhv/Wm6OWDL626pcjJeQ9y5RD30
	Qii32hGVnUFS8vujQwrttMWPLSOuoOdKwIDVkIns5cB+ku7WEVsVsw+TJCimXEc1Pwis/3BB0yfW8
	nnwJE65lh3KWHKYElLEDXS4A3oQT209sIlDfeN+6m6ZO1dHwK68bu/SYjPnlUyHMnRtQYWBMKQFYV
	NVFTpCWqF9lbSPMFtznOzrTyHskuSMpqzJXIb3NsHamYZnkWt+piSyaUpN+lHUFcDD8O/zjiJMq8R
	4apMP69M4hwSSa9yMXwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4KP4-0002s7-FN; Wed, 19 Feb 2020 08:08:18 +0000
Received: from mail-vi1eur05on2063.outbound.protection.outlook.com
 ([40.107.21.63] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KNY-0001kh-Fh
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:06:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OqtsqoGaB4Yk5RYR5a9E87/ALk1QEPEUBYwLM/4GKq3tSV8eOupwXZIpZeYJdpdjn53CDh44Jo6pbSYf7i/QHFX9WfSWYPHNAW106+W3WpnYAwWXWbZNbLbRHT22S8Gai33r2i66axeDNu7mxy6vUBgUxJqIkxXfcKFJ2UuIY+EI0bTRjA9Fb9dHpUaNOjJ13vS2VR1/Dtx9r2uUizqdLplJ5VzKm5cx/Qdm0kHm7TOT7vWyeeLQhHiCHhBfGrd4iKXfnZ4L8QrsRCrE6rERjEDQNJigqSvK3252k7LFS7sRuoV3Is9LWCbRE9KxPNQw+r9B0c9HxNCLhdEfTHyWIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GhfP6seJSSyoKs3zhILEbAv/arENkWUq/uDfGf4Vxs=;
 b=OZemHSsvj3QdpYZonLAAEAJUe0GUxufDiYhZ59wKXPU14AerJSFS09lDQ7cZh6i30w2v2RBwexGlvf1weFrv/fdS36+2CEZ+VfDg9Wa97t09iiHDJWEfDc4dTXjAFrpuaQS9Ox5IVDKBVkAsXFy4TRxPg/K46oGVaxaXuQPEJpaSF+/qifhjpGFC392ussl/PkOyzAJE7ytNuo0ljbl7/QswSz85cKAawQ/cqUGAyA3P1nL0II9Wik5aCGXUntpbnUwnbhloTFs3Ld9uFIrR0SptFSkI7vGOqadFgnhmsRmtV3R+kZEbUEdZwN7TnUnWGqwdSwj2dzj3w699b5LAwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GhfP6seJSSyoKs3zhILEbAv/arENkWUq/uDfGf4Vxs=;
 b=aGW7FUGOsVZ+msgxTWao+k18FuJZAMRSYaV6ax048f9KRkFjId90aE8LLuCFSd2n12leAktjQz/jZ3Eac2VeJM/joQP6tpRtjGwILjLseB4vtaZOrNwGmAZ91aNmaqP2fSMBcv6iulojclU2zuhEUk6C/5QX5GVnCdRylxIjouU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Wed, 19 Feb 2020 08:06:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 08:06:41 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org, viresh.kumar@linaro.org, rjw@rjwysocki.net
Subject: [PATCH v2 09/14] ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when
 HSRUN
Date: Wed, 19 Feb 2020 15:59:52 +0800
Message-Id: <1582099197-20327-10-git-send-email-peng.fan@nxp.com>
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
 15.20.2729.23 via Frontend Transport; Wed, 19 Feb 2020 08:06:37 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e66de7f4-b9da-4e6c-db57-08d7b512a6d7
X-MS-TrafficTypeDiagnostic: AM0PR04MB6401:|AM0PR04MB6401:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB64014F2344AF80DB7297A96688100@AM0PR04MB6401.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:64;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(136003)(346002)(39860400002)(396003)(199004)(189003)(2616005)(81166006)(8676002)(9686003)(4326008)(66476007)(8936002)(478600001)(52116002)(6512007)(6506007)(66556008)(69590400006)(81156014)(316002)(86362001)(66946007)(956004)(6666004)(186003)(5660300002)(26005)(6486002)(36756003)(16526019)(2906002)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y45eD+JlTD1MigszjZ2MRcQKv3hj1f/8IGXAbOUz3tYf2cPs3/w7xXe2NHSZ6kuqF6jHNKP4+GdPZkuG5v0OmosOq08leMmbw5/eQY3wytYu0nRolZC1ksNibMJSq7YBXjH3Pz4VP853ecDndAONyHDCSz5dPvlGMi/UBcqxZzvj2jY/MQBTG9Bi92CiaAd6BHYIAacIK/aXGubObDlaHHZxCoW38l6/ZavHBKbADFot9XrXv+5EXIPQ7TEO39HwwRYuRBNPjGCG42eWrVu/NF9TCBsgTFBy/muWT9qx5quuhYqKSxXCWQ4dAXubAzFYTLJAPhNyheYJk07MUA8QAh6z1WS6GaNIuxDUlLhKvjWQcUpfL7Pb7yv+0kqWk3VgjwkG+qZeQRK25GslpXzoG+ZsbVI3XQNSlSEJKpAnNg9ylJiRuMcHbK9tjePqc4EWI9QmUZqqdzdtv15wNiOHdttpGg8YckOVIS9LsXStfMp5PW4IqvtPOjavCgTWyAtSGz7iDjlDnyqYrqaX5RkkqjzLOqU6B7q3j5HEimrcOnI=
X-MS-Exchange-AntiSpam-MessageData: wbo+Z5MnxyQtXDks6KG+CdcOqXca7w8W/CniLnX+ud08lilt8ePYAsXR0ucEMs1Cl7p0SKfQBg6BRWEqEtuxvopta2MX+y5d/gXZXSURn5AhjZiDvw+HOcn6XQ5+GFfomIn6NN/pixnou6iNHgn0rg==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e66de7f4-b9da-4e6c-db57-08d7b512a6d7
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 08:06:41.1216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uQ4pzeWZLINFH0YYfskFBJNq+f4UoRXyA8Q7j+5xjYJY/qSJkucEiBvNYcFxBkt4XBWUB/do8odHvAzzvTX9UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_000644_531557_7BF992EC 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.63 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

When cpu runs in HSRUN mode, cpuidle is not allowed to run into
Stop mode. So add imx7ulp_get_mode to get thr cpu run mode,
and use WAIT mode instead, when cpu in HSRUN mode.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
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
