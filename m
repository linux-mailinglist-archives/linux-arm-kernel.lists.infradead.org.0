Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3271C32D73
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3MEOAs/WJP2fIco0sa1Fb4tHyZc5UlpLh75KpQtxZ6U=; b=QJtN8QQ0mHX2m0
	jb2xfn+8VuPkhUGEoMwxfIyeTTFuu7I9ZVp44VvrZmJ1DQm6pwwcF5Wz+xGCIiGe0ZWC/lLYu+CUk
	IwL1bFCAnuBJzwTRhDauOueVKpRrAF7bqMnKCkBifwHJe37M1r/u7rvoPVCu+bbJtcv3Mv8c5WEgx
	9SUiu7MpCyqy4nBpNOOnMQXygAoGAdA6kZ8lNJoc4bGlGU551/ubx2n1doIIvjaWLeDuYNIVhlnpg
	E2kFGj9pYRC1Nh2avw6BoLKJVH93hiJlCobeibcxAhZKFZKbXa1l/2oIR4Dty+gsV2Bgdk22HMqdJ
	giolDbbvLkoZApy6c+Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjpT-00075G-Rg; Mon, 03 Jun 2019 10:04:35 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjow-0006U0-C5
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:04:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id x4so11374138wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 03:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4v96Sj0Qqu2ejZctq3FfqZCKiRWA7yMLpPyqtKhrPu8=;
 b=mQjf4XGRiMhjsw15YSdxSbc4D532wGUB1SC1JiM96Iuh4ExSD4X4vMaXYztqMT1xUc
 GF6Ez8SgjvVVD5eP6GKe87SrgMMDrTJdO5e7VKnX5hWXYkhlc3lDcX5AIlILYf8wtePK
 +m/w6M19ox54sQdzt6EZzaeMP/cf3NbfmpaZG4J3VWjt2DC61rKdAevIQkt2oVk61GO0
 kSWAeo/ulhesWM/Zea3Y7cxS4r/umA3QotghlhN8CTOCJc1Rr6S76lp9WahxPiDbfgDV
 OiEy/ZsnSjOMCbwzHzpaRJm2oT1flAJO5GVRcASt9aG2JmOHpgK36PdkZChnqsqGt94T
 +hqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4v96Sj0Qqu2ejZctq3FfqZCKiRWA7yMLpPyqtKhrPu8=;
 b=mXj3jj0TQkS+yJrhicPCjxvfX9/sIrldQO33RUMit1LZHjnx+sexaQyOh3hdZucKS0
 /Yb7vQCVw3sDVBVEMiWRK4Syv/weHsZKUxrkS1+UdtuuVxGg4NfpqlHwE3m3tdH3G5a6
 srydz5N9xmxTblSh2IBts7BqY0GGN44t9HADlx+y1P4VALaX5Xi/ITYht3J6wZYV28Yu
 6TJlfmE9W0xoraqQKymUXwkgI313L+BeVbo8ygGo5g5aQusF9/R7cFTQUkFbbWld83Ac
 wSzC53A5Zz656KPY9ieBf7nNj8hrUvPqGCzKCtWXk4lAFGPeoUPTDRXmB+fmIWpjtQiX
 SXnQ==
X-Gm-Message-State: APjAAAWXWXjGljdteTjCbYJi/OuFRSkZy9vLx5aqIbzjGoWY4s/tBBjw
 SKQ9Jtr+2XVgAUY7GM1FcfX3hg==
X-Google-Smtp-Source: APXvYqzlpNzQaH9IoXOQExNqojzpEeThG85jB71pNzHO58lbsxgDEDHdv44UZx74BlqdIfJdRiKwtw==
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr15831689wrw.306.1559556240934; 
 Mon, 03 Jun 2019 03:04:00 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o3sm11282098wrv.94.2019.06.03.03.04.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 03:04:00 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 2/4] arm64: dts: meson-g12a-x96-max: add support for sdcard
 and emmc
Date: Mon,  3 Jun 2019 12:03:55 +0200
Message-Id: <20190603100357.16799-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603100357.16799-1-narmstrong@baylibre.com>
References: <20190603100357.16799-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_030402_506341_E999CEF5 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org,
 Guillaume La Roque <glaroque@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Guillaume La Roque <glaroque@baylibre.com>

Add nodes to support SDCard and onboard eMMC on the X96 Max.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 5cdc263b03e6..69aae6c03dc5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -45,6 +45,11 @@
 		};
 	};
 
+	emmc_pwrseq: emmc-pwrseq {
+		compatible = "mmc-pwrseq-emmc";
+		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
+	};
+
 	flash_1v8: regulator-flash_1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "FLASH_1V8";
@@ -172,3 +177,38 @@
 	status = "okay";
 	dr_mode = "host";
 };
+
+/* SD card */
+&sd_emmc_b {
+	status = "okay";
+	pinctrl-0 = <&sdcard_c_pins>;
+	pinctrl-1 = <&sdcard_clk_gate_c_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	max-frequency = <100000000>;
+	disable-wp;
+
+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddao_3v3>;
+};
+
+/* eMMC */
+&sd_emmc_c {
+	status = "okay";
+	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-1 = <&emmc_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	max-frequency = <100000000>;
+	non-removable;
+	disable-wp;
+
+	mmc-pwrseq = <&emmc_pwrseq>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&flash_1v8>;
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
