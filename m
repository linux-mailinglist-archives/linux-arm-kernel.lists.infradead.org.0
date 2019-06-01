Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1FB31A00
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 09:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2l6XH4JRPKxwNbaivgR+x4AruwcQ89rJI5J+Qtr/ok=; b=JSyZMjUZZYSzbr
	1wuBCdjVpBSuh6xtQeiXdG3tCNSsCAqD/BfaVOq0/KVN+iO35vgJgKFh8pfqMpV5T/7CS0SA+itNX
	GloVoCTooExSpKdtSelKHU9Cq89GkrubnCHs2Wj4EdrRBW9X8dEVMkVEebD06g72hrU3RP/JHaEs7
	GP9Lzp8zJClTw31WMyDKCn4pk+3MOeyvvvXzRK55oiK9CrU1Ph/lrT+lq1ULQ357RNpKsRftRfJwy
	Ipr0TWPplbpEDYyiA5JNSS8nSWNw21+s04irTJVanCnvrQz7i/Aq0lmn1kH4+mK8mvAcJrH4hDbik
	41cFTP6go7EqFYsVJD4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWy7d-0002bi-7U; Sat, 01 Jun 2019 07:08:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWy74-0001w9-9S
 for linux-arm-kernel@lists.infradead.org; Sat, 01 Jun 2019 07:07:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id t5so7196249wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 01 Jun 2019 00:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J9T/H8O+Bo+86NWDkyKHynPMMBXWFWWk75NnIJsXS1M=;
 b=Bu9Q2cBIQQSskjlH4tHEeVo6UEq4/Ctril9JWNNojmlUJ7EQUywlhRMmRsZuVv82Ht
 Bu+/YPbHri0E806Jvhla1rOYpA4dReszJ5mp2gB7zczhTvh3uzdk05ixRCeIosjBmT9b
 cdqGX79BFnbSRNE9LLBSHofchHZFWheOXs/dVMxkaW4ZUaIPDwaZ+EgAzm0e/3nBIaD2
 8O/uqv+KN8YbMiuzsRe5MX8OtmerHJRSEH5lIblmHryin89t4XYE5l8mi+rtTrWwt2kn
 B6KyzyJeu3AY5Efp+6AWHTnDL2B3p7qiZxtk/5dgAazluOPIc9/qMKIoqvhUm//praAt
 D+zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J9T/H8O+Bo+86NWDkyKHynPMMBXWFWWk75NnIJsXS1M=;
 b=TlIaYn7FditX/fnJfmnUBHRbW0zA4lYN9JhTZTFbapseipXx8at6sHDK9kSXowDOgi
 dbpxjC+7nxedZLjpxIZ2pKvug8MomgUx6cQ1aYz2qzvx/P3f1iAEBDcfljkUFjtyNhc0
 GI0s9iVhQeq5mwcqpbMpgTp7P/jH2M4Csd0dZ6fYGfwkMCvCc6CtLFKy1qOImuaJ5brS
 A9ckOKFimXGAWcKOHrUkX2mO8y8MFMaSxTyWhhnspPw0UfnG2gPAqdlr1mslSaS5Tm5+
 EccgB27VMpvKMuNqpDH0kyvBEsM12Ag7MhUoOBcsxShM6iCbU5S+MBU1crbLuoyEgIkj
 dt0w==
X-Gm-Message-State: APjAAAW2xwmOHWr7V8K4L4Ltj7omcxvstST18dRRY4zDHfQXB6VjuqjS
 il2uqMqIVc5O8bPQB6tcBLCuAUw3
X-Google-Smtp-Source: APXvYqy2EBe2XAPiC7k++q1UMSmUfXIPBlRu+3RMG3Tc2OEWg2DOWrxOQLAEEjmn/gGI+ITGs3/XUA==
X-Received: by 2002:a05:600c:218d:: with SMTP id
 e13mr8057626wme.101.1559372849818; 
 Sat, 01 Jun 2019 00:07:29 -0700 (PDT)
Received: from morpheus.roving-it.com.com
 (2.e.6.5.c.a.a.1.a.8.0.3.1.e.3.c.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:fb11:2681:c3e1:308a:1aac:56e2])
 by smtp.googlemail.com with ESMTPSA id h8sm19008382wmf.5.2019.06.01.00.07.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 01 Jun 2019 00:07:28 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: imx6sx-udoo-neo: enable i2c-2 and i2c-4 for
 onboard sensors
Date: Sat,  1 Jun 2019 08:07:17 +0100
Message-Id: <20190601070718.26971-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601070718.26971-1-pbrobinson@gmail.com>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_000734_432923_23AAC690 
X-CRM114-Status: GOOD (  12.60  )
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
 provider (pbrobinson[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Robinson <pbrobinson@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i2c2 bus has a external plug which enables the easy connection of external
"bricks" with sensors of various kinds, while i2c4 on the Extended/Full boards
has a pair of on board motion sensors, accelerometer and magnetometer on one chip
and gyroscope on another so it makes sense to enable these i2c buses for use.
Tested on UDOO Neo Full.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

--
v2: move i2c-4 core to imx6sx-udoo-neo.dtsi and just enable it on specific boards
---
 .../arm/boot/dts/imx6sx-udoo-neo-extended.dts |  4 +++
 arch/arm/boot/dts/imx6sx-udoo-neo-full.dts    |  4 +++
 arch/arm/boot/dts/imx6sx-udoo-neo.dtsi        | 26 +++++++++++++++++++
 3 files changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
index c6005cd284be..04a9f8780b8c 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-extended.dts
@@ -16,3 +16,7 @@
 		reg = <0x80000000 0x40000000>;
 	};
 };
+
+&i2c4 { /* Onboard Motion sensors */
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
index ad8b8a663a70..3cc6b0231ff6 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo-full.dts
@@ -31,3 +31,7 @@
 		};
 	};
 };
+
+&i2c4 { /* Onboard Motion sensors */
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
index 386707c1bfe0..26373e3f3afd 100644
--- a/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
+++ b/arch/arm/boot/dts/imx6sx-udoo-neo.dtsi
@@ -188,6 +188,20 @@
 	};
 };
 
+&i2c2 { /* Brick snap in sensors connector */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	clock-frequency = <100000>;
+	status = "okay";
+};
+
+&i2c4 { /* Onboard Motion sensors */
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	clock-frequency = <100000>;
+	status = "disabled";
+};
+
 &iomuxc {
 	pinctrl_bt_reg: btreggrp {
 		fsl,pins =
@@ -219,6 +233,18 @@
 			<MX6SX_PAD_GPIO1_IO01__I2C1_SDA		0x4001b8b1>;
 	};
 
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins =
+			<MX6SX_PAD_GPIO1_IO03__I2C2_SDA		0x4001b8b1>,
+			<MX6SX_PAD_GPIO1_IO02__I2C2_SCL		0x4001b8b1>;
+	};
+
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins =
+			<MX6SX_PAD_USB_H_DATA__I2C4_SDA		0x4001b8b1>,
+			<MX6SX_PAD_USB_H_STROBE__I2C4_SCL	0x4001b8b1>;
+	};
+
 	pinctrl_uart1: uart1grp {
 		fsl,pins =
 			<MX6SX_PAD_GPIO1_IO04__UART1_TX		0x1b0b1>,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
