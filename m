Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EAA9CA9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 09:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwC40gUxbsWClX1P5VDk10rM9saTKAIUhBAsX6JPMPc=; b=dB1BcuLdqV+oAr
	bXUQd8aVQQgCIKat9ZoJ5NAFqsuIQkf+qyrrpJDQuRM1bOlhf1YPWOFa7La8aP4eHwc6X66QQSUrH
	BGNlKEeebYRlY6jl17ScbHo6mZR3ZgFSQf5n/mzHGVOOrjZEo3ZWwKm8Q+y8sqCAlTPtXyYzikT48
	g07cIP4IYFrbMP8E0uuHXtuewmjBut60yI8naEnftQTrLnY3dwgzGNgZWrRTNDyJlWyJxnQ9a9Acy
	SSz17igcGAg2b9Yr8w096fHr7H93t9ToqfytFQTSIN287owFNUkn0UxT3ix1kerg6AeweVnSprpTe
	XvyJu3srMyoWq1BIDYhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i29VH-0006Qs-5G; Mon, 26 Aug 2019 07:33:27 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i29UF-0005ke-4o
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 07:32:24 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d638b060001>; Mon, 26 Aug 2019 00:32:22 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 26 Aug 2019 00:32:22 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 26 Aug 2019 00:32:22 -0700
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 26 Aug
 2019 07:32:22 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 26 Aug 2019 07:32:22 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d638b010002>; Mon, 26 Aug 2019 00:32:21 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>
Subject: [PATCH 5/6] arm64: tegra: Add PCIe slot supply information in
 p2972-0000 platform
Date: Mon, 26 Aug 2019 13:01:42 +0530
Message-ID: <20190826073143.4582-6-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190826073143.4582-1-vidyas@nvidia.com>
References: <20190826073143.4582-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566804742; bh=1l/zTksvu80Z55hksPpgQGoCPRt7hW3qacYfvwGt8KU=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=oV4MrL1vCoU09RPnBi/AAMK9996jTrszeYA8U3/AfCtwYPORzlRyzokGBeRIf6EDD
 RAnFQSwQeU7L6GWLoQCqg7JE/3kxo4dX68k7SPTGc3isqyLiw81YaXlkJkqh0HICXm
 FPRbbGdzOgzjHMlrnTK9RpwYTq6gA4b9CyxLuxvPqiGKkk84lJ88jjiq5i+Z9k1hTq
 1TA2CH18FKJEK92i3855KG3tvHbd1YJDRkycd5HDs46oXQ/jVf+I2ZwgtXPebYT357
 7nbiefcaVxGp+51OXjuBlgOL7kgLmVkDc0p6IZJdO9Y10hQTHeo138ci/kuULOEHVa
 7XuWEFqbJB0Eg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_003223_311550_BD151877 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, vidyas@nvidia.com, linux-kernel@vger.kernel.org,
 mperttunen@nvidia.com, linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org,
 digetx@gmail.com, kishon@ti.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add 3.3V and 12V supplies regulators information of x16 PCIe slot in
p2972-0000 platform which is owned by C5 controller and also enable C5
controller.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
---
 .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 24 +++++++++++++++++++
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  4 +++-
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
index 62e07e1197cc..4c38426a6969 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
@@ -289,5 +289,29 @@
 			gpio = <&gpio TEGRA194_MAIN_GPIO(A, 3) GPIO_ACTIVE_HIGH>;
 			enable-active-high;
 		};
+
+		vdd_3v3_pcie: regulator@2 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+
+			regulator-name = "PEX_3V3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&gpio TEGRA194_MAIN_GPIO(Z, 2) GPIO_ACTIVE_HIGH>;
+			regulator-boot-on;
+			enable-active-high;
+		};
+
+		vdd_12v_pcie: regulator@3 {
+			compatible = "regulator-fixed";
+			reg = <3>;
+
+			regulator-name = "VDD_12V";
+			regulator-min-microvolt = <1200000>;
+			regulator-max-microvolt = <1200000>;
+			gpio = <&gpio TEGRA194_MAIN_GPIO(A, 1) GPIO_ACTIVE_LOW>;
+			regulator-boot-on;
+			enable-active-low;
+		};
 	};
 };
diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
index 23597d53c9c9..d47cd8c4dd24 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
@@ -93,9 +93,11 @@
 	};
 
 	pcie@141a0000 {
-		status = "disabled";
+		status = "okay";
 
 		vddio-pex-ctl-supply = <&vdd_1v8ao>;
+		vpcie3v3-supply = <&vdd_3v3_pcie>;
+		vpcie12v-supply = <&vdd_12v_pcie>;
 
 		phys = <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
 		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
