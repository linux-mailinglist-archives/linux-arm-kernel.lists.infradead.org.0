Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2242B647
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:23:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzAMMrkkAsoSjadDekcDNOQIPxXlnUy/89hOpef6PAU=; b=GyrliDcz2lm/WT
	1FP0qn5IRXNp1KROEU28+yK5h40NjMVxKfmQQFc6XRJbl2tgTGVINq1P4jxN7EK3aBmIz8x8fnqFa
	mlE1IOc+r7VnXTcDVsUGEqYD1Qlfd6vSBCaBDP1QNdPCY0q4ipVHvGBhzYsDshuTB0iZAtrwJhUHQ
	oENcm9Bb6Iuy/qJtXDzvb5SnvWUyA1T/rWEpeTYMaq3sM3PklZeTKF0EHqUCwVbZy0V2y81kygMgt
	EX/l93Y0oo5G8XyHEIbH5H39xdFjKYA4zfT74ugkYNZSda3P/z6uldZIItQ5zt41jqbB9YXuBgL9v
	0716/4dhow8u4ScxPVRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFaq-0003D0-8f; Mon, 27 May 2019 13:23:12 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZo-0002B4-VH
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id h1so2789378wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0UO6p2NGpn6/x+RK1bJoMUDg+U4e7UPzCJT+tP40PaA=;
 b=r2OcgSMZb0v4j6KbwLI3lZude7y52PSXwphSwGgAIB9u+xVVV7O/ahSo2ZS/LMcwH4
 wqshUKB2VvyaIvZhSS1V6K9UjnbU/mlFMiBkGhIM8CIkv4bJvseyfm2UDDmt9hu2xBT6
 7mNhfmxgyl+059rx5X70BqJVEko6sOMPVDMUIj17uk3Mz9YHuInOrtmJOrdDUh5agYy3
 HWxtSiW4Dv1vzm/RcshsbWCqdV4AwrqZqlNL4O7MUcXGlbc8UecfNomF9mp+IvnpLTmx
 eKGYRgm+jZrmQ0ClplDsnJEqjxcxJ3Kyvw+9oxCoU9lggtjHlOnmPBVzAL0C5Y2ya6Ck
 C2Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0UO6p2NGpn6/x+RK1bJoMUDg+U4e7UPzCJT+tP40PaA=;
 b=VXrPVVWQvN9jCjoiq8snMK7QtgZDoPGHY5IULHPGJywXzfxlwf8OlJmhS6bMHHQpHZ
 e3ysBcdg8rOB1PnTxNTh4qfTzfTQxMLPTy9rM9DI7xg/3yRT3FG+62RJZr6jYtM3YEy8
 yKGmEH8b4v3ppvVzw3CfwMByuJ+RUanpoDfzB68NQM8hN9YzIj4SV2SVnAIvD9l6CFvT
 8Kk1FupN140KFJK0rTjE6DwseJQjBRtY1R0WM6YZgOzyWNXYXodWKn4AQq+in1Y0UL6B
 +EzTwUudPW2ap4jG9FoF7T8YWjqJhayi0+VkEXBo7PZuxTfllRxAWYexUeCxU+iUSAHL
 HJgg==
X-Gm-Message-State: APjAAAXXhxWFrJ4fJYTTJrljIx85YldVSVJkRSCCa8Xx7q+GOl3o3CTh
 YpQdumLVFWLezH+u6ycQCTEyTA==
X-Google-Smtp-Source: APXvYqzCwOlwTFCDqqaeLiT8HaxVqritfgZVZbXUj48aOqAe46yNkgcCzFHUbw7WVsspKUXNijl9Ug==
X-Received: by 2002:adf:fe07:: with SMTP id n7mr134383wrr.7.1558963327475;
 Mon, 27 May 2019 06:22:07 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:07 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 06/10] arm64: dts: meson-gxbb-vega-s95: add HDMI nodes
Date: Mon, 27 May 2019 15:21:56 +0200
Message-Id: <20190527132200.17377-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062209_256408_AEF225A3 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add HDMI nodes to support graphics on Vega S95

Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 760730d4e87b..6738b2aac9a0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -73,6 +73,17 @@
 		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
 	};
 
+	hdmi-connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&hdmi_tx_tmds_out>;
+			};
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>,
@@ -108,6 +119,18 @@
 	};
 };
 
+&hdmi_tx {
+	status = "okay";
+	pinctrl-0 = <&hdmi_hpd_pins>, <&hdmi_i2c_pins>;
+	pinctrl-names = "default";
+};
+
+&hdmi_tx_tmds_port {
+	hdmi_tx_tmds_out: endpoint {
+		remote-endpoint = <&hdmi_connector_in>;
+	};
+};
+
 &ir {
 	status = "okay";
 	pinctrl-0 = <&remote_input_ao_pins>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
