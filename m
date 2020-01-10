Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EB11376E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 20:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ejda6XCnhImJclQ7lHFlfkmsrv4bDDU0vRtIwFeBoYk=; b=Yuy
	U7pfAGxAfHiL3PBQamQDRkPBcI48pIBb6EF8uugvEpQWX1NJWa4t1R7pBvwjpmQhvrImAHHe8Y62N
	Xf/vIZiJFMK6Woz8sTx4ZCS6BwuXYw/7LFqcAN9TnvKq6TQ1CeNDVr3m8AiB6/PLWOcmo90x12HWV
	+WlvKS3FctxzDzxWoUzR/j+b1q8BsYNbx12nFxjNQh/gEvyUSBc5xcI3cCpvwctAIhwuEww7/G6jX
	hK3YpTFXopnBGPvIhB07kK1T2YC9Vwp0+acZcAXY6vK6AXjS9yWh+2M/d+6fJUi4aOMGalPYML7KJ
	a/AQiyUdlb6VT+edSxM4kFFoRG/MNWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipzsy-0006bH-35; Fri, 10 Jan 2020 19:23:56 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipzsr-0006ar-6C
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 19:23:50 +0000
Received: by mail-qk1-x744.google.com with SMTP id t129so2917392qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 11:23:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JZbmiAy3q7Y69e1zs7Z6BJ7cl2BvTCr+SU3J7aHBRoc=;
 b=TtYuK5bKK5j/tqtyhY7ZsastQa7Z7qbbQg4gcP+D4A25PCqZ1XEzGwiJ6RRXdF5FyQ
 OisxmDm2xriTOOuhKwNJPO2PbaffouPkjPHN/+PDiw3+al7xe0kpdaYWFtwuBZmJ2XOU
 YcCQ1CYtPAxGVTi/YklFk5VE7+tIZRCwsZmEavJUdZOmQLpDK/dsxykeb+2LnAGH4+1Z
 05w9sephb9wLyobx5WnkhwDdIUCNC6b88/++KyRv3tr+lPv1Oon0i/qCUuZA+lCE4Ml2
 XSMAK1bCT+CS8SchpWPHhSJD79nLV34903RIS94xtgPyWO6qPDURKC+xwhZMewb3mgik
 FYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JZbmiAy3q7Y69e1zs7Z6BJ7cl2BvTCr+SU3J7aHBRoc=;
 b=tU/FPpg92LhLgQ2NjCk72quT7ye5pN/yEjqWDEUyuaJr5Ftl40eYWWshXDxg068TfS
 Nda0I607tEw3dZQbZuT3VX+1tiGWgb7NYxDbXqtfzPe3dqKz7S5y00xebkqqvhYwM6sd
 oCI8pkD8sNFsCD3tx57JyUfJPxPGgEqCcsX3AjvUOMOmN5JRDueHy+DU7dCXaAp3myKt
 9epuK9WKJshamRbvuNvumWiPUa7i6l4q/kRHDHkempHVWAYznMS6BQcxciILnROUVKFK
 Y0XXN9Rjza0oXVZItFzNXuTnuRDjYG02RXSyRWiLnxeJESXhgm6xRpImyt7hpPDvojyu
 f6sA==
X-Gm-Message-State: APjAAAV0Dvh6zMbJ0jBj4lWCMFOS2dZOU98VHE9R/kkZ9Pd910KVvZ3o
 7XkYmLM0wJIR9ISEMUrvGIM=
X-Google-Smtp-Source: APXvYqwhGdBKjuinxM4F7IZ3FxSWRQJczWLbkaKYVlJuKdEL3kYJO1rU7qxzkNb2PprdpSvN0bWwuQ==
X-Received: by 2002:ae9:e702:: with SMTP id m2mr139657qka.208.1578684227207;
 Fri, 10 Jan 2020 11:23:47 -0800 (PST)
Received: from fabio-Latitude-E5450.am.freescale.net ([2804:14c:482:5bb::2])
 by smtp.gmail.com with ESMTPSA id k14sm1280690qki.66.2020.01.10.11.23.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 11:23:46 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx6ul-pico: Convert to DRM bindings
Date: Fri, 10 Jan 2020 16:23:34 -0300
Message-Id: <20200110192334.27024-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_112349_252407_A08CA111 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: robh+dt@kernel.org, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, otavio@ossystems.com.br
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Documentation/devicetree/bindings/display/mxsfb.txt states that
the current display bindings format used in this dts is deprecated.

Convert it to the preferred DRM bindings instead.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6ul-pico.dtsi | 39 ++++++++++++------------------
 1 file changed, 15 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-pico.dtsi b/arch/arm/boot/dts/imx6ul-pico.dtsi
index de9f83189ba83b..df1da98ab10fa1 100644
--- a/arch/arm/boot/dts/imx6ul-pico.dtsi
+++ b/arch/arm/boot/dts/imx6ul-pico.dtsi
@@ -20,7 +20,7 @@
 		stdout-path = &uart6;
 	};
 
-	backlight {
+	backlight: backlight {
 		compatible = "pwm-backlight";
 		pwms = <&pwm3 0 5000000>;
 		brightness-levels = <0 4 8 16 32 64 128 255>;
@@ -72,6 +72,17 @@
 		regulator-max-microvolt = <3300000>;
 		startup-delay-us = <200000>;
 	};
+
+	panel {
+		compatible = "vxt,vl050-8048nt-c01";
+		backlight = <&backlight>;
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&display_out>;
+			};
+		};
+	};
 };
 
 &can1 {
@@ -154,31 +165,11 @@
 &lcdif {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_lcdif_dat &pinctrl_lcdif_ctrl>;
-	display = <&display0>;
 	status = "okay";
 
-	display0: display0 {
-		bits-per-pixel = <32>;
-		bus-width = <24>;
-
-		display-timings {
-			native-mode = <&timing0>;
-
-			timing0: timing0 {
-				clock-frequency = <33200000>;
-				hactive = <800>;
-				vactive = <480>;
-				hfront-porch = <210>;
-				hback-porch = <46>;
-				hsync-len = <1>;
-				vback-porch = <22>;
-				vfront-porch = <23>;
-				vsync-len = <1>;
-				hsync-active = <0>;
-				vsync-active = <0>;
-				de-active = <1>;
-				pixelclk-active = <0>;
-			};
+	port {
+		display_out: endpoint {
+			remote-endpoint = <&panel_in>;
 		};
 	};
 };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
