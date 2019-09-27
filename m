Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D7DC0BA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EOcknQwEXBJg7RJuhTHdWxVnVaBCWnXhrIBy9J7AXn4=; b=Mjpwvxskk4zBImZFvpneMTd7/5
	SFVhQ71je91UAVRcAssQL5S04uy8Fh1IdpY3sPh3gd0Ysv8Q26MOn4GErIUP14yaEcCCRKdD0oW97
	eRKd6JV7ZQDvnf4DSPixXXSzvjc/pu7ELx1N2c5Qm/n3drlwy2juSFdgcxFKT1iaG/jyvbHyY8WX1
	+gQpHYAUjemb7Olv6G1EQRtYIQyd677iNmGl3Xi8ZevqRyfEECSBVxrno2Fc+a/7AdMTK7MiqccgO
	girJhzzkRJj+ObtsL2oh5Ww+LBwQudBoIZIC3q+Z93dOo6tDdhQzyIKh2NSxFJHHk0jbZWNfiVX/f
	hDKoAbLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvFD-0003Tq-Sq; Fri, 27 Sep 2019 18:45:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDvDm-0000Yc-KS
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:44:06 +0000
Received: by mail-wr1-x442.google.com with SMTP id r5so4282054wrm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bn1Yyb+y0E2XtXZ6uMo4FglNk7nmGiqm3716bVhGUbI=;
 b=takF3d8TQ23XIGxuLOV8EzoCgdq2Cx3gSbMfwoy8dm4JOeV1XPOcGDt36yHf/TI7T+
 FtbvWKEknxgAIutpiIolDXxparFuO4OfaK8AzTK97b0LKYe0SDv37m3nJ8nkhGqKqX+l
 ajQyWxbLHv32CSr7pUKgba6XKx+DcFNKw1+DFc6ufE+etxrYBfXlb+f4nP8LZ1bOapM/
 NC8bBmCjPgyuLG2UVTsEA2vzrupBytvvOiKvTboLnyCM6wxZJX1jMAWJU3qpS097AxuV
 yLpcWtGm7n+t1ZhZedjLWOVxe+aXapZhHwoYnea03QmYlH7hDqjSMG/eA+/c/ixE0Ogp
 3jvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bn1Yyb+y0E2XtXZ6uMo4FglNk7nmGiqm3716bVhGUbI=;
 b=Z0DPElDrEwW6uhcqc1J4KMpIx4B+Jiys/I3V8V0Hi3Hu47uOHTe79fCRXNDwmxhe1S
 ce827qrOXBs5ci+/Qo2QAZPxqrLWxLP8KviQgCD+mRuwBGTgpGrCC+mPXnf3E6lWgbS7
 uFne3BE99KnF0j7PuWRu+Lia3ReHhlhQE4w2t1O4H9cwwNQiP7GmGSBHmSANWeYRGnWq
 M6zxn8MfTygAbUWLlB4TRO6BQm9w/Jm43WPZKl7wNaYKSqgpasU5B/8wlJa6XiZ7hHPc
 69u4M5UxrJFwkZFM3AFkMxq2+Wqurf+OurqBFDEwUlobM6UhOg5h5cfhlfQL2BIwSwr7
 cBbA==
X-Gm-Message-State: APjAAAXc2S/Qy2zlkJHdR5xW5TjAs1UQuUnrP5JWHVpgbEqnWKnEczbH
 sRpm5NmX9tg3OneRZw8aLcYQ3w==
X-Google-Smtp-Source: APXvYqwwmzGMJt5+RoC/OswzZ5EMENUYAm3d/ZFwKGTbNtLuc52z5Dcy/qT1fzKqYHzwCMtLhVptNg==
X-Received: by 2002:adf:fe05:: with SMTP id n5mr4414380wrr.355.1569609841286; 
 Fri, 27 Sep 2019 11:44:01 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home
 ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id r13sm6246272wrn.0.2019.09.27.11.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:44:00 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v6 5/7] arm64: dts: amlogic: g12a: add cooling properties
Date: Fri, 27 Sep 2019 20:43:50 +0200
Message-Id: <20190927184352.28759-6-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927184352.28759-1-glaroque@baylibre.com>
References: <20190927184352.28759-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_114402_705559_A1479ABA 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
