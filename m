Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFE6183730
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:16:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tUpeI2rvWh4o4DOOFap4Qp+mUi9Lv+vJNeGY1/kU6W4=; b=FmbEnpCZjG20WFdsGLKRskYHlF
	0ZRQaoiXSIeAMKfvZ0oeR7Nj8PfYqjG2ImTTA6E8cKamQIYsWG3dJ/jDXdN2ORbjMO4y2s3+DXsvQ
	7jDSMTY3l6sfCiEe96T2Ok2U970w1KNp25vNGQeU6JT/TBmL2L9VTCfxmxoqMX303rHVZq2kRQcYM
	kLrhntUSwApVAZuKSyRWAHD+A1m6UYBHaB3ICyhTCIfXhoKkMvXcli51Z6+FWTKYEHbQyIcHwMARD
	IexDIi7+P3je+TEbeVtmuogOVXDLkMvf95xoCBFSPz7A9TLuegqDWwmpq0rxgafB111HTLxhXdO3Q
	uGSuSyGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRRG-0000S0-Eq; Thu, 12 Mar 2020 17:16:06 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRQB-0006TB-9K; Thu, 12 Mar 2020 17:15:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id a25so8523767wrd.0;
 Thu, 12 Mar 2020 10:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4SuRBJARNQVs5dyf0eB48d3tfDeB3eEZR49uCWJ2tP8=;
 b=uzPeiPdsp74lWp9Qj5xiaV3WA3py5k+YwaJ9xw/Ik0gg+Qg9JReCtwkJdtBRI63UQm
 Km5K/BOBZfAfyLom73b5wD82OqkEDCffMUGFyF/Lzro2SomkgOZFS/ltRjP4iOxrj15u
 ZS4o0giDu4Agko6eM9XCcnPFac9C33t1dwWlOKPo8wUhhdPeJJ/w7Qeo57BHTKi/Bqwo
 gjDMqGYx7KBnkxq5EQfD8U6MrmKKscXGMZ2YgGtFC66ovpsoAIvqA+px4JIwLa5iiMej
 y6PYERJgbbm8kh6iU1893TTGSXwjsS8gYuWmvBRoakV+iguLgW7TXKl4eL5QBTGXU3M9
 0aQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4SuRBJARNQVs5dyf0eB48d3tfDeB3eEZR49uCWJ2tP8=;
 b=I9ByxDaSXeOzE8S2e1PVwZPCY41HuGAUn06PVd1IuX6VW7pZDAuEG5g2uiJ8Tp3LeL
 bPSYKv4nGuPv+fsznmc30K+HOpyqXyggrIBXr128A8daMehjx3DYSU6fJjDhw5kWBKg8
 7kUkcFi4ER+W9es0dUw43ZzuH9imeSi9SkGObZWIqAxjajDNO3BPgLF15K2RlCWxzb7O
 qaUxPkud8pTSZ4I8DK2OeavXap7FnqCS7zTyXTbD2BSPlm6XA5okngremgNhZcJ7AfZL
 iPJXNs+JZEug7f8CI9TkcU9Tn6vAk7uZdKBEMGOLoAN8iR2puIPfrx8At7PLQD/L5CDK
 9dmQ==
X-Gm-Message-State: ANhLgQ3wt809yuJ1jV4BmLwTeDb1Vlqfsdq3TIw/lIA4qbDsWAMaTTIU
 SkYmpznRaFURz6Q/ebTF6/I=
X-Google-Smtp-Source: ADFU+vsZcBv981uxb63P0Pkt+xHhdWoNcU8cUuoWL3IDP3tTTIFt+ojHaQbBjZJnjoZGgpraBs9A4g==
X-Received: by 2002:adf:ab4d:: with SMTP id r13mr12395984wrc.188.1584033297481; 
 Thu, 12 Mar 2020 10:14:57 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v10sm3398832wmh.17.2020.03.12.10.14.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 10:14:56 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 4/4] arm64: dts: rockchip: remove clock-names property from
 'generic-ohci' nodes
Date: Thu, 12 Mar 2020 18:14:41 +0100
Message-Id: <20200312171441.21144-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200312171441.21144-1-jbx6244@gmail.com>
References: <20200312171441.21144-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_101459_382283_044BBECD 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: usb@ff5d0000:
'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'

'clock-names' is not a valid property name for usb_host nodes with
compatible string 'generic-ohci', so remove them.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/generic-ohci.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 1 -
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ----
 3 files changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index be5569b74..bd5f51d23 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -892,7 +892,6 @@
 		reg = <0x0 0xff350000 0x0 0x10000>;
 		interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST>;
-		clock-names = "usbhost";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		power-domains = <&power PX30_PD_USB>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index ac08d2b70..54b3f4616 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -977,7 +977,6 @@
 		reg = <0x0 0xff5d0000 0x0 0x10000>;
 		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index bbae92ef3..8aac201f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -360,8 +360,6 @@
 		interrupts = <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH 0>;
 		clocks = <&cru HCLK_HOST0>, <&cru HCLK_HOST0_ARB>,
 			 <&u2phy0>;
-		clock-names = "usbhost", "arbiter",
-			      "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -384,8 +382,6 @@
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH 0>;
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
