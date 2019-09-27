Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3520C0BBF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 20:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l+Ho8vrOFTCpP3k3SNZvhB6OyF+2awH+sawSbwS7oow=; b=ObzB/dIYwXFZQfZpXJDedWtVUQ
	7O4dEbbW7L3bIvYeyCD0zsh2F8JgW5CNvb+wDMxQrCRJ+uEneFOfFMVtR5dpO8BZF7gjax5CKCL3N
	cwE9LvJifzAWmsPmJWX/9w+1LtcZDo2Sb7uQscRxss5chcTpRUFji1chCN1zaAjC3FufdGIk6sXrc
	N2zHK9F6evi5Erh8jrW1uW/PDdowMC7mUG3RK+HRMMWxU+xrPl/j9UsRgkmEWLVcwPGLVfmYBt/i1
	YhDwtI/MAnkSSsb5mljnBqtVBiv9RHJeWtU5HPIod5wedS9rN5mUBmQpYsG1S5Yr6yW6sGjLMp25E
	uqfAlcxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDvFs-0004MX-OM; Fri, 27 Sep 2019 18:46:12 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDvDo-0000gW-DO
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 18:44:07 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so9234520wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 11:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=9YGH/6YIzv9K3Mh8Ek1+NGOAz5VU0/WuYChxnvTMt8w=;
 b=WEICmolGZnHioZ2LKuulr44gm97tGO6qyIie0Dkm+XjLmXc0kV7+6t2izQ3Wivgxga
 fq/QxZp2uEf3U4jM0aAub/ITgU6nLYMXMz2glcf36hmEUiOppQieDaC6c9l/XlSZ9Vyz
 OUzPyFz/S0j7Zg0DkDBGX4ZzY0/qi9NEl2ZJc4mMozcfg5Mvj0fPAQV4HQXtJLdbRJj9
 awvOmNRVU3GRzJprxNAGrlEepy7A2OehkmR07xfbONk9bdVB+ED0rB0jnWMWFjSzsTs0
 5WgKeK7ttHWswt5rUqy7+fulvI7/4mXHxWKpYBXj84y/wdHbfxTg/2xBBgOr7W667Pj6
 2fhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=9YGH/6YIzv9K3Mh8Ek1+NGOAz5VU0/WuYChxnvTMt8w=;
 b=Pd4694QGXe4YiHV/sHzRYKz2uo6QU96fjShqG5O6WSTX7GWxcRKrGiC58h/UB6sR/h
 xhliWQxshu9CPA+Kt+inNK9ckEiK6l+EEXVD6hWNehyY9ZzWf4RIYGgsdmbjdQc6RZRh
 6ZtwFL5wqyFdW55YwS16fUK59fq9YxwosFXMq/O5XzWOwAMdh2NirEf/J4KdySL9nke8
 IeBLQDGB3fWkJ+LUlCsnSFR8YANXrnN+1BtFfNV8Bu9+pFgBUc5ifruVDKDcRbRPJx0f
 yOOJisCI71sTGnqEqsqmi88xXG3aiReRtRA/+1HtWR9Of67nz14bBfQnvuIyLCtYB/Oz
 hKCg==
X-Gm-Message-State: APjAAAUpuF34V6Lu+tR8TcCeDvyiy5e19H7c8+lG8TN3FntUBOGYvehU
 dmTgPVg3rlxDYAIY0gCOYqe17w==
X-Google-Smtp-Source: APXvYqxqffnDkxG9M65OGWfltXuU1gnJ7LKfol3TlQRN/9OZh/LC3gDhhik8C1KMNChtRxbOE9lVRw==
X-Received: by 2002:a1c:4384:: with SMTP id q126mr9000036wma.153.1569609842442; 
 Fri, 27 Sep 2019 11:44:02 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.home
 ([2a01:cb1d:6e7:d500:82a9:347a:43f3:d2ca])
 by smtp.gmail.com with ESMTPSA id r13sm6246272wrn.0.2019.09.27.11.44.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 11:44:01 -0700 (PDT)
From: Guillaume La Roque <glaroque@baylibre.com>
To: amit.kucheria@linaro.org, rui.zhang@intel.com, edubezval@gmail.com,
 daniel.lezcano@linaro.org
Subject: [PATCH v6 6/7] arm64: dts: amlogic: g12b: add cooling properties
Date: Fri, 27 Sep 2019 20:43:51 +0200
Message-Id: <20190927184352.28759-7-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190927184352.28759-1-glaroque@baylibre.com>
References: <20190927184352.28759-1-glaroque@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_114404_901761_472CAB7F 
X-CRM114-Status: UNSURE (   9.56  )
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

Add missing #colling-cells field for G12B SoC
Add cooling-map for passive and hot trip point

Tested-by: Christian Hewitt <christianshewitt@gmail.com>
Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi | 29 +++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
index 98ae8a7c8b41..4bb89bce758f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
@@ -49,6 +49,7 @@
 			reg = <0x0 0x0>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu1: cpu@1 {
@@ -57,6 +58,7 @@
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu100: cpu@100 {
@@ -65,6 +67,7 @@
 			reg = <0x0 0x100>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu101: cpu@101 {
@@ -73,6 +76,7 @@
 			reg = <0x0 0x101>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu102: cpu@102 {
@@ -81,6 +85,7 @@
 			reg = <0x0 0x102>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		cpu103: cpu@103 {
@@ -89,6 +94,7 @@
 			reg = <0x0 0x103>;
 			enable-method = "psci";
 			next-level-cache = <&l2>;
+			#cooling-cells = <2>;
 		};
 
 		l2: l2-cache0 {
@@ -219,3 +225,26 @@
 &sd_emmc_a {
 	amlogic,dram-access-quirk;
 };
+
+&cpu_thermal {
+	cooling-maps {
+		map0 {
+			trip = <&cpu_passive>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+		map1 {
+			trip = <&cpu_hot>;
+			cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu100 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu101 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu102 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+					 <&cpu103 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
