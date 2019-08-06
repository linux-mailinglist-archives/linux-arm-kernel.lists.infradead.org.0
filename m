Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE97A82E2B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ziSWG6azEMk4WEE8HFOOlvLi4eqoZplS+0gkHYeAy5Y=; b=u+Jyp1v512W8rjzd+X7y0gAhI7
	UgRkMTkRYXAU0dNhwJafq/pBFSkpD09nNsdqeJi7ihC6SPEQVfSOjWyfqGOCbu6pUApcDMpfVtHYy
	1cverz7jtfyENCcxOB0DCFsTce3UZx15O0dHHtXjsq9viGeJiHtrlJ3J3SVQKdKty1JvMfwQ/FwpH
	S9HySe0kcgr59YkRR+LJtKX7Xnv6akU4DM7SBTCa20ggZtvRYVR7cJaQFvfoFC4hLd/SfjMrGD4rQ
	95wojpNSh1+JXSwrfU3zJF7lySkd9MqgFyn3yFvVplxTogpzd1XsFL8qErNAfYiSeHEW6+VYLm1dq
	tgD6ArUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvDP-0004df-PQ; Tue, 06 Aug 2019 08:53:07 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvCT-0003yO-Ag
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:52:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4BD6A1A05BB;
 Tue,  6 Aug 2019 10:52:06 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D98FC1A0027;
 Tue,  6 Aug 2019 10:52:01 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5F26040310;
 Tue,  6 Aug 2019 16:51:55 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 4/4] arm64: dts: lx2160a: Fix incorrect I2C clock divider
Date: Tue,  6 Aug 2019 16:42:23 +0800
Message-Id: <20190806084223.23543-4-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190806084223.23543-1-chuanhua.han@nxp.com>
References: <20190806084223.23543-1-chuanhua.han@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_015209_503634_C6DE3BDD 
X-CRM114-Status: UNSURE (   7.00  )
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

Lx2160a platform, the i2c input clock is actually platform pll CLK / 16
(this is the hardware connection), other clock divider can not get the
correct i2c clock, resulting in the output of SCL pin clock is not
accurate.

Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 4720a8e..408e0ec 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -485,7 +485,7 @@
 			reg = <0x0 0x2000000 0x0 0x10000>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "i2c";
-			clocks = <&clockgen 4 7>;
+			clocks = <&clockgen 4 15>;
 			scl-gpio = <&gpio2 15 GPIO_ACTIVE_HIGH>;
 			status = "disabled";
 		};
@@ -497,7 +497,7 @@
 			reg = <0x0 0x2010000 0x0 0x10000>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "i2c";
-			clocks = <&clockgen 4 7>;
+			clocks = <&clockgen 4 15>;
 			status = "disabled";
 		};
 
@@ -508,7 +508,7 @@
 			reg = <0x0 0x2020000 0x0 0x10000>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "i2c";
-			clocks = <&clockgen 4 7>;
+			clocks = <&clockgen 4 15>;
 			status = "disabled";
 		};
 
@@ -519,7 +519,7 @@
 			reg = <0x0 0x2030000 0x0 0x10000>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "i2c";
-			clocks = <&clockgen 4 7>;
+			clocks = <&clockgen 4 15>;
 			status = "disabled";
 		};
 
@@ -530,7 +530,7 @@
 			reg = <0x0 0x2040000 0x0 0x10000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "i2c";
-			clocks = <&clockgen 4 7>;
+			clocks = <&clockgen 4 15>;
 			scl-gpio = <&gpio2 16 GPIO_ACTIVE_HIGH>;
 			status = "disabled";
 		};
@@ -542,7 +542,7 @@
 			reg = <0x0 0x2050000 0x0 0x10000>;
 			interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "i2c";
-			clocks = <&clockgen 4 7>;
+			clocks = <&clockgen 4 15>;
 			status = "disabled";
 		};
 
@@ -553,7 +553,7 @@
 			reg = <0x0 0x2060000 0x0 0x10000>;
 			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "i2c";
-			clocks = <&clockgen 4 7>;
+			clocks = <&clockgen 4 15>;
 			status = "disabled";
 		};
 
@@ -564,7 +564,7 @@
 			reg = <0x0 0x2070000 0x0 0x10000>;
 			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "i2c";
-			clocks = <&clockgen 4 7>;
+			clocks = <&clockgen 4 15>;
 			status = "disabled";
 		};
 
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
