Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307321E54A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 05:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tLDJvUV2yNQKam0YCWmNee35b7h5W12yo3Cv8YoR1xA=; b=Q2ESdPgx6tcSwcHbWOEaWqpF1f
	J7Fo6i+OnNDL1kxyqa+DYIrzLDdegJH2RCjIBmrmHo37ngYRye7JEX9XwrHqAsiQTyTjGkW51el4I
	6sx92dNs3PS+h7tLI84Mmwo6ULwRITWcwt2wIHypod7G/bOxJV96rDpLFBQC4YgGsahnkb9U8P18t
	0B60xjo6cIuGhHRZnGuQkC3Um7AOHKeN8hZhyQGkvTSQD/ZjSSeEgT4t0Rzg9A319sMJZQSOkb065
	TSqO7Ec3TmgakZLkf/nhBLtcFk+sCeD77zyzdkewhr7KLp3n837xT+2PAztfQ6Rlqn3gN0OzY9G6g
	cQjc8YTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je99p-0006Yu-QK; Thu, 28 May 2020 03:24:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je98f-0005mM-1c
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 03:23:26 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9C84020092F;
 Thu, 28 May 2020 05:23:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 836D9200601;
 Thu, 28 May 2020 05:23:04 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4D015402D3;
 Thu, 28 May 2020 11:22:54 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, daniel.baluta@nxp.com,
 leonard.crestez@nxp.com, peng.fan@nxp.com, aford173@gmail.com,
 jun.li@nxp.com, shengjiu.wang@nxp.com, horia.geanta@nxp.com,
 aisheng.dong@nxp.com, fugang.duan@nxp.com, agx@sigxcpu.org,
 l.stach@pengutronix.de, andrew.smirnov@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: imx8m: change ocotp node name on i.MX8M SoCs
Date: Thu, 28 May 2020 11:12:48 +0800
Message-Id: <1590635570-8541-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
References: <1590635570-8541-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_202325_238689_E97D2B96 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change OCOTP node name from ocotp-ctrl to efuse to be compliant with
yaml schema, it requires the nodename to be one of "eeprom|efuse|nvram".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index aaf6e71..740cc62 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -467,7 +467,7 @@
 				reg = <0x30340000 0x10000>;
 			};
 
-			ocotp: ocotp-ctrl@30350000 {
+			ocotp: efuse@30350000 {
 				compatible = "fsl,imx8mm-ocotp", "syscon";
 				reg = <0x30350000 0x10000>;
 				clocks = <&clk IMX8MM_CLK_OCOTP_ROOT>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 9a4b65a..0625cc8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -374,7 +374,7 @@
 				reg = <0x30340000 0x10000>;
 			};
 
-			ocotp: ocotp-ctrl@30350000 {
+			ocotp: efuse@30350000 {
 				compatible = "fsl,imx8mn-ocotp", "fsl,imx8mm-ocotp", "syscon";
 				reg = <0x30350000 0x10000>;
 				clocks = <&clk IMX8MN_CLK_OCOTP_ROOT>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 23e9a4c..c248e7f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -340,7 +340,7 @@
 				reg = <0x30340000 0x10000>;
 			};
 
-			ocotp: ocotp-ctrl@30350000 {
+			ocotp: efuse@30350000 {
 				compatible = "fsl,imx8mp-ocotp", "syscon";
 				reg = <0x30350000 0x10000>;
 				clocks = <&clk IMX8MP_CLK_OCOTP_ROOT>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 978f812..b156cd5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -539,7 +539,7 @@
 				};
 			};
 
-			ocotp: ocotp-ctrl@30350000 {
+			ocotp: efuse@30350000 {
 				compatible = "fsl,imx8mq-ocotp", "syscon";
 				reg = <0x30350000 0x10000>;
 				clocks = <&clk IMX8MQ_CLK_OCOTP_ROOT>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
