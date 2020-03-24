Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773E3190A29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 11:04:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RcKyirvgx7Go+oYd5JPJZSUoSq8Tuv8M4cDIHJkwIqo=; b=LEj
	3XVPfEJZxMJ4VGcuovczqmw23pebrNjBLdjK5lkamDwtgVTAVgbkvRyeAiSroxEwZgM/nVVlCGE20
	E0TJuSap+4dUVohFTq4RS1f6y8adc9XUjSlbHgig6k3qBBQAcRC8eRkwkEFnqBS8e5upULwZDIwBc
	Bfee6gANqDzz6o3yPJW1TSzKdAQ4Z6fZCEBgnvHPptUKfgCiiAtsOiDl1k//KvJt3LpCZBzPV143g
	W5KmNFxX+T8wwxfbgzgw7WdqfCNj7FF/dB7wKyaFyW1SyDwpD4JjVZQybO3onYqpI79U7/baB2dCA
	qIhL4ogeDHBp4Nlj8htvyWNsb+pS9+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGgPf-0002ty-4g; Tue, 24 Mar 2020 10:03:59 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGgPW-0002tF-0c
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 10:03:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id p10so8210437wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 03:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=E2gucnt0jG9/iAklKtQ4Y6P9kT3mAQwIXdQMoVC+IMU=;
 b=msau/AqqiotV4YH8CwuEQjSkT7JRlIIN7+xeLhXw4EkCTS+0ziUFAdHN8LqbA0HWTF
 4EEqZl4LpBMibIRS79TB9yQqfr8gDXVhXmGRfWYXqvYcMt2TipYNWt0M8Z4Zhr+2kDw1
 RqZEr+UGXFpD/qJuQDL3bJ2zRgtE5796kdFKMwHh4tHopKJWidDE8D1FNiUQpOEG+8La
 o3P1squbUOBPI1uKwsGtxd0RDh7Tx29XujfG0DDz3+Q22+PO79BSpAYNMW+Q0lQn1NVL
 FpNbdJjEOFH0zP9kgikmux8eDXamsLEZl2LZf6+fRBiHDdRnMlm/MEJYgHFuA5OvksVZ
 W7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=E2gucnt0jG9/iAklKtQ4Y6P9kT3mAQwIXdQMoVC+IMU=;
 b=NJ3tE9erSBPfq1tZkvzsyKHC9jzbQ01FuBpksmaxI2/SHmMTaW6nWoDg32pbojIB1v
 AqQMf18sVSyywZFwASJtdZvAVMdPMByHC0OiLuqgqdQPres7P4H11CwdPxrDT7vFTY53
 VgYLrl6CieRTICGQHvIH56IZoQ+s6yW+9x14SD7D6c7ZiCETveYkDIzSNikIpbN+ual4
 5/eqbus08POTxmnGmEybZidINn2aRq7NbgouRtH1Ef2bLrTsz792uqxudd5yhaME9BTG
 Uq/hlNwbSP2P4Q/Lo/XtKbiF+J1liX3KqzSpRYZfAKofzZjTs5wP5qR4paZ2LVGKgKft
 eyjg==
X-Gm-Message-State: ANhLgQ2a/hLnpNA90P2QIsuuh1L/sZJAgqdi/xfQciSYkfo7TgoMehB4
 CINFA41fbiez7IDvj6WLKhjtYQ==
X-Google-Smtp-Source: ADFU+vvPGVQ3t1JsxhFnxJBsDvsVSJzbCDbCSl8B42l+ffRT/FZ0u1wazjXdbt9LovbfJPbiQR8hVw==
X-Received: by 2002:adf:84c2:: with SMTP id 60mr36334160wrg.399.1585044227837; 
 Tue, 24 Mar 2020 03:03:47 -0700 (PDT)
Received: from localhost.localdomain ([88.122.66.28])
 by smtp.gmail.com with ESMTPSA id w11sm28309137wrv.86.2020.03.24.03.03.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 24 Mar 2020 03:03:47 -0700 (PDT)
From: Loic Poulain <loic.poulain@linaro.org>
To: xuwei5@hisilicon.com,
	robh+dt@kernel.org
Subject: [PATCH] arm64: dts: hikey960: pinctrl: Fix spi2/spi3 pinconf
Date: Tue, 24 Mar 2020 11:07:52 +0100
Message-Id: <1585044472-16706-1-git-send-email-loic.poulain@linaro.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_030350_087125_3DFF3ED3 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Loic Poulain <loic.poulain@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Only the pinmux was selected, not the pinconf, leading to spi issues.
Increase drive strength so that max speed (25Mhz) can be achieved.

Signed-off-by: Loic Poulain <loic.poulain@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi           | 4 ++--
 arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi | 6 +++---
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
index 253cc34..c39b7898 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
@@ -974,7 +974,7 @@
 			clocks = <&crg_ctrl HI3660_CLK_GATE_SPI2>;
 			clock-names = "apb_pclk";
 			pinctrl-names = "default";
-			pinctrl-0 = <&spi2_pmx_func>;
+			pinctrl-0 = <&spi2_pmx_func &spi2_cfg_func>;
 			num-cs = <1>;
 			cs-gpios = <&gpio27 2 0>;
 			status = "disabled";
@@ -989,7 +989,7 @@
 			clocks = <&crg_ctrl HI3660_CLK_GATE_SPI3>;
 			clock-names = "apb_pclk";
 			pinctrl-names = "default";
-			pinctrl-0 = <&spi3_pmx_func>;
+			pinctrl-0 = <&spi3_pmx_func &spi3_cfg_func>;
 			num-cs = <1>;
 			cs-gpios = <&gpio18 5 0>;
 			status = "disabled";
diff --git a/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi b/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
index d11efc8..920a311 100644
--- a/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hikey960-pinctrl.dtsi
@@ -717,7 +717,7 @@
 			spi3_cfg_func: spi3_cfg_func {
 				pinctrl-single,pins = <
 					0x008 0x0 /* SPI3_CLK */
-					0x0 /* SPI3_DI */
+					0x00c 0x0 /* SPI3_DI */
 					0x010 0x0 /* SPI3_DO */
 					0x014 0x0 /* SPI3_CS0_N */
 				>;
@@ -734,7 +734,7 @@
 					PULL_UP
 				>;
 				pinctrl-single,drive-strength = <
-					DRIVE7_02MA DRIVE6_MASK
+					DRIVE7_06MA DRIVE6_MASK
 				>;
 			};
 		};
@@ -1031,7 +1031,7 @@
 					PULL_UP
 				>;
 				pinctrl-single,drive-strength = <
-					DRIVE7_02MA DRIVE6_MASK
+					DRIVE7_06MA DRIVE6_MASK
 				>;
 			};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
