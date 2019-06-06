Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB1036F78
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XC9t+sa9cU5U0p6tSVqr/VoqxYlaUhWAQPfgiSsYJUs=; b=ea8
	QEBILb1P/ZP1vBprUg/yHHvPJVktUtQ4w+Wy3nukNZUNC4CUv+UAkke0fIf5xBEJ6H4ORG/0NHjIy
	SJSJm9MNa/WYNMkrH4vNtf2b8O152XJqqyIP/bskspNmvG5C6kt1XW+RarQ4JONBGe6ITDtfFalBG
	wnF6ZptnwPpYD0iaLTWvYVH5BUSfxWXcXhFjw6P+uLEjf31SIZaX8viasdsQ7Qc3PxwSGx2DlV2k8
	hZosKmZ3/lRf8BXjBeJO/+PiRM+j5Je3VuuMDlkwFfhbTKSPy66BFDwQqb9Jkr0N/vC02eEO/wgYG
	RZW8a6CGIhLxk8GkVkaPN2qtMuZ6Lyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoLm-0005pH-T4; Thu, 06 Jun 2019 09:06:22 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYoLf-0005om-LD
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:06:17 +0000
Received: by mail-wm1-x342.google.com with SMTP id f10so1587024wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Jun 2019 02:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KMQQNwJBTgO7c7d14ttHpXY/GIsLIp6HS6MARbf/Q9A=;
 b=gwzUTKuOOxDM5N4gR9q7gZ8bOecepQqD08QgZ0yVijx0Ju/rYVGf7KjDftPfukMR7t
 QFUBNjMFtH2/QoRb5hYPRakga4cmgfl3W+/4mNT7vNH2BtAYAlSZgpzK3JW9dxM0GT9o
 +g+kPZXyHE9ciXaUcbD1hxywy58F7xskKtQ+sJS6OR/DWBrDi5QgvcqiZsXbWVgYAut/
 mAIeswCbfTqvKMbSlJJ7hk/sjgaOLtQh4oGpZENf/+2jT7Dino9ekpD8QVLzOY7Ltx7u
 Q8i8xAh2UaxtRLCMBnkUqNLiGG9LsB8FzY294nXm4rhtB18/24bMYE+Di1iyoe5FkSFZ
 StlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KMQQNwJBTgO7c7d14ttHpXY/GIsLIp6HS6MARbf/Q9A=;
 b=baHXpAg8k4WhOOFbT8TxdUoLCn8bd5o4WhVddCqiUyy0oz9/2dBi056hXqy+SDxhPg
 STDje0YLzuXYCLuWD2hl3JJdjAchcolfKBvkwn7TswQBYISCWUSsJ/tZ/QMALiZkzCpL
 omF3/BCsgQ1qdcYWHtuKr/WR5w0spBAN6sDB023Zd7EE2lnhYT92RfhuYfHOZnO20pvy
 yfl2uCmxh29gSjlQxayXDyKRF2ng8JXTgI8xLmRCp8an+L6DEvJoepUURNYC1u0zXtHc
 VkpVzKFmbx3YxDFzjUSTk5ieDTpUnpK9NUfkfwz4zckTvg6ugpTXL1eXQRVK228w7q6f
 8nUw==
X-Gm-Message-State: APjAAAUVfQ7TCy/79fy34CP8lBQh9sA+0nogARU3odr0G0wNVbY1ZyZg
 JxD8IJXORImNWV7nmE3fh+U=
X-Google-Smtp-Source: APXvYqyjBaJBEW6wEaIDQT6j7Ydz173felu88CUjXOpFlw3YjbC8P7qVoxTgBEZeOFdEoQ2P/QTknA==
X-Received: by 2002:a1c:f001:: with SMTP id a1mr17028447wmb.130.1559811973647; 
 Thu, 06 Jun 2019 02:06:13 -0700 (PDT)
Received: from localhost ([194.105.145.90])
 by smtp.gmail.com with ESMTPSA id k10sm1026662wmj.37.2019.06.06.02.06.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 02:06:13 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/1] ARM: dts: imx6ull-colibri: enable UHS-I for USDHC1
Date: Thu,  6 Jun 2019 12:06:12 +0300
Message-Id: <20190606090612.16685-1-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_020615_717341_9A038697 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, marcel.ziswiler@toradex.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, stefan@agner.ch, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, marcel@ziswiler.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Allows to use the SD interface at a higher speed mode if the card
supports it. For this the signaling voltage is switched from 3.3V to
1.8V under the usdhc1's drivers control.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---
 arch/arm/boot/dts/imx6ul.dtsi                  |  4 ++++
 arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 11 +++++++++--
 arch/arm/boot/dts/imx6ull-colibri.dtsi         |  6 ++++++
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index fc388b84bf22..91a0ced44e27 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -857,6 +857,8 @@
 					 <&clks IMX6UL_CLK_USDHC1>,
 					 <&clks IMX6UL_CLK_USDHC1>;
 				clock-names = "ipg", "ahb", "per";
+				fsl,tuning-step= <2>;
+				fsl,tuning-start-tap = <20>;
 				bus-width = <4>;
 				status = "disabled";
 			};
@@ -870,6 +872,8 @@
 					 <&clks IMX6UL_CLK_USDHC2>;
 				clock-names = "ipg", "ahb", "per";
 				bus-width = <4>;
+				fsl,tuning-step= <2>;
+				fsl,tuning-start-tap = <20>;
 				status = "disabled";
 			};
 
diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
index 006690ea98c0..7dc7770cf52c 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
@@ -145,13 +145,20 @@
 };
 
 &usdhc1 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "state_100mhz", "state_200mhz", "sleep";
 	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_snvs_usdhc1_cd>;
-	no-1-8-v;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_snvs_usdhc1_cd>;
+	pinctrl-2 = <&pinctrl_usdhc1_100mhz &pinctrl_snvs_usdhc1_cd>;
+	pinctrl-3 = <&pinctrl_usdhc1 &pinctrl_snvs_usdhc1_sleep_cd>;
 	cd-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	wakeup-source;
 	keep-power-in-suspend;
 	vmmc-supply = <&reg_3v3>;
+	vqmmc-supply = <&reg_sd1_vmmc>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index 9ad1da159768..d56728f03c35 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -545,6 +545,12 @@
 		>;
 	};
 
+	pinctrl_snvs_usdhc1_sleep_cd: snvs-usdhc1-cd-grp-slp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x0
+		>;
+	};
+
 	pinctrl_snvs_wifi_pdn: snvs-wifi-pdn-grp {
 		fsl,pins = <
 			MX6ULL_PAD_BOOT_MODE1__GPIO5_IO11	0x14
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
