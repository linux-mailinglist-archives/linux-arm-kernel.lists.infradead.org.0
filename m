Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4714718372A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l2Rkr1+wfpVeuVekl0gQacj8vy9c0/SmSU8NCsxZK2k=; b=dDc
	oz32bouVqlZbl7vHWv1n6COkqJhXDzff4wJIBO3wr/Q7vGDtKQhLPZBywVp0erB1vUCQz/toXYTZm
	BGilZJITPUUL+ZKLHu1aaARnjai6jIGYwWho8vZ9385lu962ou62YeKAakU0DtUvaLs8DG2LWxhQK
	PoSK0XBAx97M3d3pzBpSsDqB0/ab9BfCdH7fxBD/Hwz5P09NItmfnc8fqvK3oenc/Hvh4BrkhUppO
	AFSpCmRhWGv+0yO7xa4HuSvOP1JuL3HkpfbiQZM9n6UaViJzl+3Z9j9vWYv8Mac7C+PTPA8lZQD0k
	pOi98bow/nbHJANCf2k5siXPjlnbQAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRQT-0006QB-3s; Thu, 12 Mar 2020 17:15:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRQ5-0006Mx-W9; Thu, 12 Mar 2020 17:14:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id e26so7211869wme.5;
 Thu, 12 Mar 2020 10:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/rHi3YAkRAcdMWtqtXDhFmgLSOL8x4zCT7svjD1llso=;
 b=CZBgUzmx+EEy6Hdu9DInRUBaFiOWh84iUnz4jURnXgTy+86cMmjyL+Xm/IiK5B0HBe
 mRg9AXxyeAbj6pJKhCGImAXZNQwQYE0+0WpiZ4u841pcqgBHauz7DHWB6rcY64d9niAh
 fzLFR7ZIA2K5/8mAAROD93RSBqLh2dM0gPW1ekQDJJ6RrLBwIB2qqD3klsEUspWSiurl
 Ywf3ZObsiUzImDTk30kKZwEhKeGYKFfUFrQW+7c+6DBGCUux0DjKdrBLdjMwcQhsRoSF
 9XA8tSdQcF/jcTuGbDafn92DvX8CY2bBMBEebdro2EREy+07YkkBxeSb6zHQV2qUfUbU
 9MxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/rHi3YAkRAcdMWtqtXDhFmgLSOL8x4zCT7svjD1llso=;
 b=Y4A/5YMcezcLsWtO64nmZVO9/4KknTXemG4n9a2mnW5rbauKlMTTkfVWPK70ydRvDN
 j5KY5fmn1z6nWPOpb8nXogrRjd61jCgt9LJ4D3w3OObRQ8Zzi7bxdnZzKrtCtIxHzhkG
 8K3080dZfndgTKd70faQk6doWVcpJlph0S7CNo48uhcu5mVmeN79MQ4zsbA6iJLZStvc
 XNo0RkSEQENa/oidRzvottdfF8wI3i4pMFjw1jf2LzeBuJGCrQbuurJ2iFMcxJzVkUFK
 ui1HACunnYLOQIyC0zW+xZ+mH5xUHByhj9cqgUbEu9fO9kLI8EiD+zZqPIAa4AOY9Z2r
 lFhQ==
X-Gm-Message-State: ANhLgQ0GQzmANDw4CYXJMycsgKgW0lM1bhlW8mT8aARNzldaLpuDgt03
 uPRw6Z0w31FV44p2y9PTEtk=
X-Google-Smtp-Source: ADFU+vuU7JONushGnh3yAgda3gxF27iAlAIS/lIT8K59ScQnS7AhYwvRjg88gHQjT88rLF0AWIIufQ==
X-Received: by 2002:a1c:cc06:: with SMTP id h6mr5962352wmb.118.1584033292012; 
 Thu, 12 Mar 2020 10:14:52 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v10sm3398832wmh.17.2020.03.12.10.14.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 10:14:51 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/4] ARM: dts: rockchip: remove clock-names property from
 'generic-ehci' nodes
Date: Thu, 12 Mar 2020 18:14:38 +0100
Message-Id: <20200312171441.21144-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_101454_060881_4A61CF65 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30140000:
'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'

'clock-names' is not a valid property name for usb_host nodes with
compatible string 'generic-ehci', so remove them.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/generic-ehci.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 3 ---
 arch/arm/boot/dts/rk3288.dtsi | 2 --
 arch/arm/boot/dts/rv1108.dtsi | 1 -
 3 files changed, 6 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index a0acf2ef8..6503247e9 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -722,7 +722,6 @@
 		reg = <0x30080000 0x20000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy0>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -744,7 +743,6 @@
 		reg = <0x300c0000 0x20000>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST1>, <&u2phy1>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy1_otg>;
 		phy-names = "usb";
 		status = "disabled";
@@ -768,7 +766,6 @@
 		clocks = <&cru HCLK_HOST2>, <&u2phy1>;
 		phys = <&u2phy1_host>;
 		phy-names = "usb";
-		clock-names = "usbhost", "utmi";
 		status = "disabled";
 	};
 
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 4745be518..485234f6a 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -601,7 +601,6 @@
 		reg = <0x0 0xff500000 0x0 0x100>;
 		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USBHOST0>;
-		clock-names = "usbhost";
 		phys = <&usbphy1>;
 		phy-names = "usb";
 		status = "disabled";
@@ -644,7 +643,6 @@
 		reg = <0x0 0xff5c0000 0x0 0x100>;
 		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HSIC>;
-		clock-names = "usbhost";
 		status = "disabled";
 	};
 
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index fda16f976..d33e606be 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -495,7 +495,6 @@
 		reg = <0x30140000 0x20000>;
 		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
