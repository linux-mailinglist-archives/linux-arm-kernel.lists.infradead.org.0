Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F383AAEA38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x4Hd6ns1dFVQTzFnkqwp/jS9O/6BuI4sJ5Qf+ua4DL0=; b=E42ilp5zjjVSTbgctlZh5wsWxF
	pTzPRjBxRAQLLBD7HCfA/2feL5J1GRVANyUT+nx2EAeFNtGdQ8eSzeNAk00cgHH7lAU/mWZsXsj8k
	Rb9tbgCStBYfdZunMTZqta1xrgkyC4GwpjjaYrJepafOO7H2WcYPeyksk1eC1YbsF2xwlfEbKndV+
	oRkwteQXoZqjWVmHD9bA5QdZ0yS17/0I5PHWuo00FghS39h4aWShfu1KVqb2HlLHfT76ugg8Rw574
	ZkSnz3NwiAWWix9JH3iY67p8gxz2LF9P3dzcZZ3SwliMJLmBapPn0E2MUrqYeDGhjvThWWR/Lx2K5
	snjBKFrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fA7-0003gj-9K; Tue, 10 Sep 2019 12:22:23 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7f8z-0002v4-1L
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:21:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 23037200236;
 Tue, 10 Sep 2019 14:21:10 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0B5F82001BA;
 Tue, 10 Sep 2019 14:21:06 +0200 (CEST)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CE05E402E3;
 Tue, 10 Sep 2019 20:21:00 +0800 (SGT)
From: Ashish Kumar <Ashish.Kumar@nxp.com>
To: devicetree@vger.kernel.org, robh@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org
Subject: [PATCH] arm64: dts: ls1088a: Add QSPI support for NXP LS1088
Date: Tue, 10 Sep 2019 17:50:54 +0530
Message-Id: <1568118055-9740-4-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568118055-9740-1-git-send-email-Ashish.Kumar@nxp.com>
References: <1568118055-9740-1-git-send-email-Ashish.Kumar@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_052113_350347_3EED10FF 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Kuldeep Singh <kuldeep.singh@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Ashish Kumar <Ashish.Kumar@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add QSPI node in dtsi(ls1088si), and dts(ls1088ardb, ls1088aqds) boards.

Both ls1088ardb and ls1088aqds has two 64MB flash from SPANSION(s25fs512s).
QUAD I/O is tested in case of read and single I/O is tested in case of
write.

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
Signed-off-by: Ashish Kumar <Ashish.Kumar@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts | 26 +++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts | 26 +++++++++++++++++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi    | 13 ++++++++++++
 3 files changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
index 120e62d..3347e6a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-qds.dts
@@ -143,6 +143,32 @@
 	status = "okay";
 };
 
+&qspi {
+	status = "okay";
+
+	qflash0: s25fs512s@0 {
+		compatible = "spansion,s25fs512a", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <0>;
+	};
+
+	qflash1: s25fs512s@1 {
+		compatible = "spansion,s25fs512a", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <1>;
+	};
+};
+
 &sata {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
index 8e925df..09d3203 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
@@ -86,6 +86,32 @@
 	status = "okay";
 };
 
+&qspi {
+	status = "okay";
+
+	qflash0: s25fs512s@0 {
+		compatible = "spansion,s25fs512a", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <0>;
+	};
+
+	qflash1: s25fs512s@1 {
+		compatible = "spansion,s25fs512a", "jedec,spi-nor";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		m25p,fast-read;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		reg = <1>;
+	};
+};
+
 &sata {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index d1469b0..5a81a7e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -408,6 +408,19 @@
 			status = "disabled";
 		};
 
+		qspi: spi@20c0000 {
+			compatible = "fsl,ls2080a-qspi", "fsl,ls1088a-qspi";
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
 		sata: sata@3200000 {
 			compatible = "fsl,ls1088a-ahci";
 			reg = <0x0 0x3200000 0x0 0x10000>,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
