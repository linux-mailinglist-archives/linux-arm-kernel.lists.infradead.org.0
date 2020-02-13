Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A4715B939
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 06:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hTCPpFb5kcRUlLCEAbNclxsoHNmmd0CFPxQblYx63QA=; b=euw
	zoCF56flFIBCuyL1XL5f6uVxV3j9pnk6vcdoBEi9ZUIfDeVdhhT/AvkgWDpegrhhAjsUSGiGwbVBg
	kcrVrLKiU3db6VyalLBDB/7xV1Wt5vWaRhwJmjW2eu08zTh8N5tgyTArqheBFv1mrabiu5Wh95s1s
	m5IPxoou4V5A8DHtj+Mz8uT/6o9qgfZ50ppnLPSlmKmXj0EdKW90guRY460Os3zfR1xqWMVY2wo5B
	nCLhDYjfzLrZvY71Gv06zO+7O8nCi2ljSf9rf1F4RZtTPcT5L12WDLfwBnXlEvWGhyxm8MAh81wC9
	U0qLZA10C5vPm3oK4BjX5SqGxrzvNjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27R9-0008Ib-1E; Thu, 13 Feb 2020 05:53:19 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27R1-0008IB-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 05:53:13 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D5AF21A00A6;
 Thu, 13 Feb 2020 06:53:09 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 747671A5559;
 Thu, 13 Feb 2020 06:53:00 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 386994029B;
 Thu, 13 Feb 2020 13:52:49 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, allison@lohutok.net,
 tglx@linutronix.de, andrew.smirnov@gmail.com, kstewart@linuxfoundation.org,
 gregkh@linuxfoundation.org, rfontana@redhat.com,
 sakari.ailus@linux.intel.com, bhelgaas@google.com, dsterba@suse.com,
 peng.fan@nxp.com, okuno.kohji@jp.panasonic.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: imx: Add missing of_node_put()
Date: Thu, 13 Feb 2020 13:47:26 +0800
Message-Id: <1581572846-4301-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_215312_289159_CB7C7B33 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After finishing using device node got from of_find_compatible_node(),
of_node_put() needs to be called.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/mach-imx/anatop.c     | 2 ++
 arch/arm/mach-imx/gpc.c        | 1 +
 arch/arm/mach-imx/platsmp.c    | 1 +
 arch/arm/mach-imx/pm-imx6.c    | 1 +
 arch/arm/mach-imx/pm-imx7ulp.c | 1 +
 5 files changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/anatop.c b/arch/arm/mach-imx/anatop.c
index 8fb68c0..4fa727f 100644
--- a/arch/arm/mach-imx/anatop.c
+++ b/arch/arm/mach-imx/anatop.c
@@ -103,6 +103,7 @@ void __init imx_init_revision_from_anatop(void)
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx6q-anatop");
 	anatop_base = of_iomap(np, 0);
+	of_node_put(np);
 	WARN_ON(!anatop_base);
 	if (of_device_is_compatible(np, "fsl,imx6sl-anatop"))
 		offset = ANADIG_DIGPROG_IMX6SL;
@@ -138,6 +139,7 @@ void __init imx_init_revision_from_anatop(void)
 			np = of_find_compatible_node(NULL, NULL,
 						     "fsl,imx6ul-src");
 			src_base = of_iomap(np, 0);
+			of_node_put(np);
 			WARN_ON(!src_base);
 			sbmr2 = readl_relaxed(src_base + SRC_SBMR2);
 			iounmap(src_base);
diff --git a/arch/arm/mach-imx/gpc.c b/arch/arm/mach-imx/gpc.c
index b5b557f..07f1972 100644
--- a/arch/arm/mach-imx/gpc.c
+++ b/arch/arm/mach-imx/gpc.c
@@ -282,4 +282,5 @@ void __init imx_gpc_check_dt(void)
 		/* map GPC, so that at least CPUidle and WARs keep working */
 		gpc_base = of_iomap(np, 0);
 	}
+	of_node_put(np);
 }
diff --git a/arch/arm/mach-imx/platsmp.c b/arch/arm/mach-imx/platsmp.c
index 2aa2692..cf4e933 100644
--- a/arch/arm/mach-imx/platsmp.c
+++ b/arch/arm/mach-imx/platsmp.c
@@ -109,6 +109,7 @@ static void __init ls1021a_smp_prepare_cpus(unsigned int max_cpus)
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,ls1021a-dcfg");
 	dcfg_base = of_iomap(np, 0);
+	of_node_put(np);
 	BUG_ON(!dcfg_base);
 
 	paddr = __pa_symbol(secondary_startup);
diff --git a/arch/arm/mach-imx/pm-imx6.c b/arch/arm/mach-imx/pm-imx6.c
index 1c0ecad..c437f21 100644
--- a/arch/arm/mach-imx/pm-imx6.c
+++ b/arch/arm/mach-imx/pm-imx6.c
@@ -643,6 +643,7 @@ void __init imx6_pm_ccm_init(const char *ccm_compat)
 
 	np = of_find_compatible_node(NULL, NULL, ccm_compat);
 	ccm_base = of_iomap(np, 0);
+	of_node_put(np);
 	BUG_ON(!ccm_base);
 
 	/*
diff --git a/arch/arm/mach-imx/pm-imx7ulp.c b/arch/arm/mach-imx/pm-imx7ulp.c
index 7b2f738..2e756d8 100644
--- a/arch/arm/mach-imx/pm-imx7ulp.c
+++ b/arch/arm/mach-imx/pm-imx7ulp.c
@@ -62,6 +62,7 @@ void __init imx7ulp_pm_init(void)
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx7ulp-smc1");
 	smc1_base = of_iomap(np, 0);
+	of_node_put(np);
 	WARN_ON(!smc1_base);
 
 	imx7ulp_set_lpm(ULP_PM_RUN);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
