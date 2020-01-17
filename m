Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 506451414A8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 00:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jx3A8M5AGnrUfHn8GoP13g6O7z6Ie/Ud7MmDNooSFbg=; b=BCLkkhzseW5DEV
	pSJvh+TQf+59AhvU8gJU15leUb/dgWcBplLoEDyooUD01nmE2038fO8JnR+XspNe+VDbltImRWSiS
	AwgTbzg42pA6kdynyNAGM/4dWQ8Vw6guows2lhjTsboxtqVnqdKwyL1IgblgP/0WTLO7rF8fguq7E
	C61Akm9FGkbZW6H8RjOHIVG87ZV6OtLQKot+P052qTujrUr6bw8RHDpkvkeJ9OUgnU+j4B04WeZyD
	GkQjnHcJLDXSWdJX4ueioDonETVbpZMOMgxfZHn7C1FTvO9U0A+7EhI0NPfiEJR8BNZK5OL9K0ZCU
	hQc+dEJ3A8gGwf/kZltA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isak4-0007BQ-Vs; Fri, 17 Jan 2020 23:09:28 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isajV-0006pv-PV; Fri, 17 Jan 2020 23:08:55 +0000
Received: by mail-ot1-f66.google.com with SMTP id w21so23961523otj.7;
 Fri, 17 Jan 2020 15:08:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cqgz/m/rHOwX/YU/6r2tkfWixNMLLHpkXsNnKidD6mI=;
 b=sVDjjPUGiF8eWkrPpYkK4br0t8Qq9vhYTxjV1IThYw12kgb4dQOfLV1sR1HppayfYC
 p0rbcCerldR8yZdV/yO+QvEipdfr2Y60C4N6y30PEMqm62lN/p33NIfLy7Iu7u1ktPBt
 4ILW/7sPpSCFWHXxDG/WWLZ9aOsOhHbNqErhD0YEFaPQFI7Nglxoi+2cBHwCdOXWoRTF
 JsO0xR1rS4sM+F/Luazni8IiRU4HMRLFUaRdLxC8RGQM78w9EA8Nr7PUXD2htbJxbuc9
 kzIT0r+4+4tyz4y4FVsiQHOzH3wD25MiVUtxWU1ug/LP1Ie8/+1VfyfAhz+pCLRWoic5
 ki6w==
X-Gm-Message-State: APjAAAU1AHDkvHkhAirfzG6e4/0O/g1cqU95dvba0R1xmt5y4Tlnx3AQ
 uK1p1PkV7keCYcCeA3dOScho6cs=
X-Google-Smtp-Source: APXvYqwpMofXMtXSkvcfYmRsRs877ZC8quW0DzWQrsLWEEQG6x/Dj0WxQDOdDPfrfLiOaST5/w3bKA==
X-Received: by 2002:a05:6830:1e46:: with SMTP id
 e6mr7519888otj.245.1579302532822; 
 Fri, 17 Jan 2020 15:08:52 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a6sm9584007otd.81.2020.01.17.15.08.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 15:08:52 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: rockchip: dts: Kill off "simple-panel" compatibles
Date: Fri, 17 Jan 2020 17:08:51 -0600
Message-Id: <20200117230851.25434-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_150853_849181_F0CEDFC7 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

"simple-panel" is a Linux driver and has never been an accepted upstream
compatible string, so remove it.

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/rk3288-evb.dtsi                          | 2 +-
 arch/arm/boot/dts/rk3288-veyron-edp.dtsi                   | 2 +-
 arch/arm/boot/dts/rk3288-veyron-minnie.dts                 | 2 +-
 arch/arm/boot/dts/rk3288-veyron-tiger.dts                  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts          | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 2afd686b2033..018802df4c0e 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -97,7 +97,7 @@
 	};
 
 	panel: panel {
-		compatible = "lg,lp079qx1-sp0v", "simple-panel";
+		compatible = "lg,lp079qx1-sp0v";
 		backlight = <&backlight>;
 		enable-gpios = <&gpio7 RK_PA4 GPIO_ACTIVE_HIGH>;
 		pinctrl-0 = <&lcd_cs>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
index 300a7e32c978..32c0f10765dd 100644
--- a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
@@ -54,7 +54,7 @@
 	};
 
 	panel: panel {
-		compatible = "innolux,n116bge", "simple-panel";
+		compatible = "innolux,n116bge";
 		status = "okay";
 		power-supply = <&panel_regulator>;
 		backlight = <&backlight>;
diff --git a/arch/arm/boot/dts/rk3288-veyron-minnie.dts b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
index c833716dbe48..95db0eb8d639 100644
--- a/arch/arm/boot/dts/rk3288-veyron-minnie.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-minnie.dts
@@ -70,7 +70,7 @@
 };
 
 &panel {
-	compatible = "auo,b101ean01", "simple-panel";
+	compatible = "auo,b101ean01";
 
 	/delete-node/ panel-timing;
 
diff --git a/arch/arm/boot/dts/rk3288-veyron-tiger.dts b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
index bebb230e592f..069f0c2c1fdf 100644
--- a/arch/arm/boot/dts/rk3288-veyron-tiger.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-tiger.dts
@@ -53,7 +53,7 @@
 };
 
 &panel {
-	compatible = "auo,b101ean01", "simple-panel";
+	compatible = "auo,b101ean01";
 
 	/delete-node/ panel-timing;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
index 9dd3b171e91d..e6c1c94c8d69 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-bob.dts
@@ -18,7 +18,7 @@
 		     "google,bob", "google,gru", "rockchip,rk3399";
 
 	edp_panel: edp-panel {
-		compatible = "boe,nv101wxmn51", "simple-panel";
+		compatible = "boe,nv101wxmn51";
 		backlight = <&backlight>;
 		power-supply = <&pp3300_disp>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
index b8066868a3fe..2bbef9fcbe27 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-kevin.dts
@@ -39,7 +39,7 @@
 	};
 
 	edp_panel: edp-panel {
-		compatible = "sharp,lq123p1jx31", "simple-panel";
+		compatible = "sharp,lq123p1jx31";
 		backlight = <&backlight>;
 		power-supply = <&pp3300_disp>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
index 808ea77f951d..b4d8f60b7e44 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
@@ -84,7 +84,7 @@
 	};
 
 	edp_panel: edp-panel {
-		compatible ="lg,lp079qx1-sp0v", "simple-panel";
+		compatible ="lg,lp079qx1-sp0v";
 		backlight = <&backlight>;
 		enable-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
