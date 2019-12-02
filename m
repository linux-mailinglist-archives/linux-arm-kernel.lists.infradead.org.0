Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C2610EA9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:13:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gyOicQN2MpYthOdH13BtIj7ngfCLS/ZymvwKaiqHW68=; b=FcT+Pfv3QT0y8WjLMcF8bHxLA2
	yG6eIg2aZYJ7gnQyh6wAnLmMiklEZ7S0IuuAVC+yN+WVVdrLfODA6k3gy3v3U2kpoajFYa13iWIvH
	wZQwM8bnbKvYAWURwxfh5wTAYajIbkCx31S3WezO+kBJ9iE6RXvGoSpjuktFbqjz9eVMr+V/0aZx3
	sNApOenV8yDhwgwSe0MC/CLd5VMFls5PHUvTqRgJ7/TEgbkWqog5IwU6FzI6oMScIFrnX3Z4lNW/0
	KAt/gw2aVtofbYqohL4kJtuYyENuxsyJ29B6k1tXoYPI1Qizv7rlVds0RGJIFwXSThBvQ9tRO4c4h
	+os2Wpfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblW1-0000wN-J3; Mon, 02 Dec 2019 13:13:25 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblVp-0000lE-74
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:13:14 +0000
Received: by mail-qk1-x743.google.com with SMTP id x1so17683054qkl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 05:13:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nqsNsDAlfaHTVi7gXs+J0cgWQCujlySbWnmTJDgLkIs=;
 b=E21AyAUx4D2620GlCE76wSOzVg3ZpqtoxK8IiLbTjss55nv921Dg2mmHm5SMmCxhRD
 y9T8qK31+OnQr3MnigQOD6aQjGC0ZfnADAFJ7nlS+8thnATuirGl3yErLZTNikOdDa/1
 3Dhe4FzdNRvi/kYxJ3SHzD5SAsukcXxKk5Y55LZhF1BivNyPXzWFaanTzFkoKEBlKmGV
 wftzAKLg3kU6U7ZDhOFEWdi9g7au/WiXlxwQgr8IJV1o2Yl+pu2RzvN5aOzrualE0yOV
 cYbBNqzVo2pGqJze2iSLdwoHS5lSAoIJhw1JGcDkjIu8WwIp5OTI8FJOqtLkRr2Cr/yC
 zzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nqsNsDAlfaHTVi7gXs+J0cgWQCujlySbWnmTJDgLkIs=;
 b=KG0ekMjCRpA+ZLArLrjZtPex4hr/z/eKOEzuMtWlZ9QM1Q8FGy1Zqq+Kf9mnnL4uAp
 x182rTZhId+YXxmiCHuqSJKufITuuiixppEnx64HGpcuLGhYTXbpOTqDfJfvrU9MXNNR
 peH4x6vBzRrKW/GbuQ/LVdq9UglOvuscIfO5XIJqR6E2GRZJ7+08fp70THV1ytt4cY/7
 vlq1bIAt5/UpvFvrAyw3+VrkzUp7LkGcIzTGPlJL+2g/FgV5rmVzC1q5D2cptKzJ1O2+
 PVjM4ojgF74WVyf5ldJtqAjUZeA9S5vwd6wI6dnmV6tvulk5uOyyas0IFA/3w+P8V2bi
 9tPg==
X-Gm-Message-State: APjAAAVhQiwgYeDw1iUQY38UiEtJgUFixFe5Qrqo0Tce04oR+8nsigvH
 dyh/Zl9glFrOcjnNUxUfH4w=
X-Google-Smtp-Source: APXvYqw1kNfkatheWD7IeaL5TwrXuu/ydS7h0Pl3FNZAeC7yVzTJakuzxXacLbXBTA4476kKSRr2vw==
X-Received: by 2002:a05:620a:12e7:: with SMTP id
 f7mr31643556qkl.322.1575292386641; 
 Mon, 02 Dec 2019 05:13:06 -0800 (PST)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id x8sm14170893qki.60.2019.12.02.05.13.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 05:13:05 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH RESEND v2 2/2] ARM: dts: imx7ulp-com: Add initial support for
 i.MX7UP COM board
