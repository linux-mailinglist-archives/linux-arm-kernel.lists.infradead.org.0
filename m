Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D85B0F603B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 17:21:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qN4qEqv3WeKjF6bp8QkF3lL2pJF+P8fJcYK3jOyxCS8=; b=VQx3UKUGIkW9BscQzK+VbZt+/4
	nG895qFULkluvav48jEeloyJdbB0dDiDiCGeglUKY8rRviw6DGBkUXOW6dOiU7lG6lqdWv5TKfhN+
	fUa23RAuAWpysG3w8Yv0ONLVGob5EM4T2a3g0IpEl4QlvhzsVUTzyFiCe9ZDOFGSn5cJWcw1Xkmxa
	ZqZrWVnZwlYyytNxbGzQQlFXvLdhC+EdUzO28RV0lciuF0ThcblhEmvZ7Z9+cjfSe6T9zjT95aPR0
	fvhwjeHG1Fwy8ZepgFWGoikaTuaj/vfJDkV73yUvY+TBMC5C1G62xZP3z8rkFtdW8Wclo4LqyTYxx
	J21UnuUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTTU4-0004am-IL; Sat, 09 Nov 2019 16:21:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTTTj-0004Sm-M4
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 16:20:49 +0000
Received: by mail-wr1-x443.google.com with SMTP id p2so10297740wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 08:20:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FUTvuHG7RmVULQblIGKFdlRxrJihRtMr5+M5nviapzc=;
 b=iIpMQceQDp83AaTgM0Ijo2lb+sgszk5y/ZtmzGISrJ/5wBosxJJB5rNer3vOVnN/bC
 zaFXVrmVEbZbn38WdZkI7J2m0N6jQzbO8pqj92Ynxo5ocBZBR/iy5jCCGRcA8tB5sm8q
 94kRqjeRhf5m0BGxpmdcRaLD+N7NwxrgaqtxrV+acv0lPjSm11C8WkHPIJbLjm91MDS7
 tQKL2zgjCMPG2ggsbiw6GzvrtYsqxcN8CbkzNPu343f7UGMQW7fpurfXva12j/Ljyr+l
 eM8PeJr0HmKZpGm6+vxhEYVc5sHO3asYefwYnrYWq1+FUeUHJdWfk8q0+x7R+w6LHkMC
 ofDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FUTvuHG7RmVULQblIGKFdlRxrJihRtMr5+M5nviapzc=;
 b=jwFiXgJJ96QEY/otihrxKH6O4SjqFCXoSdTdpOVoW440c9uqCJdlZLhvV759BrimB1
 JJM0o2ix2Vhj0O2ecdEk8DUEIiiSO4m9/hgz55xRxna+AOJDX10ec9m8rVlJNeFzyLUC
 wuRLAX9NE1ft+aG/94CWdm6ajU+GmfpwQqVR+Njs/4Lolem+AADMEMsXXklaJXg3F7Bm
 mvgWBw5M5huKHUq4PtdzEgBXzZ4wX2br5PaqPO2QXvYSfAsUrh3I7kUyodlBPCCk+cfM
 krG8URuEECqtgSriUfyQuZ2CP/gPcVL9Ehhui96kevBhg64malnntPUgrXRooOXxFYoV
 TSPw==
X-Gm-Message-State: APjAAAV95UElSgPbAjIVImxS6UlTekiwQzhvKNjSicfLgZMDdOZIO8PO
 YYrRjZ2y8bqNOaaCmEDs0S7ETg==
X-Google-Smtp-Source: APXvYqx7kZ0kg2+3jDFLqaaAswuDyDwE5cPxU4i/4bbMzb/uVjFv9kYBH76BzgIx2RYKSAGbyw5xKw==
X-Received: by 2002:adf:f489:: with SMTP id l9mr10294183wro.337.1573316446135; 
 Sat, 09 Nov 2019 08:20:46 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v8sm14534975wra.79.2019.11.09.08.20.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 09 Nov 2019 08:20:45 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
 wens@csie.org, jernej.skrabec@siol.net
Subject: [PATCH v4 1/2] ARM64: dts: sun50i-h6-pine-h64: state that the DT
 supports the modelA
Date: Sat,  9 Nov 2019 16:20:32 +0000
Message-Id: <1573316433-40669-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
References: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_082047_719803_94C2C300 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current sun50i-h6-pine-h64 DT does not specify which model (A or B)
it supports.
When this file was created, only modelA was existing, but now both model
exists and with the time, this DT drifted to support the model B since it is
the most common one.
Furtheremore, some part of the model A does not work with it like ethernet and
HDMI connector (as confirmed by Jernej on IRC).

So it is time to settle the issue, and the easiest way was to state that
this DT is for model B.
Easiest since only a small name changes is required.
Doing the opposite (stating this file is for model A) will add changes (for
ethernet and HDMI) and so, will break too many setup.

But as asked by the maintainer this patch state this file is for model A.
In the process this patch adds the missing compoments to made it work on
model A.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../devicetree/bindings/arm/sunxi.yaml        |  4 ++--
 .../boot/dts/allwinner/sun50i-h6-pine-h64.dts | 19 +++++++++++++++----
 2 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 8a1e38a1d7ab..b8ec616c2538 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -599,9 +599,9 @@ properties:
           - const: pine64,pine64-plus
           - const: allwinner,sun50i-a64
 
-      - description: Pine64 PineH64
+      - description: Pine64 PineH64 model A
         items:
-          - const: pine64,pine-h64
+          - const: pine64,pine-h64-modelA
           - const: allwinner,sun50i-h6
 
       - description: Pine64 LTS
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 74899ede00fb..1d9afde4d3d7 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -10,8 +10,8 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
-	model = "Pine H64";
-	compatible = "pine64,pine-h64", "allwinner,sun50i-h6";
+	model = "Pine H64 model A";
+	compatible = "pine64,pine-h64-modelA", "allwinner,sun50i-h6";
 
 	aliases {
 		ethernet0 = &emac;
@@ -22,9 +22,10 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	connector {
+	hdmi_connector: connector {
 		compatible = "hdmi-connector";
 		type = "a";
+		ddc-en-gpios = <&pio 7 2 GPIO_ACTIVE_HIGH>; /* PH2 */
 
 		port {
 			hdmi_con_in: endpoint {
@@ -52,6 +53,16 @@
 		};
 	};
 
+	reg_gmac_3v3: gmac-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-gmac-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <100000>;
+		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	reg_usb_vbus: vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "usb-vbus";
@@ -68,7 +79,7 @@
 	pinctrl-0 = <&ext_rgmii_pins>;
 	phy-mode = "rgmii";
 	phy-handle = <&ext_rgmii_phy>;
-	phy-supply = <&reg_aldo2>;
+	phy-supply = <&reg_gmac_3v3>;
 	allwinner,rx-delay-ps = <200>;
 	allwinner,tx-delay-ps = <200>;
 	status = "okay";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
