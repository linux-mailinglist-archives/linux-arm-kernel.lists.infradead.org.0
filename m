Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170D615BAEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 09:41:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EVLj0MYtPTLoMkSqD8e8w+bd70AmMhVhnw9nbm8qSpQ=; b=c4m
	i1Gm8jWGvatSGfcwX1UR6loaBh211LGXVUu7gfXBgJ5BMVXZqUTKWMbEEXvzCgXSJ9OwNCaSbuLbM
	NSRNaeLxLYERH8lJCXl4nfOxJvSpoprBtSDOu48dhTDoA20Y7Eo/AdV5aHv5paREqV9ixiKH+9p6E
	sjAbXcZPelgpPKZQoRtbeKytQoGnJpELuk35pOghc66Y9WReRY2yrWCewMZF8p36QkvducmjaAY9Y
	kWQkTIhBVmAKewb++C5VAP7w5AUVagSucUy5ywwZD93a5YsKOD6GUGRQO9GIy9Yf7+BaK9DmEkehD
	aYqjVb7D6DoD1swrYZWi8cSkPgYUsfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2A3v-0000Bv-B1; Thu, 13 Feb 2020 08:41:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2A3k-00009z-9b
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 08:41:21 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 326AA1A4069;
 Thu, 13 Feb 2020 09:41:18 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7B98D1A92A4;
 Thu, 13 Feb 2020 09:41:08 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3BAC94029B;
 Thu, 13 Feb 2020 16:40:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, allison@lohutok.net,
 tglx@linutronix.de, andrew.smirnov@gmail.com, kstewart@linuxfoundation.org,
 gregkh@linuxfoundation.org, rfontana@redhat.com,
 sakari.ailus@linux.intel.com, bhelgaas@google.com, dsterba@suse.com,
 peng.fan@nxp.com, okuno.kohji@jp.panasonic.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V3] ARM: imx: Add missing of_node_put()
Date: Thu, 13 Feb 2020 16:35:33 +0800
Message-Id: <1581582933-901-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_004120_612844_9CE656C8 
X-CRM114-Status: GOOD (  10.09  )
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
Changes since V2:
	- introduce src_node in anatop.c for second usage of of_find_compatible_node
	  to make of_node_put() more clear for reader.
---
 arch/arm/mach-imx/anatop.c     | 6 ++++--
 arch/arm/mach-imx/gpc.c        | 1 +
 arch/arm/mach-imx/platsmp.c    | 1 +
 arch/arm/mach-imx/pm-imx6.c    | 2 ++
 arch/arm/mach-imx/pm-imx7ulp.c | 1 +
 5 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/anatop.c b/arch/arm/mach-imx/anatop.c
index 8fb68c0..ea4a596 100644
--- a/arch/arm/mach-imx/anatop.c
+++ b/arch/arm/mach-imx/anatop.c
@@ -94,7 +94,7 @@ void imx_anatop_post_resume(void)
 
 void __init imx_init_revision_from_anatop(void)
 {
-	struct device_node *np;
+	struct device_node *np, *src_np;
 	void __iomem *anatop_base;
 	unsigned int revision;
 	u32 digprog;
@@ -135,9 +135,10 @@ void __init imx_init_revision_from_anatop(void)
 			void __iomem *src_base;
 			u32 sbmr2;
 
-			np = of_find_compatible_node(NULL, NULL,
+			src_np = of_find_compatible_node(NULL, NULL,
 						     "fsl,imx6ul-src");
 			src_base = of_iomap(np, 0);
+			of_node_put(src_np);
 			WARN_ON(!src_base);
 			sbmr2 = readl_relaxed(src_base + SRC_SBMR2);
 			iounmap(src_base);
@@ -149,6 +150,7 @@ void __init imx_init_revision_from_anatop(void)
 			}
 		}
 	}
+	of_node_put(np);
 
 	mxc_set_cpu_type(digprog >> 16 & 0xff);
 	imx_set_soc_revision(revision);
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
index 1c0ecad..dd34dff 100644
--- a/arch/arm/mach-imx/pm-imx6.c
+++ b/arch/arm/mach-imx/pm-imx6.c
@@ -655,6 +655,8 @@ void __init imx6_pm_ccm_init(const char *ccm_compat)
 
 	if (of_property_read_bool(np, "fsl,pmic-stby-poweroff"))
 		imx6_pm_stby_poweroff_probe();
+
+	of_node_put(np);
 }
 
 void __init imx6q_pm_init(void)
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
