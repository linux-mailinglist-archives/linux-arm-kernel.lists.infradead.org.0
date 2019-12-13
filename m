Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B7211E7C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rI9Ebr/yAWPjyLxVzUuYTftrNWikg+3wl/8DC5OY2j4=; b=W1Xv6UAUCC2OEW
	xwi/rH9CFtKJpIUZ12dbafi9JF6Lw6JAKTiWIcNrrMl3smtVyX6CFrDU3eZqxSLM16X2rCQ+bd9iS
	/cWcvoZUfp/3AEmci4ikc1ExDLopjTz7YcjrKFYcbYTzFQuUUEe9dM7dM5gEbT6o++eT/RjdvTYUb
	Nfyj05+mWHh6wjxmOCmmgb+MqLvPGmXvamI7WZI4ND2whX+4R71FldeBGrrOA2kqB2gMeVaoGcNqd
	k3Fujhz7nBwKxqVQDa0n2NvEpAr5vvNpKNgBRoOpBlk17zZqKE0zKd00UudYoz2P9hxHCQiJ/fJ6P
	KCXsmNOZEE9dkVcepjUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnUe-00069G-IN; Fri, 13 Dec 2019 16:08:40 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnSB-0003t8-8R
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:06:09 +0000
Received: by mail-yw1-xc41.google.com with SMTP id i126so30621ywe.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:06:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O86HMihHsLWT55NFgoxc5smTvSP4VUSjDe/evqkgoXg=;
 b=IuwpFKwMsYw66Cu048loiY0A80ILWUhf+l5CKYtcRZSL1WJaoJ/gVTn5FYw1Jg0VY/
 2esnX/D+NdQpReISaBCkAA9uIcPRpEHROalrEJzFLfRZmGZB0zu01+S2GoCMrfw6qWAz
 UTUK6Bmwq0ZCkJTq1EsmL4SDwDwofriMAYQuXwyPdg6ZY2mLNJg/dA46/5zfEQnNvbAC
 4hg85rLqXHWu27GssxirUhUrFR9fQSpPzYIcF3lcBVzIrv/CL63aQP0bmVw1k83zPFBj
 p1Zr6Z5ysOrRwsblXEklxnsc27EKSJLgUqyPfmaxxPg+W6Egs4G6Zpz7qgdMTXu3ruRv
 zobQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O86HMihHsLWT55NFgoxc5smTvSP4VUSjDe/evqkgoXg=;
 b=bmT+Pj4tniFbhlrrDm2/FBelLro78iMPK3AxA2u5ELiW5jp/j63QtPEq8EFCXPPbLa
 eQvfPZVC7B7tZnEcx+EZGMpvNkjZCUe1qeaDpVF9RnIMEcocvcynIlK2Woi0mM7j/IR+
 wFMpzlNhaSKhQP+WcouV39mQNoIprK3QkK6NK+/5Fosvej/D76FLbY1ZttjYkMuWKNfn
 fe4NPgOfBscc8t/sQWw68+MrLT4+7NB8Hn9Kohj4F7rrNXIKTB6zpHtoeqFfz5EDg/M3
 2WGRb/AQsuP3cadHbAcvLeKQF7KAxx1eYynodj0S5lv7MnqNGXy6qW1qhcS/4MkrXg+e
 FTsA==
X-Gm-Message-State: APjAAAUAKtKTmzzu7gEKreNA4YEWgheXkAvg5iLP9sySP8FICLlnbJBU
 G/or6c1Rn+13okATtFh6XUlou/yU
X-Google-Smtp-Source: APXvYqxbyg1OTSypua4WtIwv/+XQh3KgfGv8Xaawz3j12rcsjIrEvpA2kEwv3Wx7GzdIA++YJW54TA==
X-Received: by 2002:a81:c841:: with SMTP id k1mr1081859ywl.45.1576253165810;
 Fri, 13 Dec 2019 08:06:05 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id v38sm3984694ywh.63.2019.12.13.08.06.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:06:05 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 7/7] arm64: dts: imx8mm: Add PCIe support
Date: Fri, 13 Dec 2019 10:05:42 -0600
Message-Id: <20191213160542.15757-8-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191213160542.15757-1-aford173@gmail.com>
References: <20191213160542.15757-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080607_334157_F0CA1C7B 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
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

The PCIE controller on the i.MX8M Mini appears to be the same
as the i.MX8MQ but it is absent.

This patch uses the bindings from the i.MX8MQ and the clock
information from the NXP Linux release and marks it as disabled
so it can be configured and enabled on boards where needed.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
V2:  No Change

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 35 +++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index dbeee4059c55..33fa760a3f2e 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/clock/imx8mm-clock.h>
 #include <dt-bindings/power/imx8m-power.h>
+#include <dt-bindings/reset/imx8mq-reset.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -934,6 +935,40 @@
 			status = "disabled";
 		};
 
+		pcie0: pcie@33800000 {
+			compatible = "fsl,imx8mq-pcie";
+			reg = <0x33800000 0x400000>,
+			      <0x1ff00000 0x80000>;
+			reg-names = "dbi", "config";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			bus-range = <0x00 0xff>;
+			ranges = <0x81000000 0 0x00000000 0x1ff80000 0 0x00010000 /* downstream I/O 64KB */
+				  0x82000000 0 0x18000000 0x18000000 0 0x07f00000>; /* non-prefetchable memory */
+			num-lanes = <1>;
+			num-viewport = <4>;
+			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi";
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 0x7>;
+			interrupt-map = <0 0 0 1 &gic GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 2 &gic GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 3 &gic GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+					<0 0 0 4 &gic GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			fsl,max-link-speed = <2>;
+			power-domains = <&pgc_pcie>;
+			resets = <&src IMX8MQ_RESET_PCIEPHY>,
+				 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_EN>,
+				 <&src IMX8MQ_RESET_PCIE_CTRL_APPS_TURNOFF>;
+			reset-names = "pciephy", "apps", "turnoff";
+			clocks = <&clk IMX8MM_CLK_PCIE1_ROOT>,
+				 <&clk IMX8MM_CLK_PCIE1_AUX>,
+				 <&clk IMX8MM_CLK_PCIE1_PHY>;
+			clock-names = "pcie", "pcie_bus", "pcie_phy";
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@38800000 {
 			compatible = "arm,gic-v3";
 			reg = <0x38800000 0x10000>, /* GIC Dist */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
