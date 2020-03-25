Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A94DA192D0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:41:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BkaJwGcgd0An+/xr2z/isOx1SThG0KZa2At3sCDiP3c=; b=PjCw9uw52QgbyTmV8DGEqf0sVZ
	zFxs76fb7IXqXYXFgnPSy5RvfTgih9IubAir+EcYOFr1A2MKNysjaMvWyEPFlMf84GK+Kv5ji5j4o
	y+3xQ52dXOhEKCHjupPespXzTU1jnW3YdewIr6+z2tSkwjA8teaGxzBCiV3I0WkVgmmr9/duMdAD5
	hoVLECBhMqzedWec9hbgNFHQd+y5tuEm5REn20MgdK/z945eFWuemO2vMnrMv8BT2wHanlgCgztEj
	yeQAIuB7zi2/fSMNPQiDHsDsqRig4LXDJJyYSuH+IT3X6G+IX9DxCntpiDJTFdPSPt9Jv7tl38BxY
	vjdhrVKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH89q-0001G9-2V; Wed, 25 Mar 2020 15:41:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH87s-00072Y-Em
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 15:39:30 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9F8751A057C;
 Wed, 25 Mar 2020 16:39:25 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9097A1A0557;
 Wed, 25 Mar 2020 16:39:25 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DBD94203CE;
 Wed, 25 Mar 2020 16:39:24 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v2 03/13] arm64: dts: imx8mp: Add AIPS 4 and 5
Date: Wed, 25 Mar 2020 17:38:41 +0200
Message-Id: <1585150731-3354-4-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
References: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_083928_626452_4665B674 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 5 AIPS maps in total, according to the RM. Add the missing
ones here.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9b1616e..c08156f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -318,7 +318,7 @@
 
 		aips2: bus@30400000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x305f0000 0x400000>;
+			reg = <0x305f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -378,7 +378,7 @@
 
 		aips3: bus@30800000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x309f0000 0x400000>;
+			reg = <0x309f0000 0x10000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -641,6 +641,22 @@
 			};
 		};
 
+		aips4: bus@32c00000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x32c00000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+		};
+
+		aips5: bus@30c00000 {
+			compatible = "fsl,aips-bus", "simple-bus";
+			reg = <0x30c00000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges;
+		};
+
 		gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
