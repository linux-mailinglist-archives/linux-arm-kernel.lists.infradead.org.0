Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9BD631BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=txGZKUiftt8lWrUTc/jP+jjR+tBP3hVDyT+lo6qaxm4=; b=S1AAusC4MYPJGq4ob3AwdMUOmA
	lgaJqNV01FtWONGmjFAT7Cakd1kMNRxpZLg6FSeiHsg071zmRNDwETKWrnDdC/3CAXqmv7dRaSzZT
	BcTKmRZyz/w1pjtY/ldmcVZXE2AeIrsLsqyPb1uK81YAwbecEB25NPydMD1YJTJFVX20wpz4udcg1
	iqSohJb6/BpieU19CjxYc70zOyeL8puULu15wcteVypOJuGZFInDgIxjkwrGL+FM+4vfBXrWgNZiK
	qmzju7H5r683XZhGaNkynQPOAlzRHgREXmHSg6t/C5/pjfvj3LQrlgtZ+LM0FXyhAzrnqilqTkS+Z
	iqksvRLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkPk-0007Ux-6R; Tue, 09 Jul 2019 07:19:48 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPS-0007T2-Ji
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656768; x=1565248768;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q9+l9nZByzaX+KgMAAJlCsUEhKypi72xbb0pMY2tm+Y=;
 b=MsJaBN8gs1mRjMqse84PL87RHPwX/5bZdX7IsIx4ZCckcG1Onh9nBhNUQW5XZfqm
 OmwZBDa2zEQ4qARJTF3dMM7uM2DuzM6U+eu0vgR8jkWiGa68wGVTGStWe/cyBZ3X
 ASmZV5oa7lSgJcJsX+6pVEw58BXpZEleeUHAdaR09zg=;
X-AuditID: c39127d2-193ff70000001aee-00-5d243fff74f1
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id D7.B0.06894.FFF342D5;
 Tue,  9 Jul 2019 09:19:27 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192756-309704 ;
 Tue, 9 Jul 2019 09:19:27 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 01/10] ARM: dts: imx6ul: phyboard-segin: Rename dts to PHYTEC
 name scheme
Date: Tue, 9 Jul 2019 09:19:18 +0200
Message-Id: <1562656767-273566-2-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:27,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:27, Serialize complete at 09.07.2019 09:19:27
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrALMWRmVeSWpSXmKPExsWyRoCBS/e/vUqswcpH1hbzj5xjtXh41d9i
 1dSdLBabHl9jtej6tZLZ4vKuOWwWS69fZLJ4cLGLxaJ17xF2i7/bN7FYvNgi7sDtsWbeGkaP
 HXeXMHrsnHWX3WPTqk42j81L6j02vtvB5NH/18Dj8ya5AI4oLpuU1JzMstQifbsEroz1M66z
 FXySrzjzdg1rA+N/6S5GTg4JAROJZ29fs3cxcnEICexglDix5BIzhHOBUWJK5ywmkCo2ASOJ
 BdMawWwRgUiJd9t/g3UwC+xhlJh2/TojSEIYKHH50Dt2EJtFQEVi0sITzCA2r4CHxNSbr9kh
 1slJ3DzXCRbnFPCUOHrxF5gtBFRzecE0FpChEgKNTBLtVw+wQjQISZxefJZ5AiPfAkaGVYxC
 uZnJ2alFmdl6BRmVJanJeimpmxiBoXp4ovqlHYx9czwOMTJxMB5ilOBgVhLh3eeuHCvEm5JY
 WZValB9fVJqTWnyIUZqDRUmcdwNvSZiQQHpiSWp2ampBahFMlomDU6qBMeHaDm3LsLOm99Xy
 W0y9nC7em+7T1SrcfL30reMr5mVHotZpzFPLkNVOzjJ4+Pzl8/sbKhOuanCdaEnePF1W3dDx
 TGBtq5NsgOqv5PN3Z0/nPC1tm2Fdu2zGV567C1a9DlzidlW26Fl9u1V4fnBKvvnMCZFcnItq
 tp065PTgxxQL/qn8u3+mKrEUZyQaajEXFScCAE6N57BDAgAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001930_807884_5E51273F 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: devicetree@vger.kernel.org, martyn.welch@collabora.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the same name scheme for the phyBOARD-Segin and the phyCORE-i.MX
