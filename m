Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E368C05AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 14:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EOcknQwEXBJg7RJuhTHdWxVnVaBCWnXhrIBy9J7AXn4=; b=VNWrE1653+r3yDoyhP8qXUjzpz
	gJg7xUwpOuE6PDLpBxNOs6iyJRIQfHoKTpA1voMq4bGFwDCNNAYD6TaQ/kZglcFzgGfaolWvTTn8P
	/1JuOTulQe9i8BKWnKJR1kbvc7hHB2lKK5tCPDeysWT0UkV2eNxqEfe0gICRkFTCl52wA+rS0aWZW
	b0aMC5wc2fIFYNd2oxuh375hxy/NgApdcQA14MaWTZp0LBa8Y8+rRiOVRVWgOefOvO/eiAJM6P5Ef
	kUwQlS35GnBHdiDyqzQZiZLZbKeN1Lc0vojiNs1j4F0m3zLbg6evkvGdh48Z9e8NwOtnjTYhgLGAa
	bb5esZ8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDphM-0003fV-TI; Fri, 27 Sep 2019 12:50:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDpfD-0001mQ-I8
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 12:48:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id 3so6038408wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 05:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bn1Yyb+y0E2XtXZ6uMo4FglNk7nmGiqm3716bVhGUbI=;
 b=TBFVKH5YnYvKA9k1HqNOyb4I1T+oWcWdHhJRSBtV9wwOVZ5C3tmEprLSZTFy95dklG
 PK18glTyiG2OLppG25CnthxfwOgn1+eMOq06qOPBKqMv0EKzmkPGcL72VSN5nNYc+/QG
 1zpr+6ig4pOgDO2o9UnbytLFiSfRXIQMgtxhzb5PkrRyJiXpj1RRc1w4HhPkTVzQvSbD
 Ebafoo+4n3fBAbZkFCnnBFsQwzQbmtMydnWPqZrJGIHZdSOMF13dBfb0/Mc+ZJzmTka3
 DPNH0As/KnevUP5xyQzGCFuFExWjTaVghLVzUZ6Cg8Umaht3wSjys2umd7GB3CEeLe+P
 s3FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bn1Yyb+y0E2XtXZ6uMo4FglNk7nmGiqm3716bVhGUbI=;
 b=XcEzQ3iqJoGPw+LCmOJ5o5g1uYTYb17gZGg/cTUPXfot8Sh4MHMuHqmSD4F6Ah1oR2
 I8pHXBDShm/0EKGfeKJ6OB5MQE15zMHTG4M6k91KdqRl3PtTALSjvIip8wzPfa1LU5cn
 lE8nMLo2hE/wvkMCmBrAosQmZjK/HFHkBkmSueuN5i/fVle+2CsEzoM29/zjNQczbeYw
 rBtwoiaqbNgcvIqfy2GXKwy/onhLUnK5M6Qfid1zUHgaX9a3kp3/QwlNKyw1feJIusmy
 +p5n0Bi4gybGFBwtK6ULGlTyxADfC1gozfpjBG66SShWnPTYrr6HuEC8wt+VBtXUEFD1
 17uw==
X-Gm-Message-State: APjAAAUCgW/sRImNtJJTQgt9PlPdr360dMEJdmuBFzVJnx66VDTLbsTS
 f3JdFz9XCm8AhTYt7btVmRFp/g==
X-Google-Smtp-Source: APXvYqzONHqQTp17JYyHcHd/xTyac0p1PEyddhQfBKG1GprkNkRFMjyKJXvJEMfLSGAZ0KkaJxBoyw==
X-Received: by 2002:a1c:4b10:: with SMTP id y16mr6853354wma.54.1569588478368; 
 Fri, 27 Sep 2019 05:47:58 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h9sm2985564wrv.30.2019.09.27.05.47.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 05:47:57 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v5 5/7] arm64: dts: amlogic: g12a: add missing cooling info
Date: Fri, 27 Sep 2019 14:47:47 +0200
Message-Id: <20190927124750.12467-7-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927124750.12467-1-glaroque@baylibre.com>
References: <20190927124750.12467-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_054759_604976_E61C08E1 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing #colling-cells field for G12A SoC
Add cooling-map for passive and hot trip point

Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 733a9d46fc4b..3ab6497548ca 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -18,6 +18,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -26,6 +27,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -34,6 +36,7 @@
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -42,6 +45,7 @@
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		l2: l2-cache0 {
@@ -113,3 +117,23 @@
 &sd_emmc_a {
 	amlogic,dram-access-quirk;
 };
+
+&cpu_thermal {
+	cooling-maps {
+		map0 {
+			trip = <&cpu_passive>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+
+		map1 {
+			trip = <&cpu_hot>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					<&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
