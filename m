Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742F1C9723
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 06:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IrXsoiRBrCGKqIm4QsapzpqjhOYXlQwHZJX/oZ5VgMY=; b=R9OSrl28tk8W6PAnSFm+fMMtJm
	TwFXJUpDQd2qgOOYJMspSMyHQfyXUFlszLU1RsSUOOeUgFOEGvALardvM0K3Bky/bLA9h3gVu14qH
	3ARntlktny+/Qy05zjwOoMN2Jr3R7LQJOsOk7ZOIIes0sWM7kNPbcAx0PczehLflJEZjUxbvReTxm
	iJyNF8sXuyz/cdzS478KKCXIE0oamXaocRdndP1AFRTRPBq63xmN1L59Z8MMDUVQQK5OY2QjfY214
	F5xrr9ZdUitNpY0/6U5s79APPoZQ9WZGh6jfbOKIIq0nKjX0mHSaKzqWO9X/RIZ/KHRtkAKbL62TC
	SZRZnxcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFsIk-00071v-MS; Thu, 03 Oct 2019 04:01:14 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFsIS-0006t8-JM
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 04:00:58 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 21:00:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,250,1566889200"; d="scan'208";a="366919261"
Received: from sgsxdev004.isng.intel.com (HELO localhost) ([10.226.88.13])
 by orsmga005.jf.intel.com with ESMTP; 02 Oct 2019 21:00:51 -0700
From: "Ramuthevar,
 Vadivel MuruganX" <vadivel.muruganx.ramuthevar@linux.intel.com>
To: ulf.hansson@linaro.org,
	linux-mmc@vger.kernel.org
Subject: [PATCH v1 1/2] dt-bindings: mmc: sdhci-of-arasan: Add new compatible
 for Intel LGM SDXC
Date: Thu,  3 Oct 2019 12:00:31 +0800
Message-Id: <20191003040032.37696-2-vadivel.muruganx.ramuthevar@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191003040032.37696-1-vadivel.muruganx.ramuthevar@linux.intel.com>
References: <20191003040032.37696-1-vadivel.muruganx.ramuthevar@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_210056_718413_E3AAA2A8 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, qi-ming.wu@intel.com,
 andriy.shevchenko@intel.com, cheol.yong.kim@intel.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org,
 Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
 robh+dt@kernel.org, adrian.hunter@intel.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>

Add a new compatible to use the sdhc-arasan host controller driver
with the eMMC PHY on Intel's Lightning Mountain(LGM) SoC.

Signed-off-by: Ramuthevar Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
---
 Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index 7ca0aa7ccc0b..eb78d9a28c8b 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -19,6 +19,8 @@ Required Properties:
 	Note: This binding has been deprecated and moved to [5].
     - "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1": Intel LGM eMMC PHY
       For this device it is strongly suggested to include arasan,soc-ctl-syscon.
+    - "intel,lgm-sdhci-5.1-sdxc", "arasan,sdhci-5.1": Intel LGM SDXC PHY
+      For this device it is strongly suggested to include arasan,soc-ctl-syscon.
 
   [5] Documentation/devicetree/bindings/mmc/sdhci-am654.txt
 
@@ -97,3 +99,18 @@ Example:
 		phy-names = "phy_arasan";
 		arasan,soc-ctl-syscon = <&sysconf>;
 	};
+
+	sdxc: sdhci@ec600000 {
+		compatible = "arasan,sdhci-5.1", "intel,lgm-sdhci-5.1-sdxc";
+		reg = <0xec600000 0x300>;
+		interrupt-parent = <&ioapic1>;
+		interrupts = <43 1>;
+		clocks = <&cgu0 LGM_CLK_SDIO>, <&cgu0 LGM_CLK_NGI>,
+			 <&cgu0 LGM_GCLK_SDXC>;
+		clock-names = "clk_xin", "clk_ahb", "gate";
+		clock-output-names = "sdxc_cardclock";
+		#clock-cells = <0>;
+		phys = <&sdxc_phy>;
+		phy-names = "phy_arasan";
+		arasan,soc-ctl-syscon = <&sysconf>;
+	};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