6UL as is used for the PHYTEC phyBOARD-Mira and phyCORE-i.MX 6.

This is only a cosmetic change and there is no functional change
intended.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/Makefile                                        | 2 +-
 .../{imx6ul-phytec-pcl063.dtsi => imx6ul-phytec-phycore-som.dtsi} | 2 +-
 ...tec-phyboard-segin-full.dts => imx6ul-phytec-segin-ff-rdk.dts} | 8 ++++----
 ...ytec-peb-eval-01.dtsi => imx6ul-phytec-segin-peb-eval-01.dtsi} | 0
 ...imx6ul-phytec-phyboard-segin.dtsi => imx6ul-phytec-segin.dtsi} | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)
 rename arch/arm/boot/dts/{imx6ul-phytec-pcl063.dtsi => imx6ul-phytec-phycore-som.dtsi} (98%)
 rename arch/arm/boot/dts/{imx6ul-phytec-phyboard-segin-full.dts => imx6ul-phytec-segin-ff-rdk.dts} (84%)
 rename arch/arm/boot/dts/{imx6ul-phytec-peb-eval-01.dtsi => imx6ul-phytec-segin-peb-eval-01.dtsi} (100%)
 rename arch/arm/boot/dts/{imx6ul-phytec-phyboard-segin.dtsi => imx6ul-phytec-segin.dtsi} (99%)

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index dab2914fa293..e1924b06f3cb 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -573,7 +573,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ul-opos6uldev.dtb \
 	imx6ul-pico-hobbit.dtb \
 	imx6ul-pico-pi.dtb \
-	imx6ul-phytec-phyboard-segin-full.dtb \
+	imx6ul-phytec-segin-ff-rdk.dtb \
 	imx6ul-tx6ul-0010.dtb \
 	imx6ul-tx6ul-0011.dtb \
 	imx6ul-tx6ul-mainboard.dtb \
diff --git a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
similarity index 98%
rename from arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
rename to arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
index fc2997449b49..bff13d0eb064 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -10,7 +10,7 @@
 #include "imx6ul.dtsi"
 
 / {
-	model = "Phytec phyCORE i.MX6 UltraLite";
+	model = "PHYTEC phyCORE-i.MX6 UltraLite";
 	compatible = "phytec,imx6ul-pcl063", "fsl,imx6ul";
 
 	chosen {
diff --git a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts
similarity index 84%
rename from arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
rename to arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts
index b6a1407a9d44..1e59183a2f7c 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts
@@ -5,12 +5,12 @@
  */
 
 /dts-v1/;
-#include "imx6ul-phytec-pcl063.dtsi"
-#include "imx6ul-phytec-phyboard-segin.dtsi"
-#include "imx6ul-phytec-peb-eval-01.dtsi"
+#include "imx6ul-phytec-phycore-som.dtsi"
+#include "imx6ul-phytec-segin.dtsi"
+#include "imx6ul-phytec-segin-peb-eval-01.dtsi"
 
 / {
-	model = "Phytec phyBOARD-Segin i.MX6 UltraLite Full Featured";
+	model = "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured";
 	compatible = "phytec,imx6ul-pbacd10", "phytec,imx6ul-pcl063", "fsl,imx6ul";
 };
 
diff --git a/arch/arm/boot/dts/imx6ul-phytec-peb-eval-01.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin-peb-eval-01.dtsi
similarity index 100%
rename from arch/arm/boot/dts/imx6ul-phytec-peb-eval-01.dtsi
rename to arch/arm/boot/dts/imx6ul-phytec-segin-peb-eval-01.dtsi
diff --git a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
similarity index 99%
rename from arch/arm/boot/dts/imx6ul-phytec-phyboard-segin.dtsi
rename to arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
index 7bf439a77d2c..78425c3290a1 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
@@ -5,7 +5,7 @@
  */
 
 / {
-	model = "Phytec phyBOARD-Segin i.MX6 UltraLite";
+	model = "PHYTEC phyBOARD-Segin i.MX6 UltraLite";
 	compatible = "phytec,imx6ul-pbacd-10", "phytec,imx6ul-pcl063", "fsl,imx6ul";
 
 	aliases {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
