Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC69F1129C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 11:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GKXyP4EkdMuJOO+KsgjYSWytbe7P47m6rKcrYNo+K24=; b=qURPpGKTlzMP1E/36qdHHyujvB
	rt2K70uy5c+iB9HTQ9hrzgo/A/pGx7FNRfsiWvQyUrDyKE7t9LfBlU4CXKwjw8tTxowKJ2Y6EISe4
	njHbmdCQ3InbE9AbtZ753aUcRyUvFcjetqvXnpAeIIYURqkx5cW2ZR+3Il+LUZxUhufP1k0Enj24p
	WiU0B3XteT4Iiaw/FlH04x5TokbMT4lHnZzk5KfGidpYwUcKgDdDD6ckQTDvKB6T/SBUDR9ywGRFx
	urf+LC7KJScxDsikpN3/BRf7WUrFHyaTweg0Vygh5VLE/V0HaOg8eTlb/ESCbvqCX5DpPwDfxzD9b
	q2o0ZhfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSNZ-00088j-GX; Wed, 04 Dec 2019 10:59:33 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSMd-0007GY-Nn
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 10:58:38 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 68B7E201177;
 Wed,  4 Dec 2019 11:58:34 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A9EC4201178;
 Wed,  4 Dec 2019 11:58:30 +0100 (CET)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id ECDD64030D;
 Wed,  4 Dec 2019 18:58:24 +0800 (SGT)
From: Ashish Kumar <Ashish.Kumar@nxp.com>
To: devicetree@vger.kernel.org, robh@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org
Subject: [Patch v2 5/5] arm64: dts: ls1088a: Add QSPI support for NXP LS1088
Date: Wed,  4 Dec 2019 16:28:18 +0530
Message-Id: <1575457098-18368-6-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575457098-18368-1-git-send-email-Ashish.Kumar@nxp.com>
References: <1575457098-18368-1-git-send-email-Ashish.Kumar@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_025836_043351_A16FA7E3 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Kuldeep Singh <kuldeep.singh@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ashish Kumar <Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add QSPI node in dtsi(ls1088a), and dts(ls1088ardb, ls1088aqds) boards.

Both ls1088ardb and ls1088aqds has two 64MB flash from SPANSION(s25fs512s).
QUAD I/O is tested in case of read and single I/O is tested in case of
write.

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
---
v2:
Rebased to top
Reword commit message
 
.../boot/dts/freescale/fsl-ls1088a-qds.dts    | 24 +++++++++++++++++++
 .../boot/dts/freescale/fsl-ls1088a-rdb.dts    | 24 +++++++++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 13 ++++++++++
 3 files changed, 61 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
index 120e62dad154..41d8b15f25a5 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
@@ -143,6 +143,30 @@
 	status = "okay";
 };
 
+&qspi {
+	status = "okay";
+
+	s25fs512s0: flash@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+		reg = <0>;
+	};
+
+	s25fs512s1: flash@1 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+		reg = <1>;
+	};
+};
+
 &sata {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
index 90b198939251..4d77b345cebd 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
@@ -86,6 +86,30 @@
 	status = "okay";
 };
 
+&qspi {
+	status = "okay";
+
+	s25fs512s0: flash@0 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+		reg = <0>;
+	};
+
+	s25fs512s1: flash@1 {
+		compatible = "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+		reg = <1>;
+	};
+};
+
 &sata {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index c676d0771762..594566265e3d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -375,6 +375,19 @@
 			status = "disabled";
 		};
 
+		qspi: spi@20c0000 {
+			compatible = "fsl,ls2080a-qspi";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x0 0x20c0000 0x0 0x10000>,
+			      <0x0 0x20000000 0x0 0x10000000>;
+			reg-names = "QuadSPI", "QuadSPI-memory";
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "qspi_en", "qspi";
+			clocks = <&clockgen 4 3>, <&clockgen 4 3>;
+			status = "disabled";
+		};
+
 		esdhc: esdhc@2140000 {
 			compatible = "fsl,ls1088a-esdhc", "fsl,esdhc";
 			reg = <0x0 0x2140000 0x0 0x10000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
