Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F22219ACDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:28:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqyftBGmzyWk+orUKdAcXSvipaZKWOq7KXRTgbp9Xx8=; b=g0pWkakHJnOjxe
	8nBAu/FLCEzb+3YN48EvbHBAznim9o0Vs3X2n16RSlnESpMWflfcay/qb3WEm+pCfqWa5I9olK0FB
	k428jEezupO0zOnnJjqjKo0OCPiaGng4EOCQghktDD+an8oN5zBJDgo/0oyHhq6reebHOS8CXgdvF
	9Ubtu2rhgc8sinRMQE6k8ndAXWGSyYDX5gSDbAEsDuDDfW7afw7tNV99GYQHUEjirb3tloXE3UKfz
	k1Fl1uJyAvEKntyLhzjW875tY/8ubY0HkSNBvq4+ea223oEFY7qLZ8bqGnQ3n9+ageIZgsY+UKlBW
	G6bL6JHSy0xH4fIDfM+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdPq-0003rF-84; Wed, 01 Apr 2020 13:28:22 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdL6-0005HC-79
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:23:29 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sn2Q5Qm1z1qs11;
 Wed,  1 Apr 2020 15:23:26 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sn2Q4pQlz1r0cW;
 Wed,  1 Apr 2020 15:23:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id RsQSM8LHfkwD; Wed,  1 Apr 2020 15:23:25 +0200 (CEST)
X-Auth-Info: WtoKvEEGGvhgdHdzp4ZXESxLP60xIXe/n3RKXAk+dPQ=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 15:23:25 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 20/22] ARM: dts: stm32: Add bindings for audio on AV96
Date: Wed,  1 Apr 2020 15:22:35 +0200
Message-Id: <20200401132237.60880-21-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_062328_410373_E37744EB 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 39 +++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 756e79f2255a..2f5a53e1b50d 100644
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
@@ -359,6 +366,13 @@ adv7513_out: endpoint {
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
 
@@ -423,6 +437,31 @@ &rtc {
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
