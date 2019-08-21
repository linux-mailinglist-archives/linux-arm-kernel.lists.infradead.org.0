Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579C59782A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 13:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNnpRQoh5Q6YdeM0Gm30SImFr+3tJkbCkuMhGJ2nUsM=; b=qmlMpofz7PziLB
	/FEzeQEV6YwTZ1XL3X3JB0C+WcKKCfisanJLNw4/Og4m+4weoDbCYnlDgrflmyaIwkuBhHsueCNE+
	ZEvLvSRIjGpTH0ED0arcpBu6amD1vPyzVL8H/bdKzxF00OmAdQGL5Q+MQdKDBh5ysI9lKrPbiK9kz
	wZYjgExkqz/fYLNAVkHk884YrxUpyWFvF5RqJErwBzKZs1dRvYTzpChH+RpVSu2ufi1u8TKEVzqi7
	kbccBUewoccnx2K+cgQVaVtGLGUpyP6upMuJcvv50E6q9O6JsCeIJOtftvV+TAqKMnKgGlZql899x
	+UwY+j1LKe9oDeICSAng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0P0b-0001ch-HQ; Wed, 21 Aug 2019 11:42:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0OzY-0001HE-6g
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 11:41:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id c5so1593141wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 04:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gCtDTfOP9CU7PICTDb4hgstX702LCqHDmjrUznwuL5I=;
 b=BI+2vBKkkgV9KDXhp9IlbxRKHhekFU/RKeQ1IsvQSc5sMTR+VaoP23kxdXyOLCtpsP
 A4EHbB+U3XNtGP8JocaG/u0Pj+LdZdyfiZ6VPBMzPVwG1V2Qpp/RWbRVSXVcpb/bJxeO
 r978yAddzNRgaWDbyb51OkIKRLH8vM4U8E+AyoiKn//rOlGnL3nliXdxr4OZ/v27BGhy
 qlQBTzuSwUNcVhZ8YfSeVAK+27zHDwwpyKiLKzJ0jY/8rx+N3l1x+GlV36zjoyxdL8my
 QBHIOfDidkKmDlQqih7KV5TrG8DPg0nIJgnqmTzfE2dhEt81/y852Jvkx9+p1xRZ9vKC
 y2xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gCtDTfOP9CU7PICTDb4hgstX702LCqHDmjrUznwuL5I=;
 b=Mtnd3At5Fl+jZGmlh/cCCnEpWi07cD2m8tINFUTRshWveCzx2n2qnTff2va9AK4bqR
 TyivW5zlg/DvxKOpsveHcslbzGM6D5T+eDWOdeYy8LUKILEZNw9qrkUKeWbJwoogvVbd
 XoF13i93rrIUm01Ai49yAkh/T9JBHBU2HyT1fNmG/+XPvH2l1DAVc0LjV2p+7iikzvvC
 xE+E99+kfJxQHXmIcq5OK6u/5vGZ253Auv8KQf4vUzpFG4jLch6MoT+jOfP8dSkywmBF
 gAZqrrDpxAywQDWAJCW4quWJuvqzxE/x/YPXWJ1YHIShvVG1Ema03vKGWQnauldr32jH
 rCZA==
X-Gm-Message-State: APjAAAUtLEk2cKvAwCkppH3yWdFgIQGlGCpnzW7K/J03fREu8cFGiciz
 NtMW5qUz8KBrkEYDCPNkKoOgSg==
X-Google-Smtp-Source: APXvYqzMTr3oBHsKlY4CvaevSLrjnCFjzm9FQNxbTR4v3QPRCZ7DHPFKwtGhy+RKAPx70KAJwKEGuw==
X-Received: by 2002:a1c:7a10:: with SMTP id v16mr5474270wmc.2.1566387686884;
 Wed, 21 Aug 2019 04:41:26 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id g12sm24049686wrv.9.2019.08.21.04.41.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 04:41:26 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	ulf.hansson@linaro.org
Subject: [PATCH 4/5] arm64: dts: meson-sm1-sei610: add HDMI display support
Date: Wed, 21 Aug 2019 13:41:20 +0200
Message-Id: <20190821114121.10430-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821114121.10430-1-narmstrong@baylibre.com>
References: <20190821114121.10430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_044128_264288_3793DE5B 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update compatible of the pwc-vpu node and add the HDMI support nodes
for the Amlogic SM1 Based SEI610 Board.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-sm1-sei610.dts     | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 12dab0ba2f26..66bd3bfbaf91 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -51,6 +51,17 @@
 		};
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
 	leds {
 		compatible = "gpio-leds";
 
@@ -177,6 +188,18 @@
 	phy-mode = "rmii";
 };
 
+&hdmi_tx {
+	status = "okay";
+	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
+	pinctrl-names = "default";
+};
+
+&hdmi_tx_tmds_port {
+	hdmi_tx_tmds_out: endpoint {
+		remote-endpoint = <&hdmi_connector_in>;
+	};
+};
+
 &i2c3 {
 	status = "okay";
 	pinctrl-0 = <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
