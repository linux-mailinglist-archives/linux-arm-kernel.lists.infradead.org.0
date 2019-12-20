Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D63D128278
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 19:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xUYkIBZ5cfHcgIyJbS/9wocKGD9D26cX641KXaSueg0=; b=NtO
	YUor7pMPBvfLpfqRXxXyCuvq/+6CRNqcovLq1hnsbAg8SJBhDwwRx1XT0wEQ3jWWMR1x59hTRyFWT
	PLPk94TV4GZ5mJjf/WEMImDW7rM57Y05sKdy/cTSQV0rslvIqPdg5kKtrQPDv9VPNRVtREdv3MpVZ
	FkaJrifF8lVN4vWAePMAU+d4rekCvzj3GkrsB7attdKVqQUdV+n3nchlw/PADTU18SAgkQ6mjPFaT
	5lyV1pVFUESVc+sZEISjnlZLLsdQfO4vdgi13xhYDRtB98iV2vXJ+yZXmKVIsb+2CdVX3Ynwg9OPE
	4x/3eNOb888xvV7VEtd1LBrQrXq1vZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiNOh-00027t-FR; Fri, 20 Dec 2019 18:53:11 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiNOY-00027D-0d
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 18:53:03 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B05A52003C1;
 Fri, 20 Dec 2019 19:52:58 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A0C142013CC;
 Fri, 20 Dec 2019 19:52:54 +0100 (CET)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com
 [92.120.146.121])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A7FBB402A5;
 Sat, 21 Dec 2019 02:52:49 +0800 (SGT)
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: ls208xa: Update qspi node properties for
 LS2088ARDB
Date: Sat, 21 Dec 2019 00:22:34 +0530
Message-Id: <1576867954-17756-1-git-send-email-kuldeep.singh@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_105302_196728_FF617B75 
X-CRM114-Status: UNSURE (   8.90  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kuldeep Singh <kuldeep.singh@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

LS2088ADB has one spansion flash s25fs512s of size 64M.

Add qspi dts entry for the board using compatibles as "jedec,spi-nor" to
probe flash successfully. Also, align properties with other board dts
properties.

Use dt-bindings constants in interrupts instead of using numbers.

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls208xa-rdb.dtsi | 10 +++++++++-
 arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi     |  4 ++--
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa-rdb.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa-rdb.dtsi
index 6fd7f63085c9..d0d670227ae2 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa-rdb.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa-rdb.dtsi
@@ -108,7 +108,15 @@
 };
 
 &qspi {
-	status = "disabled";
+	status = "okay";
+
+	s25fs512s0: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <50000000>;
+		reg = <0>;
+	};
 };
 
 &sata0 {
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
index 8b2fd278844b..f96d06da96be 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
@@ -618,16 +618,16 @@
 		};
 
 		qspi: spi@20c0000 {
-			status = "disabled";
 			compatible = "fsl,ls2080a-qspi";
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0x0 0x20c0000 0x0 0x10000>,
 			      <0x0 0x20000000 0x0 0x10000000>;
 			reg-names = "QuadSPI", "QuadSPI-memory";
-			interrupts = <0 25 0x4>; /* Level high type */
+			interrupts = <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clockgen 4 3>, <&clockgen 4 3>;
 			clock-names = "qspi_en", "qspi";
+			status = "disabled";
 		};
 
 		pcie1: pcie@3400000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
