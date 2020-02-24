Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F53169E73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 07:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fk67xHWoQ3AA7lfRNBFdr0ZXlL2+PhT5YoXP/1wq/BM=; b=OHPSSbsPd2+T8T8ej3ozarfgzI
	w0pBpkfgi+KvCTWNX/oSBn+GINOAUyzI2HQb1J9dkTv58ybDGFneHR24hYw/EIZEAqgyB3H0rtgyu
	vJmC1xjCLhr8H/yle236OCXSFoTi9NlDR9VYdlGJ2e9qNvVCTSmnvFFcks5144xbvN6UO0kR0nad7
	uSTsBcCSvinEI3JwNqNEiXep4tVwyT5tJagR+9+ITEVwH72AtTtLNdSshPzEXaGOqs6/fXpzlntzV
	d0yQSXLLhwtrctQMLK+giOqxR+tFJKoYjtjhBIVOVhogV1hZvsRdHERWzSC6Nk5GiUL4pA0d5prxC
	+yacs64g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67H5-0005Fo-OQ; Mon, 24 Feb 2020 06:31:27 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67Gg-00056E-5p
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 06:31:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 49BE0E03E1;
 Sun, 23 Feb 2020 22:30:56 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C8mV3RRo4uOg; Sun, 23 Feb 2020 22:30:55 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de
Subject: [PATCH v3 2/8] arm64: dts: librem5-devkit: add the simcom 7100 modem
 and sgtl5000 audio codec
Date: Mon, 24 Feb 2020 07:29:11 +0100
Message-Id: <20200224062917.4895-3-martin.kepplinger@puri.sm>
In-Reply-To: <20200224062917.4895-1-martin.kepplinger@puri.sm>
References: <20200224062917.4895-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_223102_221337_28BF0C9D 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

Add the simcomm modem and the sgtl5000 audio codec.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 .../dts/freescale/imx8mq-librem5-devkit.dts   | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 25135b08d4f8..ed4a10255bad 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -148,6 +148,55 @@
 		regulator-always-on;
 	};
 
+	wwan_codec: sound-wwan-codec {
+		compatible = "option,gtm601";
+		#sound-dai-cells = <0>;
+	};
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "sgtl5000";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Headphone", "Headphone Jack",
+			"Speaker", "Speaker Ext",
+			"Line", "Line In Jack";
+		simple-audio-card,routing =
+			"MIC_IN", "Microphone Jack",
+			"Microphone Jack", "Mic Bias",
+			"LINE_IN", "Line In Jack",
+			"Headphone Jack", "HP_OUT",
+			"Speaker Ext", "LINE_OUT";
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai2>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&sgtl5000>;
+			clocks = <&clk IMX8MQ_CLK_SAI2_ROOT>;
+			frame-master;
+			bitclock-master;
+		};
+	};
+
+	sound-wwan {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "SIMCom SIM7100";
+		simple-audio-card,format = "dsp_a";
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai6>;
+		};
+
+		telephony_link_master: simple-audio-card,codec {
+			sound-dai = <&wwan_codec>;
+			frame-master;
+			bitclock-master;
+		};
+	};
+
 	vibrator {
 		compatible = "gpio-vibrator";
 		pinctrl-names = "default";
@@ -426,6 +475,19 @@
 		vddio-supply = <&reg_3v3_p>;
 	};
 
+	sgtl5000: audio-codec@a {
+		compatible = "fsl,sgtl5000";
+		clocks = <&clk IMX8MQ_CLK_SAI2_ROOT>;
+		assigned-clocks = <&clk IMX8MQ_CLK_SAI2>;
+		assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
+		assigned-clock-rates = <24576000>;
+		#sound-dai-cells = <0>;
+		reg = <0x0a>;
+		VDDD-supply = <&reg_1v8_p>;
+		VDDIO-supply = <&reg_3v3_p>;
+		VDDA-supply = <&reg_3v3_p>;
+	};
+
 	touchscreen@5d {
 		compatible = "goodix,gt5688";
 		reg = <0x5d>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
