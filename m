Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE1A1AA1CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NVgnKP8qlxaWQjP9x00rY1t6flw5Ovt1f7u/CoouBE0=; b=rjslNsTwNgqBKv
	rNip7YUMxuPfp4IHMr7kH73T6nFirKf1h5mR1h1GjdXgxhntIXA38DQnOiifjPpAGHpBUtp8qEfdE
	AdHi3ZQPHkCuc615fTdHqjXBDrAQ8t/5b/X15rodImjKKQ2nzcAcZE18PzAgKOp7NELob8Gd5vT/+
	LqK2/psA0xbkUW6RMM2HJq3tAxceOnKYVbo33dAJ414Fepn/oFuhw7WKSFNOxJKcDRqfH6kQe7U0I
	l1R971L6xrIL6TSojECA5bnnAYv2AOFApphhA7EFoaIOBd1Fw2lu1IBr0/8RppPNmS6FF70FX21ou
	9wUAHfA45Vs2W4C8lamw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhV3-0006ad-5B; Wed, 15 Apr 2020 12:50:41 +0000
Received: from mail-vi1eur05on2060.outbound.protection.outlook.com
 ([40.107.21.60] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhTu-0003Nx-UI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:49:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NCOl3YhRgxuUyITX3J5LxbQ2HTwRBjWwS7FSvkfJPZJu2FmBtIiaGiUQOEI8e/FjXWZCudJR1STl4l5tLz5MNqn2G7XJCUzBxAuSX2Bh+/26U8Ic4mzdth5JBA0zB8mNjv+vCiTdjec4jEHR05/kmSGwHel3CfZNisN8ZFzRu/Hwl+cM/GD68PbsKEj4z9EP1jHdBGqcP0P6h0Gv/jlcChfcVFn0NcBexMzPSGqK0lgsNwmpBpkGXvc6M4dNzhPbTru8i6vfsK5zjoUCVSv1Yhm3bdGiJg5MXrKNua0dbSsjFbkv57eTYS/QPWwbhYFa472I6wbojl5XYkQGCjeoQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GhfP6seJSSyoKs3zhILEbAv/arENkWUq/uDfGf4Vxs=;
 b=TEKmFXWJIesinfY/uudxMVYzN/xtHcIN58DNH3+zDACXsfnrwPfPBYXWpRITSlVOdCIEsG5UOrCmOmq6Q3BOdAy106kS9Dfl+K+FZsoiO7UG/X0CXVp/wF9yQZOITQ/p5tqcx+cedhsKW3a9d8GtmBUjSQRHNIxLwI3xo37ry36swzge/zkgKHo2jSm5Qc4LD/4w30k2NgpP4pI0xLl4lNDROWfHanNx2j8uJmlGb0bgpLymlGupdAaQBjQzCKoBvrd1ieYTJvyj68HP/Gu6oTGINXHGdij+Dd7vrRcMLIgIPOYbIxTK6ljR0ySM8Ht1gSdAvW3QipjXpBsoM7yg1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GhfP6seJSSyoKs3zhILEbAv/arENkWUq/uDfGf4Vxs=;
 b=L8Jj47Z8I3h9pV07cROJO7wL7cZaQXdxzPdxHtaGC+sxKzpvyAhacjMu5Tcisod42K3A5+qYSUmrK4HWfBYtqstnsoDdk07EXfvaL9miBHtcjQkg9eKDnfcahD0TBBVEBKJJgVARhtXIVgHrUNVnxNmMlsGiRa05lb1nIo1oMgw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2856.eurprd04.prod.outlook.com (2603:10a6:4:9a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Wed, 15 Apr
 2020 12:49:24 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 12:49:24 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, sboyd@kernel.org,
 robh+dt@kernel.org
Subject: [PATCH V4 4/4] ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when
 HSRUN
Date: Wed, 15 Apr 2020 20:40:49 +0800
Message-Id: <1586954449-17463-5-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
References: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0098.apcprd02.prod.outlook.com
 (2603:1096:4:92::14) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.67) by
 SG2PR02CA0098.apcprd02.prod.outlook.com (2603:1096:4:92::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2900.17 via Frontend Transport; Wed, 15 Apr 2020 12:49:17 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.67]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 18929127-4cb5-4ff6-091c-08d7e13b6aed
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2856:|DB6PR0402MB2856:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB285614D254A4E0AF347AF37588DB0@DB6PR0402MB2856.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:64;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(366004)(396003)(136003)(6486002)(66946007)(26005)(186003)(52116002)(16526019)(6506007)(956004)(5660300002)(2616005)(6512007)(4326008)(6666004)(2906002)(316002)(8936002)(69590400007)(66556008)(9686003)(36756003)(81156014)(8676002)(478600001)(86362001)(66476007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UsK+1r3tBdr0nfyWK2NC0EHlSn/d2QNoy2lZjJVozqMjBys8Twduyes3oBGfRdnOEeP4aO/SO7gXk14CwPJfD5DZvReo7z7JjBJLFEiztHiBZ2yV1CK1GMcw6STYnDwWrKZLWMYeEOUzpTPhSUUbRizlS2WZApbYivsRFYM4PTk/38rVxq2AtMYXp/Nmvw8/SRIUVvVI1ILMPzKr8lLeDcPWXqSxIMnbJs/UUQlEMjEc/f6mDd5XOwHDVfMZ8gWmC2Wh0u+evBlCDTePcsSAr0M4/7GXyd+qVUW47GkfFl8s/5v2A9XFerWnrUFLGC/v6J5p3hoJxlLYcWw+Xa8W6c8XGvwakdOXJoF3DZv3K8SXl7oA/w9ILoWNLRVlLsGoHWlLnRWHgzFjCqoh4yofp5sBsA7lTqO3TToUo+rvnH3mWJpcZCe0uxmSvJOv6HJKtbnKKiRaGDgwxFLhQmTuA9EGg+WXWotpDURnKeEWjuBk7Ak9RxSPHz7aOF8mQ6TY
X-MS-Exchange-AntiSpam-MessageData: rMo/px1q3SGFzGDKOYb8+1CLSG+RiZsybvysxj0uWkKV3zZAAlrPHIogQySQ+vZOwALrE9HOupWA0XpDKzYdM/DpWvFWrc8HqSAZ3sJ0BDVvf5WHTGlu2iV8Dqnue4BiBXIu9pxlJFId2Ke5nCsLeQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18929127-4cb5-4ff6-091c-08d7e13b6aed
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 12:49:21.2432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lOpo3v7Tk8P8t2uqLW4y4EypqBBNXxZcN1gmTCicr/VmqIwHkBVJbr85enqgSaCgHd6YwIwaw1/Y+GUS3mNKpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054931_014970_D7396D3F 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
