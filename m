Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D58C19DD69
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 20:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uNyRFqHokGRip09d+H/N24rApWDHdXmKnIBSFZXZaCo=; b=g6my36SFCcKa+XamOPhTM8YeGn
	DAA1YTlqV6Rtc1CF4F2aY/s/3SOdiHAzoZocy2GWkyXEtcHGbk3hBzJM0j8y2BAAjV1dTihS5Uvo2
	7l4tCmYohH4GTI2Prn76Ho7E1LQS8LWqsaAfzxqCWNDjb0F88AHRmT5qXdSPssWl79QuBefxKC+8E
	kBHUy/y1ovJcFMHKurn9x7R2x7oPFt4BwfOximCjFu3Y7BwRkUux0d03OkK7XYLz3NqiPYcim+PSW
	433Ylzwj4+kJYW7La3d9J77AMPXCN1UY6qpaIA7xZbsTzFqZlGHQhELFIXLsJJvecbxaPy1ZvX35K
	MltcVv9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQev-0005ua-11; Fri, 03 Apr 2020 18:03:13 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQdz-00055c-FD; Fri, 03 Apr 2020 18:02:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id j19so8691437wmi.2;
 Fri, 03 Apr 2020 11:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IxdQKl8R6YdM8K12dz41P09Nrimll4Ax/Xh/6JqmhUQ=;
 b=pjLWh9fa3JaWmB//DkucFHLeWDoeVKvvYt/9ZAeV1bXCC2v/ae77zMcaue3hrhw380
 Fhga1BX1j2XkVpnwXxuqT8gKFpDRXI44u4cpXQIca59sz9Biiv8imONtXD1bDCpo59Za
 7rpMPLzna4YJ5J8xCVTnlHSsoOCrraK0/NkQ/KBorBYOPunpWcz/91cwj34Z6HFN7G33
 L/wmEryLTVgdQUHxWemyJjdP8XQUNSD/saVs4rAfNXjSOsGDZ8u1rAcfqwA6VYxKcjMp
 Rih0XpHt8Uau6PVh6MadenOVaNWSDXpLGsHy2qR1IXtRlmR/WeUGBPdfQACs1Slb5cBK
 7NXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IxdQKl8R6YdM8K12dz41P09Nrimll4Ax/Xh/6JqmhUQ=;
 b=bjbvZdhmv+3e87IIIpH1NXxKPtb6FcUaQJRQI8qpl8qCj3oxtFL8qwYnOOADgTCVyi
 oXUo9gdPLGBS0c1+IuSwD9sGCR7+IAAViD3U66OHZV+KxXWaqVER8NAikEzXTClRKTLa
 vnjznAXRbOdvC5UXujBRq8otSUXrNfbbHE/bUjvhEIyp01s2VrGlNHCwimnPHBNu/f2Y
 e3qCbbFoXi91ZJk72Du1W81d2bQKzXBAXN2FwqzX6IUeFC6mjcdZfWDqlr0b3Cd6tasO
 HGttsocRAxtQuBzR4ytrMcruL0n7cyOWQdGhROinfbwN532wwHoME7eX7Vx+53LziuBA
 tVkw==
X-Gm-Message-State: AGi0Pub2j4blhs+LfcJdPLgcZnn4neobyyCtzoNwk8G4xL/33xRyvhVA
 y9rSQC75fziDxZDHfODpUUM=
X-Google-Smtp-Source: APiQypImoK5ioimPgpiENe2Nn/IzH6MBtR5XoFVNl4JhD2f5ZPCGGVK9AMP9nAW1l7dTWem02KHOJw==
X-Received: by 2002:a1c:3943:: with SMTP id g64mr9784987wma.9.1585936934139;
 Fri, 03 Apr 2020 11:02:14 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j11sm13005492wrt.14.2020.04.03.11.02.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 11:02:13 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 4/4] ARM: dts: rockchip: sort includes of dtsi files
Date: Fri,  3 Apr 2020 20:01:59 +0200
Message-Id: <20200403180159.13387-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403180159.13387-1-jbx6244@gmail.com>
References: <20200403180159.13387-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_110215_550999_56A8DDAD 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The includes of Rockchip dtsi files have been subject of
several patch styles, so give them a little alphabetical sort.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi        | 2 +-
 arch/arm/boot/dts/rk3066a.dtsi       | 2 +-
 arch/arm/boot/dts/rk3188.dtsi        | 2 +-
 arch/arm/boot/dts/rk322x.dtsi        | 2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi | 4 ++--
 arch/arm/boot/dts/rk3288.dtsi        | 4 ++--
 arch/arm/boot/dts/rv1108.dtsi        | 3 ++-
 7 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 8be47354d..55f3838b2 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
 / {
diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index 1cf7e1b38..9924def56 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -4,9 +4,9 @@
  * Author: Heiko Stuebner <heiko@sntech.de>
  */
 
+#include <dt-bindings/clock/rk3066a-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3066a-cru.h>
 #include <dt-bindings/power/rk3066-power.h>
 #include "rk3xxx.dtsi"
 
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2298a8d84..e22bfc612 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -4,9 +4,9 @@
  * Author: Heiko Stuebner <heiko@sntech.de>
  */
 
+#include <dt-bindings/clock/rk3188-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3188-cru.h>
 #include <dt-bindings/power/rk3188-power.h>
 #include "rk3xxx.dtsi"
 
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 86c4d62fc..d5a1aad17 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -1,9 +1,9 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 77ae303b0..60259d9eb 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -3,9 +3,9 @@
  * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
  */
 
-#include "rk3288.dtsi"
-#include <dt-bindings/input/input.h>
 #include <dt-bindings/clock/rockchip,rk808.h>
+#include <dt-bindings/input/input.h>
+#include "rk3288.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index ace67aa7d..a56b4a58f 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1,12 +1,12 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-#include <dt-bindings/clock/rk3288-cru.h>
 #include <dt-bindings/power/rk3288-power.h>
-#include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	#address-cells = <2>;
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 7d2ef39db..06c46bed9 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -1,10 +1,11 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
+#include <dt-bindings/clock/rv1108-cru.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-#include <dt-bindings/clock/rv1108-cru.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/thermal/thermal.h>
+
 / {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
