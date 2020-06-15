Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D627A1F98D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ys6O/f49YHujVLuPmYAZ/+Jz51S5Tsle/GmvHIejPkY=; b=CHzu26I58sGwgB
	KWOSpYQHjwCa/STmWUeR8wjt8SH74j2qt5GmWTCXsaDiItxGO9JCiX2nkoOAWOkrtv+a5FJeVhNPu
	hdd5/PKZx1c3leSdHMcpcU/YxEqCJTXa841KgIhnLVtAhoZOWLlW2Eo2/63H0FOj20M4eRl76ESoZ
	u+ta7mjJ1B8RHpzDrWITe1+l7UgsXTk6VEY1eRi8TrGeH2ompcvJCVHUL72o9Tr59f8ANCWiDLsqm
	SGmTljg9G0bWiJj2VaPqkOw2whl+t4a93p9gXiuIJYIJTSpjiAXccCMBeKFXDknwSVbHLbyGUHmS6
	wrnO80zSOrzhSb3i0r8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpFk-00082m-Vd; Mon, 15 Jun 2020 13:34:20 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpEZ-0007Qz-9b
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:33:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592227986; x=1623763986;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HrI/NoAQfZ2v5GhtxSsX0gula1thXocA0/KftR1JTdE=;
 b=qRO2Mek+E2Bo6Hu+n+/6kmkzSmUrBoz+bJ5I1v3YA6u9dAJO3l0+IdwB
 n4Y4yU9j8sf97h+qt7EMFyZQ7PIGC/1LEPbKlekTVVkSTbjQasqKvVrFg
 wY7oOK7jgCNX+NSkRycw2plo2dJR4LEI3piJJA67i2icBvza38UbdoXph
 zqeYMK7Q1W1wEW79uVDIUAAwogZV/GO9rXiN138xiUiXL5D2DH7diFkzD
 qAvAiLrVAcTXnmvjYL+fiVjybxF4RDvq9tWstzxNquklDTSasBeTl1ed0
 +01gx6yAgzAahMwQqkEGcIbrte6iXpOtPhZ8v/cfDz5mmYyMepcEmTwCx Q==;
IronPort-SDR: bKtjbPcRRjnKVFZ0EQtzwttXV4ry9JL+rkMnv+6qCqTJwotoGraDPUseAE2zM2mjbYCUk/OnY3
 Qe7U4w2bS/MKnF1NU2PeRaoPgmkZhZsaa1LfS+24WRpgWDt+RT9lYiCLVlMN/jyfgOs7pPgT9C
 9ZNXvHPWRJyUDxItvOCv8q3Obv9AwPYle2a+NyK7cbWyKS5pA993/CV0BZbyZ9AGvKz5TKI4ER
 QLe3zYHm3dg9QL6tT2QD5s8MagxASaIGR/R5cV0wwDH1SHu+DC6lXZ+2QgIAIgqu8bD6FG1uu5
 xRo=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="83619432"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 06:33:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 06:33:04 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 06:33:01 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 02/10] arm64: sparx5: Add support for Microchip 2xA53 SoC
Date: Mon, 15 Jun 2020 15:32:34 +0200
Message-ID: <20200615133242.24911-3-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615133242.24911-1-lars.povlsen@microchip.com>
References: <20200615133242.24911-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063307_364873_707A776C 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
index 68f21d46614c4..13553b77ed4f7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2111,6 +2111,14 @@ X:	drivers/net/wireless/atmel/
 N:	at91
 N:	atmel
 
+ARM/Microchip Sparx5 SoC support
+M:	Lars Povlsen <lars.povlsen@microchip.com>
+M:	Steen Hegelund <Steen.Hegelund@microchip.com>
+M:	Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+S:	Supported
+N:	sparx5
+
 ARM/MIOA701 MACHINE SUPPORT
 M:	Robert Jarzmik <robert.jarzmik@free.fr>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 8dd05b2a925c5..8939e4e6e34c2 100644
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
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
