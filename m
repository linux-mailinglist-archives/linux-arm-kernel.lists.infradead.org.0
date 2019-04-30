Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3382DEFA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 06:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LoSeHIVebyYOp+px2PEQ4GwgxGzEXSZNvAhrRkY9U7w=; b=IubIgWy5XxN0gLxV2EvE/OwnFt
	ar2z71zWHyH9+Dna0aUa14kDFfiXRnsBAlONTfsOH/bnSGv2HVirZ+YOtRS+1EbxoiEFqJ4p2Akpa
	eWAyttaTpb3lireYAkP3WOAA72NYzKJkDmxyFvWtmNub4JHqB9gbfnwJ/WUjmUgKbC8u1V4F62iT1
	dl9+hGIaFc3LqJPADlNrjxqzxh3O6B46pKlI6MDxl+5t/MNCkDOFDRBiilirmCnRZNN0w+bFbn09k
	SUJ2XeOZNzvvhiCdpQQjwpFPGofHH364PL6XKKm8QxJJdS2dDp/LpD3pdFVsu1CufuDkSfukK7o6u
	PqH2Q6vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLKQc-0001u2-SD; Tue, 30 Apr 2019 04:31:38 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLKQV-0001sf-7q
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 04:31:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0FE841A0013;
 Tue, 30 Apr 2019 06:31:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 45E801A00ED;
 Tue, 30 Apr 2019 06:31:21 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 65CD840318;
 Tue, 30 Apr 2019 12:31:10 +0800 (SGT)
From: Chuanhua Han <chuanhua.han@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, leoyang.li@nxp.com
Subject: [PATCH 3/3] arm64: dts: fsl: ls1046a: Add mul-value property of the
 i2c controller nodes
Date: Tue, 30 Apr 2019 12:32:42 +0800
Message-Id: <20190430043242.29687-3-chuanhua.han@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430043242.29687-1-chuanhua.han@nxp.com>
References: <20190430043242.29687-1-chuanhua.han@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_213131_441623_6F2032E0 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, sumit.batra@nxp.com, eha@deif.com,
 Chuanhua Han <chuanhua.han@nxp.com>, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, wsa+renesas@sang-engineering.com, linux-imx@nxp.com,
 kernel@pengutronix.de, u.kleine-koenig@pengutronix.de, l.stach@pengutronix.de,
 festevam@gmail.com, peda@axentia.se, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to LS1046A Reference Manual, for the i2c controller, you have
up to three MUL options available for all divider values. Therefore, we
need to determine which MUL to use in the device tree for driver use.

The "mul-value" property provides which mul is used in our driver.

Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
index b0ef08b090dd..373310e4c0ea 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
@@ -385,6 +385,7 @@
 			dmas = <&edma0 1 39>,
 			       <&edma0 1 38>;
 			dma-names = "tx", "rx";
+			mul-value = <4>;
 			status = "disabled";
 		};
 
@@ -395,6 +396,7 @@
 			reg = <0x0 0x2190000 0x0 0x10000>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clockgen 4 1>;
+			mul-value = <4>;
 			status = "disabled";
 		};
 
@@ -405,6 +407,7 @@
 			reg = <0x0 0x21a0000 0x0 0x10000>;
 			interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clockgen 4 1>;
+			mul-value = <4>;
 			status = "disabled";
 		};
 
@@ -415,6 +418,7 @@
 			reg = <0x0 0x21b0000 0x0 0x10000>;
 			interrupts = <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clockgen 4 1>;
+			mul-value = <4>;
 			status = "disabled";
 		};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
