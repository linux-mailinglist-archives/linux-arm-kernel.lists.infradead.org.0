Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C22118372B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9W/r6Co0VKShdkrFzw0mGJ8Rmnvbb7e5AFPYUlK96Ak=; b=Jx7Ws8qrKcMq/XsTRLPw2s7B76
	liZQa/2jICjjBKQMzdSimUFWtfn9N8y8KBDMYF7UlBPV6QFxu2OoTSQ6Nm4hAE+SUu4PNBvv1a1HC
	uKTk8pHo1b5HqISmy5iukH1BgoEz1nXGPoS5GZ1cFKfipe6pkPR2N+aMiNYOpCYiJp+eR1oG9oT3L
	EWLVKAuWrjcepbkQ8zy2UQYgtf5NAlfO00tMsXYmGqYsfSqwtUA3moD+BjPqeYEcYX/tKStP7ayaF
	2kUICq0A4/MaO0tRA2QYoY7/IsyciqAL4y5yjZfiNGYmHIO8pYAc12Haw3V9miF28zudBcvM0m0Uf
	xkuv5QcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRQf-00089Q-SX; Thu, 12 Mar 2020 17:15:29 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRQ6-0006My-Vm; Thu, 12 Mar 2020 17:14:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id m3so7237764wmi.0;
 Thu, 12 Mar 2020 10:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EYdjJi1eg7gwDE8+qiJsI5fjOAKRoOIZdPVPZzHXbKM=;
 b=M8Hey0ZIup/VKHiqLIq6b3cKb1xTOXZWyT6gZ3p9k0zIiwpnZqOMK/NXvJy6vrxPW0
 irrMKZk9dIXmf7GvYxSwMBq2s4GuK64k6lzUS+lX9gSflctbgWaPA07GhFj4c1KNHfBf
 FdE/xvA0ZSd/VSqUaOynJermbkYE5fUHZaaM/ku9/o9z5+1vhkY3QJrAv3N3WBblUQ4B
 2lQvlu8sQJ+VdF0Jwu5xAYoscqTEAX8SQmIp5tOPVifLuPbaGqCJlgwp7EHj6bsL9+8X
 ZfBggl6QGE1xt77F0pH7bfdO4/6GU9YDSF/5Sg65sfW4UZj6KL6tauTT2xewUhFqGWVi
 qZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EYdjJi1eg7gwDE8+qiJsI5fjOAKRoOIZdPVPZzHXbKM=;
 b=MEgj1qv1S29P1l2e/I6m8l3dGz/ltBClNbsblXP62SZF75YnILqg4CFKXo1N87ty1m
 iys55myxEM2RL1nHBcZlmoIgpQAoSiEUgLMZW/YuBZdEfbHajI2t4wDeE0AinQox7kD1
 9A+o4/yHXg5SPFT5KhuXuiiErypllsz12/u/eNfwT+z2rvIIPbBS8HnI64ZBnUFditAa
 625EOiu9aKRiwNjxVXatrWJJ3U5oS8H2LNzhKQC2STcxYao3AnFME+BOWErZQ2tpV2At
 OxVzl/GRsi9bEVxH7gpy4P0KP9T/2sVzGFlTar61E3TZSOOYiZ4xN/C7O+xTTchdKzpk
 749g==
X-Gm-Message-State: ANhLgQ2g5jfY5g3wKNjg8I18ZyArSDedItlNmfmKeSSHEPFAkI9tRzZI
 A30PO4NaYIK/bKvjOlMXJivEiLFL
X-Google-Smtp-Source: ADFU+vtU7C/3+s0Pk9eeP2zgYFICLmB/RyyyGdx933hyEaJXNcwP3tqeI/5HWn0ccTbWbpltz9yuHQ==
X-Received: by 2002:a1c:1b8a:: with SMTP id b132mr5690411wmb.93.1584033293552; 
 Thu, 12 Mar 2020 10:14:53 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v10sm3398832wmh.17.2020.03.12.10.14.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Mar 2020 10:14:52 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/4] ARM: dts: rockchip: remove clock-names property from
 'generic-ohci' nodes
Date: Thu, 12 Mar 2020 18:14:39 +0100
Message-Id: <20200312171441.21144-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200312171441.21144-1-jbx6244@gmail.com>
References: <20200312171441.21144-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_101455_019722_97B5C883 
X-CRM114-Status: GOOD (  12.07  )
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

arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30160000:
'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'

'clock-names' is not a valid property name for usb_host nodes with
compatible string 'generic-ohci', so remove them.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/usb/generic-ohci.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 3 ---
 arch/arm/boot/dts/rv1108.dtsi | 1 -
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 6503247e9..06172ebbf 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -732,7 +732,6 @@
 		reg = <0x300a0000 0x20000>;
 		interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST0>, <&u2phy0>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy0_host>;
 		phy-names = "usb";
 		status = "disabled";
@@ -753,7 +752,6 @@
 		reg = <0x300e0000 0x20000>;
 		interrupts = <GIC_SPI 20 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST1>, <&u2phy1>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy1_otg>;
 		phy-names = "usb";
 		status = "disabled";
@@ -774,7 +772,6 @@
 		reg = <0x30120000 0x20000>;
 		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_HOST2>, <&u2phy1>;
-		clock-names = "usbhost", "utmi";
 		phys = <&u2phy1_host>;
 		phy-names = "usb";
 		status = "disabled";
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index d33e606be..153868c62 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -505,7 +505,6 @@
 		reg = <0x30160000 0x20000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>;
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
