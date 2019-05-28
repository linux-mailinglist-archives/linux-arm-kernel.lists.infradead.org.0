Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C9C2C6D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cKGCxxrqV9GUCx/KNR2rGzZngvOszRMZJVj7pC9JpxQ=; b=XFn
	sX8Wo/8UI6uCU6iRnDVdsSbOntP3BpVEh1bBT0ruQRjW1dAZF15xAn0vIqfbq2R3tzOPpM+nSMXL4
	6zK8aVP1A6kNdCIWvDepuA0Lk2OySWT9i5VWVju53B7xSYhLWO7Bq8r1JIw6sVQVRfRRbennbzlDD
	J+kVf/XSQ0MPYXlxQ63+CbAiz+B6hQ9bwByo9iFpZkNMjejDLyT5w+4q+XRmahjqJuUed0i7t2bzt
	Ptd6sErVW+LfHvsiJTwzUikuirAAGI+ADrsffFkFAcVyLIXDemi2EH+y1RjUfFMwaPw+iiQnOK7jE
	p4sveYUTuNveCyBjT0L5YeywNqtmE3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbRz-0008BY-L2; Tue, 28 May 2019 12:43:31 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbRr-0008A8-7q
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:43:24 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8132B200E6C;
 Tue, 28 May 2019 14:43:19 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C001B200E6A;
 Tue, 28 May 2019 14:43:15 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CC687402C9;
 Tue, 28 May 2019 20:43:10 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v2] arm64: dts: ls1028a: fix watchdog device node
Date: Tue, 28 May 2019 20:45:06 +0800
Message-Id: <20190528124506.9339-1-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_054323_415400_0670F550 
X-CRM114-Status: UNSURE (   7.18  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chuanhua Han <chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ls1028a platform uses sp805 watchdog, and use 1/16 platform clock as
timer clock, this patch fix device tree node.

Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
Changes in v2: 
	- Replace 'wdt' with 'watchdog' as the node name.
	- Keep nodes sort in unit-address.

 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 23 +++++++++++--------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index ceb608d0e622..bb386dd1d1b1 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -306,15 +306,6 @@
 			#interrupt-cells = <2>;
 		};
 
-		wdog0: watchdog@23c0000 {
-			compatible = "fsl,ls1028a-wdt", "fsl,imx21-wdt";
-			reg = <0x0 0x23c0000 0x0 0x10000>;
-			interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 1>;
-			big-endian;
-			status = "disabled";
-		};
-
 		usb0: usb@3100000 {
 			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
 			reg = <0x0 0x3100000 0x0 0x10000>;
@@ -397,6 +388,20 @@
 				     <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		cluster1_core0_watchdog: watchdog@c000000 {
+			compatible = "arm,sp805", "arm,primecell";
+			reg = <0x0 0xc000000 0x0 0x1000>;
+			clocks = <&clockgen 4 15>, <&clockgen 4 15>;
+			clock-names = "apb_pclk", "wdog_clk";
+		};
+
+		cluster1_core1_watchdog: watchdog@c010000 {
+			compatible = "arm,sp805", "arm,primecell";
+			reg = <0x0 0xc010000 0x0 0x1000>;
+			clocks = <&clockgen 4 15>, <&clockgen 4 15>;
+			clock-names = "apb_pclk", "wdog_clk";
+		};
+
 		sai1: audio-controller@f100000 {
 			#sound-dai-cells = <0>;
 			compatible = "fsl,vf610-sai";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
