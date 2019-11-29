Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B6E10DBD6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 00:42:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eVGBH3LNuNuQjp+SPFxLpikqUq7PShKJsgeVlOYseY=; b=CGx4c3GGJvZeEb
	gOaiLlHQfZerdKHZl/RzPEEV6V+doe3uSNFKIjvSuHc1ONKFIBACqZqL67L2jdVu4oT2kX/79NuOs
	Tazk8Zredu+bS9nqNiy9HMjwrEV93Yl4G363RmjwRogbBh+bZK+U8FeNCHOVZGdTSNSZ2TmQ5Gj2z
	9ttcgQj6TUkrBBXab2CTjA1HHOjaLhrDbAzUhw+dYWSnSXt2M0slUJQ0yFRvLj0wnPvPLJygH8K5v
	j6Ipy2FRpMQbj3Vsx/k/cvN1ycH8tTSS1xEENxpVXJt4QUW7SiLpLeTce22WhKcmioj0Hln9q2afx
	1j0bmwvNIqdd7kko3J3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaptb-0007Sn-16; Fri, 29 Nov 2019 23:41:55 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iapt5-0007Fx-Nm
 for linux-arm-kernel@lists.infradead.org; Fri, 29 Nov 2019 23:41:25 +0000
Received: by mail-yb1-xb44.google.com with SMTP id v15so12104595ybp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 Nov 2019 15:41:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8rKiQHSwuUCF9AELRHNdLMuxf8z6xR1bB61s0tnxzNE=;
 b=kDfSvRU3IToCKYqz4BXDquOBvvC9Zy46H4g+899B8ZSEpHA3hMqRXTse+L/RAMQdHs
 bmQFjBLR0y596ZukQgj2Wc5ogj5Hv6DJuLb9qmfvbPuQIuwMnATeIHww7BXS1IB23d7u
 7l82E71a+GM7IqRawG8KJdCvXVDAU9AyMiEZ0lM7Pjtq25E+6DTwxVtqo1mGhR7RACyn
 cgmzki2m8XR8GgiOIPPIbWdlqzAUy/p10XuivFsfN5iwaEhI8JmA/tH7D0+H6Z+K8RTi
 HsweW5NOqWWyoX56cZj3t2Ehllx3nqCipJDa0FeM1db6K5h53KNMytsNJy+G0VtEGJAC
 nFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8rKiQHSwuUCF9AELRHNdLMuxf8z6xR1bB61s0tnxzNE=;
 b=kdK8WzIMyT1wzXQstQ4haJ/pCfVaf1VT2Ct8SFMFAJ+U6NgjbCYwh2Z4oPvqRmeWNG
 +r6B8FGQ3ks7qzWPL/dfEMHncG37K8+mg/nU7ndOjdZeUO2t8O1FSP7gj4OZyaKwXFJ0
 K2YvBtwnsLQhvt8qw7yR26xhKqUMexwtTHTIDokXVlKt5LrOc0AHuelyt569WTJasps+
 aEpKelTAXQQyilbplzcqb+4mH7xyDoElB4gJa2dG9Bld4/goOsI/X6HuLr5Vwk6EfKil
 T+ZfvdA/JgTDJVo5Lrk59xkOfN7tCZ8zUJZJvUY5oViD+JJRZpJUfX4tqpmW2oboMzL1
 lZlA==
X-Gm-Message-State: APjAAAWWF2BQ8qxNSVflx+K9KRQJe6S6iW74eReZNq+Rg0+F+CPrVtAn
 IFfjHOImV+ZKFLan0eISGR/xQRDEeOw=
X-Google-Smtp-Source: APXvYqwr/LIgU0jfzryCJVUcaDeplSmBTLSebhAPSCfhBOYQ8LJZyb6eDQWVMKL5MWICobsnwFY5rA==
X-Received: by 2002:a25:245:: with SMTP id 66mr8022427ybc.104.1575070880925;
 Fri, 29 Nov 2019 15:41:20 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id q131sm10636436ywh.22.2019.11.29.15.41.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Nov 2019 15:41:20 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: Add GPC Support
Date: Fri, 29 Nov 2019 17:41:08 -0600
Message-Id: <20191129234108.12732-2-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191129234108.12732-1-aford173@gmail.com>
References: <20191129234108.12732-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_154123_797883_A602ED10 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The General Power Controller (GPC) used on the i.MX8MQ is the
same as what is used on the i.MX8M Mini.

This patch adds the GPC support to the device tree for the SoC.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 6edbdfe2d0d7..860cddec9632 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/imx8mm-clock.h>
+#include <dt-bindings/power/imx8mq-power.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -498,6 +499,90 @@
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mm-gpc";
+				reg = <0x303a0000 0x10000>;
+				interrupt-parent = <&gic>;
+				interrupt-controller;
+				#interrupt-cells = <3>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pgc_mipi: power-domain@0 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_MIPI>;
+					};
+
+					/*
+					 * As per comment in ATF source code:
+					 *
+					 * PCIE1 and PCIE2 share the
+					 * same reset signal, if we
+					 * power down PCIE2, PCIE1
+					 * will be held in reset too.
+					 *
+					 * So instead of creating two
+					 * separate power domains for
+					 * PCIE1 and PCIE2 we create a
+					 * link between both and use
+					 * it as a shared PCIE power
+					 * domain.
+					 */
+					pgc_pcie: power-domain@1 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_PCIE1>;
+						power-domains = <&pgc_pcie2>;
+					};
+
+					pgc_otg1: power-domain@2 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_USB_OTG1>;
+					};
+
+					pgc_otg2: power-domain@3 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_USB_OTG2>;
+					};
+
+					pgc_ddr1: power-domain@4 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_DDR1>;
+					};
+
+					pgc_gpu: power-domain@5 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_GPU>;
+					};
+
+					pgc_vpu: power-domain@6 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_VPU>;
+					};
+
+					pgc_disp: power-domain@7 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_DISP>;
+					};
+
+					pgc_mipi_csi1: power-domain@8 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_MIPI_CSI1>;
+					};
+
+					pgc_mipi_csi2: power-domain@9 {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_MIPI_CSI2>;
+					};
+
+					pgc_pcie2: power-domain@a {
+						#power-domain-cells = <0>;
+						reg = <IMX8M_POWER_DOMAIN_PCIE2>;
+					};
+				};
+			};
 		};
 
 		aips2: bus@30400000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
