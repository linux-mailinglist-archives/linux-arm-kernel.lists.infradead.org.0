Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A50E8BBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 16:24:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gyOicQN2MpYthOdH13BtIj7ngfCLS/ZymvwKaiqHW68=; b=Ngig/dYKz2Kv9TL+aV+QPg0yFh
	pLD403wdzgrC53pDTqfT6oOKoPHXqjVb0qkr4iDlJSFQ9QGtI9fSiSRwBdll/5viUoQrEAqSUyfbP
	sKwvjWAJ4XtBuCrm9W1kd0yCGpsdRaM+mv0fB1xbeE60pNJP7swvQSfXezVVuXN25c8trTaEt3vrz
	0aODi94ZI9m+5UwidEaAkBOF2TehGNCsMjBFID0XrpCuh/qtdje18CON6vAj8SH1MU9xAyvXlhWSa
	tC/Cq/09O2aSG6pcUDpZ1TjvF6K6kt9JcRbLftnp4ywakIssJND1SlxaMRzBJ9fUr5DI7CABl1xE0
	z2ADrXaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPTLs-0000Jb-8n; Tue, 29 Oct 2019 15:24:08 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPTLN-0008VM-1i
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 15:23:38 +0000
Received: by mail-qt1-x842.google.com with SMTP id t26so10710994qtr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 08:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nqsNsDAlfaHTVi7gXs+J0cgWQCujlySbWnmTJDgLkIs=;
 b=b5azLA3yOONtfynG/c//NFyxgo9+9SOlQlG2vWRsZdlg9L4JdXCM1Kg9Ps1YJ2tfNE
 5+45NLlHy6rOitMhxR4OElm5zR3KXUF5HjPtCpKH6C81xwINgt1eS9ALQk+axLkjINcy
 TFfU/rkRFWsdKmUjlFvN8aUDS9LV7I3m6UBLnx5aZvNYWnyE2hYoDHUvx5wFyKv4tii7
 CwcQQ88MXB4rGoOAEUf3kq2v88+tAM2GLRm3gkaPRSb/aqbgQmQvn747vuqvRBRn6kwV
 TJFhxPLV3A/JvdjOFaOvMnftitw2IZSj+PQIO0b8DZq9B9vU8phEAW2PtnUpcuJvoa4Z
 Bmsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nqsNsDAlfaHTVi7gXs+J0cgWQCujlySbWnmTJDgLkIs=;
 b=XmCpFjCPbQyNOk0Ok1bTj96VuswhXgwX6vQLw4HkItmhDXqi082pXGOXeoEHq3yUCC
 i66JEpxV6pBglCFjx4xNRXfFs6+THCY9n0YKnR4YDe5fSbkbrAzNz34xJA+UdUmtpLtp
 22diVs0xg1N+jncDmfSZWH9jPgLi8bGWtbXQFFg5G1HF7/YejFAlvJP86+lcoLl46YdZ
 rY3w7ePmwiDFMajHK7eTHMtLaNScYL27LgbIDw46V3ZaEqF59D91+FJhVW4sJ4gJAkoU
 czTVwL5nHkRcQ9ixpHNgyHTfL3dc3pTYnZBLoUwPcc+aoRk3RsVJ/462wcJf3jqCE3Sb
 GlBQ==
X-Gm-Message-State: APjAAAWnddgF5MAhlojHZF4ZM7N0zbhU6C1744Fl4THeFniZ5YCG3/Ik
 Pokyv62K+Lui6tTX8lLcPug=
X-Google-Smtp-Source: APXvYqxlCWHWAkQ8FSdB4oHT1oPbZVk62jv5jz5e/+W0xN6Bia2wKc3uIpas9sy2VbrLG3gv2yD87Q==
X-Received: by 2002:ac8:75c2:: with SMTP id z2mr4673629qtq.216.1572362615894; 
 Tue, 29 Oct 2019 08:23:35 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id s75sm8775195qke.14.2019.10.29.08.23.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 08:23:35 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH v2 2/2] ARM: dts: imx7ulp-com: Add initial support for i.MX7UP
 COM board
Date: Tue, 29 Oct 2019 12:23:37 -0300
Message-Id: <20191029152337.23827-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029152337.23827-1-festevam@gmail.com>
References: <20191029152337.23827-1-festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_082337_091955_57E226B0 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-imx@nxp.com, kernel@pengutronix.de
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
