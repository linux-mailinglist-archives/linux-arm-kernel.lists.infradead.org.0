Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F24182E2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:53:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7++0ymKKBO1rfyK7Pns80iqZ0qclz1xWdxeQ47duNuk=; b=VeRyIh29tXGi5PsLXYEMWHCO8q
	z79NSlR+OBNz+BZtmNh4BYhHOIYJYwoKw++U+Al5SDPpxkHMlZxTRt6Fu2ZGySua38QCkcQbxpcwP
	kOdsp/fOJIFznroZXFkqW6dFDqTXSPEzcKVvwEaDJgftO/MaD/hcRPa0RLv9uovxfE95SzBqNT12B
	9NX7hXca5fkV60G4/yUhBC6nR+dTcJFkSVZMGXR6HJ+4RyXElqCeASE+dN/4RMLmPp1Qj2ZXKd1Xj
	HiG05t2ptQqXjUXMqeQPhRCc7RFy1ZoUz7arEpSGxJKvc/7k4rAJFsNmFlBfzxAwW6WG63azzJxAG
	Si6Ou/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvDA-0004PO-Bt; Tue, 06 Aug 2019 08:52:52 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvCT-0003yP-6g
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:52:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4C4F11A05BC;
 Tue,  6 Aug 2019 10:52:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D9A001A05AA;
 Tue,  6 Aug 2019 10:52:01 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 780D3402E6;
 Tue,  6 Aug 2019 16:51:54 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 3/4] arm64: dts: ls1028a: Fix incorrect I2C clock divider
Date: Tue,  6 Aug 2019 16:42:22 +0800
Message-Id: <20190806084223.23543-3-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190806084223.23543-1-chuanhua.han@nxp.com>
References: <20190806084223.23543-1-chuanhua.han@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_015209_379296_628CA1B5 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chuanhua Han <chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ls1028a platform, the i2c input clock is actually platform pll CLK / 4
(this is the hardware connection), other clock divider can not get the
correct i2c clock, resulting in the output of SCL pin clock is not
accurate.

Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index aef5b06..cca7bfdb 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -171,7 +171,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2000000 0x0 0x10000>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
+			clocks = <&clockgen 4 3>;
 			status = "disabled";
 		};
 
@@ -181,7 +181,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2010000 0x0 0x10000>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
+			clocks = <&clockgen 4 3>;
 			status = "disabled";
 		};
 
@@ -191,7 +191,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2020000 0x0 0x10000>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
+			clocks = <&clockgen 4 3>;
 			status = "disabled";
 		};
 
@@ -201,7 +201,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2030000 0x0 0x10000>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
+			clocks = <&clockgen 4 3>;
 			status = "disabled";
 		};
 
@@ -211,7 +211,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2040000 0x0 0x10000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
+			clocks = <&clockgen 4 3>;
 			status = "disabled";
 		};
 
@@ -221,7 +221,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2050000 0x0 0x10000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
+			clocks = <&clockgen 4 3>;
 			status = "disabled";
 		};
 
@@ -231,7 +231,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2060000 0x0 0x10000>;
 			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
+			clocks = <&clockgen 4 3>;
 			status = "disabled";
 		};
 
@@ -241,7 +241,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2070000 0x0 0x10000>;
 			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
+			clocks = <&clockgen 4 3>;
 			status = "disabled";
 		};
 
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
