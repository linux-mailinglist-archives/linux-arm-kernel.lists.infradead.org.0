Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 941FC18675E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 10:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7FKtVUvepCGcuaL6VJJRoC3tj2UbpwMehMVDZVD6RM=; b=psT6zK3d7sECwy
	rLbtBesZhamhTdrSZfouEt6PFmkbhVsKwH3Xl7/fRO2pTapi48DrKauXzN/xc+kBexR79CX+2+qBA
	Jmm2AZFoG68y3qpCNLhTwm4hEOqMIOFgYEcB/Zdd1yh0bdgDNa8GUWgIaBhkl7gIKKtn6zDSc6dVH
	2j/AbFcEdijHqNDf+cODmlm2HSBf3nX6q0mSGKCsyCgnQIkJVeckjyzP3GezdthKAEdZsdKe7wmuf
	A4g8G2rVHg9Bh9echmVbkGyD8K/9DY1eAHIWN5rIOazPZuFFRtuE29WLaNcvOxURG930i5fmVIFJl
	JeOBKs8Vtdy8ZdMes+nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlet-0000KY-3u; Mon, 16 Mar 2020 09:03:39 +0000
Received: from mail-db8eur05on2087.outbound.protection.outlook.com
 ([40.107.20.87] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDle5-000814-T2
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 09:02:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n8a8YCsuceijMoTNgAByTcR6fmMY8udOsT1eMzR0xbZcajRRUTbZXC+FzUiD52bGP2JOaxwLrKMhnsoWgGw9QY8TL5c0Ibkm5XbA5+tdI+9IFQt6yWAj2Pfzezhxj+Ljw3KvwogVKo8nTnrvs2HxSOpK0Gx/hMNFPiYDCmEy8hItTC83v1DY2wnlMx9pr8MwDNNHYHcE9nsErH5heT+pX49dAH0tYNgOVya1qi/ZIdMLoFDGffqmIGV2wTYLhQTuRfoSjdLQgWFFDvwZJrvAe8BE4aCkezxMPYY/4l+oI+PwO+hhXLo7M7S/b1mzEkq1soxLWDOKywJfQJ+GLUPv/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ay+9PXBCAMyE3JNz/XEu4o0HEVcPTs3bbzwdLXVpVwI=;
 b=Jwt3wy3JPpYaPpueXZhxa7H5W6lPUSZR16t5hIkO8Qr0a+ALoCpdKvNaVdNXI9yYl4riHffP8WitGxYHD0A2+dEEOGEAj43vsTHc1PGoRg8mr8zMTp7zixBRsmfoQWHeFhg2xUFE9GPiPvuPFNl0hcsDiVU+Ht4SXcH3R5VX3Nzo8PoviN+CHLJturxZ6zRga6YlZuS/tO2NbMyZ7p6KNwvHUu65NUQo6JGlf2YNBMxCQqoILFALWY7GgIOgIo1YMhChbYkAbh++0jqtR+wzevCn3n2Wz8TaypM5mUJnq9q3GTS/xj/4OycK+Gb5pfNPh5ujnfXuq5aDnF+HZ8YTlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ay+9PXBCAMyE3JNz/XEu4o0HEVcPTs3bbzwdLXVpVwI=;
 b=YZ6GZ0OAtZ5sNWDLce/4A4zzaxyKKW7AK40DJm9DGvugf0mkIo81U2SMP/cvtoY3njqzmZ1bAYCAN4HAkklHzIV8KxftJkqfa56H+HnMAdWe721mDY9UjfIF8aIMBp/9RuY8iyWhKPIm427oK8JMRPe/aYy1d9wuHnkdbPkyOyk=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7169.eurprd04.prod.outlook.com (10.186.130.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14; Mon, 16 Mar 2020 09:02:47 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2814.019; Mon, 16 Mar 2020
 09:02:47 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	robh+dt@kernel.org
Subject: [PATCH V3 3/4] ARM: imx: imx7ulp: support HSRUN mode
Date: Mon, 16 Mar 2020 16:55:43 +0800
Message-Id: <1584348944-19633-4-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
References: <1584348944-19633-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR06CA0126.apcprd06.prod.outlook.com
 (2603:1096:1:1d::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0126.apcprd06.prod.outlook.com (2603:1096:1:1d::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.18 via Frontend Transport; Mon, 16 Mar 2020 09:02:43 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 9fc8d0a6-6a9f-4968-4a2c-08d7c988cbd2
X-MS-TrafficTypeDiagnostic: AM0PR04MB7169:|AM0PR04MB7169:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB7169FCD3673C9090E9ADEC3788F90@AM0PR04MB7169.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-Forefront-PRVS: 03449D5DD1
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(199004)(9686003)(6512007)(4326008)(16526019)(8936002)(81156014)(81166006)(8676002)(2906002)(86362001)(316002)(26005)(186003)(956004)(2616005)(69590400007)(36756003)(6506007)(66946007)(66556008)(66476007)(478600001)(5660300002)(52116002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7169;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3DhL6vVuIBWTxDFezWd4Cy182Zqof/snbhVzEfg8q712Vb/OIkovBvMFALitx5kLr55vb76urnbIhJWs3SAMo3LHU6NwZ4F7WPhWaFSfQzZd7UTctAFPpqpNiLwATlS3PUapCmYgOy+1Zuwis7UGNW5uoyhv9/5TJNyEgH901n03xgjiEnPX35aPsaSEf6lxE221g2c9LMQT5pKbJnwxX5nOkV4VHC7kqnTAutT7ugQSzhMP1iketSiV6E7EopudSzLeMmJWVRLiFxlFeJu1yF+sSn9oeD+14mbaZSEYpMb8NooCFf1pm4yNUmFAl65LR2KUTzCJoncKTPA90HPE+SywXcqolAyBAw55YDZLxEs2y4dG6bNuGkvDODg7qwJvyq5OhFWGbsMIqB91Fs9cLn2z1JeNYeNovVC+/eemQP9xmQ4Z4nbpRSCnXBiz79rlR3T2uIST3HJpW2RrlrGBWhc5HueNQVCDpDqYDL9JDxKz8jjqu5C6zB9zLTM3fnoY
X-MS-Exchange-AntiSpam-MessageData: YQvcz/xOQMar5RUga67tHp/cMyiobNIZXvU5HAVoOS2/9iGDPVinGv3Fx35xb4a5y2aTVSvbrb3uKfg4AIdMJSPcGSt8Tx8iwKTctN51g601BZ4TV9mkQVBl3FqdZATudvXhpoYp2nkNG6tGAl21GQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9fc8d0a6-6a9f-4968-4a2c-08d7c988cbd2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 09:02:47.0275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O9W5VZf4YdDJYM9/Fd8sYZrAWR48qBXYQeWXXuyXb3YYzdzkCR1o8+eZjmVSmg2hi1eJb9HJizlzIv++zxZvIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7169
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_020250_019442_1BB10154 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.87 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
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
