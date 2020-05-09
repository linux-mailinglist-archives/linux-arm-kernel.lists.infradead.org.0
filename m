Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A8A31CC07F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 12:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NwZNGaQi3IQXbtJaBuh2XaSCz4Ehhh0nYnv6FzrOyQY=; b=fjPMSlXx5oLeQpTGOuJGfBsm1f
	dSmWRUFe3uXZbr5LrK0pkc4+qzY5fWnDTxOeAYF0GETGD2Z+DvvYB0uqNccInOrBj4vkaVoVfYyRw
	4f+FJF1d5IjK9vItCR3VuB6qzD0947mXfMn5bb1z607G/gV0CYBZRaF9sGeSmGIRTwY11Tz9f7x5L
	53h40nmMeHPLm7p6g9zo+kojgcBAVSGw4JwkdqWTeFDpy1i/vxiXsmLH9qJsC5d9BV60/UFJ/3kjw
	yuvHh7LpyRDK8IUapYjLYhE4n98hgLkaRhR9wvwc5ZnWCxeKXiCrg7uFWY4rOW2rerryNekEnF/Rk
	EWzXXbRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMyP-0004Jm-Ix; Sat, 09 May 2020 10:44:49 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMyE-0004Ip-7g
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 10:44:39 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 081E4200324;
 Sat,  9 May 2020 12:44:37 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E5ED2200102;
 Sat,  9 May 2020 12:44:33 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B0EC840285;
 Sat,  9 May 2020 18:44:29 +0800 (SGT)
From: Hui Song <hui.song_1@nxp.com>
To: u-boot@linux.nxdi.nxp.com,
	jiafei.pan@nxp.com
Subject: [PATCH v1 2/3] armv8: gpio: add gpio feature
Date: Sat,  9 May 2020 18:39:55 +0800
Message-Id: <20200509103956.26038-2-hui.song_1@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509103956.26038-1-hui.song_1@nxp.com>
References: <20200509103956.26038-1-hui.song_1@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_034438_416524_64AB309C 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, "hui.song" <hui.song_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "hui.song" <hui.song_1@nxp.com>

add one struct mpc8xxx_gpio_plat to enable gpio feature.

Signed-off-by: hui.song <hui.song_1@nxp.com>
---
 .../include/asm/arch-fsl-layerscape/gpio.h    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 arch/arm/include/asm/arch-fsl-layerscape/gpio.h

diff --git a/arch/arm/include/asm/arch-fsl-layerscape/gpio.h b/arch/arm/include/asm/arch-fsl-layerscape/gpio.h
new file mode 100644
index 0000000000..d8dd750a72
--- /dev/null
+++ b/arch/arm/include/asm/arch-fsl-layerscape/gpio.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2014 Freescale Semiconductor, Inc.
+ */
+
+/*
+ * Dummy header file to enable CONFIG_OF_CONTROL.
+ * If CONFIG_OF_CONTROL is enabled, lib/fdtdec.c is compiled.
+ * It includes <asm/arch/gpio.h> via <asm/gpio.h>, so those SoCs that enable
+ * OF_CONTROL must have arch/gpio.h.
+ */
+
+#ifndef __ASM_ARCH_MX85XX_GPIO_H
+#define __ASM_ARCH_MX85XX_GPIO_H
+
+struct mpc8xxx_gpio_plat {
+	ulong addr;
+	unsigned long size;
+	uint ngpios;
+};
+
+#endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
