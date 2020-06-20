Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B767720251A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H0520w5rM0zMZx+RdVy9mLyil3GiYNEaoEuZoWFPNtk=; b=f5X7mUYZ93i3cC
	B98q20V5zvcznr+dnChqTabIJFfKiBoKUqtWWqVhSNqzre1KxKZa5p/X6QQUU1y//JmJxMRjhGhQi
	1HmSWYOFLwh5U15q5yQMOW1sbLxScWgSFps/pGc7PsAggGnBbBjJySpRIfq7jXm3WnJM6jTwIYcZR
	DCfwPTgYKjhK9v0H5hAhYN+N3VwiIjsycz4XT5lcioXGK8zukc9FL4DvtHgU3nZn+of6171IHNSwM
	hzoiqn6u+DMctPq9Yh3+7MP3HA9NUIE88K/b2qeHnwUEnMQuCjwCle67fYGAV7YFKK6yyDAev9hr/
	OxlGYe9RWRYKQgpVz1gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmg6r-0000cA-Tu; Sat, 20 Jun 2020 16:12:49 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmg6h-0000au-RO; Sat, 20 Jun 2020 16:12:41 +0000
Received: by mail-ed1-x541.google.com with SMTP id d15so10141117edm.10;
 Sat, 20 Jun 2020 09:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZCPVTZi3Nez6HPxmWh69ZvSZD8QNf4zRgd1dOnXR2q4=;
 b=B6X/0atvwu5PDQMgnwBR+YORpKDe80h1eseaDVzLQOM5L7klltwWI8b3WRKZq0fORw
 R3XeciWi1LsZ6DiNRmZPqebM9FEUSBAcUD6ezRH0gH5PHEq0h3mXguqGFOnjNCNzqp+k
 BwkOY/SOBocOyYLSB3z4Jz0ZnpPp0ymkBA77NW4D3pwxL/e/4UeKeNLcsbs7J3Czaxsi
 fpeYAxqXNH46uaHhMjf945pK9oxUXyFMgt6pDyR0W03dQwwhTr2mIo5jD8XEa9AZuKOw
 qpjQ2yfvKuaKLRxvy+k6GjLGbqe1HW+mF0KDSoCD4E0rfQK8VeqoCnKl4MQtd7H6jOCe
 NOrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZCPVTZi3Nez6HPxmWh69ZvSZD8QNf4zRgd1dOnXR2q4=;
 b=gR2fOqEOIMuLLcc8/hpIaBgBjTIgNKmeVEhutH0ZQ08BHX/Iabc1oCSE7b5HKo3RII
 j03J64+KWyJdtpPr/BPWVoKWwAJRRIengf+RKQAaPmp3V92pzFX4a5bAbaY+ohDr6Nka
 SgQVdXbEBppcTLIMh7CrIGv8/MxGHE4HuwcEPetGxhAv/8Y/abXGPbyWsP5/jxwN6CoR
 9fyErWl2m+Fck515sC6qEQiGD72EltpV5Q5nRM99MWKzPgphTzrtSEzJTv0j7tvOJp2e
 XmOX3si40Knj6pi8yEUB1NN5y/B5YF04aiCBOPTXmIMa3iHxEltb/GD0SFyEZw5H5W78
 NkpA==
X-Gm-Message-State: AOAM530UxvxtpKhmuRfzBRb98UisG3Q+Sn/Q6QDfhf9THiKuixk8ymH3
 tLMAY+uahmTr/AZ/YZXBxNEwOA64
X-Google-Smtp-Source: ABdhPJyZq7M9k7FRfwFPq1K7C3ijD1E9uIne9dkd1rv1jDJiRYZCeSUaW7C4KJ5nPciOUoUTbKYnPQ==
X-Received: by 2002:aa7:cb4a:: with SMTP id w10mr8446600edt.46.1592669558069; 
 Sat, 20 Jun 2020 09:12:38 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id i9sm7648405ejv.44.2020.06.20.09.12.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:12:37 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-gx: Switch to the meson-ee-pwrc bindings
Date: Sat, 20 Jun 2020 18:12:11 +0200
Message-Id: <20200620161211.23685-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_091239_885507_6B95E84C 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "amlogic,meson-gx-pwrc-vpu" binding only supports the VPU power
domain, while actually there are more power domains behind that set of
registers. Switch to the new bindings so we can add more power domains
as needed.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi   | 18 ++++++++++--------
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi |  7 +++++--
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  |  7 +++++--
 3 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index ba63c36b22e0..0edd137151f8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/power/meson-gxbb-power.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -60,7 +61,7 @@ simplefb_cvbs: framebuffer-cvbs {
 			compatible = "amlogic,simple-framebuffer",
 				     "simple-framebuffer";
 			amlogic,pipeline = "vpu-cvbs";
-			power-domains = <&pwrc_vpu>;
+			power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
 			status = "disabled";
 		};
 
