Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8243E12D77B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:33:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4RVrmtIkQLfVl3MYEg2r75nLKAWDAq/KMbHxrMo5Hzs=; b=SHxEuL7BBJ4Kgy
	/w8susz2xgBKMRqZm0aSugNntxHtyb1txZOQeMRlRWqedS01xNJXmbfGBSoFvhl6VyWfJ5SH1aVJv
	Si+VgfThBIZGzQLDDwM1ZnePVhzlKwrqQyLC1/qd/krQNKanTG6x1TJTPbLx/SzYZZm+w+wDkbSv3
	Hsf7V/J5J4XnXgztjg6t4l8PRv3IdyXiYtYd3i5M2Tfj0r5wdPFVu3Jr7BdanmTnjhEf21MmZ+S4N
	CU/y6wQTyWkByqEvT6LYPWLJqkqGTNojgQURODhq4TiwrIYcTc51+SXrO/ZrlJLbf6YLHy3lOwXft
	l1VOdI0x7szgsPAtROuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imDu3-0000Tx-Rr; Tue, 31 Dec 2019 09:33:27 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imDts-0000TA-0K
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 09:33:17 +0000
Received: by mail-pj1-x1042.google.com with SMTP id m13so1029470pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 01:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WLmpXZu1vud7niRdK/VtHaBa6VMJDe67/Y7KA6ocmug=;
 b=fmXZX4SfoxETf2w1B/4tGkarGFv7V3B1rBT4L7cKOM0uOfYwVoT8NemY1iv5USjWhS
 2N5AQOUusc+2plTic4C2yxN6eicH/4EKqjjqHv7dTKQaph+TAZvJivTy6OTaMvjpwNJd
 T86EDvLDw4NYsfOWNxMc6c2nY+DJO/kzoaTdIQJPMB5mHxfYJR6n2xjoTGMyA90sx/8d
 IHCcooO2LtVaEiP1cv6Cu0IPjkW21NH05Nd9Xxumh54Bmo/18y+Vp+pID4Tv/NO2+6Fi
 Cgc+YIMb9gGc6uPRwo2Nqzsfm2pAFTg5gRhb4tRX4U08nljz7REvEg3dl5BPQP66nLqt
 K4pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WLmpXZu1vud7niRdK/VtHaBa6VMJDe67/Y7KA6ocmug=;
 b=Qk0Bzk4sYBb+baWhbqWZNz2GnsGB84mB1OS8veVfDrxYwZoWVkhMOw7TwV/GsL55eT
 QZAs9lBxyHqsKHLl2nw50vAPCLAEfgwpmhTHhSi2mTSAZOapMIVDyWm0ZLTrn2Jk8RR1
 EJ0zwUdZVRyd1M3JCmyVv+95N90q22DAjeoVV78eJ6A5unpIKcKCAMBPJiDKAIsaO+qN
 xSrPfo7Y7mdVVTUkUGmkFXBHSwHJYLIT6UnmS/558w0AKU80A2skkb+4z9JcZTW1J72z
 6HjnwdWvOSwL6qO2GDnaceBg3WycnBFKU0ctJPuiYNbWAap3RaB5GJ8mLA+s9PmD8WJp
 KGxA==
X-Gm-Message-State: APjAAAWPgNeRU6ua8u4xG8DOm1DKnmotcW7FdwPSP7IfMwKgsB60FYT5
 V32rsBXgtnkh47hAOO7CiPM=
X-Google-Smtp-Source: APXvYqypGvF/jJ1bRnmW1uoYV7HZivjXfwr5oWriguEXgE6O+r9cRO5TMc5/K6ie5WKI7dxBkWODqA==
X-Received: by 2002:a17:90a:d807:: with SMTP id
 a7mr5294156pjv.15.1577784795223; 
 Tue, 31 Dec 2019 01:33:15 -0800 (PST)
Received: from ruantu.dev.localdomain ([103.103.128.212])
 by smtp.gmail.com with ESMTPSA id h12sm39870970pfo.12.2019.12.31.01.33.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 01:33:14 -0800 (PST)
From: YuDong Zhang <mtwget@gmail.com>
To: robh+dt@kernel.org
Subject: [PATCH] dt-bindings: iio: adc: vf610-adc: Remove redundant property
 from vf610_adc
Date: Tue, 31 Dec 2019 17:33:05 +0800
Message-Id: <20191231093305.1629390-1-mtwget@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_013316_079086_BD0ACDB3 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mtwget[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, YuDong Zhang <mtwget@gmail.com>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the num-channels property that vf610_adc driver will not use.

Signed-off-by: YuDong Zhang <mtwget@gmail.com>
---
 arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi | 1 -
 arch/arm/boot/dts/imx6ul-phytec-segin.dtsi    | 5 -----
 arch/arm/boot/dts/imx6ul.dtsi                 | 1 -
 arch/arm/boot/dts/imx6ull-colibri.dtsi        | 1 -
 4 files changed, 8 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
index f05e91841202..4394e1370d34 100644
--- a/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
+++ b/arch/arm/boot/dts/imx6ul-kontron-n6x1x-s.dtsi
@@ -72,7 +72,6 @@ reg_vref_adc: regulator-vref-adc {
 &adc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_adc1>;
-	num-channels = <3>;
 	vref-supply = <&reg_vref_adc>;
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
index 8d5f8dc6ad58..e7198c2922c6 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin.dtsi
@@ -83,11 +83,6 @@ &adc1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_adc1>;
 	vref-supply = <&reg_adc1_vref_3v3>;
-	/*
-	 * driver can not separate a specific channel so we request 4 channels
-	 * here - we need only the fourth channel
-	 */
-	num-channels = <4>;
 	status = "disabled";
 };
 
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index d9fdca12819b..458a301be215 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -892,7 +892,6 @@ adc1: adc@2198000 {
 				reg = <0x02198000 0x4000>;
 				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clks IMX6UL_CLK_ADC1>;
-				num-channels = <2>;
 				clock-names = "adc";
 				fsl,adck-max-frequency = <30000000>, <40000000>,
 							 <20000000>;
diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index 9145c536d71a..1e70c9da9e36 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -50,7 +50,6 @@ reg_sd1_vmmc: regulator-sd1-vmmc {
 };
 
 &adc1 {
-	num-channels = <10>;
 	vref-supply = <&reg_module_3v3_avdd>;
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
