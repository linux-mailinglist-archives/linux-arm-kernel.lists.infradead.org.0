Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CC82D7AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WbtRgtMgQ/Snu5c0iS7gHR8+H7ZL7Nawdh1HNGqFY4=; b=cuZvBUtdnlZvWo
	MD2Z3RPAZsORgUbSZ7xJkZWnPFSY5Vf5OAEWbvDYS4a5jKDJ09dnD8h2i9JbF00FpMUGjGMr2mHol
	8W2xy0qDUvqJt7H09cOZ9GuhcaHDPYGMXOslDO3AX7aha3agiauk64Uyy0bc8AipGJX1gwJDZ4PZK
	xMq0N5l2Zgip+z/GN0dM1cmv7qS0deYduhnujnBCvKhOJxbaNOzDxsnrmOnVZfRoc5n2WFukirRMl
	iPTrqVO076bQ+BKi/KBrwTKVq0xrI6+xuWEmCHs6mJaXVW5xfJQNut+VvWxCsLJNGTeJonBubK8jY
	736tQeUIqOuQHR6pMtPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtsJ-0000lC-Hy; Wed, 29 May 2019 08:23:55 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtqd-0007ck-PV
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:22:18 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cee41330000>; Wed, 29 May 2019 01:22:11 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 29 May 2019 01:22:11 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 29 May 2019 01:22:11 -0700
Received: from HQMAIL101.nvidia.com (172.20.187.10) by HQMAIL106.nvidia.com
 (172.18.146.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 May
 2019 08:22:11 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 29 May 2019 08:22:11 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cee41310002>; Wed, 29 May 2019 01:22:10 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Peter De Schrijver
 <pdeschrijver@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, Rob
 Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V4 8/8] arm64: tegra: Add external memory controller node for
 Tegra210
Date: Wed, 29 May 2019 16:21:39 +0800
Message-ID: <20190529082139.5581-9-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529082139.5581-1-josephl@nvidia.com>
References: <20190529082139.5581-1-josephl@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559118131; bh=Abu9+xNYNnzs1jtOHYXGFgLqFOQAdhULT1UYXsUjjjs=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=Xy2AqPWd8rCp5dCumRjNKedZ+IoAjLSAHLFfxxoI8Gynn+0HVM4EzurieQdBuYrrx
 J9ED9t3J3y0lQ1vhm72aK99foTCzWg7CWRFM5y68BRSgl6XZYHg0hDK+hmBloi/bkJ
 L4Q0onodSn/jp9xO2mrp0XtqZK/hokua9UDhuaVN0sWTTDuczMq3shDm6L0r1BAnDk
 GSBzl5OAXcfbTbY5sTOwUm+nvhwCkhtMLOzeB1QA+y5vHiZcZx8l+vOV9ifoUXELcY
 16EjzwXpB0bNrcIjLYQC0s/Vzv5zPpey5jPuf+di2nNPHWjqLrFbk9U61rNXn0U8Yk
 BjZGYDgce0WGw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012212_253832_987504DA 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joseph Lo <josephl@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add external memory controller (EMC) node for Tegra210

Signed-off-by: Joseph Lo <josephl@nvidia.com>
---
v4:
- no change.
v3:
- apply memory-region for emc_table. And add reserved-memory node with
  it.
---
 arch/arm64/boot/dts/nvidia/tegra210.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/nvidia/tegra210.dtsi b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
index bc71ef8f9a09..b9ccfee39ed2 100644
--- a/arch/arm64/boot/dts/nvidia/tegra210.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra210.dtsi
@@ -872,6 +872,27 @@
 		#iommu-cells = <1>;
 	};
 
+	external-memory-controller@7001b000 {
+		compatible = "nvidia,tegra210-emc";
+		reg = <0x0 0x7001b000 0x0 0x1000>,
+		      <0x0 0x7001e000 0x0 0x1000>,
+		      <0x0 0x7001f000 0x0 0x1000>;
+		clocks = <&tegra_car TEGRA210_CLK_EMC>,
+			 <&tegra_car TEGRA210_CLK_PLL_M>,
+			 <&tegra_car TEGRA210_CLK_PLL_C>,
+			 <&tegra_car TEGRA210_CLK_PLL_P>,
+			 <&tegra_car TEGRA210_CLK_CLK_M>,
+			 <&tegra_car TEGRA210_CLK_PLL_M_UD>,
+			 <&tegra_car TEGRA210_CLK_PLL_MB_UD>,
+			 <&tegra_car TEGRA210_CLK_PLL_MB>,
+			 <&tegra_car TEGRA210_CLK_PLL_P_UD>;
+		clock-names = "emc", "pll_m", "pll_c", "pll_p", "clk_m",
+			      "pll_m_ud", "pll_mb_ud", "pll_mb", "pll_p_ud";
+		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
+		memory-region = <&emc_table>;
+		nvidia,memory-controller = <&mc>;
+	};
+
 	sata@70020000 {
 		compatible = "nvidia,tegra210-ahci";
 		reg = <0x0 0x70027000 0x0 0x2000>, /* AHCI */
@@ -1431,6 +1452,18 @@
 		};
 	};
 
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		emc_table: emc-table@8be00000 {
+			compatible = "nvidia,tegra210-emc-table";
+			reg = <0x0 0x8be00000 0x0 0x10000>;
+			status = "disabled";
+		};
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
