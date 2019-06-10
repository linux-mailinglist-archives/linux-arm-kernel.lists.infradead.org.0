Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B92D3AD98
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 05:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0VYk4Nxh+2UxXohhoDte694kSprSpOCoQryutwcRACw=; b=kNBDvNchC139uh4HcGzx+xTPM6
	qEVs8XABVv17erZSQvowCtMlR1nrdK0rBU6oOjGtPlJ5suTtStwe31iynOAfIWWNOxFHgld4Xkjuj
	drKelYGx4osMdEF0GF2yKuTuCVh92cwSdZ5fv0Zg1AuuwbuToz5kCcx/CL1Shdm1nMYJ58kH9Qknb
	Td6D17zYBZO1i/r839jCJoipxoXmp3gXMssQCTfc1UO0Fvx1GVwxMPXTGvq8bN8CWIzWEL97Ocv9s
	NIrv+i84N1A7bRC4jpQMIJqscWvA9L0wUk2h39FNN7epmjQaAwXdMsOH3vGg3rEXFf5xtSjv7BAP4
	q+KrbNIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haAra-0005Wv-Ms; Mon, 10 Jun 2019 03:20:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haAqN-0003bZ-Ny
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 03:19:37 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 83E352006C8;
 Mon, 10 Jun 2019 05:19:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 649C1200080;
 Mon, 10 Jun 2019 05:19:30 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0764040319;
 Mon, 10 Jun 2019 11:19:24 +0800 (SGT)
From: Yangbo Lu <yangbo.lu@nxp.com>
To: netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Richard Cochran <richardcochran@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 4/6] arm64: dts: fsl: add ptp timer node for dpaa2 platforms
Date: Mon, 10 Jun 2019 11:21:06 +0800
Message-Id: <20190610032108.5791-5-yangbo.lu@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190610032108.5791-1-yangbo.lu@nxp.com>
References: <20190610032108.5791-1-yangbo.lu@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_201935_919782_A3DD1B71 
X-CRM114-Status: UNSURE (   7.96  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Yangbo Lu <yangbo.lu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is to add ptp timer device tree node for dpaa2
platforms(ls1088a/ls208xa/lx2160a).

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi | 8 ++++++++
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 8 ++++++++
 3 files changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index 661137f..dacd8cf 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -609,6 +609,14 @@
 				     <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		ptp-timer@8b95000 {
+			compatible = "fsl,dpaa2-ptp";
+			reg = <0x0 0x8b95000 0x0 0x100>;
+			clocks = <&clockgen 4 0>;
+			little-endian;
+			fsl,extts-fifo;
+		};
+
 		cluster1_core0_watchdog: wdt@c000000 {
 			compatible = "arm,sp805-wdt", "arm,primecell";
 			reg = <0x0 0xc000000 0x0 0x1000>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
index d7e78dc..3ace919 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls208xa.dtsi
@@ -321,6 +321,14 @@
 			};
 		};
 
+		ptp-timer@8b95000 {
+			compatible = "fsl,dpaa2-ptp";
+			reg = <0x0 0x8b95000 0x0 0x100>;
+			clocks = <&clockgen 4 1>;
+			little-endian;
+			fsl,extts-fifo;
+		};
+
 		fsl_mc: fsl-mc@80c000000 {
 			compatible = "fsl,qoriq-mc";
 			reg = <0x00000008 0x0c000000 0 0x40>,	 /* MC portal base */
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 125a8cc..e6fdba3 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -848,6 +848,14 @@
 			dma-coherent;
 		};
 
+		ptp-timer@8b95000 {
+			compatible = "fsl,dpaa2-ptp";
+			reg = <0x0 0x8b95000 0x0 0x100>;
+			clocks = <&clockgen 4 1>;
+			little-endian;
+			fsl,extts-fifo;
+		};
+
 		fsl_mc: fsl-mc@80c000000 {
 			compatible = "fsl,qoriq-mc";
 			reg = <0x00000008 0x0c000000 0 0x40>,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