@@ -68,7 +69,7 @@ simplefb_hdmi: framebuffer-hdmi {
 			compatible = "amlogic,simple-framebuffer",
 				     "simple-framebuffer";
 			amlogic,pipeline = "vpu-hdmi";
-			power-domains = <&pwrc_vpu>;
+			power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
 			status = "disabled";
 		};
 	};
@@ -438,12 +439,6 @@ sysctrl_AO: sys-ctrl@0 {
 				compatible = "amlogic,meson-gx-ao-sysctrl", "simple-mfd", "syscon";
 				reg =  <0x0 0x0 0x0 0x100>;
 
-				pwrc_vpu: power-controller-vpu {
-					compatible = "amlogic,meson-gx-pwrc-vpu";
-					#power-domain-cells = <0>;
-					amlogic,hhi-sysctrl = <&sysctrl>;
-				};
-
 				clkc_AO: clock-controller {
 					compatible = "amlogic,meson-gx-aoclkc";
 					#clock-cells = <1>;
@@ -552,6 +547,12 @@ hiubus: bus@c883c000 {
 			sysctrl: system-controller@0 {
 				compatible = "amlogic,meson-gx-hhi-sysctrl", "simple-mfd", "syscon";
 				reg = <0 0 0 0x400>;
+
+				pwrc: power-controller {
+					compatible = "amlogic,meson-gxbb-pwrc";
+					#power-domain-cells = <1>;
+					amlogic,ao-sysctrl = <&sysctrl_AO>;
+				};
 			};
 
 			mailbox: mailbox@404 {
@@ -574,6 +575,7 @@ ethmac: ethernet@c9410000 {
 			interrupt-names = "macirq";
 			rx-fifo-depth = <4096>;
 			tx-fifo-depth = <2048>;
+			power-domains = <&pwrc PWRC_GXBB_ETHERNET_MEM_ID>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index 03c25b9facff..ea50dd434887 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -748,7 +748,7 @@ mux {
 	};
 };
 
-&pwrc_vpu {
+&pwrc {
 	resets = <&reset RESET_VIU>,
 		 <&reset RESET_VENC>,
 		 <&reset RESET_VCBUS>,
@@ -761,6 +761,9 @@ &pwrc_vpu {
 		 <&reset RESET_VDI6>,
 		 <&reset RESET_VENCL>,
 		 <&reset RESET_VID_LOCK>;
+	reset-names = "viu", "venc", "vcbus", "bt656",
+		      "dvin", "rdma", "venci", "vencp",
+		      "vdac", "vdi6", "vencl", "vid_lock";
 	clocks = <&clkc CLKID_VPU>,
 	         <&clkc CLKID_VAPB>;
 	clock-names = "vpu", "vapb";
@@ -867,7 +870,7 @@ &uart_C {
 
 &vpu {
 	compatible = "amlogic,meson-gxbb-vpu", "amlogic,meson-gx-vpu";
-	power-domains = <&pwrc_vpu>;
+	power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
 };
 
 &vdec {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 60484bbc7272..beb5fc79d186 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -783,7 +783,7 @@ external_mdio: mdio@2009087f {
 	};
 };
 
-&pwrc_vpu {
+&pwrc {
 	resets = <&reset RESET_VIU>,
 		 <&reset RESET_VENC>,
 		 <&reset RESET_VCBUS>,
@@ -796,6 +796,9 @@ &pwrc_vpu {
 		 <&reset RESET_VDI6>,
 		 <&reset RESET_VENCL>,
 		 <&reset RESET_VID_LOCK>;
+	reset-names = "viu", "venc", "vcbus", "bt656",
+		      "dvin", "rdma", "venci", "vencp",
+		      "vdac", "vdi6", "vencl", "vid_lock";
 	clocks = <&clkc CLKID_VPU>,
 	         <&clkc CLKID_VAPB>;
 	clock-names = "vpu", "vapb";
@@ -902,7 +905,7 @@ &uart_C {
 
 &vpu {
 	compatible = "amlogic,meson-gxl-vpu", "amlogic,meson-gx-vpu";
-	power-domains = <&pwrc_vpu>;
+	power-domains = <&pwrc PWRC_GXBB_VPU_ID>;
 };
 
 &vdec {
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
