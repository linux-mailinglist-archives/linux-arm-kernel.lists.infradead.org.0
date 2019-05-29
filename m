Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15A92D7A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfZAPJWC53s6sWis+G4Ag7qlIb2eGOC5p2KkHh+XS/I=; b=TQeat/xIvnXOuk
	z60ZvmvyHBZesKcAXUre/gDM/axJt3w2sFVHZK0PMhkvLws9hFMdSM1biwCTue/MuFs0W6uYsJR1b
	SqSu8EVtdyhRBKz3U+c7nrSbzggA9wdbAS0tzbDqWm9pGn+cgBveDBRcj/YL1D8XXhu9hUa+oIJl/
	WpxiUE0lwUBnFKVTUt2jbXH9UFM5DL3+ERpEVgVw3VuBYAgHE1a17dSU0Gcu9zA4j2eUGOVUNYBCv
	s5qL5r1BUGCQZpRYGmXObX8uwYkS4e3wnHNP96MAVH8P6bzCCo7Vi2BmeiANq+oH5VxDNJLjnPg+a
	dM2jGolKkbMjUIgkQ9mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtqi-0007ZF-CA; Wed, 29 May 2019 08:22:16 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtqN-0007M2-Sx
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:22:00 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cee41220000>; Wed, 29 May 2019 01:21:54 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Wed, 29 May 2019 01:21:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Wed, 29 May 2019 01:21:54 -0700
Received: from HQMAIL109.nvidia.com (172.20.187.15) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 May
 2019 08:21:54 +0000
Received: from HQMAIL104.nvidia.com (172.18.146.11) by HQMAIL109.nvidia.com
 (172.20.187.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 29 May
 2019 08:21:51 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Wed, 29 May 2019 08:21:51 +0000
Received: from josephl-linux.nvidia.com (Not Verified[10.19.108.132]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cee411d0001>; Wed, 29 May 2019 01:21:51 -0700
From: Joseph Lo <josephl@nvidia.com>
To: Thierry Reding <thierry.reding@gmail.com>, Peter De Schrijver
 <pdeschrijver@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, "Rob
 Herring" <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH V4 1/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
Date: Wed, 29 May 2019 16:21:32 +0800
Message-ID: <20190529082139.5581-2-josephl@nvidia.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529082139.5581-1-josephl@nvidia.com>
References: <20190529082139.5581-1-josephl@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559118114; bh=M6XClSAqRcTCzWoRxr+WNOjVjPa8z/F09Ee0LVJBj0U=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=GRsZ+TMB5XWOYDxwrOS4SFU/6fswClB8p/pGizRrOhyQ/QoaNT9UJ+FJy93WGNtDC
 bTQrc7h0J9sjvmtc5JjTRuI8G18uITVwOe/WLsLqB0pqIY07RcYj7IQPBbiqmVgnYZ
 hB9o+noyPcWj2tZwvQTGQ07VK1Uu19AtrkkBrV146+1JVTiAmRSOTqumnH8hmO6tdO
 b+mgwUShl11pPbh93+W9tUhB0dqeAvHiq9KZV3stDnuIPdtYP19DsRIS+CCdvEfmPj
 P2iRlmLwomRPhvQ8CidQ6+o3eAMikfYdGbH/ME3WOGkegAbVWWDXcPyT9t8+QvM2NQ
 MnWPECuzvDQdA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_012156_297042_DBD7156C 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
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

Add the binding document for the external memory controller (EMC) which
communicates with external LPDDR4 devices. It includes the bindings of
the EMC node and a sub-node of EMC table which under the reserved memory
node. The EMC table contains the data of the rates that EMC supported.

Signed-off-by: Joseph Lo <josephl@nvidia.com>
---
v4:
- no change
v3:
- drop the bindings of EMC table
- add memory-region and reserved-memory node for EMC table
---
 .../nvidia,tegra210-emc.txt                   | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.txt

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.txt b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.txt
new file mode 100644
index 000000000000..d65aeef2329c
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra210-emc.txt
@@ -0,0 +1,55 @@
+NVIDIA Tegra210 SoC EMC (external memory controller)
+====================================================
+
+Device node
+===========
+Required properties :
+- compatible : should be "nvidia,tegra210-emc".
+- reg : physical base address and length of the controller's registers.
+- clocks : phandles of the possible source clocks.
+- clock-names : names of the possible source clocks.
+- interrupts : Should contain the EMC general interrupt.
+- memory-region : phandle to the reserved memory (see
+  Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt) which
+  contains a sub-node of EMC table.
+- nvidia,memory-controller : phandle of the memory controller.
+
+Reserved memory node
+====================
+Should contain a sub-node of EMC table with required properties:
+- compatible : should be "nvidia,tegra210-emc-table".
+- reg : physical address and length of the location of EMC table.
+
+Example:
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		emc_table: emc-table@8be00000 {
+			compatible = "nvidia,tegra210-emc-table";
+			reg = <0x0 0x8be00000 0x0 0x10000>;
+			status = "okay";
+		};
+	};
+
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
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
