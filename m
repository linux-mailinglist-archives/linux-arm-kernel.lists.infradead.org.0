Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E1A19A65D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 09:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nr2gUFiGKE0SvT+g+Ho0SuQLxULcaAdaFQSDxKcNp4A=; b=SjowcQyQ70IqoEKpaPfll13YnX
	AmNuXu3RZajDNJkmwLnhYhG7OecNIn+zay3Js2TRg0BXVGxU9BmbN6gY+KXqL6DCzAXzj0A2UKNNZ
	SiJyub4Aikd7/ldaiM6WZ6GL1kaPlo1huqewsTqtmUBTKIJ5izk9Csd2cOLKCsG87hlVRJYNv6ULX
	+fSVDNKMBfOV+8cb8z9X4dYIX1PrikWH6/eCzFuqlKry/6jQsXqhuQR8IaioiskaHgWPjAaPJ/V70
	bixHbGA1nndY9GF6rgtXPbio9t8NINtLnjyqkxuQ4TlTX1aGcOZ/O7aF6P558kwn4opLP3nM6aBGz
	b+zGdF/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXwm-0006Wl-GY; Wed, 01 Apr 2020 07:38:00 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXwP-0006ON-B1; Wed, 01 Apr 2020 07:37:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id z7so2750607wmk.1;
 Wed, 01 Apr 2020 00:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0Y6Wj9TjOPkwLscHBPA5Cfe2j0fMXJtpZJ9SAqxrysY=;
 b=gLIfnCa9RtFY4bg+BQkrVUO4Rvy87KxQjWbI4NQsRQAzQL0j7izLckcgIVc92kpaIC
 xqfFVmbpVbso5u+xZy9+UrR6XKHdhiFyWltAqmDbM2rzuZLhLJVuH2NiPb5Z1MWAH88r
 i9ocprWSufx8F2X7UhYwELcDpu5DwChiP80XwBruxSesGs8H9BwuFhDO4uTL/2sRJAsO
 2OgSzLfNkoKmgtbn5Np6X7TqKUDOmWuTNl6Ej4D9PfKmZE2wX0V3cmWoxAN4vsz0EmaK
 y8LoUpmUhQ4VOgyL7wxa0ALaHJABHW/scbpQl9TEhsNSVYHhxdd5qD9OTVmND9jgR1U7
 QAEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0Y6Wj9TjOPkwLscHBPA5Cfe2j0fMXJtpZJ9SAqxrysY=;
 b=iMJ7EMTLOJXrFLY3GTKJbHu5g5DGj35ao/t8Y35wEtMXga0ryZ5IBLAvrC9sb9hArv
 NuPuNzF8tiPcDiN/I55zhynRbOBsGI3RD6xaiLLef572no/Zavm7h1Rz1k97p04lNHzi
 BhFpNLU7aaNWdHDsdgswCe9YOoqpVkv0gzIx4n501f+gbjS3mvKyvgdjR3DGT3kqmuUd
 2cRf4wUl0mB2ONcGTj4yQlLKlKcsQo5owCqyHQ7SIRi2jC8XlwEYziMqAuvNLN+nyAqa
 MS3m4IVVX8CQzvUw+DI5fq6voNdy8ElaQkx9TmE4mNNcnCOfzfS+JLa9QlIFCU2KXRHK
 n1pw==
X-Gm-Message-State: AGi0PuaFkl2MVHevzl/3vGjY5fYnNfWkVdgz4tRxauHJ/WGB09VypGeK
 1BValZEFNgUGuBH/cIwlZsw=
X-Google-Smtp-Source: APiQypIo6BlXDVUAujJm5bjFl9PFx10seyVOAuO+YssZ1j2o9iXGGnPhJ3AFEfXIPfLYVm9Tx24sew==
X-Received: by 2002:a1c:dd8b:: with SMTP id u133mr2754794wmg.109.1585726655777; 
 Wed, 01 Apr 2020 00:37:35 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g3sm1793431wrm.66.2020.04.01.00.37.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 00:37:35 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/2] arm64: dts: rockchip: add #phy-cells to all usb2-phy
 nodes
Date: Wed,  1 Apr 2020 09:37:25 +0200
Message-Id: <20200401073725.6063-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200401073725.6063-1-jbx6244@gmail.com>
References: <20200401073725.6063-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_003737_373063_7076BB96 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files for Rockchip with 'usb2-phy' subnodes
are manually verified. In order to automate this process
phy-rockchip-inno-usb2.txt has been converted to yaml.
'usb2-phy' nodes are now checked by:
'phy-rockchip-inno-usb2.yaml' and 'phy-provider.yaml'.
'#phy-cells' is now required for all usb2-phy nodes,
so add them.

make -k ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
phy/phy-rockchip-inno-usb2.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 5 +++--
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++++--
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index bd5f51d23..6f7171290 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -822,10 +822,11 @@
 			reg = <0x100 0x20>;
 			clocks = <&pmucru SCLK_USBPHY_REF>;
 			clock-names = "phyclk";
-			#clock-cells = <0>;
+			clock-output-names = "usb480m_phy";
 			assigned-clocks = <&cru USB480M>;
 			assigned-clock-parents = <&u2phy>;
-			clock-output-names = "usb480m_phy";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy_host: host-port {
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 8976c869f..470783a48 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -830,9 +830,10 @@
 			clocks = <&xin24m>;
 			clock-names = "phyclk";
 			clock-output-names = "usb480m_phy";
-			#clock-cells = <0>;
 			assigned-clocks = <&cru USB480M>;
 			assigned-clock-parents = <&u2phy>;
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy_otg: otg-port {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3dc8fe620..a7ee5aa65 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1391,8 +1391,9 @@
 			reg = <0xe450 0x10>;
 			clocks = <&cru SCLK_USB2PHY0_REF>;
 			clock-names = "phyclk";
-			#clock-cells = <0>;
 			clock-output-names = "clk_usbphy0_480m";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy0_host: host-port {
@@ -1418,8 +1419,9 @@
 			reg = <0xe460 0x10>;
 			clocks = <&cru SCLK_USB2PHY1_REF>;
 			clock-names = "phyclk";
-			#clock-cells = <0>;
 			clock-output-names = "clk_usbphy1_480m";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
 			status = "disabled";
 
 			u2phy1_host: host-port {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
