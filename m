Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 484FE631C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2B3NTF8HCB6W9o3OxlUeKm6wYZX+mc8WKE8r2o2FMc4=; b=YUP1bY1su5fc0SDQfZLkidj4r5
	5gob1d9LNUf1fMDDTaKDM+Fvyeg1iW1rkDu+JVIRpgF5EOy8+85DljtYJkQkNPDG/WVNhgIVL2aBL
	Pg0Fla0F43bDWeP1qGpTBpPzGRPnKiyW5cEGrXzLmgEWLWA5y6WpTEwu5AUcat2ggDI3qK3G/wMVV
	5sn1dmw/sEL9IDpa8hRMxmo2qmEyQrh6H45QZFpQNsyP6w98P2h8HGIpgVvIUGafnpL7FtTbPH79c
	sPzjjCvAAAYnqNe5HU6+kNTIjFl/lsATNDbkw0GECC1zXoTRJu14XSRnQPs/NyVeYjMYu3SBW3i7p
	MK5lCryA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkQS-0000nt-RA; Tue, 09 Jul 2019 07:20:32 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkPS-0007TH-KI
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1562656768; x=1565248768;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xqMLgEWD4pnHmhIMK3kiX0AvERv5gfUwO2HMQR7B+8o=;
 b=rvUwayDSg6Zqlc1ItCNk9SLvLYdFlgaQbjmLO/HMQhIJSlTY+TXwRQHNSmmyQASW
 RcCe9lOilMweF+2rnLFZ5z+yNiHnEUw8aIy9B6SNoyh6qStiCQDR3A00Lb8L0v5y
 qGb8NDoZJQW5xzmXlkhAU4FqwX8jTYeQjcuc856QUp4=;
X-AuditID: c39127d2-17dff70000001aee-01-5d244000f909
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 98.B0.06894.000442D5;
 Tue,  9 Jul 2019 09:19:28 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.21.122])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019070909192779-309705 ;
 Tue, 9 Jul 2019 09:19:27 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 02/10] ARM: dts: imx6ul: segin: Add boot media to dts filename
Date: Tue, 9 Jul 2019 09:19:19 +0200
Message-Id: <1562656767-273566-3-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
References: <1562656767-273566-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 09.07.2019 09:19:27,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 09.07.2019 09:19:28, Serialize complete at 09.07.2019 09:19:28
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrALMWRmVeSWpSXmKPExsWyRoCBS5fBQSXW4OsSLov5R86xWjy86m+x
 aupOFotNj6+xWnT9WslscXnXHDaLpdcvMlk8uNjFYtG69wi7xd/tm1gsXmwRd+D2WDNvDaPH
 jrtLGD12zrrL7rFpVSebx+Yl9R4b3+1g8uj/a+DxeZNcAEcUl01Kak5mWWqRvl0CV8aMrhcs
 Bdf4Kj7c38jYwHiYp4uRk0NCwERiwrPZbF2MXBxCAjsYJXZdWsEM4VxglHh+6SkbSBWbgJHE
 gmmNTCC2iECkxLvtv9lBipgF9jBKTLt+nREkISzgJ7FrcyM7iM0ioCKx5+MvZhCbV8BDYlPH
 HVaIdXISN891gsU5BTwljl6EqBECqrm8YBoLyFAJgUYmiSM/9zJCNAhJnF58lnkCI98CRoZV
 jEK5mcnZqUWZ2XoFGZUlqcl6KambGIGhenii+qUdjH1zPA4xMnEwHmKU4GBWEuHd564cK8Sb
 klhZlVqUH19UmpNafIhRmoNFSZx3A29JmJBAemJJanZqakFqEUyWiYNTqoFxytujW8I4/1y2
 79Wt35d5u2L1hF3mEvLHvlQfCuipeZl2KF7zUKlBdkiMz+3Sb8cPehwRaDJWaRI9Yi0p2un4
 Z1Et07p78X9MdHnaNso8Mmu9aWCwXODRLC0pu9xQxYkS10rdIzMjz12IDM9/JvnSae2Tw3/j
 vznknfFMvf7z3jYOpjV2V5YosRRnJBpqMRcVJwIACi+2tUMCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001930_811602_459895B0 
X-CRM114-Status: GOOD (  10.08  )
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

There is now a PHYTEC phyCORE-i.MX 6UL with eMMC instead of NAND flash
available. The dts filename needs to reflect that to differentiate both.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/Makefile                                           | 2 +-
 ...l-phytec-segin-ff-rdk.dts => imx6ul-phytec-segin-ff-rdk-nand.dts} | 5 +++--
 2 files changed, 4 insertions(+), 3 deletions(-)
 rename arch/arm/boot/dts/{imx6ul-phytec-segin-ff-rdk.dts => imx6ul-phytec-segin-ff-rdk-nand.dts} (85%)

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e1924b06f3cb..668b57c8cc57 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -573,7 +573,7 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ul-opos6uldev.dtb \
 	imx6ul-pico-hobbit.dtb \
 	imx6ul-pico-pi.dtb \
-	imx6ul-phytec-segin-ff-rdk.dtb \
+	imx6ul-phytec-segin-ff-rdk-nand.dtb \
 	imx6ul-tx6ul-0010.dtb \
 	imx6ul-tx6ul-0011.dtb \
 	imx6ul-tx6ul-mainboard.dtb \
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
similarity index 85%
rename from arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts
rename to arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
index 1e59183a2f7c..dc06029c5701 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-ff-rdk-nand.dts
@@ -10,8 +10,9 @@
 #include "imx6ul-phytec-segin-peb-eval-01.dtsi"
 
 / {
-	model = "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured";
-	compatible = "phytec,imx6ul-pbacd10", "phytec,imx6ul-pcl063", "fsl,imx6ul";
+	model = "PHYTEC phyBOARD-Segin i.MX6 UltraLite Full Featured with NAND";
+	compatible = "phytec,imx6ul-pbacd10-nand", "phytec,imx6ul-pbacd10",
+		     "phytec,imx6ul-pcl063", "fsl,imx6ul";
 };
 
 &adc1 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
