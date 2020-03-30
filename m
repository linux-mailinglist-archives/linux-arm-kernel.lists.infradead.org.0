Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6BE19872E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=se4LdOxM3VAu1K6JXoknPc93KloEzXtwcI76vC6AKnQ=; b=E0eeQfSudxRKcU
	i1qirubcJEygLOP5VbS9TGsamrMwk4SQ0Y4Tp/p5p42tpwpxMxqL9IsZs16bovv+maNqJUkpcDQJT
	60l2C7RR7k5aYYN2MpN3oHbVkDzJqGNqmMu2YNE8A6s0CWsVdhKzCV9VdOAuPIRq3eui3eSzEvF0E
	7cmjlhpYYC10QdNbkPFIAyR5UUU5hxINqKnKWy8LFhKfZmXAeKz8LjS5G0TW4o3TNZLky75ZODFuZ
	Y1rfBWF0RGwCbcIetZJ30S25oBumtv/QTiWWSjzmXAUDJZieDPN0Zpkc0nMh/qv1GWAIPI5GBuMOE
	cOHbeFO6GmHwtz8rw3tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2es-0003Rf-7I; Mon, 30 Mar 2020 22:13:26 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2d5-0001mN-UB; Mon, 30 Mar 2020 22:11:37 +0000
Received: by mail-wm1-x343.google.com with SMTP id z18so487419wmk.2;
 Mon, 30 Mar 2020 15:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qzCUFuMkzWlLXqOmVXLBXxeE6kPrzuWsI5J2b3JrmKY=;
 b=B1Yi4hJe9+jP1oYxumDlnQbGxnGbQdeD6mr579nVjX9OZZyUZ8ZLyJ6jYNz9MBj1bx
 7maTetDDohQQUmSd5H3Bo71qQkiExseTWyE69vSfxXUpIQkBoYOVsVLlHvz2160L3s55
 QaLzK0+XdB+D2QBN7ymd6vDgY6yu1wRmxSHDMRiSB9Nnqd4vMeAB7BovKAoK7v5uVF5M
 F65EwRTVh0KZvIv/uND1prJXmqY3a7Gvnhv3sdr4QtyqwhfGlfGtEqPjiwzXgfzWyby5
 CovMn2lfBAf/Nte7H15w0e2jvI0kcYNhtrItVakqPwm7VHgAG/xsERYOQRHXXpeCZUOW
 ytfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qzCUFuMkzWlLXqOmVXLBXxeE6kPrzuWsI5J2b3JrmKY=;
 b=DaC5XhiPv5uDYuO32RBwAWvh9UDjttgzoKIFXjMElQl3j6ReI3u3luld1Y7RyJh+lp
 J9uH7H/3hDeIzMHrsn2n7EUrkikh/qV1ojP8O2EUJwwWY6/dn8+GGxVTQ2ohM60qJi0d
 D6oBP4MO/yQycMBv/oZpvGyafwg60ISudghxxNsl4B3eq6m4S9+mXjtWEQgv9VpLFXkB
 GSj2SyL3BiLkle7raXsIP6tJnWtQoHw109qe8UtBB4uIzjKQjZz5Bmn8g4Qz5gw3sS6M
 /r2vd+Qrt2brZIllerPgNkUiuM5qwl1GLo20VU1A96CFh6RCJOsNBaCJ3U5eT5Y9Vg5r
 EMig==
X-Gm-Message-State: ANhLgQ3OmpZlAqmSwr3UnAoQGmYB/wxul+icIpQBdT1Fa8zcBBuzaeAD
 uzdtsxb4NNKa2IVvirTvTYelkr3m
X-Google-Smtp-Source: ADFU+vv9tfk0eQLYelRcKNSFwd6CAWgH4qjrJ4Aiglq2T0D+CdLr1vDM+HDBUlMkqJzRgb5BkDwq+g==
X-Received: by 2002:a1c:e203:: with SMTP id z3mr216866wmg.71.1585606293721;
 Mon, 30 Mar 2020 15:11:33 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F13710ED00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:3710:ed00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b187sm1260509wmc.14.2020.03.30.15.11.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:11:33 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com, narmstrong@baylibre.com
Subject: [RFC v1 5/5] arm64: dts: amlogic: meson-g12: add the Mali OPP table
 and use DVFS
Date: Tue, 31 Mar 2020 00:11:04 +0200
Message-Id: <20200330221104.3163788-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
References: <20200330221104.3163788-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151135_979145_45183467 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the OPP table for the Mali Bifrost GPU and drop the hardcoded
initial clock configuration. This enables GPU DVFS and thus saves power
when the GPU is not in use while still being able switch to a higher
clock on demand.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 49 +++++++++++++------
 1 file changed, 34 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 0882ea215b88..3f2c7d0802af 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -52,6 +52,39 @@ efuse: efuse {
 		secure-monitor = <&sm>;
 	};
 
+	gpu_opp_table: gpu-opp-table {
+		compatible = "operating-points-v2";
+
+		opp-124999998 {
+			opp-hz = /bits/ 64 <124999998>;
+			opp-microvolt = <800000>;
+		};
+		opp-249999996 {
+			opp-hz = /bits/ 64 <249999996>;
+			opp-microvolt = <800000>;
+		};
+		opp-285714281 {
+			opp-hz = /bits/ 64 <285714281>;
+			opp-microvolt = <800000>;
+		};
+		opp-399999994 {
+			opp-hz = /bits/ 64 <399999994>;
+			opp-microvolt = <800000>;
+		};
+		opp-499999992 {
+			opp-hz = /bits/ 64 <499999992>;
+			opp-microvolt = <800000>;
+		};
+		opp-666666656 {
+			opp-hz = /bits/ 64 <666666656>;
+			opp-microvolt = <800000>;
+		};
+		opp-799999987 {
+			opp-hz = /bits/ 64 <799999987>;
+			opp-microvolt = <800000>;
+		};
+	};
+
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
@@ -2349,21 +2382,7 @@ mali: gpu@ffe40000 {
 			interrupt-names = "job", "mmu", "gpu";
 			clocks = <&clkc CLKID_MALI>;
 			resets = <&reset RESET_DVALIN_CAPB3>, <&reset RESET_DVALIN>;
-
-			/*
-			 * Mali clocking is provided by two identical clock paths
-			 * MALI_0 and MALI_1 muxed to a single clock by a glitch
-			 * free mux to safely change frequency while running.
-			 */
-			assigned-clocks = <&clkc CLKID_MALI_0_SEL>,
-					  <&clkc CLKID_MALI_0>,
-					  <&clkc CLKID_MALI>; /* Glitch free mux */
-			assigned-clock-parents = <&clkc CLKID_FCLK_DIV2P5>,
-						 <0>, /* Do Nothing */
-						 <&clkc CLKID_MALI_0>;
-			assigned-clock-rates = <0>, /* Do Nothing */
-					       <800000000>,
-					       <0>; /* Do Nothing */
+			operating-points-v2 = <&gpu_opp_table>;
 			#cooling-cells = <2>;
 		};
 	};
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
