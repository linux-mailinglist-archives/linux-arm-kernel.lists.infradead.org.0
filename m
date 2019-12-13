Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A546811E517
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:59:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=G9hyaJdva7xc2X9WSrW9NrWuyBJCXLAfdBtb/lgYdUk=; b=Iuw
	0M9pNe3HZR0vIh2NU5wZjhLFVYwS7jUEVgb/BeBXRmetQwtxc5iNMGzrele04I7N1qobCSS3o4GqF
	8PK4QuFRXssmipFoHZJZsmdzai+Q+tHNGv8dy5Q1yRWtADZPtL4h7URmI42TnbSc1ZMgCflFUcrWg
	HjFgO9IdjUcTf4wbW2WeG1AflC/QX90ptNCm/3KZ0wAWwXZ3wtl1cG/ayBIBb77e/rgHOonYvL52A
	0HQ6XXo/p/RLpDtpMV2fqBR3zi3sPBiyJ7Qt3gRtrKBdU2XQgcy0ZMdPVAP1x7gpEBftzBoIOApqJ
	bIkptZV31Q57e3v0SvH3wvPTyKCwiog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflTE-0002Ol-9m; Fri, 13 Dec 2019 13:59:04 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflT0-0002O5-F6
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:58:51 +0000
Received: by mail-pj1-x1041.google.com with SMTP id o11so1233827pjp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 05:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0pSL7+6Hfic6QamJwgv8SnmNlOMYhYlW3BzhIK7N/pE=;
 b=e6xLarDs9kfv5A7ccrZSG4Janl78yrPDHvawA5PnhtHZ+7+iphzeBKwPtRXUTGxszO
 Tu7l+HeoAnYG61sNVR5YPMjpxtAQwfh0RjeISvAvmajbctn1tUbnQ/TVEKP8+SBbdoYU
 9sjFHPM6LhcnSetBfIQXMkxESYH4Qqf1obBcNEZtzXhhMSNzKGLkBs+3jpe1s/+EaqmT
 Yp7c09HZDq+hRwgH9KTdhbCMDscQVApKeE7LV1mKgPVSNi59Q/YsTJuVLHP4DTAVzfr5
 BmOn+j2lSUwxya2lructw3cKIHH4Cga/ol/E+ZXIH1eJl7ZVhZOpQyAJUF5fCDqCnyRC
 SMkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0pSL7+6Hfic6QamJwgv8SnmNlOMYhYlW3BzhIK7N/pE=;
 b=MMT235l9qahBOnYUhOsVXZv2Jf2/WEyIy0uYJmNPqrfE81PuU8NdYFmDWwhDI8itPw
 fMMuvoDPFopGPkZfITvbaBSzLPzwlZYPWHoeYWZ8WqcSNaijCHnWecTVyI8Bdbfxb0QN
 tRat9Pee6HaZ5y6DVkP/TqaGxdGA+tOjr/vYng5oT+bbmNpXhX/km48agGyJrR/zYgOc
 Gq39qf34vYzaA8/esknbo89KLc0s5fn4fR1m17JFhZElb7DWjNyniDAVFSpN6Qv5UwWj
 x4+ZPz/7/ety2r3HQNK/HWpapKjhMzf+ZBLzYLwt41Og0iNX0uUiH8oOGf763jyWDoFI
 9GoQ==
X-Gm-Message-State: APjAAAUksKagigv/GMK6q4fBjYdCOxlrLfvx0+0Z7aeXQU84DuaDFNVH
 RgTEIs+zjrFpEYk1Sk6lwpQ=
X-Google-Smtp-Source: APXvYqzhlxxZQ4K1aCD0j18ML2PufVmV+xW9yLZRqMg/AjI1PiTcYhuuvAMy7LsRWotBHgMTxu41bA==
X-Received: by 2002:a17:90a:b002:: with SMTP id
 x2mr16298438pjq.38.1576245529285; 
 Fri, 13 Dec 2019 05:58:49 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id y6sm10778538pgc.10.2019.12.13.05.58.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 05:58:48 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 1/2] ARM: dts: imx51-babbage: Fix the DVI output description
Date: Fri, 13 Dec 2019 10:58:37 -0300
Message-Id: <20191213135838.28697-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_055850_506910_CC71360E 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

imx51-babbage has a TFP410 chip that receives 24-bit RGB parallel
input and convert it to DVI.

Fix the device tree description to reflect the real hardware.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Use "dvi-connector" compatible

 arch/arm/boot/dts/imx51-babbage.dts | 64 ++++++++++++++++++++++-------
 1 file changed, 49 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/imx51-babbage.dts b/arch/arm/boot/dts/imx51-babbage.dts
index ed6a3ce874b2..552196d8a60a 100644
--- a/arch/arm/boot/dts/imx51-babbage.dts
+++ b/arch/arm/boot/dts/imx51-babbage.dts
@@ -58,29 +58,27 @@
 
 	display1: disp1 {
 		compatible = "fsl,imx-parallel-display";
+		#address-cells = <1>;
+		#size-cells = <0>;
 		interface-pix-fmt = "rgb24";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_ipu_disp1>;
-		display-timings {
-			native-mode = <&timing0>;
-			timing0: dvi {
-				clock-frequency = <65000000>;
-				hactive = <1024>;
-				vactive = <768>;
-				hback-porch = <220>;
-				hfront-porch = <40>;
-				vback-porch = <21>;
-				vfront-porch = <7>;
-				hsync-len = <60>;
-				vsync-len = <10>;
-			};
-		};
 
-		port {
+		port@0 {
+		reg = <0>;
+
 			display0_in: endpoint {
 				remote-endpoint = <&ipu_di0_disp1>;
 			};
 		};
+
+		port@1 {
+			reg = <1>;
+
+			parallel_display_out: endpoint {
+				remote-endpoint = <&tfp410_in>;
+			};
+		};
 	};
 
 	display2: disp2 {
@@ -115,6 +113,42 @@
 		};
 	};
 
+	dvi-connector {
+		compatible = "dvi-connector";
+		digital;
+
+		port {
+			dvi_connector_in: endpoint {
+				remote-endpoint = <&tfp410_out>;
+			};
+		};
+	};
+
+	dvi-encoder {
+		compatible = "ti,tfp410";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				tfp410_in: endpoint {
+					remote-endpoint = <&parallel_display_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				tfp410_out: endpoint {
+					remote-endpoint = <&dvi_connector_in>;
+				};
+			};
+		};
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
