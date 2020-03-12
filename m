Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B9218372E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:16:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kWoace5fyMvDRiUMetYZWBqVVHxMz+FV6OM0NqfZbns=; b=ZpHbtQRDh2QI+5xnZBEJ7M3YRz
	E5TaRu4swdcGZNNi21i6xT+IKrwlJ/hdslad4GaBVkguUdC0qMzkzVRwrPp10c/3lyL4xI+Y+rMgJ
	jGwfKzpRD0uTQDrBHxlFzuykrfeoCGtErVjCJLcD8g6BfSfmvhX+fxFTBisGQ4jSWVSaM8R4oZMUd
	pRwmYVXyhuYg2mp+jECjdsfGQAAPELlqdvX6gAGv6B/rY1Tb7jJwxQbSHp4e4MbZ8LbvU1cMkZB1S
	B+7+sbg3DeZjQ8mzjcMesrfL2EkFu4vMaWf8m5mOyPRH68gaNVpYLbm7wja0IaHCg8H+UKop8OH9Z
	dn0h9gsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRR0-0008Qh-N7; Thu, 12 Mar 2020 17:15:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRQA-0006TF-QX; Thu, 12 Mar 2020 17:15:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id a5so6964516wmb.0;
 Thu, 12 Mar 2020 10:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gvIHQy0x0uikDeWAsY+tRBfCVP/6W4keDh1IPsYRgIk=;
 b=tYXn3PTZuAQXxTt+iA/09QAahXBf7be8mV1OiH1bsJ/2iHNzElyZl1d8X0ap2ALfG7
 SwUy2N+XS4R7gyNbXNmB5Pv0Q0DXmW77m4UyjfhyLC4XV4ASWtZ8WtdVfszTz4VLcS5u
 /0LZYB0l/EfhEfvv8bIQwvTDDVa/i2P2OSKQ01qrUQold/cAlJP574BjFAfVFP2XWH/G
 tfaNHumgsb8O6ijLF93tWM/5TmN3cn7IwxQq3oTH6GmOTgSceFBdoQq3RuQ3Pf5KEH+p
 jIXJzAkEriGq24vosjrAgkmHJ/wmrk6KNLWydwtqiWfFZAZFyH5j/guQ/3/1Q3Sttdss
 dU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gvIHQy0x0uikDeWAsY+tRBfCVP/6W4keDh1IPsYRgIk=;
 b=qmjMeqCPyLNDF2dWZmd1GJop+QaQDs/I6oe+g+UFMT1ziutRljCLGyBaY2iQ/1d1Mz
 279eLYyEywlEK9JTLVrlJMpesUSRPWEeWf2XzFYpXgsg7xcMxb8PatpOhdsg+yJv/4V8
 t90/ZOD7q1+cAAgzR6Iju/RgKpSWPowlgnvyWxIvQHqA8ymeqqOwYzdvwMP4U5WjfKVI
 WAcbIatV+D59E+bUdAy/xh0NUM5xJaOJnNsuNoJjAyHLBXAaw9RRIfHDa/HgkWHojhEc
 6k+N0hBRdCOsKpi7Y0vbBU+UrzSNK5Xy6yD65EliHj01bmv6Rnk9xyia5EuC+dsH/lWc
 0eqQ==
X-Gm-Message-State: ANhLgQ2d0seLvXDX8WoQSFmThnYWwbNkcuZqqWMflAbnI6BqlBBdDteC
 /+c+xrhOzUgx9jXYFwcnuao=
X-Google-Smtp-Source: ADFU+vsQ2aPblQLNxCLnKbPMpQn0WV9BgJU3/TShBh84qWgATHucWB5d9a1Rl0/uzCrCVKP230JVBQ==
X-Received: by 2002:a7b:c082:: with SMTP id r2mr6113172wmh.177.1584033296112; 
 Thu, 12 Mar 2020 10:14:56 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v10sm3398832wmh.17.2020.03.12.10.14.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 10:14:54 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/4] arm64: dts: rockchip: remove clock-names property from
 'generic-ehci' nodes
Date: Thu, 12 Mar 2020 18:14:40 +0100
Message-Id: <20200312171441.21144-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200312171441.21144-1-jbx6244@gmail.com>
References: <20200312171441.21144-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_101458_912241_4DD503DF 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A test with the command below gives for example this error:

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff5c0000:
'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'

'clock-names' is not a valid property name for usb_host nodes with
compatible string 'generic-ehci', so remove them.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/generic-ehci.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ----
 4 files changed, 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 1bbed660f..be5569b74 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -881,7 +881,6 @@
 		reg = <0x0 0xff340000 0x0 0x10000>;
 		interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST>;
-		clock-names = "usbhost";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		power-domains = <&power PX30_PD_USB>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index d9490f417..ac08d2b70 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -967,7 +967,6 @@
 		reg = <0x0 0xff5c0000 0x0 0x10000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 2079e877a..1ebb0eef4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -513,7 +513,6 @@
 		reg = <0x0 0xff500000 0x0 0x100>;
 		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>;
-		clock-names = "usbhost";
 		status = "disabled";
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 63355ba7c..bbae92ef3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -349,8 +349,6 @@
 		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST0>, <&cru HCLK_HOST0_ARB>,
 			 <&u2phy0>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -375,8 +373,6 @@
 		interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST1>, <&cru HCLK_HOST1_ARB>,
 			 <&u2phy1>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy1_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
