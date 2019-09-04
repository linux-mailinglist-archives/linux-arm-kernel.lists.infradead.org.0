Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E3DA80DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VMQmABy0figJoUS82ttfBdsO6Z+Hh1bLZLyLHRyWWh4=; b=fM2
	jbApNZwPU9sZKYaAlqwq2A9VhkGNoDNwYX0zIna92J4TX+N4I6lwnCv9XGxIUdjhTIyfF1f8crhxL
	jQMsVt8yt2JVGraSAD+awBFNf1QG+VXJQrbzOUokDjabkOoA61/JXpku6VN6rAmd0lYi9mD2QQDaH
	EeHGrRtKV59UUtkExMGJmrVIRaIjit4eeVKo2Jry3wWR6njkCdd3oSJDv9R+fSCzmpL4uH1j8+UmX
	fr7FyDgzC4iNUNUvBG08+mlmeiejW/Z4VDHXgYvpTVdIrhfV5PhujrWSveZkXxtit4/Btjzf0uaD0
	NCqhfAADTZs7EvZPVuYYJkwLsRZM/Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5TAF-0006HY-Ts; Wed, 04 Sep 2019 11:09:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5TA9-0006H6-Lp
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 11:09:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id c10so2849806wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 04:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=sIOd0MuDnfj87B/FqKAPDluIjsWQPUM9aaqhRZ0bJws=;
 b=aBQ/mzBv92LVsEYtD/af016oft/3nD6ld0mcxbE5Y2xiUP1KehAH0S/MRbaSPT9hxh
 R5BWzoWPVPUUy15zoFq28mabmqic7S3dNCXhrapNv9x9J2Y5aL3XHXGNEnv3SjcMf+dw
 QyiNinW9lfztPAuqWPjgWH9QxBq3ZGKn/N/YiIXVFoLyk850amAG18uVGafYvzH8ta9w
 1gaUYN6b7kfcowCzSFxlMy8w4vlRG3q9nTk0032WhcTl9RnAC4AJ+sStJp5TkyKPVg9c
 wJd8dy7Uxt8IE1jo5Eu03aFVMmyANMo0Y8Zg71kUL7aZIydSlYqCjyuUxuBQWYQ66QnT
 zxHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=sIOd0MuDnfj87B/FqKAPDluIjsWQPUM9aaqhRZ0bJws=;
 b=ijrpoltQ7wiHErdljUs1qPVqnSIPClO6phRODcdpZl97nbSb3+njDp5hWommpq5meB
 9KevlIjS/2FcYRqqo1eWfUs6GbXEmAbe4nxtUsQh55PTBuVAVidbkRUdqABmUBL/EUNi
 tQu54wz4pMeWkfe2qI6mRUF648DaFTx6JmFSPwWwwxQl5bpQ6EigjA8h7PLzLC8DAZ08
 CKDM7wipcM2Xr08afIayCqhtB9z1wP64EJBPm1zRtjUVwwVHe34yH1pIM+kr+wOA7liW
 GCO5q3eMovMt/6L+OpqQS+6+ZF5D9Mkr2SaI57hDzCLl4qlFtl/2FmPGQw7jWX973oo+
 hlMg==
X-Gm-Message-State: APjAAAXB4IiywvWx+0wNQE6/Srw8fGLojliUxXQUQivV0jbgpP7vy15r
 ieKxSaP0ADYkgo5DXDjdwAY=
X-Google-Smtp-Source: APXvYqxEJDfwjcP23hJH0xu5WSvauV5r7xgP+gXLFvs8HgKoNnxvyZ3Ch6on0sEn1mW2+TwfvJQyZA==
X-Received: by 2002:a1c:cfc9:: with SMTP id f192mr3646204wmg.85.1567595359553; 
 Wed, 04 Sep 2019 04:09:19 -0700 (PDT)
Received: from localhost ([194.105.145.90])
 by smtp.gmail.com with ESMTPSA id i93sm28412998wri.57.2019.09.04.04.09.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Sep 2019 04:09:18 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/1] ARM: dts: colibri: introduce dts with UHS-I support
 enabled
