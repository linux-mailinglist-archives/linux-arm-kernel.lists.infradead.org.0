Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037E91B4158
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KHJVlmmdNHDpRkMmgXriaCGVLZarM8CQ+8MeIf0AHew=; b=SKI0OKgpAUrb45
	L7eb3/uEMCG2kuB9OGT+N8H/NoR+7F23f7Pu5o1N8EoW11mugt2xyp8bOfBZtBVqC4mZNrdx2j3rE
	tLB9kSzTuzTY0znthKuZ3d/kja5HSv48ppxgNj+UGke9KjEJQQxHF7nHmvEF5L47qu+YmJpSIC3tG
	+Hs0uUqXIu2U8DvS3uGqMV32Q7TvoYX3WQk4rCGnWblxmqmusySeEqu5vnUH/i9fhxmq5AgmHdRqL
	2uFbbtnMhlSeCJgBZHoau0s43cAWdWjb0TQMGjkKbiAsIwWmltssOD5OaLHs0k0M2qC7bNiZRbJRa
	PZInQxnNxTr1ZvWgxn3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCzJ-0000EG-Vb; Wed, 22 Apr 2020 10:52:18 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCu5-00012Z-3Y
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 10:46:58 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 496cZ32FD5z1qs3k;
 Wed, 22 Apr 2020 12:46:51 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 496cZ31zzvz1qql5;
 Wed, 22 Apr 2020 12:46:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id LXYGse23kfRo; Wed, 22 Apr 2020 12:46:49 +0200 (CEST)
X-Auth-Info: 19kG0rPfPOOSQ1C7ifdgYPiF5lbYc+Il+8ZapZBABAI=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 22 Apr 2020 12:46:49 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 18/20] ARM: dts: stm32: Add bindings for audio on AV96
Date: Wed, 22 Apr 2020 12:46:11 +0200
Message-Id: <20200422104613.96944-19-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200422104613.96944-1-marex@denx.de>
References: <20200422104613.96944-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_034653_827476_43C229A2 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fill in the bindings for HDMI audio on AV96, this permits audio playback
via attached HDMI device if such device supports it.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
V3: No change
V4: No change
V5: No change
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 39 +++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 85116e192b61..f04ad8dc6fc6 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -98,6 +98,13 @@ sd_switch: regulator-sd_switch {
 			 <2900000 0x0>;
 	};
 
+	sound {
+		compatible = "audio-graph-card";
+		label = "STM32MP1-AV96-HDMI";
+		dais = <&sai2a_port>;
+		status = "okay";
+	};
+
 	/* Enpirion EP3A8LQI U2 on the DHCOR */
 	vdd_io: regulator-buck-io {
 		compatible = "regulator-fixed";
@@ -361,6 +368,13 @@ adv7513_out: endpoint {
 					remote-endpoint = <&hdmi_con>;
 				};
 			};
+
+			port@2 {
+				reg = <2>;
+				adv7513_i2s0: endpoint {
+					remote-endpoint = <&sai2a_endpoint>;
+				};
+			};
 		};
 	};
 
@@ -425,6 +439,31 @@ &rtc {
 	status = "okay";
 };
 
+&sai2 {
+	clocks = <&rcc SAI2>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&sai2a_pins_c>;
+	pinctrl-1 = <&sai2a_sleep_pins_c>;
+	clock-names = "pclk", "x8k", "x11k";
+	status = "okay";
+
+	sai2a: audio-controller@4400b004 {
+		#clock-cells = <0>;
+		dma-names = "tx";
+		clocks = <&rcc SAI2_K>;
+		clock-names = "sai_ck";
+		status = "okay";
+
+		sai2a_port: port {
+			sai2a_endpoint: endpoint {
+				remote-endpoint = <&adv7513_i2s0>;
+				format = "i2s";
+				mclk-fs = <256>;
+			};
+		};
+	};
+};
+
 &sdmmc1 {
 	pinctrl-names = "default", "opendrain", "sleep";
 	pinctrl-0 = <&sdmmc1_b4_pins_a &sdmmc1_dir_pins_b>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
