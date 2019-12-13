Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F3311E7C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:08:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WywL+U36Wez1gLzv7Cp51sy1uJ1LKTamIJKrH1j87Dw=; b=WGVlUGNf+i32C2
	rmcJoZuBM8wVFnEK+9vBCXQyJdzjZcAmWAcRULQN3I8tFx3iXm2L5moLr95Q1Yie+uNsVlFVEnMd2
	NYa87hRB2D5tFHxq+tkUFXGTp1HIzde15EH2bdGteV8g2JgPhfjrVe9z6B9sYPjiXUjUuWpX0D+RU
	n0buDAMkhEgNeMCaVpWjC59NxCGbpXtS+BD7xWMobxYvD5/AOYGxvMHoUPAWhibvzyWU+BakUtQn6
	UuIk5LB8EuHVMY2S/Uuq841i7EyudinDwzTqRl7ttfTczqWYWZgMenERpE5RmG/+OkjkHPye6P0cS
	zWHXz8bhvmB1NWlX4iAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnU7-0005dp-Jy; Fri, 13 Dec 2019 16:08:07 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnS6-0003pC-Ke
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:06:04 +0000
Received: by mail-yw1-xc43.google.com with SMTP id t141so19036ywc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TUBn4hPQtTP6/1UnracKB+PKuO3QMFkkquLizrjA/XM=;
 b=jplSiqf47y6ZYGeFyNC9sZb3biXn2gVEJv+PNanVJiJfXKyGzSYXXYRfL7jBHBCM4n
 2Aqo6V6mUEzEMOcUjxb0pk24ulPgKMf5pdFFfE33y2TtBqr0kM4nGeY4zTvSUSoDfmMD
 J70Deq811qD/hht1L21MoaE5Q8SLoPsULIueKFkEh3jOpz1mPB+ezRVkdNymmWeI4bif
 5wCpDZO0aFl0eVcGNVignY7201cs3i3SsddVZNdZNugBdC9+b/5pJoVjKTbWwPszg0oe
 sT2qDSAfMwE9kGXBLhDfwSHGj+ZtMk3QT4BSpakH0JQUlZmPdH3tJWAhk1oo5Ab6zMaj
 Qujg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TUBn4hPQtTP6/1UnracKB+PKuO3QMFkkquLizrjA/XM=;
 b=HrNwGCLSL4T4Zka4cnbJpd0k0aqyBXhzOTBmb8hSbEDK3f0Wo+kYUR+d1BNCSRcE5M
 dMPMltTkFob+i769+33jzeExfmfOc/mtKfeoa6D5ff6+dofmhbFk7uPi/T/v61SWf1+6
 6tWi0MKilZE4oe2+rLft1GoxpxuxxGXziXpWgKQyC0bwtZK2a8JlTB+b8Bpx0tq/gj6o
 wG5Xde0MplapZwC0OT0ol+K81X1+AafAN6ARIy3UD1w2BBmKCPBkFRNbLoWyxMEzxU1w
 uentMpAWzNFGkI9HjdBIeqkkopiS/+2vyGTG/XhKezAjJaQHtHm9u1UKsfmhHPZFb5oV
 qRPQ==
X-Gm-Message-State: APjAAAWHcalT80cEXJCDi5GPiddz60PFqDphRPmIRhs04uLG4hIUVm/3
 XWkwcSj3/syNjc3eEmz/y636GqZH
X-Google-Smtp-Source: APXvYqzObFt2i3P9CQgT7UV8LybxmIu+0nBxBacvga9qhhrksInhZa+8qHAwAJAlCO1naM/6MDEqMQ==
X-Received: by 2002:a81:b548:: with SMTP id c8mr8655777ywk.465.1576253161238; 
 Fri, 13 Dec 2019 08:06:01 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v38sm3984694ywh.63.2019.12.13.08.05.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:06:00 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 5/7] arm64: dts: imx8mm: add GPC power domains
Date: Fri, 13 Dec 2019 10:05:40 -0600
Message-Id: <20191213160542.15757-6-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213160542.15757-1-aford173@gmail.com>
References: <20191213160542.15757-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080602_842201_6F1E8301 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, Fabio Estevam <festevam@gmail.com>, ping.bai@nxp.com,
 Adam Ford <aford173@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
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
V2:  Removed references making GPC an interrupt controller.

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 78 +++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 23c8fad7932b..f38bed94bce2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/imx8mm-clock.h>
+#include <dt-bindings/power/imx8m-power.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -495,6 +496,83 @@
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 				#reset-cells = <1>;
 			};
+
+			gpc: gpc@303a0000 {
+				compatible = "fsl,imx8mm-gpc";
+				reg = <0x303a0000 0x10000>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
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
