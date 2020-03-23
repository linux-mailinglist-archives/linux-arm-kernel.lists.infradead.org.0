Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 539FD18FC6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 19:08:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lrN12bh4bmFJwYzIcsxfeSf8XQd9kC7FGEdHvlcNx9U=; b=RozF7E0hDC2g8F7+Jf9NGt1SHM
	2nS4I6tGrqoisD8Q/MiD7LsagUd0vki7qNbCguK+Xw/q2iYNy3xK1TEZThg71coVnywr3cLzE3lbc
	S9CtgA9TeJulRKQDC2baSowQyf2ANoul2KIDVR/LnBC4+o4BDcJV2l+nlFhpn4LON1KOWmOcNd+mB
	cPI2nb/r+SfCP8eEKCqeg4uGYgCrNQ42zYnk1c+wap/cEU0ulQEJl7DpRSgLa/nD3yLKfByDd/bIL
	lngyuEKLePMYEJSXqQiEYkkCDuIF/8gMbJEfByNlVROfpsV19ymlDDSqx4nyS2ZPFO64o17n9MO4o
	mlK88POw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGRUc-0000H5-5E; Mon, 23 Mar 2020 18:08:06 +0000
Received: from mr85p00im-hyfv06021301.me.com ([17.58.23.188])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGRU6-00005B-Bh
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 18:07:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1584986850; bh=Syms5C1o7RmHUh1txTaH5Wi0LpA3XXA2FF5eRn6eE2g=;
 h=From:To:Subject:Date:Message-Id;
 b=hXfPnf6dijJ5KW2rdVGJNcj6BUtlRFHbCS2cE7gErk6xuQrkwbkihh4jYsA7oNKk+
 7jd1JNEm+drP21GD2VqLMJGXbnRmyPKDdrKiBEp3sC7h2ndee/2ndGU1rMX28uSage
 8Kz4ctx5zDnUuHRI/YF6HpSme9GB9rzOgrivERKtJ4bSMqP6Z28NxDPNn4jsSk8z6L
 wzbyidfJ/LymzRW8TzJgBmXJ55W8RG92vESF5h35EcBo0cfxxr2BDPr8yQWi4RVppZ
 kDDKnKJNIsfF1lQ/kvQTs5LGvmcRV0HAJqCY5tlJSx7RL4feP4LtiIAAR1N/m+TAyi
 cIS5gJABAppNQ==
Received: from localhost (101.220.150.77.rev.sfr.net [77.150.220.101])
 by mr85p00im-hyfv06021301.me.com (Postfix) with ESMTPSA id DA75B40823;
 Mon, 23 Mar 2020 18:07:29 +0000 (UTC)
From: Alain Volmat <avolmat@me.com>
To: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nathan Huckleberry <nhuck15@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm: use DEBUG_UART_PHYS and DEBUG_UART_VIRT for sti
 LL_UART
Date: Mon, 23 Mar 2020 19:06:38 +0100
Message-Id: <20200323180639.8481-2-avolmat@me.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323180639.8481-1-avolmat@me.com>
References: <20200323180639.8481-1-avolmat@me.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2020-03-23_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-2003230094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_110734_413703_88CCB35D 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.23.188 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avolmat[at]me.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: patrice.chotard@st.com, avolmat@me.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the sti platform LL_UART support to rely on
CONFIG_DEBUG_UART_PHYS and CONFIG_DEBUG_UART_VIRT from Kconfig

Signed-off-by: Alain Volmat <avolmat@me.com>
---
 arch/arm/Kconfig.debug       | 23 ++++++++++++-----------
 arch/arm/include/debug/sti.S | 26 ++------------------------
 2 files changed, 14 insertions(+), 35 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index b70d7debf5ca..f1fa1cb45ecb 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -1177,10 +1177,9 @@ choice
 		  Say Y here if you want kernel low-level debugging support
 		  on ST SPEAr13xx based platforms.
 
-	config STIH41X_DEBUG_ASC2
+	config DEBUG_STIH41X_ASC2
 		bool "Use StiH415/416 ASC2 UART for low-level debug"
 		depends on ARCH_STI
-		select DEBUG_STI_UART
 		help
 		  Say Y here if you want kernel low-level debugging support
 		  on STiH415/416 based platforms like b2000, which has
@@ -1188,10 +1187,9 @@ choice
 
 		  If unsure, say N.
 
-	config STIH41X_DEBUG_SBC_ASC1
+	config DEBUG_STIH41X_SBC_ASC1
 		bool "Use StiH415/416 SBC ASC1 UART for low-level debug"
 		depends on ARCH_STI
-		select DEBUG_STI_UART
 		help
 		  Say Y here if you want kernel low-level debugging support
 		  on STiH415/416 based platforms like b2020. which has
@@ -1501,10 +1499,6 @@ config DEBUG_TEGRA_UART
 	bool
 	depends on ARCH_TEGRA
 
-config DEBUG_STI_UART
-	bool
-	depends on ARCH_STI
-
 config DEBUG_STM32_UART
 	bool
 	depends on ARCH_STM32
@@ -1557,7 +1551,8 @@ config DEBUG_LL_INCLUDE
 	default "debug/s3c24xx.S" if DEBUG_S3C24XX_UART || DEBUG_S3C64XX_UART
 	default "debug/s5pv210.S" if DEBUG_S5PV210_UART
 	default "debug/sirf.S" if DEBUG_SIRFSOC_UART
