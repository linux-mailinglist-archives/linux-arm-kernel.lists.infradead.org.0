Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CC481D1382
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMaJzt0l/pZ4K3ZbEA8cum82hEeU4vVjbhI1GHNR3Rw=; b=KjzzHcngRuimOT
	Q8OKinvKRpgX1/atbWPqzyqm8lBwdyDMd4Obzvsm3vMMwfduLEOPzdgEzqN/e7lv4ukJzkzGnw42L
	1JBrS1oKNpNtvfl7HhY/A5yBUN6Hn0lHLH0TysfGhxxTCR+gIGW4EBsA1Dh/saXwqHEo3fAgPKX8K
	/p7TkNAkxJ+pYK1g6yJxZWgy9AslPOQ7UcOx3j8oVGXnE6nYPlg6ih15qWMj+Ze/bkmGGSXp6YPsD
	0kf/uvFDX7QnNSsh1yM5pilKmOwR8PMZgKd02VNHe7Zjew4UqbriVRr+DzrB6+ygDd/grajDb26xn
	5ziE78JYEbg6Y5M4Fw6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqxA-0002Sr-4g; Wed, 13 May 2020 12:57:40 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqw5-0001ml-Th
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374593; x=1620910593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XzyAjS+VdICD+VDbBl+tF57k++B6rYPYjva3OeaJ/X8=;
 b=muJMCVLBG01L3Gkgt5yYVoHUxYX8DuTMCbc3r+l/Q1Wmn5BEwRpks4ON
 PVlYaH8QRNblx8VNSTvoknEEN/do5+Kn3bthzmVX9AwxCGpP5e1fDKVI+
 9coRCf1gcKSkOmhP+6oN4qUtffyXCiKv5+Rvxtpn36AO+gmS/KqvglWUy
 PnJXgJ1qmUr91Y+p4RSzq97Gt9bzzjkkFIhrZqGSCuP8m5BcfZJAz7rSh
 w2u0Zgct0liLFN2Wm3S5o376WxBnl1Pk7VhXiPRvvdO0c6NIYgxpkEELH
 Uc/thI3LG0HIwuOys0Qprohn4X841g8BISPXEoGOPu0P52o1Y7LK+jSp+ Q==;
IronPort-SDR: JwLwlM1erNzBBGrUO3T1+ZqDwN8fhRVhDgIwzSxlGBJtM46S/CKnrYo4HkoV/lOh6UzB2CqgAu
 a4xgKEkrsGAhVgDYrbv6HCfdIGBxKv/tUn0OKhb8cHQj0bUWBWnDwRI0DyO/bs3Lu8HCffr4Re
 I2ZgrNSvM5UF2ub5WOoWyPliNeAYMKom1MVzcuFN3zeJBWDssIa3fvY6Vc4AICcjOfNxlWtaNY
 KsKGX3TX+AxoU54N/faoOMEmT6yWR08YKHYD521JoOMg+VJ+m6vCeVKeNMTNXVDb3j7PkR/9ZS
 3tc=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75132778"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:56:33 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:56:33 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:56:30 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 04/14] arm64: sparx5: Add support for Microchip 2xA53 SoC
Date: Wed, 13 May 2020 14:55:22 +0200
Message-ID: <20200513125532.24585-5-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055634_047841_51905BA3 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for the Microchip Sparx5 ARMv8-based SoC family of
TSN-capable gigabit switches.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 MAINTAINERS                  |  8 ++++++++
 arch/arm64/Kconfig.platforms | 14 ++++++++++++++
 2 files changed, 22 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 091ec22c1a23f..1b5a18d3dbb9f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2079,6 +2079,14 @@ X:	drivers/net/wireless/atmel/
 N:	at91
 N:	atmel

+ARM/Microchip Sparx5 SoC support
+M:	Lars Povlsen <lars.povlsen@microchip.com>
+M:	Steen Hegelund <Steen.Hegelund@microchip.com>
+M:	Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+N:	sparx5
+S:	Supported
+
 ARM/MIOA701 MACHINE SUPPORT
 M:	Robert Jarzmik <robert.jarzmik@free.fr>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 55d70cfe0f9e1..e1734a13a967b 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -89,6 +89,20 @@ config ARCH_EXYNOS
 	help
 	  This enables support for ARMv8 based Samsung Exynos SoC family.

+config ARCH_SPARX5
+	bool "ARMv8 based Microchip Sparx5 SoC family"
+	select PINCTRL
+	select DW_APB_TIMER_OF
+	help
+	  This enables support for the Microchip Sparx5 ARMv8-based
+	  SoC family of TSN-capable gigabit switches.
+
+	  The SparX-5 Ethernet switch family provides a rich set of
+	  switching features such as advanced TCAM-based VLAN and QoS
+	  processing enabling delivery of differentiated services, and
+	  security through TCAM-based frame processing using versatile
+	  content aware processor (VCAP).
+
 config ARCH_K3
 	bool "Texas Instruments Inc. K3 multicore SoC architecture"
 	select PM_GENERIC_DOMAINS if PM
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