Date: Mon,  2 Dec 2019 10:13:18 -0300
Message-Id: <20191202131318.11404-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191202131318.11404-1-festevam@gmail.com>
References: <20191202131318.11404-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_051313_265678_CF84BFB8 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Embedded Artists COM board is based on NXP i.MX7ULP.

It has a BD70528 PMIC from Rohm with discrete DCDC powering option and
improved current observability (compared to the existing NXP i.MX7ULP EVK).

Add the initial support for the board.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Fix W=1 dtc warning:
arch/arm/boot/dts/imx7ulp-com.dts:18.9-21.4: Warning (unit_address_vs_reg): /memory: node has a reg or ranges property, but no unit name

 arch/arm/boot/dts/Makefile        |  1 +
 arch/arm/boot/dts/imx7ulp-com.dts | 79 +++++++++++++++++++++++++++++++
 2 files changed, 80 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx7ulp-com.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e352598c05ae..07949ad31a6b 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -611,6 +611,7 @@ dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7s-mba7.dtb \
 	imx7s-warp.dtb
 dtb-$(CONFIG_SOC_IMX7ULP) += \
+	imx7ulp-com.dtb \
 	imx7ulp-evk.dtb
 dtb-$(CONFIG_SOC_LS1021A) += \
 	ls1021a-moxa-uc-8410a.dtb \
diff --git a/arch/arm/boot/dts/imx7ulp-com.dts b/arch/arm/boot/dts/imx7ulp-com.dts
new file mode 100644
index 000000000000..c0ff354730ba
--- /dev/null
+++ b/arch/arm/boot/dts/imx7ulp-com.dts
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright 2019 NXP
+
+/dts-v1/;
+
+#include "imx7ulp.dtsi"
+#include <dt-bindings/input/input.h>
+
+/ {
+	model = "Embedded Artists i.MX7ULP COM";
+	compatible = "ea,imx7ulp-com", "fsl,imx7ulp";
+
+	chosen {
+		stdout-path = &lpuart4;
+	};
+
+	memory@60000000 {
+		device_type = "memory";
+		reg = <0x60000000 0x4000000>;
+	};
+};
+
+&lpuart4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart4>;
+	status = "okay";
+};
+
+&usbotg1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg1_id>;
+	srp-disable;
+	hnp-disable;
+	adp-disable;
+	status = "okay";
+};
+
+&usdhc0 {
+	assigned-clocks = <&pcc2 IMX7ULP_CLK_USDHC0>;
+	assigned-clock-parents = <&scg1 IMX7ULP_CLK_APLL_PFD1>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc0>;
+	non-removable;
+	bus-width = <8>;
+	no-1-8-v;
+	status = "okay";
+};
+
+&iomuxc1 {
+	pinctrl_lpuart4: lpuart4grp {
+		fsl,pins = <
+			IMX7ULP_PAD_PTC3__LPUART4_RX	0x3
+			IMX7ULP_PAD_PTC2__LPUART4_TX	0x3
+		>;
+	};
+
+	pinctrl_usbotg1_id: otg1idgrp {
+		fsl,pins = <
+			IMX7ULP_PAD_PTC13__USB0_ID	0x10003
+		>;
+	};
+
+	pinctrl_usdhc0: usdhc0grp {
+		fsl,pins = <
+			IMX7ULP_PAD_PTD1__SDHC0_CMD	0x43
+			IMX7ULP_PAD_PTD2__SDHC0_CLK	0x10042
+			IMX7ULP_PAD_PTD3__SDHC0_D7	0x43
+			IMX7ULP_PAD_PTD4__SDHC0_D6	0x43
+			IMX7ULP_PAD_PTD5__SDHC0_D5	0x43
+			IMX7ULP_PAD_PTD6__SDHC0_D4	0x43
+			IMX7ULP_PAD_PTD7__SDHC0_D3	0x43
+			IMX7ULP_PAD_PTD8__SDHC0_D2	0x43
+			IMX7ULP_PAD_PTD9__SDHC0_D1	0x43
+			IMX7ULP_PAD_PTD10__SDHC0_D0	0x43
+			IMX7ULP_PAD_PTD11__SDHC0_DQS	0x42
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
