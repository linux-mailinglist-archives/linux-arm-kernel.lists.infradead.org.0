Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28556CB6F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 11:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ddlOrYmXgx1u6u7NiSb+5gGemQ9NroArW3+0pDgOf5U=; b=NE54mInQrlO+Kby7DdIvBsDs21
	ehEqE4KUg7aTSgWrtEV9yF0OXx30HEIvoQ6y0XbDfzOD2e9KEonXE7HTZieqdOg0sDN64dO2rssMa
	1+R8jbueJzS2eVT4jfFGLC2kFpldBDV7g98VWGKKdAKzzTgjuQ/Eu9Mz9ttSgltsakhb3BieGXgrg
	lgx0nUihn+Wmq1rCFP+X5h/NoG4Dksn3/5O2/SQXFjrSYtzAUyXm9d52PfmOxwRYR6SQ8d8gYziOc
	kll7TRD9GeIZ0r/RUfG7JqsAVBuTO6+o3h+pgKV/rPQ8LUyuQCMIz9WSdN2V4YrvA36+ppdDLT4mL
	Jix1ppbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGJUO-0002Bc-R9; Fri, 04 Oct 2019 09:03:04 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGJSm-0000iV-70
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 09:01:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id n14so6109056wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 02:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hhXs6wUTS9va5GBBPxgaGywhOz0cCImkUJC6MQ6iTnU=;
 b=JfzUU/55kQq5nD+ZLn3bLOI0F2/3jkG6qDmgUNVl1g7jdDYai2si2/JGxcZAIkjIvL
 wYoroINmrbRvQI8o02a5ng5aZPBf6AMNSCbIt2lxZMUdFy1aQewhJ6abmtICuikfg+TO
 rUr+Lml6iaUznsO5dMUSIoVB46b7426KBe3J12sx6HORU9Aqr8lsnU899mjeEXFX4bRr
 7Ww5+jvRb/Oev2fiMRcYrLfA1AFZbKN0VUdO8ssCPkS8qNACthwlVDV0R9gDcSjG2Tmn
 5XdCEsBflBo+3vnU87piw5PS0ihoDaUb9/JjfKErcxKBB6mLCPm9aNI8gPPYheqrby5B
 VRIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hhXs6wUTS9va5GBBPxgaGywhOz0cCImkUJC6MQ6iTnU=;
 b=LIDlcUcGcn19OIfrGf5CgkGETYCJlAlw0iz6SIM/jmpaFDa5vAKlkEWPJnD0hRDm73
 klSR2CeWlTY89dydvdEXqe+HwwszKay+QdZ88oTqUEkIwRkrBu2fV4/65CrxBKgqeNOW
 howjp9BwaUdq6PAJcI4rxeC6t18ZyposLXShZF4UnyjLzhWnJogVC+kRk7xN+QGpthxY
 4eZ4dqLk55XQG4to2bUAvkBbhMDplqex99Iqa9ZmQY7O5Qbm2wGWLDWvz7zb+pGNevae
 q565BuE9zNa1F+FztpIEdLQJpvRJcar2dd4hNUBUE9Vx1JV6QNEa6A/5UN/8J3Oh1Tuu
 Y2hw==
X-Gm-Message-State: APjAAAW7J3sY2lM3BzfdaujPM1VCJSCSWDndd3cB/FzYCEDJi/+eeVlo
 By/4DeB9bRZosm/lwFxgDsiR0g==
X-Google-Smtp-Source: APXvYqx3ANd3JSC4dmn8iEi+vP/O2TkbdGEiwSZ7uKVt38ptoDgZ9MC6kne/ujlpccqO7cuphtXGFg==
X-Received: by 2002:adf:e64e:: with SMTP id b14mr11388390wrn.16.1570179682980; 
 Fri, 04 Oct 2019 02:01:22 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v8sm7765170wra.79.2019.10.04.02.01.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 02:01:22 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v7 5/7] arm64: dts: amlogic: g12a: add cooling properties
Date: Fri,  4 Oct 2019 11:01:12 +0200
Message-Id: <20191004090114.30694-6-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191004090114.30694-1-glaroque@baylibre.com>
References: <20191004090114.30694-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_020124_331861_F8268D9F 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
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
