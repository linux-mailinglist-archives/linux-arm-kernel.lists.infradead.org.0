Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BE0816F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 12:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=upjr4Vlm3RJspvi1q095BPZq6Smwxjvczb0PMb5cIyo=; b=kNn
	H0LXt0S/JxKVU6FcOpKNow6Y4tDMoDyZLBNblDuEI8KsIXENlKMosHij+owobrtpwiytlEjNRJz9c
	N9ehxRhmDuTn9ITvN76JgfBrn65xtC2XE++BSU2QVKRCrSJ+WVtpYYt63OAUEsBiW8534X9iwXy9Z
	1oVRSXoJ1JAgatEkYXTvZFHUEUP17XUjBt9rldhy6Tk3tO52Qrn8V3P791FZLycwMGFVVd6AM3WWW
	+0QSlpY2+DSywCdCBt4sPXuMaBuS7t6rtbr9G7Z4LW4tMFy+HGspMy/ExAywuT0ohExtLiq57BBkm
	auAAJzN4A3sDLRV51xhIPAQf1MzHajg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaA2-0007Xj-RY; Mon, 05 Aug 2019 10:24:15 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hua9q-0007Wa-Iv
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 10:24:04 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2D2D11A00F6;
 Mon,  5 Aug 2019 12:23:59 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7250E1A00F5;
 Mon,  5 Aug 2019 12:23:52 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 1B366402B5;
 Mon,  5 Aug 2019 18:23:44 +0800 (SGT)
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4] arm64: dts: ls1028a: Add esdhc node in dts
Date: Mon,  5 Aug 2019 18:26:41 +0800
Message-Id: <20190805102641.3732-1-yinbo.zhu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_032402_902733_D8DD806C 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ashish Kumar <Ashish.Kumar@nxp.com>, linux-mmc@vger.kernel.org,
 xiaobo.xie@nxp.com, linux-kernel@vger.kernel.org, yangbo.lu@nxp.com,
 jiafei.pan@nxp.com, yinbo.zhu@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ashish Kumar <Ashish.Kumar@nxp.com>

This patch is to add esdhc node and enable SD UHS-I,
eMMC HS200 for ls1028ardb/ls1028aqds board.

Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
---
Change in v4:
		put esdhc 'status' at end of property list.
		sort the nodes in unit-address
		Use IRQ_TYPE_LEVEL_HIGH represent 0x4 in "interrupts = <0 28 0x4>"

 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts |  8 +++++++
 arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 13 +++++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi    | 27 +++++++++++++++++++++++
 3 files changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index de6ef39..5e14e5a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -95,6 +95,14 @@
 	status = "okay";
 };
 
+&esdhc {
+	status = "okay";
+};
+
+&esdhc1 {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index 9fb9113..12c9cd3 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -83,6 +83,19 @@
 	};
 };
 
+&esdhc {
+	sd-uhs-sdr104;
+	sd-uhs-sdr50;
+	sd-uhs-sdr25;
+	sd-uhs-sdr12;
+	status = "okay";
+	};
+
+&esdhc1 {
+	mmc-hs200-1_8v;
+	status = "okay";
+	};
+
 &i2c0 {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 7975519..f299075 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -245,6 +245,33 @@
 			status = "disabled";
 		};
 
+		esdhc: mmc@2140000 {
+			compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
+			reg = <0x0 0x2140000 0x0 0x10000>;
+			interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>;
+			clock-frequency = <0>; /* fixed up by bootloader */
+			clocks = <&clockgen 2 1>;
+			voltage-ranges = <1800 1800 3300 3300>;
+			sdhci,auto-cmd12;
+			little-endian;
+			bus-width = <4>;
+			status = "disabled";
+		};
+
+		esdhc1: mmc@2150000 {
+			compatible = "fsl,ls1028a-esdhc", "fsl,esdhc";
+			reg = <0x0 0x2150000 0x0 0x10000>;
+			interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_HIGH>;
+			clock-frequency = <0>; /* fixed up by bootloader */
+			clocks = <&clockgen 2 1>;
+			voltage-ranges = <1800 1800 3300 3300>;
+			sdhci,auto-cmd12;
+			broken-cd;
+			little-endian;
+			bus-width = <4>;
+			status = "disabled";
+		};
+
 		duart0: serial@21c0500 {
 			compatible = "fsl,ns16550", "ns16550a";
 			reg = <0x00 0x21c0500 0x0 0x100>;
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
