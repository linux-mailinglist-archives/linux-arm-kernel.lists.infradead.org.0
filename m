Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291E71F154E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWf1soy55UqTZsnYiX7wypq3BlyNBZ9UCBQcN7FLoNI=; b=h5VlqJVFhTa0n1
	GynTfVwjEmuSNwbXpIbzN3PmgVCxgcXd2O8wIW47uNBZC8C4gKGX2CDFiTBvXNw0AhsXVIlSlMBDh
	S06P7v3bh1rZ6NUoDL9jYx4g2933vw4mxotkGKLlC49GZq8TR+TJzjf5II5guBFs0bAr2rYVsZmdS
	UMRHaJKYAbDSE+DyIqd+nWuv3OBvKudeYqyjxlNFKsyrMSJA6Mdci5eIcQ/Zl6rS8487dkVOslsXU
	SI11iiXbQlX9ennfee85nfz7amFJ9hVMa1n8EWTu8FHPGb3zSE4RmavI/wPbXkFBWupecuXbAb1+Y
	WeDQoBS10HXGWabjfrBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDwV-0003p2-3X; Mon, 08 Jun 2020 09:19:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDui-0002N9-C6
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:17:55 +0000
Received: by mail-wm1-x342.google.com with SMTP id q25so15759433wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 02:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=itZ8nYpO9rVwAB+XOSiZ1Zaz+WlUMeN8KYJbRrgai8w=;
 b=l7DQzFGSrv4z2pwkGTr5wRytkcMyxSBUNwqJUmmoa0jIaizCifAiGTW4Ra+5LDMc0H
 33RoSFLpDmOXChn8CPGWvV8+jciU+jYwrR39lPv9PKGtNQZkse7loLOdUU8neJsEBcpT
 awlD/WxgfMusa4hrvPHANnYZtgyZ0WPAVPhTz4wZFegA3NykKbQ6Xx6vThwsq6WUj6xM
 lkCDzkpH6i50UF6l+l2wg+2skKTNV9JqscRxvoTin0X2W7YsRQ/Z4VnNus7GmeSI7WGs
 8xpUX4jaxBLadrlFxX61WDqowj4vC2Apoz9u25nf9kmQb2Vbj4qXQHDV8aEYxqSsNe6n
 /o5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=itZ8nYpO9rVwAB+XOSiZ1Zaz+WlUMeN8KYJbRrgai8w=;
 b=L5uSZmMYZxChLEtpMTg26DOheODEXApg2x3GLvcTJaPHne71qC5lQ5OD/l8ockziiv
 FC+WejjweTvsYumb+6XUGXemcGsS8+FVSK+zsQMEKA1Dk6AWIAJNn43b439oPxuBDn3X
 4PJlIcU3oJyJm+9x6cpewkKWduFmG3pdmcEGkAYgvVYkbLMt1qVOAx6Lsi+NaoaZuh5u
 QsqTIV9FW/W98z7AJbOprxIys8PZUIpF0nFFjhnxrr+xLh6ZN6LuDae36cY0aMzmrmfJ
 qMI9ZZEMlP0UM/aoBnG3GwENHXekfQQRRYkcLWXidiCEnODOgEvXm8U0isELLdZoDQDL
 wnog==
X-Gm-Message-State: AOAM533nf5nPEjxNUl6CNeDO4AZDUgcQWYwrYQCsm/4jLyAE5cGNv8T9
 qbEjh4Tl6Kp+3c9WgOGHD/YRQA==
X-Google-Smtp-Source: ABdhPJzrMGTk69KE1wsSY5muCwS8Xznk2Z2jhdHWIbXZ5sbFgJPKZN2ZhlPLbzx6XFNulQJ+rLPHVQ==
X-Received: by 2002:a1c:2506:: with SMTP id l6mr7539438wml.34.1591607870432;
 Mon, 08 Jun 2020 02:17:50 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 t7sm22732326wrq.41.2020.06.08.02.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:17:49 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v3 5/5] arm64: dts: meson-khadas-vim3: add Khadas MCU nodes
Date: Mon,  8 Jun 2020 11:17:39 +0200
Message-Id: <20200608091739.2368-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200608091739.2368-1-narmstrong@baylibre.com>
References: <20200608091739.2368-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_021752_534334_1CBA926F 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

Add the Khadas MCU node with active FAN thermal nodes for all the
Khadas VIM3 variants.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-khadas-vim3.dtsi   | 23 +++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 094ecf2222bb..3325e54ea690 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -183,6 +183,23 @@
 	hdmi-phandle = <&hdmi_tx>;
 };
 
+&cpu_thermal {
+	trips {
+		cpu_active: cpu-active {
+			temperature = <80000>; /* millicelsius */
+			hysteresis = <2000>; /* millicelsius */
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map {
+			trip = <&cpu_active>;
+			cooling-device = <&khadas_mcu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &ext_mdio {
 	external_phy: ethernet-phy@0 {
 		/* Realtek RTL8211F (0x001cc916) */
@@ -222,6 +239,12 @@
 	pinctrl-0 = <&i2c_ao_sck_pins>, <&i2c_ao_sda_pins>;
 	pinctrl-names = "default";
 
+	khadas_mcu: system-controller@18 {
+		compatible = "khadas,mcu";
+		reg = <0x18>;
+		#cooling-cells = <2>;
+	};
+
 	gpio_expander: gpio-controller@20 {
 		compatible = "ti,tca6408";
 		reg = <0x20>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
