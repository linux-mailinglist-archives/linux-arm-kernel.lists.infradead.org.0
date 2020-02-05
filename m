Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D55D1532F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Y7sSbDa6qeeQWECii9+AVlFswNutofK/CLX0bOUDvuI=; b=ZChXnBTescOYTl34i9DuwDATJj
	VKx9yvd5I3HRGD5EmVcDu9RX89iUIfJX/dOkowmt8FFOUXIzKeCjaGSNKr5wrJP9xMe2aixVABmkH
	f0kNpHLWeUjzvrFR+SDC2nUIiYsi50m+3Q2KfBjzqqKrAZVNxVEuGNJoB4TB6j/YOQzRm4CVNvjhw
	2EjEYz0j/EErtqq38jeM/4tKxLPV4MhinhvX6e4pEqD7OVYJ6ANKQkTQ1Cv1RFc6c/+lAo7CDA0Yy
	2HSu1tlmtNyj/OMK0qHcx/Iciyavw/N2jXDaaQmFENK9ZOKWtWENL2vUpRKgvwRB0+an2qigEblbj
	91YGa6DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLi6-0007vw-N5; Wed, 05 Feb 2020 14:31:22 +0000
Received: from comms.puri.sm ([159.203.221.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLhl-0007ov-K8
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:31:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by comms.puri.sm (Postfix) with ESMTP id 6FA10E03CF;
 Wed,  5 Feb 2020 06:31:01 -0800 (PST)
Received: from comms.puri.sm ([127.0.0.1])
 by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4qrC0zwEtsvC; Wed,  5 Feb 2020 06:30:56 -0800 (PST)
From: Martin Kepplinger <martin.kepplinger@puri.sm>
To: robh@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Subject: [PATCH v1 02/12] arm64: dts: librem5-devkit: add the simcom 7100
 modem and audio
Date: Wed,  5 Feb 2020 15:29:53 +0100
Message-Id: <20200205143003.28408-3-martin.kepplinger@puri.sm>
In-Reply-To: <20200205143003.28408-1-martin.kepplinger@puri.sm>
References: <20200205143003.28408-1-martin.kepplinger@puri.sm>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_063101_659735_C21966C8 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [159.203.221.185 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

Add the simcomm modem and the sai6 interface that connects it, as well
as the sgtl5000 audio codec.

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
---
 .../dts/freescale/imx8mq-librem5-devkit.dts   | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 9702db69d3ed..8162576e8f3d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -148,6 +148,51 @@
 		regulator-always-on;
 	};
 
+	sim7100_codec: sound-wwan-codec {
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
+		simple-audio-card,cpu {
+			sound-dai = <&sai2>;
+		};
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
+		simple-audio-card,cpu {
+			sound-dai = <&sai6>;
+		};
+		telephony_link_master: simple-audio-card,codec {
+			sound-dai = <&sim7100_codec>;
+			frame-master;
+			bitclock-master;
+		};
+	};
+
 	vibrator {
 		compatible = "gpio-vibrator";
 		pinctrl-names = "default";
@@ -749,6 +794,16 @@
 	status = "okay";
 };
 
+&sai6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sai6>;
+	assigned-clocks = <&clk IMX8MQ_CLK_SAI6>;
+	assigned-clock-parents = <&clk IMX8MQ_AUDIO_PLL1_OUT>;
+	assigned-clock-rates = <24576000>;
+	fsl,sai-synchronous-rx;
+	status = "okay";
+};
+
 &uart1 { /* console */
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_uart1>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
