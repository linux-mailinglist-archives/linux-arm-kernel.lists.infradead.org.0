Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B528F1E549F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 05:24:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5HVbY5QAcOHr0TGDN1I/veq0PBoJKCZuTa+Hp9BzT7s=; b=o4mscV7kUq4Wft+6fA/oDKiKQp
	Cq/KGKVo28Fsdah4L7TA+5kgMdHaVClxa/KRG6utzpC6rapDt2/FdfWHH2YL2ys6p/YnlxSs7tS97
	bOMzc0kbBz4iAt21sxf29dknJtwQgFAIdacjkjqGAiyRJBB+G7CO3dauZGsIz7JYm2t4SMcUUIMYZ
	UaleiI7z7yPpjOIwcW/7n2IhEGmkd7PIpbR0vprORrY9DQk9WY2PUKcjB6NQjueEuCoiDfhC61gpJ
	wzlScHzzowW5fbckUlw4IybkZKEG5CjKUkbJ7tWNS97ZPi+nCxDgpmRlRJn5tLd9Hv4Ch5cW/vX6n
	B6KFdkmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je99M-00067n-Lq; Thu, 28 May 2020 03:24:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je98X-0005g9-GH
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 03:23:20 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 385F81A0BA1;
 Thu, 28 May 2020 05:23:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1D1D31A0A6D;
 Thu, 28 May 2020 05:23:08 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E725E402FB;
 Thu, 28 May 2020 11:22:57 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, daniel.baluta@nxp.com,
 leonard.crestez@nxp.com, peng.fan@nxp.com, aford173@gmail.com,
 jun.li@nxp.com, shengjiu.wang@nxp.com, horia.geanta@nxp.com,
 aisheng.dong@nxp.com, fugang.duan@nxp.com, agx@sigxcpu.org,
 l.stach@pengutronix.de, andrew.smirnov@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] ARM: dts: imx: change iim node name on i.MX SoCs
Date: Thu, 28 May 2020 11:12:50 +0800
Message-Id: <1590635570-8541-5-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
References: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_202317_813135_B19422D0 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change IIM node name from iim to efuse to be compliant
with yaml schema, it requires the nodename to be one of
"eeprom|efuse|nvram".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx25.dtsi | 2 +-
 arch/arm/boot/dts/imx27.dtsi | 2 +-
 arch/arm/boot/dts/imx31.dtsi | 2 +-
 arch/arm/boot/dts/imx35.dtsi | 2 +-
 arch/arm/boot/dts/imx51.dtsi | 2 +-
 arch/arm/boot/dts/imx53.dtsi | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
index 1123e683..4eaf4eb 100644
--- a/arch/arm/boot/dts/imx25.dtsi
+++ b/arch/arm/boot/dts/imx25.dtsi
@@ -542,7 +542,7 @@
 				interrupts = <26>;
 			};
 
-			iim: iim@53ff0000 {
+			iim: efuse@53ff0000 {
 				compatible = "fsl,imx25-iim", "fsl,imx27-iim";
 				reg = <0x53ff0000 0x4000>;
 				interrupts = <19>;
diff --git a/arch/arm/boot/dts/imx27.dtsi b/arch/arm/boot/dts/imx27.dtsi
index 002cd22..ee04771 100644
--- a/arch/arm/boot/dts/imx27.dtsi
+++ b/arch/arm/boot/dts/imx27.dtsi
@@ -540,7 +540,7 @@
 				#clock-cells = <1>;
 			};
 
-			iim: iim@10028000 {
+			iim: efuse@10028000 {
 				compatible = "fsl,imx27-iim";
 				reg = <0x10028000 0x1000>;
 				interrupts = <62>;
diff --git a/arch/arm/boot/dts/imx31.dtsi b/arch/arm/boot/dts/imx31.dtsi
index 18270ec..4f3d7ab 100644
--- a/arch/arm/boot/dts/imx31.dtsi
+++ b/arch/arm/boot/dts/imx31.dtsi
@@ -217,7 +217,7 @@
 				status = "disabled";
 			};
 
-			iim: iim@5001c000 {
+			iim: efuse@5001c000 {
 				compatible = "fsl,imx31-iim", "fsl,imx27-iim";
 				reg = <0x5001c000 0x1000>;
 				interrupts = <19>;
diff --git a/arch/arm/boot/dts/imx35.dtsi b/arch/arm/boot/dts/imx35.dtsi
index 2ebf2c1..502112b 100644
--- a/arch/arm/boot/dts/imx35.dtsi
+++ b/arch/arm/boot/dts/imx35.dtsi
@@ -320,7 +320,7 @@
 				status = "disabled";
 			};
 
-			iim@53ff0000 {
+			efuse@53ff0000 {
 				compatible = "fsl,imx35-iim";
 				reg = <0x53ff0000 0x4000>;
 				interrupts = <19>;
diff --git a/arch/arm/boot/dts/imx51.dtsi b/arch/arm/boot/dts/imx51.dtsi
index d3583aa..c83bc77 100644
--- a/arch/arm/boot/dts/imx51.dtsi
+++ b/arch/arm/boot/dts/imx51.dtsi
@@ -466,7 +466,7 @@
 				reg = <0x83f00000 0x60>;
 			};
 
-			iim: iim@83f98000 {
+			iim: efuse@83f98000 {
 				compatible = "fsl,imx51-iim", "fsl,imx27-iim";
 				reg = <0x83f98000 0x4000>;
 				interrupts = <69>;
diff --git a/arch/arm/boot/dts/imx53.dtsi b/arch/arm/boot/dts/imx53.dtsi
index afa57bf..ed6b0c8 100644
--- a/arch/arm/boot/dts/imx53.dtsi
+++ b/arch/arm/boot/dts/imx53.dtsi
@@ -667,7 +667,7 @@
 				reg = <0x63f00000 0x60>;
 			};
 
-			iim: iim@63f98000 {
+			iim: efuse@63f98000 {
 				compatible = "fsl,imx53-iim", "fsl,imx27-iim";
 				reg = <0x63f98000 0x4000>;
 				interrupts = <69>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
