Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0E71F35C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 10:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsCYmGCDhw9uMPxaK1vf5RUxpm+k8AkQmk97rQ5p/gg=; b=OzZfS9Bfv/XaId
	IXGk0iy8sriBIeoY7NdKjLF8nR/QvBhoxUTkWqqrYExyB62+dlNVhR4XuPmoAxNJ8dChsH2GvHGpv
	DFt9n7PHTZd9tDbGEr09jy0Hl8JZ8MU4VqdqEwfIRcwL5uqOlHtDgjw1z6/cq7hxe6Ostis3FDRPk
	13CjJ63Co5ELVJ2LtltvVS6gLbQdyi5Z+unysBbVSnTDTD6H7taN3VaFZ82FYNMTlMPrzTH5pRIRO
	cOh4sek6QEebogy/raqMO2gi1BNZl6rUBDl0k6+IfR3FeZeQ3zzity2jlwL3xCVIqmP938MpSvpRI
	6hxLgaSeZV5OdPOXkauQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZIk-00005g-NH; Tue, 09 Jun 2020 08:08:06 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZIX-0008Vo-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 08:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591690073; x=1623226073;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hDfQm25RaAmujsIowdG8uTcBtEG+yGbxTplI847Sros=;
 b=a20Dt9+iJ7x+xt7Hxegt42i61Ts4r+v+/KookNfat/5lHWZkqlMf738a
 6t0U3CsxgL2hFdbMyBEA+EoPucuc3DpioWkDMoNlc4lcn9DwKiKrJyl/+
 vcn6wFCtTBZw3pB9ZrikwF05+51w41UClSqcwJ+lUPz7S0XFGUzaEMfhZ
 xjAOWybbmq64F7ACoyZfluQqygRfiByv1r8dQ9hgyH9CAUQ1ApFr8tfkf
 j+itSVtUnLOMVDp3AZM6W/VFoXQISzYiIN24QeDTJ1XhS+a/seZn3GDv/
 UL3DXt/DocWtvay/pHGhDiRKDppsQwO3Sz/rVPOIoiXN5AKsh2m8RjcfO A==;
IronPort-SDR: f8ilDVGyprtH+DaeaV1T37Ijp4w/8wSSs1Rd8FdRBFmlR2zwZ3FuLY9ows4S8JkaJBJpArAvBt
 d5vpynnG8py4eLs1WYZ24MbvRhOnro4Sf1PjzAiEhha+3FZmpGnlzDGHl9SWL693qOGznpbXxk
 j7O4b8Q7CAzuYDM8sPBRZgr3yA+bWshQSRHXmTjhbuV6mStd9vS90r6ndwKGUuBaoNy9S4ymJF
 VswEvNzoyk6TjCu95d7q0Wg7ix7IoEZRSMs/9F/K9azz1XJNrL6Lo1WlMeXtqXlt52jRNpvnUL
 M5A=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="78702707"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 01:07:52 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 01:07:51 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 01:07:48 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>, "Linus
 Walleij" <linus.walleij@linaro.org>
Subject: [PATCH v2 02/10] arm64: sparx5: Add support for Microchip 2xA53 SoC
Date: Tue, 9 Jun 2020 10:07:01 +0200
Message-ID: <20200609080709.9654-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609080709.9654-1-lars.povlsen@microchip.com>
References: <20200608123024.5330-1-lars.povlsen@microchip.com>
 <20200609080709.9654-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_010753_523170_AE2278F1 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 411cd97bb4858..3fe6f314df3e7 100644
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
+N:	sparx5
+S:	Supported
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