-	default "debug/sti.S" if DEBUG_STI_UART
+	default "debug/sti.S" if DEBUG_STIH41X_ASC2
+	default "debug/sti.S" if DEBUG_STIH41X_SBC_ASC1
 	default "debug/stm32.S" if DEBUG_STM32_UART
 	default "debug/tegra.S" if DEBUG_TEGRA_UART
 	default "debug/ux500.S" if DEBUG_UX500_UART
@@ -1685,7 +1680,9 @@ config DEBUG_UART_PHYS
 	default 0xfc00c000 if DEBUG_AT91_SAMA5D4_USART3
 	default 0xfcb00000 if DEBUG_HI3620_UART
 	default 0xfd883000 if DEBUG_ALPINE_UART0
+	default 0xfe531000 if DEBUG_STIH41X_SBC_ASC1
 	default 0xfe800000 if ARCH_IOP32X
+	default 0xfed32000 if DEBUG_STIH41X_ASC2
 	default 0xff690000 if DEBUG_RK32_UART2
 	default 0xffc02000 if DEBUG_SOCFPGA_UART0
 	default 0xffc02100 if DEBUG_SOCFPGA_ARRIA10_UART1
@@ -1713,7 +1710,8 @@ config DEBUG_UART_PHYS
 		DEBUG_S3C64XX_UART || \
 		DEBUG_BCM63XX_UART || DEBUG_ASM9260_UART || \
 		DEBUG_SIRFSOC_UART || DEBUG_DIGICOLOR_UA0 || \
-		DEBUG_AT91_UART
+		DEBUG_AT91_UART || \
+		DEBUG_STIH41X_ASC2 || DEBUG_STIH41X_SBC_ASC1
 
 config DEBUG_UART_VIRT
 	hex "Virtual base address of debug UART"
@@ -1778,7 +1776,9 @@ config DEBUG_UART_VIRT
 	default 0xfc705000 if DEBUG_ZTE_ZX
 	default 0xfcfe8600 if DEBUG_BCM63XX_UART
 	default 0xfd000000 if DEBUG_SPEAR3XX || DEBUG_SPEAR13XX
+	default 0xfd531000 if DEBUG_STIH41X_SBC_ASC1
 	default 0xfd883000 if DEBUG_ALPINE_UART0
+	default 0xfdd32000 if DEBUG_STIH41X_ASC2
 	default 0xfe017000 if DEBUG_MMP_UART2
 	default 0xfe018000 if DEBUG_MMP_UART3
 	default 0xfe100000 if DEBUG_IMX23_UART || DEBUG_IMX28_UART
@@ -1823,7 +1823,8 @@ config DEBUG_UART_VIRT
 		DEBUG_S3C64XX_UART || \
 		DEBUG_BCM63XX_UART || DEBUG_ASM9260_UART || \
 		DEBUG_SIRFSOC_UART || DEBUG_DIGICOLOR_UA0 || \
-		DEBUG_AT91_UART
+		DEBUG_AT91_UART || \
+		DEBUG_STIH41X_ASC2 || DEBUG_STIH41X_SBC_ASC1
 
 config DEBUG_UART_8250_SHIFT
 	int "Register offset shift for the 8250 debug UART"
diff --git a/arch/arm/include/debug/sti.S b/arch/arm/include/debug/sti.S
index 6b42c91f217d..a903a60b81c6 100644
--- a/arch/arm/include/debug/sti.S
+++ b/arch/arm/include/debug/sti.S
@@ -6,28 +6,6 @@
  * Copyright (C) 2013 STMicroelectronics (R&D) Limited.
  */
 
-#define STIH41X_COMMS_BASE              0xfed00000
-#define STIH41X_ASC2_BASE               (STIH41X_COMMS_BASE+0x32000)
-
-#define STIH41X_SBC_LPM_BASE            0xfe400000
-#define STIH41X_SBC_COMMS_BASE          (STIH41X_SBC_LPM_BASE + 0x100000)
-#define STIH41X_SBC_ASC1_BASE           (STIH41X_SBC_COMMS_BASE + 0x31000)
-
-
-#define VIRT_ADDRESS(x)		(x - 0x1000000)
-
-#if IS_ENABLED(CONFIG_STIH41X_DEBUG_ASC2)
-#define DEBUG_LL_UART_BASE	STIH41X_ASC2_BASE
-#endif
-
-#if IS_ENABLED(CONFIG_STIH41X_DEBUG_SBC_ASC1)
-#define DEBUG_LL_UART_BASE	STIH41X_SBC_ASC1_BASE
-#endif
-
-#ifndef DEBUG_LL_UART_BASE
-#error "DEBUG UART is not Configured"
-#endif
-
 #define ASC_TX_BUF_OFF  0x04
 #define ASC_CTRL_OFF    0x0c
 #define ASC_STA_OFF     0x14
@@ -37,8 +15,8 @@
 
 
 		.macro	addruart, rp, rv, tmp
-		ldr	\rp,      =DEBUG_LL_UART_BASE	@ physical base
-		ldr	\rv,      =VIRT_ADDRESS(DEBUG_LL_UART_BASE) @ virt base
+		ldr	\rp,      =CONFIG_DEBUG_UART_PHYS	@ physical base
+		ldr	\rv,      =CONFIG_DEBUG_UART_VIRT	@ virt base
 		.endm
 
                 .macro  senduart,rd,rx
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
