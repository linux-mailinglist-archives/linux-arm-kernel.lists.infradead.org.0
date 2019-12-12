Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225E611D395
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yR0lA/48ruDjwzMI2hxqzu3JVTXMqiTImd61fWq131g=; b=ahb
	CcaK7g+m5/ZMGAQrLYxyqSYXvZUhc47RTk1aw5a2zeBygP8JYryFl4PsI66fRl2GNKdPQnR1jwK2K
	ofN369Gxjw99C75TI3VlEvoMDEbHL+KAfNuV6wrW3LuU9TTwNJZIiX56+MrxADjqCWT/30HBSXKHS
	polO7LSLLOqvnHdJ82emeCstM0wCVjg95BKrUA9w9RCx6Pp0gTyn7gB8SpScsOChA0G462iKctxVo
	z66XaIAZFbZXjXp0BzkdcV2WONAjBx5H2D9TDSDrZnzDpeScJsTR7M7VXP7Wfr8RJSOisoFWVtkiN
	XJpGP/XrqnXy7IKEPPe58WjMS+D6/kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifS69-0008M9-GP; Thu, 12 Dec 2019 17:17:57 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifS60-0008Lg-Aw
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:17:49 +0000
Received: by mail-vs1-xe41.google.com with SMTP id x4so2092609vsx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 09:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=CijgkspoW+Zx0cv79pbBAewbwbnWZo70qA6UYTTivFQ=;
 b=izFt0W2M0YcSKzLsV4yVFMo83/9Bi7CNsmOd7wqhtC0wKO7e9lzCZ4ZJU9K5dBxYe5
 lUcnFjZMD+4NCbwWuWHtGNfJ8luAdIKT15V/TQ+crseI7sFghWGnnBpA2mZvD5e1FbTc
 vImLFayb+z1EiX4up0Pgv3teheXmiZRdpPqLeBOsy1ptxDyihONnn95OFiVCpA+XrEff
 rOK+HoGi149MOqKpEIQ6F39vRKIZk8nzXLUz/p+7N/hFLbLelrTOzX5CQZHL/ff6MI+B
 UsDLCtNFQH/YULIKvdGZdQKM8b31hk9NypBlJxhY6FZuwGXAv5Htu71pDIYtCxQ+fYI0
 o6yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=CijgkspoW+Zx0cv79pbBAewbwbnWZo70qA6UYTTivFQ=;
 b=bi1DLjsAagDyWvjekEdJhQZnpDdxoi9v2LyWKH5KxshyF19Fusu9YjxbsZfjDHLnzA
 wc1L2aLauRt0FfZqikvhXvpXx7vLdSUNCWd7h5q/LfnPO/glMbDCnwpAL2lEe8L1Nhj1
 Hv+uX8xLGj34YMZUL1QCn0lypdjhVxPlAoybOkNgxlkdEIRNt39rSYONUa3pI1PVMGNw
 l7Fk5h6kkHEFk3BTEQ1XLlRJG8f+pVky6hR09DzsXG3ggrn+VYuimvxf3K16bsEbivFc
 FwfPpfRCa06WjDO5u3F4/9kZabfw+2yqm9e3OWC6iYt4TYZjlKGogJgVZBjr0h1LSfKm
 Yfng==
X-Gm-Message-State: APjAAAUQv5jf5EYvqgimXlZI2JTysLkLd/BuiaRMWlVvhlV9H5HgVV3z
 WcZDPkzAcodwWyXd1C7K2b0=
X-Google-Smtp-Source: APXvYqx3GkJFaKMqjZwAqosQgKdhI4zg6EhrtnZZgpPXVoTOZeAnJouyEY519jviMhD/DD+pwccuOA==
X-Received: by 2002:a67:ae43:: with SMTP id u3mr8212717vsh.44.1576171066958;
 Thu, 12 Dec 2019 09:17:46 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id g140sm4246759vkf.18.2019.12.12.09.17.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 09:17:46 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/2] ARM: dts: imx51-babbage: Fix the DVI output description
Date: Thu, 12 Dec 2019 14:17:03 -0300
Message-Id: <20191212171704.23604-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_091748_401343_F527EE2B 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/arm/boot/dts/imx51-babbage.dts | 64 ++++++++++++++++++++++-------
 1 file changed, 49 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/imx51-babbage.dts b/arch/arm/boot/dts/imx51-babbage.dts
index ed6a3ce874b2..1f05afa7579c 100644
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
@@ -115,6 +113,31 @@
 		};
 	};
 
+	encoder {
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
+					remote-endpoint = <&hdmi_connector_in>;
+				};
+			};
+		};
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -128,6 +151,17 @@
 		};
 	};
 
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&tfp410_out>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