Date: Wed,  4 Sep 2019 14:09:18 +0300
Message-Id: <20190904110918.25009-1-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_040921_763951_F649828A 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, marcel.ziswiler@toradex.com, festevam@gmail.com,
 s.hauer@pengutronix.de, m.felsch@pengutronix.de, stefan@agner.ch,
 robh+dt@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 shawnguo@kernel.org, marcel@ziswiler.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

Introduce DTS for Colibri iMX6S/DL V1.1x re-design, where UHS-I support was
added. Provide proper configuration for VGEN3, which allows that rail to
be automatically switched to 1.8 volts for proper UHS-I operation mode.

Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

v3:
- change hierarchy according to Marco's suggestions [Marco Felsch]
- adjust compatible string adding v1.1 [Stefan Agner]

v2:
- rework hierarchy of dts files, and a separate dtsi for Colibri
  iMX6S/DL V1.1x re-design, where UHS-I was added [Marcel Ziswiler]
- add comments about vgen3 power rail [Marcel Ziswiler]
- fix other minor issues, addressing Marcel's comments. [Marcel Ziswiler]

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/imx6dl-colibri-v1_1-eval-v3.dts  | 59 +++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-colibri.dtsi        | 11 +++-
 3 files changed, 70 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2cea90..87dfc3db4343 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -401,6 +401,7 @@ dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-aristainetos2_4.dtb \
 	imx6dl-aristainetos2_7.dtb \
 	imx6dl-colibri-eval-v3.dtb \
+	imx6dl-colibri-v1_1-eval-v3.dtb \
 	imx6dl-cubox-i.dtb \
 	imx6dl-cubox-i-emmc-som-v15.dtb \
 	imx6dl-cubox-i-som-v15.dtb \
diff --git a/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
new file mode 100644
index 000000000000..92fcf4e62ba2
--- /dev/null
+++ b/arch/arm/boot/dts/imx6dl-colibri-v1_1-eval-v3.dts
@@ -0,0 +1,59 @@
+// SPDX-License-Identifier: GPL-2.0 OR X11
+/*
+ * Copyright 2019 Toradex AG
+ */
+
+/dts-v1/;
+
+#include "imx6dl-colibri-eval-v3.dts"
+
+/ {
+	model = "Toradex Colibri iMX6DL/S V1.1 on Colibri Evaluation Board V3";
+	compatible = "toradex,colibri_imx6dl-v1_1-eval-v3",
+		     "toradex,colibri_imx6dl-v1_1",
+		     "toradex,colibri_imx6dl-eval-v3",
+		     "toradex,colibri_imx6dl",
+		     "fsl,imx6dl";
+};
+
+&iomuxc {
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170b1
+			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100b1
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170b1
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170b1
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170b1
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170b1
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			MX6QDL_PAD_SD1_CMD__SD1_CMD    0x170f1
+			MX6QDL_PAD_SD1_CLK__SD1_CLK    0x100f1
+			MX6QDL_PAD_SD1_DAT0__SD1_DATA0 0x170f1
+			MX6QDL_PAD_SD1_DAT1__SD1_DATA1 0x170f1
+			MX6QDL_PAD_SD1_DAT2__SD1_DATA2 0x170f1
+			MX6QDL_PAD_SD1_DAT3__SD1_DATA3 0x170f1
+		>;
+	};
+};
+
+/* Colibri MMC */
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1 &pinctrl_mmc_cd>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz &pinctrl_mmc_cd>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz &pinctrl_mmc_cd>;
+	vmmc-supply = <&reg_module_3v3>;
+	vqmmc-supply = <&vgen3_reg>;
+	enable-sdio-wakeup;
+	keep-power-in-suspend;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	status = "okay";
+	/delete-property/no-1-8-v;
+};
diff --git a/arch/arm/boot/dts/imx6qdl-colibri.dtsi b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
index 1beac22266ed..27097ab5eaab 100644
--- a/arch/arm/boot/dts/imx6qdl-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-colibri.dtsi
@@ -215,7 +215,16 @@
 				regulator-always-on;
 			};
 
-			/* vgen3: unused */
+			/*
+			 * +V3.3_1.8_SD1 coming off VGEN3 and supplying
+			 * the i.MX 6 NVCC_SD1.
+			 */
+			vgen3_reg: vgen3 {
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-boot-on;
+				regulator-always-on;
+			};
 
 			vgen4_reg: vgen4 {
 				regulator-min-microvolt = <1800000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
