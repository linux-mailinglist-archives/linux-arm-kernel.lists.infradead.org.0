Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5597219680F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 18:17:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aodvNInEY16GTQOSwCAPY2TGRLQKlEyGz5pfSPaUTxE=; b=Uw+rujF+WumAI2
	JvK+J+TbkFxWhOf3P2t+MHlK+4NpxjDi17KNkcGKRQmogFQCuYWmxdUAeKMA6adrFH128Qki7z88H
	kEK8wsJ91oHkAMWeFjycJaVtonTbvchQLlr5ruAG9z7nD4WSp7rcI4kHrC2Z3kDsnTJxtIBqcvn3h
	6rLQELrHbrxb/RdZ8EUru7RIdoQ1jvSBrbUG0xtDE4Rc3JqrE4PKWaFduOsD89gdRxnHpZ55IbIDi
	leNfLtOEv3mEOUGjMN4GmVfdvVokxiP0/TOWX2sa69x21RydJNcoNe7NtovoyCxKUrABKp68pITi9
	KDRlaTTU6G5WOjy/wkyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIF5b-0004Rf-Dn; Sat, 28 Mar 2020 17:17:43 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIF0S-0007GJ-8W
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 17:12:25 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48qQJN4l8Mz1qrLq;
 Sat, 28 Mar 2020 18:12:20 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48qQJN4QW8z1qqlF;
 Sat, 28 Mar 2020 18:12:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 4hKN7oml1FPE; Sat, 28 Mar 2020 18:12:19 +0100 (CET)
X-Auth-Info: NPa6icNoJgCOPGp3UDjQb2nu/BBu4m6FSFOoooNKCDQ=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Sat, 28 Mar 2020 18:12:19 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 20/22] ARM: dts: stm32: Add bindings for audio on AV96
Date: Sat, 28 Mar 2020 18:11:42 +0100
Message-Id: <20200328171144.51888-21-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200328171144.51888-1-marex@denx.de>
References: <20200328171144.51888-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_101224_495503_A4F221CB 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fill in the bindings for HDMI audio on AV96, this permits audio playback
via attached HDMI device if such device supports it.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 39 +++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index f0f723558be7..4a61b5263ad3 100644
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
 	wlan_pwr: regulator-wlan {
 		compatible = "regulator-fixed";
 
@@ -353,6 +360,13 @@ adv7513_out: endpoint {
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
 
@@ -417,6 +431,31 @@ &rtc {
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
