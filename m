Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8E51D3633
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=krYyuN0Sasr3/dq9ASKcU29azQjP7ymDrN7eb7/4QNg=; b=G4V48CezWF0pDnK/7qMjx9l+KA
	1ED0oSdL71CN/m0Yb9btuCySBySWJMeqeD+/42Nspbjq4JXiCT+hE71gCbVistJ3z5u4Qj0jDSND4
	XLd7ULQvoxy2gAUElK1pKEknvuoegcMT4oQ0e3URJoBqVPXqyscaHwvi/It+0/ovL/t6vcxQINtPh
	nPLNTj7zAzBRSmLCVbSyaUVCHNTNq4igY+OOpsJFBgiW9DVBps2oZmTqfa2j8pw+DzqnvQ6brCPy0
	dSGraxGG1sr8lObi2GTmAwtr6bmMklBJxupMSm+i1E2CCTbw4r3Mb4Jy0I1csQQQQshbjfzwzCOlW
	FFisbJsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGVZ-0006YA-9M; Thu, 14 May 2020 16:14:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGT9-0004UM-R6; Thu, 14 May 2020 16:12:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id a4so1444381pgc.0;
 Thu, 14 May 2020 09:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mOIbZMU3Oqa+Dg2aziM3n4kF2vGK6hWpxfNawd5Nsu0=;
 b=BwU30ot7YCQG9NZPoBFw4wKb+41wNIIOch4RB+wtj0tn4DTl/fOHuHh/60hJQBGnwh
 pYvBvBpfp9CScrFFNS4nr9QQ+RiYl6v4GCrWTaqe+zkzbzKnzPHFDSa1h/VIp95+9hGE
 G6w4trABgsGm2jMi/kCwhN8pjLhek70rDKAqu8N21Lv6JMDNy+gQz4AcFh+C4Hnkog5e
 UvCBbKH60pkTnoODo9daDuW/jCuibXAfKFGejIHlZVxXHCX4Q5gHfNrLmkZyGzRstoyr
 k5XTttf2vuLYR4Ylqa3TVMIKsag/tpzLHXd2yWXZJzNJVAaR54xpflyUNXEMg4uSa6FI
 huwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mOIbZMU3Oqa+Dg2aziM3n4kF2vGK6hWpxfNawd5Nsu0=;
 b=JmfLnxZIHr8+lZ+Xl5noSCe1xpMgNnJhz5EYksPRrpDMfgPn9z7biPNjXk75rkwF0r
 5xRiuFdUUfjEyAsroeDQHvPlzPecRt7NNsmpiP8NI726CACQQ0aPlr8HZXvqrZVxa06M
 PnNbQJ4ouVp8NeyFJfg01xc43qX8cZD2avEdqGAwx6+SGvna7Hh4pPKHmn3hWGMTYuO8
 fRj+butDmxMvHSLKgwZjmZW6hmL8VaVlCURjhqhkb4Vun+xv0DH7vwP+RPpXtDQ+8/yG
 VkLIf7r1gWe6TRv3IAvaK8G2vLEoieUOOOOlnQ82VDo8PSaTom5ugf05YXiH2U7XtwPh
 15Ng==
X-Gm-Message-State: AOAM531g3aQxZn491Sw/BZOkUZmfMoxawPNnanwqtAVkwMqVZZcFJJJH
 DfNxz9JUOPnxRjhOhJJuYOQ=
X-Google-Smtp-Source: ABdhPJwvdtggt2b8J6sAudZPYpXwOhIVEjURNrj352xFZESrZQdWvUad1EMYYTo0GKeiMTDOjwEkxw==
X-Received: by 2002:a62:5f81:: with SMTP id t123mr5424784pfb.79.1589472741838; 
 Thu, 14 May 2020 09:12:21 -0700 (PDT)
Received: from localhost.localdomain ([106.215.24.137])
 by smtp.gmail.com with ESMTPSA id t5sm2331755pgp.80.2020.05.14.09.12.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 May 2020 09:12:21 -0700 (PDT)
From: Amit Singh Tomar <amittomer25@gmail.com>
To: andre.przywara@arm.com, afaerber@suse.de, manivannan.sadhasivam@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v1 9/9] arm64: dts: actions: Add uSD support for Cubieboard7
Date: Thu, 14 May 2020 21:40:57 +0530
Message-Id: <1589472657-3930-10-git-send-email-amittomer25@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_091223_904157_3F035912 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds uSD support for Cubieboard7 board based on Actions Semi
S700 SoC. SD0 is connected to uSD slot. Since there is no PMIC support
added yet, fixed regulator has been used as a regulator node.

Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
---
Changes since RFC:
	* No change.
---
 arch/arm64/boot/dts/actions/s700-cubieboard7.dts | 41 ++++++++++++++++++++++++
 arch/arm64/boot/dts/actions/s700.dtsi            |  1 +
 2 files changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/actions/s700-cubieboard7.dts b/arch/arm64/boot/dts/actions/s700-cubieboard7.dts
index 63e375cd9eb4..ec117eb12f3a 100644
--- a/arch/arm64/boot/dts/actions/s700-cubieboard7.dts
+++ b/arch/arm64/boot/dts/actions/s700-cubieboard7.dts
@@ -13,6 +13,7 @@
 
 	aliases {
 		serial3 = &uart3;
+		mmc0 = &mmc0;
 	};
 
 	chosen {
@@ -28,6 +29,23 @@
 		device_type = "memory";
 		reg = <0x1 0xe0000000 0x0 0x0>;
 	};
+
+	/* Fixed regulator used in the absence of PMIC */
+	vcc_3v1: vcc-3v1 {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+	};
+
+	/* Fixed regulator used in the absence of PMIC */
+	sd_vcc: sd-vcc {
+		compatible = "regulator-fixed";
+		regulator-name = "fixed-3.1V";
+		regulator-min-microvolt = <3100000>;
+		regulator-max-microvolt = <3100000>;
+		regulator-always-on;
+	};
 };
 
 &i2c0 {
@@ -81,6 +99,14 @@
 			bias-pull-up;
 		};
 	};
+
+	mmc0_default: mmc0_default {
+		pinmux {
+			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
+				 "sd0_cmd_mfp", "sd0_clk_mfp";
+			function = "sd0";
+		};
+	};
 };
 
 &timer {
@@ -90,3 +116,18 @@
 &uart3 {
 	status = "okay";
 };
+
+/* uSD */
+&mmc0 {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc0_default>;
+	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
+	no-sdio;
+	no-mmc;
+	no-1-8-v;
+	bus-width = <4>;
+	vmmc-supply = <&sd_vcc>;
+	vqmmc-supply = <&sd_vcc>;
+};
+
diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
index 3f1fc3e48415..8a541dd48f61 100644
--- a/arch/arm64/boot/dts/actions/s700.dtsi
+++ b/arch/arm64/boot/dts/actions/s700.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/actions,s700-cmu.h>
+#include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/actions,s700-reset.h>
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
