Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5DB194050
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:50:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpLLY8annnWqfdb2E0uq5ps0dye3ADscp1YTuQQd+fo=; b=HqPkMsrgjdNNNb
	aZodKhVOIHO7yhfYgM6GfwUME64P3U6B+0KKwAuUKXaKHTwgR5ZLpTCYWPTGPAhyLugtr2MqqhV9Q
	Hvoj0/2kCH2XrAzgWPNDGB60QvsdF8FV94nGT7lz3ojOKlDOjpt7RX7B65spmo9HwrRtSTFGRiNWb
	ake/zgldF1Qaw2Z459Ht57E0LUhy8lG1Asg+s5/ZNYDXkHUG5mKMcz+DYNfSzxMtnLCmZ40Q2opXq
	PBG0ukM4vQ1+M2Pipj5E4kGiHslqyF1gd+88NK2F/HBGFsjt5AIBSDhJ/omXYNeifg02kV63QvwT7
	2ZGUVvMwKL5cd+pefGdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHStR-0001jo-Qz; Thu, 26 Mar 2020 13:49:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHSpA-0005rs-60
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:45:36 +0000
Received: by mail-wm1-x341.google.com with SMTP id a81so7049792wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=67sFvVtkG1ivlSk+fGwbgHaYe6cmIRn/pWHBZ0lu9g4=;
 b=bLdXR/wJazPg41YLpiPbUokG5vLuO47L/bv5lHhqgJwrXrKPuoF0CfDbTzt/pL6oYN
 AZ9NRRYVws2mK6JuK8ESpJ17a5pZ64yHZJcKdREbVXQqnJ1fXHXuOkYPk0QCqIyv8R1T
 rwXFCFPgXp6K2IOjK5EZ9RuQ7rs90tLFLUbJtLEo5oPez3u9GZzC6jW2sVgDG7uhqc5Z
 YymYWEgfSOFN/aU0Vrgw/HxL+faw5cRtFrKVRbIfu/Sw9MZsx4wbUSomIWMWweLYd9VG
 SPCllFmJWsNce0I9nnmXjneBmPa3dFE1djhJ35yMnqVKWNXI37dnfjvlg3UeJBQgMbc6
 wkcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=67sFvVtkG1ivlSk+fGwbgHaYe6cmIRn/pWHBZ0lu9g4=;
 b=XQXh3cf+/Q6g44WXnwogBxIjWR9lFJSHLVtbLvF7EqAzRUIwOAyypS/prUlxz5vTJN
 O8mt9FdGiWLfhbEmrpLZQvflf08pmS6tQpAD3llbJDViDJzyQe381yI+yEsz/jiecyLE
 x/hCJby/uzD6GKXJV+Ib0C0II0lSsZ27YqP9psK0Zy5ZpJziN8q4BrptWQqPGjswOKGY
 byHiAVk4PuaorW3CN22a0CpiBlgvnSSpiljOJsTUJ/h9uCqvjzOd0EYv1CAZap8hCvMs
 sXkPjibNGQtKDWvm3JjB3MPfR6i4qWaxxrXFSgd80aR9Pq7/yLf+3DnaP77KKlhvablb
 gjgA==
X-Gm-Message-State: ANhLgQ1iqlqqOqrVWyL5/yBkxDNNKNG32IE4xLKlwAqsO6uz9+J17JzM
 2MQUMzuwEYiFOI4XIh/dP+V68Q==
X-Google-Smtp-Source: ADFU+vuHF3B+GqiyYh0z892h7eeFlpwGJIfm9AgAVwf3x4ExWuzFRA51gjXfmXCgwh5Dcacvi6Cv/A==
X-Received: by 2002:a7b:c20d:: with SMTP id x13mr65827wmi.52.1585230329464;
 Thu, 26 Mar 2020 06:45:29 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id h29sm4079617wrc.64.2020.03.26.06.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:45:29 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: kishon@ti.com, balbi@kernel.org, khilman@baylibre.com,
 martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org
Subject: [PATCH v2 14/14] dt-bindings: usb: dwc3: remove old DWC3 wrapper
Date: Thu, 26 Mar 2020 14:45:06 +0100
Message-Id: <20200326134507.4808-15-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200326134507.4808-1-narmstrong@baylibre.com>
References: <20200326134507.4808-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_064533_827766_2B8D81C6 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

There is now an updated bindings for these SoCs making the old
compatible obsolete.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/usb/amlogic,dwc3.txt  | 42 -------------------
 1 file changed, 42 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/amlogic,dwc3.txt

diff --git a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt b/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
deleted file mode 100644
index 9a8b631904fd..000000000000
--- a/Documentation/devicetree/bindings/usb/amlogic,dwc3.txt
+++ /dev/null
@@ -1,42 +0,0 @@
-Amlogic Meson GX DWC3 USB SoC controller
-
-Required properties:
-- compatible:	depending on the SoC this should contain one of:
-			* amlogic,meson-axg-dwc3
-			* amlogic,meson-gxl-dwc3
-- clocks:	a handle for the "USB general" clock
-- clock-names:	must be "usb_general"
-- resets:	a handle for the shared "USB OTG" reset line
-- reset-names:	must be "usb_otg"
-
-Required child node:
-A child node must exist to represent the core DWC3 IP block. The name of
-the node is not important. The content of the node is defined in dwc3.txt.
-
-PHY documentation is provided in the following places:
-- Documentation/devicetree/bindings/phy/meson-gxl-usb2-phy.txt
-- Documentation/devicetree/bindings/phy/meson-gxl-usb3-phy.txt
-
-Example device nodes:
-		usb0: usb@ff500000 {
-			compatible = "amlogic,meson-axg-dwc3";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
-
-			clocks = <&clkc CLKID_USB>;
-			clock-names = "usb_general";
-			resets = <&reset RESET_USB_OTG>;
-			reset-names = "usb_otg";
-
-			dwc3: dwc3@ff500000 {
-				compatible = "snps,dwc3";
-				reg = <0x0 0xff500000 0x0 0x100000>;
-				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
-				dr_mode = "host";
-				maximum-speed = "high-speed";
-				snps,dis_u2_susphy_quirk;
-				phys = <&usb3_phy>, <&usb2_phy0>;
-				phy-names = "usb2-phy", "usb3-phy";
-			};
-		};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
