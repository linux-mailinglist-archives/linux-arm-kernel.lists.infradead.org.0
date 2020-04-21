Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C5A1B20DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2zci4aKd8TwRQZY/U1FurfQxwyyhFm2JCQ67r7CM65Y=; b=TF4ItxPixjoG81
	b2fFH6iaVuOcNqbYN5Au8ClJfdt1/QDdNiNyjSNO2K+StnA0iO5cyD5VK2f4yVUzew1lP0B99MZ5x
	4vvpdKngFAuRF06a8zlSj3hc6Z3Q5IJ9/0efSvwhD+wJRuKtqZwS+EX3GAcQarGSnN0U4OoQ/FSZ8
	QhVoKEZKx4/jdPJts5/V0Ih9DflmbFwm6wK9ExCcOK7W4tPGKnCU8kHYor0qE8RkwthNTUMjiVN5v
	52XeKIVq3KFDO7Zu1X35QQ2HzAptgH2EQF/FsPMZKQmI6HLKIQcZJV/hs8EhbT+WMQoZXL+uIOni9
	lTjceig87npivSlVjykA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnrw-0002gd-Vu; Tue, 21 Apr 2020 08:03:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnqJ-0001FQ-5k
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:01:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id z6so2556021wml.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=exntrZVDrpNC4LfoF62zE8ED3Dungiic5pvW3+dqcrE=;
 b=masfNwGS8IZQ2541J1dwhk8GqCR2J55vlrTQssHEbTO9xZSvKw4jZzjNLJV4v1DYeg
 ubBwEzmaUyKD/nAjdgA2nIZ319L0eXWUFqw/8EGufNzLxABbA23/YIVLCBbCfBHqn1h1
 I8SnrdHtfrIDDG340w1zg/i66dRkz3EJ3pQzdTFMN65wwpFiUkRb6Mpfim9Dcx+6InWS
 hT8QIS2zrVKTrr9+5cLP7YFB2d0W2BN9mko24jNiwAw1B7b9/521qmpA/S+8J7fcAhDK
 SNd1tyts0TZBlubdtb8U1OEkIt8DMPHul1Lmd+0eiBGcfKaIooeFH0AiLWhFp+u2O3U6
 Yw4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=exntrZVDrpNC4LfoF62zE8ED3Dungiic5pvW3+dqcrE=;
 b=nPFyleRudep8i2lRhWWtfo9NFB2TefF1ys57KmFJv+XPqIjjPlMIgoiwMESq2s0TPe
 Nti96uSYSJ0kky+Y4OFozw2t5UNs8w6HyKoCeBnSuBKr9WMLEV9Znj8Ci6zJKhT7eAqV
 qaWYPmkfAyE923gVhBMSD5V+MpwCI0d3S0PHZGGrugeZ5bGe/2242p3aJ2xdlRCduz3v
 sArxeVTVwUU6tRPWg6Hg73XjJTKIA0SFc0Y3PlpWnKDVt9g2EQPO0Nt0qhwIE8a7jebT
 +b++CsdD9K3grspwTSBAnPq50V0B+lViskQeGdUuRhxGxyZfdFH5qSbe15ID2+O9Gz3a
 Lzpg==
X-Gm-Message-State: AGi0PuaZzuog39pKzuKTZnWGjZZ40aSf5/DsiPtufpFvKnk8tWQvagNi
 +AyBxBIoy+5KXD+Dv/OGzrxujw==
X-Google-Smtp-Source: APiQypI9h94l+CZXcEb1aZ/OgizCqV8es3Sa3eybeGWtzOeDjtlLjSkfJia1v7tSyR5sX8sej1M55w==
X-Received: by 2002:a1c:96c6:: with SMTP id y189mr3785930wmd.106.1587456077312; 
 Tue, 21 Apr 2020 01:01:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 x132sm2561552wmg.33.2020.04.21.01.01.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:01:16 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [RFC 7/8] arm64: dts: meson-sm1: add cpu thermal nodes
Date: Tue, 21 Apr 2020 10:01:01 +0200
Message-Id: <20200421080102.22796-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200421080102.22796-1-narmstrong@baylibre.com>
References: <20200421080102.22796-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010119_223644_62F69235 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hwmon@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, art@khadas.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add thermal nodes for the Amlogic SM1 SoCs based on the G12A and G12B
thermal nodes.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1.dtsi | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
index d4ec735fb1a5..71317f5aada1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1.dtsi
@@ -56,6 +56,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -64,6 +65,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu2: cpu@2 {
@@ -72,6 +74,7 @@
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu3: cpu@3 {
@@ -80,6 +83,7 @@
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		l2: l2-cache0 {
@@ -466,6 +470,26 @@
 	compatible = "amlogic,sm1-clkc";
 };
 
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
+
 &ethmac {
 	power-domains = <&pwrc PWRC_SM1_ETH_ID>;
 };
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
