Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C503E150807
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 15:06:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALnSz3jt+6O5T4DDHebraEI8hzqXlzQO+//zIXG5ZxE=; b=FY5BMmYtQgCba4
	uC3qhVIOjmWrsngYee9u5ctV1Td1S0sV8zyGFA9GA6FAQ+G9qfR1K3mQ6bYHz1o7x+Q1VAKcrG9iq
	HTDYBwClgzMGLqqhtlSOPQGq8Vb3qtiCYhjqYi4ss/14itYK0mSv16t3UWvuHGuYGd+Qwo5EoAcNx
	iCaLez4Uzrcz85JoOvY56AeeBNCb4MgZMcwH8fZVX+uqwictgeR0//4hicDmhS+e6FI8wBUwCsg19
	4tFao2sCRmFSarh4y1wfjjY8vOVYepolaI9VtbRXsBNMlxZtdL4ztysQio18INyGU5hRqa0e8JE0Z
	/K1NxAhkkjZKZxeD6//A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iycMm-0002qW-8b; Mon, 03 Feb 2020 14:06:20 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iycLO-0000k9-Uz
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 14:04:57 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 013E2qk5021182; Mon, 3 Feb 2020 15:04:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=dSvOn8zEFudYBj7GcrolW7Z2iqRoAzVZcowqyt8GqhE=;
 b=XBz7+DsNu6+SKF7QDJ5wDVPsapUPu9hWeGUob9g/HYTdizcNgS/8h6kAsZiIveR6V5dS
 oA0Hg3Eqf01uIDNiP+MUnJaKJs/nL1X3wSP56uj/VFWEzpSvyw6th3k1EtzzMm+3vBAl
 MsuuVYD9ks7YKpcXTCflpi/h76Z819+tKNHShhjgrvwBNZcPqzQj663bU7rWktW6TxC2
 kxNVIO7ZdLNXNE2fBrOS6oM5PpsSsVucXeZr+74tzTnamqToEEp3lV9BBzLm4VxX4IHe
 UMo32LiBi/AabLepF0eSG/1Vj5CQbf3BkrfArL0gJLpZV/SsfCfJaTehysu3DLmlTDCT Wg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xvyp5shja-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Feb 2020 15:04:47 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 34584100038;
 Mon,  3 Feb 2020 15:04:46 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 273E1222C94;
 Mon,  3 Feb 2020 15:04:46 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 3 Feb 2020 15:04:45
 +0100
From: Erwan Le Ray <erwan.leray@st.com>
To: Russell King <linux@armlinux.org.uk>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH v3 4/4] ARM: debug: stm32: add UART early console support for
 STM32MP1
Date: Mon, 3 Feb 2020 15:04:25 +0100
Message-ID: <20200203140425.26579-5-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203140425.26579-1-erwan.leray@st.com>
References: <20200203140425.26579-1-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-03_04:2020-02-02,
 2020-02-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_060455_399738_D9938D48 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Clement Peron <peron.clem@gmail.com>, Erwan Le Ray <erwan.leray@st.com>,
 Gerald Baeza <gerald.baeza@st.com>, Nathan Huckleberry <nhuck15@gmail.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support of early console for STM32MP1. Default UART instance is UART4,
but other UART instances can be configured by setting physical and virtual
base addresses in menuconfig.

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index e5e1703a89c0..3357e294a7cc 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -1235,6 +1235,18 @@ choice
 
 		  If unsure, say N.
 
+	config STM32MP1_DEBUG_UART
+		bool "Use STM32MP1 UART for low-level debug"
+		depends on MACH_STM32MP157
+		select DEBUG_STM32_UART
+		help
+		  Say Y here if you want kernel low-level debugging support
+		  on STM32MP1 based platforms, wich default UART is wired on
+		  UART4, but another UART instance can be selected by modifying
+		  CONFIG_DEBUG_UART_PHYS and CONFIG_DEBUG_UART_VIRT.
+
+		  If unsure, say N.
+
 	config TEGRA_DEBUG_UART_AUTO_ODMDATA
 		bool "Kernel low-level debugging messages via Tegra UART via ODMDATA"
 		depends on ARCH_TEGRA
@@ -1633,6 +1645,7 @@ config DEBUG_UART_PHYS
 	default 0x3e000000 if DEBUG_BCM_KONA_UART
 	default 0x3f201000 if DEBUG_BCM2836
 	default 0x4000e400 if DEBUG_LL_UART_EFM32
+	default 0x40010000 if STM32MP1_DEBUG_UART
 	default 0x40011000 if STM32F4_DEBUG_UART || STM32F7_DEBUG_UART || \
 				STM32H7_DEBUG_UART
 	default 0x40028000 if DEBUG_AT91_SAMV7_USART1
@@ -1795,6 +1808,7 @@ config DEBUG_UART_VIRT
 	default 0xfcfe8600 if DEBUG_BCM63XX_UART
 	default 0xfd000000 if DEBUG_SPEAR3XX || DEBUG_SPEAR13XX
 	default 0xfd883000 if DEBUG_ALPINE_UART0
+	default 0xfe010000 if STM32MP1_DEBUG_UART
 	default 0xfe017000 if DEBUG_MMP_UART2
 	default 0xfe018000 if DEBUG_MMP_UART3
 	default 0xfe100000 if DEBUG_IMX23_UART || DEBUG_IMX28_UART
diff --git a/arch/arm/include/debug/stm32.S b/arch/arm/include/debug/stm32.S
index 5a2e2b065340..f3c4a37210ed 100644
--- a/arch/arm/include/debug/stm32.S
+++ b/arch/arm/include/debug/stm32.S
@@ -9,7 +9,8 @@
 #define STM32_USART_TDR_OFF		0x04
 #endif
 
-#if defined(CONFIG_STM32F7_DEBUG_UART) || defined(CONFIG_STM32H7_DEBUG_UART)
+#if defined(CONFIG_STM32F7_DEBUG_UART) || defined(CONFIG_STM32H7_DEBUG_UART) || \
+	defined(CONFIG_STM32MP1_DEBUG_UART)
 #define STM32_USART_SR_OFF		0x1C
 #define STM32_USART_TDR_OFF		0x28
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
