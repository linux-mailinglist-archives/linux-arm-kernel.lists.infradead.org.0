Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB9814EDA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Px/l8BoC/ok0DLPKCbqQCLvco49HoS1wjEkejRUbyDM=; b=Y/gBIs81xzP/Hk
	gZI9Zu6PhaS6QYU+WCGs/tQ54ktnTejSmASXVUh2HbHFZmiHz5xX1A8cvDwqyhJ725vX35pZu8C5j
	4xy2s94slDJ/hkmh4Or5clAm4QM8VO9BYTwnGBxwgIwH2iQvQL9Op0aQ91E+5pia+PRQhW371l+wT
	+yveyMQEBu0pVyVH+yBuNBQKsuCiwV7CXyZH/FVRrC8ikXo1u3QtzMuftDnfHYWzH3itxjXfoxBD8
	yoyYImMJT6h8atAMUO70tzMLUmLyVlTX4K6NFG+4qRkngtNTMAPE9QxkFT2Vx0IAcSD65YF5/JPvw
	fLx779+plNHyH1ofIuwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixWZP-0003VT-NU; Fri, 31 Jan 2020 13:42:51 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixWYU-0002q3-Rv
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:41:56 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00VDbWI6016216; Fri, 31 Jan 2020 14:41:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=XaMLWgqr4Xu77AIeiVKHfV8cYiwTa5gMgIJBRfBE5Lo=;
 b=qpeW9RphzGwk+6y7vTqmTDLMrAAPsCsTilEWlo4O9zLhrxhfH4NWpdCjz5YRCrwmaknA
 bVtmCopxf8EiOdxRcyzaoeW1x0F+bDNyy5eqQ89UgGuaXZapC/Cb2Sz6JeE0aNF+U23I
 SYrTvJN38ihOLhZ3EEPM9/9NtZ/MHKc7VNRQBXp1df7rXBQy6DMLUmU/Q/bHULZvQ4qP
 arcpDYOVKuv8k3pGRilPxyTK478Fknrbbwc2kBaLTDgXrbn+DI7QNpYbE5Z/+8iLSiyE
 2T5NEIWTsfI4uQHyyUpWgtJP/8EsiOXyr8uaGcigtdPUPbFp07VPfz9NlziI74HzoWke GQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xrbpbec5d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 31 Jan 2020 14:41:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8D3AB10004A;
 Fri, 31 Jan 2020 14:41:43 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5AD2D2BC7D9;
 Fri, 31 Jan 2020 14:41:43 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 31 Jan 2020 14:41:42
 +0100
From: Erwan Le Ray <erwan.leray@st.com>
To: Russell King <linux@armlinux.org.uk>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH v2 2/4] ARM: debug: stm32: add UART early console
 configuration for STM32F7
Date: Fri, 31 Jan 2020 14:41:21 +0100
Message-ID: <20200131134123.27775-3-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200131134123.27775-1-erwan.leray@st.com>
References: <20200131134123.27775-1-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-31_03:2020-01-31,
 2020-01-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_054155_203915_421E5EA1 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Early console is hardcoded on USART1 in current implementation.
With this patch, default UART instance is USART1, but other UART instances
can be configured by setting physical and virtual base addresses in
menuconfig.

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 4f982ef1d0ec..5ff66c294a5a 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -1213,12 +1213,13 @@ choice
 
 	config STM32F7_DEBUG_UART
 		bool "Use STM32F7 UART for low-level debug"
-		depends on ARCH_STM32
+		depends on MACH_STM32F746 || MACH_STM32F769
 		select DEBUG_STM32_UART
 		help
 		  Say Y here if you want kernel low-level debugging support
 		  on STM32F7 based platforms, which default UART is wired on
-		  USART1.
+		  USART1, but another UART instance can be selected by modifying
+		  CONFIG_DEBUG_UART_PHYS.
 
 		  If unsure, say N.
 
@@ -1620,7 +1621,7 @@ config DEBUG_UART_PHYS
 	default 0x3e000000 if DEBUG_BCM_KONA_UART
 	default 0x3f201000 if DEBUG_BCM2836
 	default 0x4000e400 if DEBUG_LL_UART_EFM32
-	default 0x40011000 if STM32F4_DEBUG_UART
+	default 0x40011000 if STM32F4_DEBUG_UART || STM32F7_DEBUG_UART
 	default 0x40028000 if DEBUG_AT91_SAMV7_USART1
 	default 0x40081000 if DEBUG_LPC18XX_UART0
 	default 0x40090000 if DEBUG_LPC32XX
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
