Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2B582E27
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 10:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iUXwkNZwu7XwUKMVyu4r5k9zkSB0pXYyharPyrg7lgc=; b=m/V
	PCvLoRmkNpVM3RCfaYSCiBJhqL61IXRD7L3YTtKSTsiCstrtd2ykO3diTM64ARx/pHjB8EBpSkoRO
	eh+ovufI65lQ5Sn3nilv6eN9MjV6SEb2Pyrvkz+fPa1+ehGro0zHAMZeufSuhKozE/wxYZPz0ZT81
	VQsWD/pB6gxCnt32aqSTluxasOScw+gsXt/Z/Sjrn9ItJZIbwL7GuRR6QsG5pejZy7JuGSWmL80aE
	Aw+q+jITnniw5d0Ih0sRKKT7UgKEHnzFMPHJlzkTTtGfIXJA4d4Jy3J/znym7IXNHR1JNKNE4lYXf
	n2pzM/8idt4odLws9y/cc6p3q1yTIeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvCt-0004BL-Nu; Tue, 06 Aug 2019 08:52:35 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvCR-0003yG-RA
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 08:52:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C1AD82002AF;
 Tue,  6 Aug 2019 10:52:02 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5798E200043;
 Tue,  6 Aug 2019 10:51:58 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A1B4F40293;
 Tue,  6 Aug 2019 16:51:52 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 1/4] arm64: dts: ls1088a: Fix incorrect I2C clock divider
Date: Tue,  6 Aug 2019 16:42:20 +0800
Message-Id: <20190806084223.23543-1-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_015208_020687_7F06B50E 
X-CRM114-Status: UNSURE (   7.44  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chuanhua Han <chuanhua.han@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ls1088a platform, the i2c input clock is actually platform pll CLK / 8
(this is the hardware connection), other clock divider can not get the
correct i2c clock, resulting in the output of SCL pin clock is not
accurate.

Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index 20f5ebd..30b760e 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -324,7 +324,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2000000 0x0 0x10000>;
 			interrupts = <0 34 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 3>;
+			clocks = <&clockgen 4 7>;
 			status = "disabled";
 		};
 
@@ -334,7 +334,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2010000 0x0 0x10000>;
 			interrupts = <0 34 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 3>;
+			clocks = <&clockgen 4 7>;
 			status = "disabled";
 		};
 
@@ -344,7 +344,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2020000 0x0 0x10000>;
 			interrupts = <0 35 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 3>;
+			clocks = <&clockgen 4 7>;
 			status = "disabled";
 		};
 
@@ -354,7 +354,7 @@
 			#size-cells = <0>;
 			reg = <0x0 0x2030000 0x0 0x10000>;
 			interrupts = <0 35 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&clockgen 4 3>;
+			clocks = <&clockgen 4 7>;
 			status = "disabled";
 		};
 
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
