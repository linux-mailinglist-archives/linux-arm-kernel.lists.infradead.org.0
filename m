Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206CF18FC72
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 19:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lXs8ajO+muPVAs7yo0ZRuRbmUlRLpqd0l69hcwuWVII=; b=o6INWS1o8LQ5M1TshkS883tV4e
	k02cV9r3jv7EXhTyKfb5YJDEdrBnaubc5GUK5Hmvl2NKSgdhjvi4hOeP8cU0VB3VHJSBbAgGoxj0N
	HMF9NU+khN2JFlgeBpLhBa80kMI8Ark2FSPryHZ28FltzFHlIgsWCNWgk4onN6BGPIwg2N5ktrngU
	HwTIWe+MfLJPbxwjehz5FJajh32uyGY4yajQ5n7AO8xCU0nTnpjCAnQNNtLuvCHnN8+6N74On+nRa
	qR7xTiZg/eKsf89B+XT1WeaUBteghPeo9e0j2gQh7J7DsLbwD64+r6m2+pADjsQqvXi6qDtdEIrJP
	oq38M35w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGRUw-0000b7-PD; Mon, 23 Mar 2020 18:08:26 +0000
Received: from mr85p00im-ztdg06011201.me.com ([17.58.23.181])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGRU8-00006W-Hs
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 18:07:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
 t=1584986855; bh=loyCXMYKtPQTFKpfOJsTP6j26QPXsHjOO5S87NLcf3U=;
 h=From:To:Subject:Date:Message-Id;
 b=kbNgE8YTXuFLKCR2Bvm/T5LTXaYukSyWDFmISVpbE+eqxdv/OJYvCSHWwqAeqAiYX
 juiP6pKQjt/OQqF/3+tchfbxs+t9ZrfQD2GUOeVELFTYBz7IO/tCRKvnj9Np13sMth
 KzU8bZM3KtotpX2uqlUKzq6HR3E3bQny9t75ealhL11kbwP42R7K5WvUIBJyS3d/yy
 fZoUD0Hfi+JLdBOqdotJoXqMFIm1lP3HjRenlxtWAb1hghTQKvmynqvoqeXEaIK0BQ
 H/b3GVnuCifobTqpdFltf7s8XYLh81c/ZztVG9Jedj1d0h29lsGcDCmhOFhkE2n625
 IL0H7pKqPkhdw==
Received: from localhost (101.220.150.77.rev.sfr.net [77.150.220.101])
 by mr85p00im-ztdg06011201.me.com (Postfix) with ESMTPSA id 6D94B4006F2;
 Mon, 23 Mar 2020 18:07:34 +0000 (UTC)
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
Subject: [PATCH 2/2] arm: sti LL_UART: add STiH418 SBC UART0 support
Date: Mon, 23 Mar 2020 19:06:39 +0100
Message-Id: <20200323180639.8481-3-avolmat@me.com>
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
X-CRM114-CacheID: sfid-20200323_110736_598366_D7541FC9 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [17.58.23.181 listed in list.dnswl.org]
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

Add the entry for the STiH418 SBC UART0 low level uart.

Signed-off-by: Alain Volmat <avolmat@me.com>
---
 arch/arm/Kconfig.debug | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index f1fa1cb45ecb..26bbf2a311e6 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -1197,6 +1197,16 @@ choice
 
 		  If unsure, say N.
 
+	config DEBUG_STIH418_SBC_ASC0
+		bool "Use StiH418 SBC ASC0 UART for low-level debug"
+		depends on ARCH_STI
+		help
+		  Say Y here if you want kernel low-level debugging support
+		  on STiH418 based platforms which has default UART wired
+		  up to SBC ASC0.
+
+		  If unsure, say N.
+
 	config STM32F4_DEBUG_UART
 		bool "Use STM32F4 UART for low-level debug"
 		depends on ARCH_STM32
@@ -1553,6 +1563,7 @@ config DEBUG_LL_INCLUDE
 	default "debug/sirf.S" if DEBUG_SIRFSOC_UART
 	default "debug/sti.S" if DEBUG_STIH41X_ASC2
 	default "debug/sti.S" if DEBUG_STIH41X_SBC_ASC1
+	default "debug/sti.S" if DEBUG_STIH418_SBC_ASC0
 	default "debug/stm32.S" if DEBUG_STM32_UART
 	default "debug/tegra.S" if DEBUG_TEGRA_UART
 	default "debug/ux500.S" if DEBUG_UX500_UART
@@ -1586,6 +1597,7 @@ config DEBUG_UART_PHYS
 	default 0x03010fe0 if ARCH_RPC
 	default 0x07000000 if DEBUG_SUN9I_UART0
 	default 0x09405000 if DEBUG_ZTE_ZX
+	default 0x09530000 if DEBUG_STIH418_SBC_ASC0
 	default 0x10009000 if DEBUG_REALVIEW_STD_PORT || \
 				DEBUG_VEXPRESS_UART0_CA9
 	default 0x1010c000 if DEBUG_REALVIEW_PB1176_PORT
@@ -1711,7 +1723,8 @@ config DEBUG_UART_PHYS
 		DEBUG_BCM63XX_UART || DEBUG_ASM9260_UART || \
 		DEBUG_SIRFSOC_UART || DEBUG_DIGICOLOR_UA0 || \
 		DEBUG_AT91_UART || \
-		DEBUG_STIH41X_ASC2 || DEBUG_STIH41X_SBC_ASC1
+		DEBUG_STIH41X_ASC2 || DEBUG_STIH41X_SBC_ASC1 || \
+		DEBUG_STIH418_SBC_ASC0
 
 config DEBUG_UART_VIRT
 	hex "Virtual base address of debug UART"
@@ -1757,6 +1770,7 @@ config DEBUG_UART_VIRT
 	default 0xf8090000 if DEBUG_VEXPRESS_UART0_RS1
 	default 0xf8ffee00 if DEBUG_AT91_SAM9263_DBGU
 	default 0xf8fff200 if DEBUG_AT91_RM9200_DBGU
+	default 0xf9530000 if DEBUG_STIH418_SBC_ASC0
 	default 0xf9e09000 if DEBUG_AM33XXUART1
 	default 0xfa020000 if DEBUG_OMAP4UART3 || DEBUG_TI81XXUART1
 	default 0xfa022000 if DEBUG_TI81XXUART2
@@ -1824,7 +1838,8 @@ config DEBUG_UART_VIRT
 		DEBUG_BCM63XX_UART || DEBUG_ASM9260_UART || \
 		DEBUG_SIRFSOC_UART || DEBUG_DIGICOLOR_UA0 || \
 		DEBUG_AT91_UART || \
-		DEBUG_STIH41X_ASC2 || DEBUG_STIH41X_SBC_ASC1
+		DEBUG_STIH41X_ASC2 || DEBUG_STIH41X_SBC_ASC1 || \
+		DEBUG_STIH418_SBC_ASC0
 
 config DEBUG_UART_8250_SHIFT
 	int "Register offset shift for the 8250 debug UART"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
