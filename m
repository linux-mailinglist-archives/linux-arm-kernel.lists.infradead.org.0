Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E881139D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:21:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccmGIf0vaUEJzcP2SPmvBSP/qgp/iMg0vkVkWj1JcQg=; b=meMzmgE6XLZWJr
	GspjPzoPNWnvFsYULwj+0F4il5eIgxdtXBIHMj76xPQsTMxM/5n4BuEl0QikUKrqfJeHuAPmJD4mO
	DQkimBdCn4415QUTE2R/O69beC3wxr4oK7+XC03U8bOmFkVvu35D5aU/wQUa3LZsZGkA1XUrIMVhg
	98wSdLuhH5+Yhl8QT63UO4yff9CTaMx6lX/ygPJxY58yO93Z9JFY6bn059h1PU6P2FIflOtFulS+r
	2bx6IB6wcCEjpb+xAJglYRU67OHs8vwiGrpT/vXpLI+fE1AHXCjOtkxMb8KWhP6vVVpBR/A9lRJmH
	JmVAD4vAibC+3MVJoGzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icglq-00022i-5R; Thu, 05 Dec 2019 02:21:34 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icgkC-00088I-84
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:19:53 +0000
Received: by mail-yb1-xb44.google.com with SMTP id d95so865344ybi.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o8rdL81CA1/QSUatk5QZuPPaOIlwBprO0GQX2EhaRjM=;
 b=W1C+dYywW8EEg+KrCR9sD3uflofMaz0LkxIaYVdl/6TGvx8BVp2HSq7vgphATgN2BI
 6XVVI9gBWLX8BXhgqJpIOEOnWlbOzToicgYJaS/tBb+dIxQ1BjfPhhjR5gxnTz7Uat/o
 olvMTEB5EwL45/extiYTkrbyuMactGPuACcJrxIWL4klqMk8XGZCnS192UxkZBdXT3Y0
 H7PaFjvvmjAs3+JJEbpefhzNYgO7SI7WRWgJa/jFqa9t7praVOIsTiPhgAQzyQGxX/im
 3p2rBbJFcte9jSQblW7252rhLust313ljInBl79Yz6S+TBhx6Z6itNRymzOs0EbLzHvI
 OXcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o8rdL81CA1/QSUatk5QZuPPaOIlwBprO0GQX2EhaRjM=;
 b=Q6Skx+wTSdKVTjllp9fkPG/FSQhHRhcQ1wy+RsgYhydmg0Qj8cry6weRPH3195h/4P
 wDoGhwTLFzIKW/w+0MTFuG32eDC/Fm5rTWcZkoF4kx65LV6sZzICcLBhaw85eEoVNFZ9
 n/6XfwE+wQiu+YlEYdsc8QkSg3rH5NMI6Vrb07oupTg8tsgInE/ZYtPaPQV/2eg7wdR6
 Dv/iMHDBpd69ZhuMcHM3xucXfEBg5jx8AZ9Wonx4FtFMXzTc1AgIMOKURpMadIduGgS0
 Tqs6oFOPe/CBvf9juCGI1wDZCTl+e2CSZUVrsqekfWYaFgqMdUohYZDhAXJKoIpnoCrf
 gJYA==
X-Gm-Message-State: APjAAAVD3qhVk8KECfotonnlmX0IBJW4x4vnmBPX+f+qWaZo5+kiUzLy
 dcDsFy+yeawItC82viK4dnRUFBS4
X-Google-Smtp-Source: APXvYqwAD9YGInc+qgp3awEl6WpVlrReB1uKRLWOTxVKUwY1TL0YVhztXM3OkuWK1013hQExDq0WRQ==
X-Received: by 2002:a25:d5:: with SMTP id 204mr4502582yba.165.1575512390970;
 Wed, 04 Dec 2019 18:19:50 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id l6sm4188449ywa.39.2019.12.04.18.19.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 18:19:50 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/7] arm64: dts: imx8mm: add GPC power domains
Date: Wed,  4 Dec 2019 20:19:21 -0600
Message-Id: <20191205021924.25188-6-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191205021924.25188-1-aford173@gmail.com>
References: <20191205021924.25188-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_181952_377896_975B80DB 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
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

There is a power domain controller on the i.XM8M Mini used for
handling interrupts and controlling certain peripherals like
USB OTG and PCIe, which are currently unavailable.

This patch enables support the controller itself to the help
facilitate enabling additional peripherals.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 82 ++++++++++++++++++++++-
 1 file changed, 81 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 23c8fad7932b..d05c5b617a4d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/imx8mm-clock.h>
+#include <dt-bindings/power/imx8m-power.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -13,7 +14,7 @@
 
 / {
 	compatible = "fsl,imx8mm";
-	interrupt-parent = <&gic>;
+	interrupt-parent = <&gpc>;
 	#address-cells = <2>;
 	#size-cells = <2>;
 
@@ -495,6 +496,85 @@
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mm-gpc";
+				reg = <0x303a0000 0x10000>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-controller;
+				#interrupt-cells = <3>;
+
+				pgc {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					pgc_mipi: power-domain@0 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_MIPI>;
+					};
+
+					pgc_pcie: power-domain@1 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_PCIE>;
+					};
+
+					pgc_otg1: power-domain@2 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_USB_OTG1>;
+					};
+
+					pgc_otg2: power-domain@3 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_USB_OTG2>;
+					};
+
+					pgc_ddr1: power-domain@4 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_DDR1>;
+					};
+
+					pgc_gpu2d: power-domain@5 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_GPU2D>;
+					};
+
+					pgc_gpu: power-domain@6 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_GPU>;
+					};
+
+					pgc_vpu: power-domain@7 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_VPU>;
+					};
+
+					pgc_gpu3d: power-domain@8 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_GPU3D>;
+					};
+
+					pgc_disp: power-domain@9 {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_DOMAIN_DISP>;
+					};
+
+					pgc_vpu_g1: power-domain@a {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_VPU_G1>;
+					};
+
+					pgc_vpu_g2: power-domain@b {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_VPU_G2>;
+					};
+
+					pgc_vpu_h1: power-domain@c {
+						#power-domain-cells = <0>;
+						reg = <IMX8MM_POWER_VPU_H1>;
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
