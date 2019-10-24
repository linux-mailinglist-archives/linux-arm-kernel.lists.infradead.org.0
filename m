Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 940B0E3EAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 23:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+G31oKGSOqA8CNpJnUpVDm3uqbU4lNyhS8tYOWhgbws=; b=rqc
	L0mvact0joXfeo6rnd9VtzfhAdlZ0xm/n/il25muJfEx/mXJTAkfrnCH9/wskU7NzwUhD2U7Grck5
	AXa9KbvcqFJK7jkI9RTdoDMHKIXYDZbCDNGpKbp1e5buDvdtSHvOAdW02XcSiLPSRxi0Mlz6rlmQv
	X5c+ZqTG41SPGshziwQ6ePrRei/C9iFMEPDEoTfSDGvOF+ExvMcF+bNmb4M/Uq3lqIUkg4zDzOdbj
	Z05dw0WqBjT6zAb6SYaLwn8JzSVBjd7wA9cogOODqqDSMM6/5lXsuK8cRQdFkT1aao4Z96p3W5b/M
	ayUiz9XMWGiid2H9tldzjHmM0l3EcDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNl7g-0000Eq-O8; Thu, 24 Oct 2019 21:58:24 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNl7V-0000EP-7i
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 21:58:14 +0000
Received: by mail-qk1-x743.google.com with SMTP id g21so207111qkm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 14:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=or7wXAy9oU5iIy3HzVbLYD2k83GrjXyIFQISmUIaCOQ=;
 b=fmutPaRqGWXxXEaFmKxk2uYE6IWsB4nLHYK2lIbgboHl5Sau5BAAjcAjIY1bCjPbuU
 keZjQKJpJuHjt72P3VeLsh3Xmefw9o+T2L/QodltobIki0b+ZWx3wF79NU2NgLBQoPsc
 xuVlNtN25opC9NRQ3l1t0asCrRBZGmO0j0SnbeCCM+5g2GDk9YRkSyalui+wmuf5ShM+
 XdyAAYyke0pGpt5Zplp0LZ5h3xsAgBzJMT2xCJxIC0PIIXrsdncISv+agozhPpjdJ/ca
 nSrskNFkP/CPdbDv+NbOP+pdOwE9jnU5cH5W2oV/Qjpx1AXplPkYZCvX9BbR3EsjY1pg
 hSOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=or7wXAy9oU5iIy3HzVbLYD2k83GrjXyIFQISmUIaCOQ=;
 b=PN9ejKOWgugOvYH2STC3nEL2pVBIMjgf7tKbmpbx+bTPt4nULKL6e1ocgQmkxt048p
 FcUpOPF3pYZ1J1zQkZURAoqVlmnl19ITIYR7e5+qO35t9EfK33/p3nRUwmR+WZSg0gUS
 c3w1o2QLFQr6To19hc52993EOvY9X88L4C+Hq1zGZJQuryq6BpfrBVh24QM6XEqvYmv6
 Bctpks+AIw8OixVpJuEw4quOAXvgRk2lRz2KnXVcBLm2FnaHl+8o214jb/tIQYepapQ7
 AuKbtSMloQjXwunqP750EwfULKp8zT+CbJ7yu3c+doOG6WPhw1qCd4jEn8VFt3wHsZ2R
 0kJw==
X-Gm-Message-State: APjAAAV2ZEQ6tMYjDLJ8jBcQM6hsA+ibjpHCW3PxajLycSyi7EaRmVAu
 +N0jN7A+wUhHavqVfr2iWkI=
X-Google-Smtp-Source: APXvYqyP5NXurZeqbvR7Qc/E2MgK1xLVMvwfjKs101bMH5ZJbbZyZY+TFJvghl9xU8R68goxOyQRKg==
X-Received: by 2002:a37:e10d:: with SMTP id c13mr5116227qkm.35.1571954291525; 
 Thu, 24 Oct 2019 14:58:11 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com
 ([2804:14c:482:99:1a50:482f:3e7:284a])
 by smtp.gmail.com with ESMTPSA id 92sm64630qte.30.2019.10.24.14.58.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 14:58:10 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx53-qsb: Use DRM bindings for the Seiko 43WVF1G
 panel
Date: Thu, 24 Oct 2019 18:57:12 -0300
Message-Id: <20191024215712.1552-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_145813_275950_BD131BEA 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: s.hauer@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the parallel panel that is supported is the CLAA WVGA panel,
which is the one that comes with the i.MX51 Babbage board.

The default parallel panel that goes with the imx53-qsb board is
the Seiko 43WVF1G LCD, so switch to the Seiko one.

While at it convert to DRM bindings.

The parallel display still remains disabled as the default display
port is the TVE output.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx53-qsb-common.dtsi | 44 ++++++++++++++-----------
 1 file changed, 24 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/imx53-qsb-common.dtsi b/arch/arm/boot/dts/imx53-qsb-common.dtsi
index f00dda334976..9b4efcd82636 100644
--- a/arch/arm/boot/dts/imx53-qsb-common.dtsi
+++ b/arch/arm/boot/dts/imx53-qsb-common.dtsi
@@ -18,34 +18,28 @@
 
 	display0: disp0 {
 		compatible = "fsl,imx-parallel-display";
-		interface-pix-fmt = "rgb565";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_ipu_disp0>;
+
+		#address-cells = <1>;
+		#size-cells = <0>;
 		status = "disabled";
-		display-timings {
-			claawvga {
-				native-mode;
-				clock-frequency = <27000000>;
-				hactive = <800>;
-				vactive = <480>;
-				hback-porch = <40>;
-				hfront-porch = <60>;
-				vback-porch = <10>;
-				vfront-porch = <10>;
-				hsync-len = <20>;
-				vsync-len = <10>;
-				hsync-active = <0>;
-				vsync-active = <0>;
-				de-active = <1>;
-				pixelclk-active = <0>;
-			};
-		};
 
-		port {
+		port@0 {
+			reg = <0>;
+
 			display0_in: endpoint {
 				remote-endpoint = <&ipu_di0_disp0>;
 			};
 		};
+
+		port@1 {
+			reg = <1>;
+
+			display_out: endpoint {
+				remote-endpoint = <&panel_in>;
+			};
+		};
 	};
 
 	gpio-keys {
@@ -84,6 +78,16 @@
 		};
 	};
 
+	panel {
+		compatible = "sii,43wvf1g";
+
+		port {
+			panel_in: endpoint {
+				remote-endpoint = <&display_out>;
+			};
+		};
+	};
+
 	regulators {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
