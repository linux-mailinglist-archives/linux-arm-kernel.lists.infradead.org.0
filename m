Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF62A1CC072
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 12:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NwZNGaQi3IQXbtJaBuh2XaSCz4Ehhh0nYnv6FzrOyQY=; b=qLoUTqy516LjP7rgLCY9pVYwff
	HQdBuJlFyPiVGAmry/yZq75tpSxzxyAywn/zxoAGABjsT+8b20WrbLZ4t9KX4mlVYNRG1A9nLi8qd
	3KKC5qNK9ZW5nxSPqoUEGTqvyB6qeQG4Npx63kwGQuif4dRPvr6jQaoea7+8Ql58CP7+uSsJhBCmt
	mebi+6VYSq9csYugR67PN9lCoIPa2IsnXms8lWPd3U+LDWQfRztNWcRWxWYAyXoXa13rMErY8NicP
	s9jEaudR61RaoU6EvRuFqyJyNAPj6GojR+u71NjKIbo6wZZSiUcPdv5Cl5bpyihmDf8uFBe9uFirs
	q1WTE4Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMuY-0003Od-Qq; Sat, 09 May 2020 10:40:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMuB-0003Gz-Er
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 10:40:28 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9201B200102;
 Sat,  9 May 2020 12:40:24 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2638120032A;
 Sat,  9 May 2020 12:40:21 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7DB0A40297;
 Sat,  9 May 2020 18:40:16 +0800 (SGT)
From: Hui Song <hui.song_1@nxp.com>
To: jagdish.gediya@nxp.com,
	priyanka.jain@nxp.com,
	pramod.kumar_1@nxp.com
Subject: [PATCH v1 2/3] armv8: gpio: add gpio feature
Date: Sat,  9 May 2020 18:35:36 +0800
Message-Id: <20200509103537.22865-2-hui.song_1@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200509103537.22865-1-hui.song_1@nxp.com>
References: <20200509103537.22865-1-hui.song_1@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_034027_632274_E9DE61F8 
X-CRM114-Status: UNSURE (   7.61  )
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
