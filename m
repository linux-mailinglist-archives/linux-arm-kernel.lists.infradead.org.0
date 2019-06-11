Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC91A3C514
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rk98LaWvuXYDrHSdgWB+aYbfvDMaFgwm+eT9uASvz8g=; b=f6svt9Kco4/K7z
	h9Bqz0ZEm7x30LeudvcBXeHocnuctJbhcsIhgCf6Mo/3Ue6Krp0OSIhHfedk8AorCdgZrbxLHfsAu
	vm7dXp5sTigtpas3K3N7DScZACvTfXND7VkZUUUz2cxI9LhHOIhdLJUpOp6LQRRb9ige/rwil/DSw
	ZraTecCgQRkHelVwqh33PvVCC0Bxb4SgUJhUgUrvtWlBJSJsZjtxMeDHngMqCIqkxnxxjbqOUdsA5
	L8DXqcggdD0xFhV5+TwJCd/Oo1CivHPTHYtArYZ1YN9advxMXE3y6GWUGdsMG8z2Pq0rGsYpo5aI7
	XxlvYVrQnB2DhzgcybxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habFg-0003cB-Vg; Tue, 11 Jun 2019 07:31:29 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habE3-00011K-7n
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 07:29:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id BFA4E104F74;
 Tue, 11 Jun 2019 09:29:45 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id U1O7wZojl3kf; Tue, 11 Jun 2019 09:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 5501B104F7F;
 Tue, 11 Jun 2019 09:29:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id k8Kyn4XON97W; Tue, 11 Jun 2019 09:29:25 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id AB060104F79;
 Tue, 11 Jun 2019 09:29:24 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 4/6] ARM: mmp: Switch to SPDX header
Date: Tue, 11 Jun 2019 09:29:19 +0200
Message-Id: <20190611072921.2979446-5-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611072921.2979446-1-lkundrak@v3.sk>
References: <20190611072921.2979446-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_002947_685329_F0AC20FE 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Daniel Mack <daniel@zonque.org>,
 Wei Xu <xuwei5@hisilicon.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The original license text had a typo ("publishhed") which would be
likely to confuse automated licensing auditing tools. Let's just switch
to SPDX instead of fixing the wording.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/mach-mmp/aspenite.c      | 5 +----
 arch/arm/mach-mmp/avengers_lite.c | 5 +----
 arch/arm/mach-mmp/brownstone.c    | 5 +----
 arch/arm/mach-mmp/flint.c         | 5 +----
 arch/arm/mach-mmp/gplugd.c        | 5 +----
 arch/arm/mach-mmp/jasper.c        | 5 +----
 arch/arm/mach-mmp/mmp-dt.c        | 5 +----
 arch/arm/mach-mmp/mmp2-dt.c       | 5 +----
 arch/arm/mach-mmp/tavorevb.c      | 5 +----
 arch/arm/mach-mmp/teton_bga.c     | 5 +----
 arch/arm/mach-mmp/teton_bga.h     | 5 +----
 arch/arm/mach-mmp/ttc_dkb.c       | 5 +----
 12 files changed, 12 insertions(+), 48 deletions(-)

diff --git a/arch/arm/mach-mmp/aspenite.c b/arch/arm/mach-mmp/aspenite.c
index 75b2d7db643e..7eebeb979b05 100644
--- a/arch/arm/mach-mmp/aspenite.c
+++ b/arch/arm/mach-mmp/aspenite.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/aspenite.c
  *
  *  Support for the Marvell PXA168-based Aspenite and Zylonite2
  *  Development Platform.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 #include <linux/gpio.h>
 #include <linux/gpio-pxa.h>
diff --git a/arch/arm/mach-mmp/avengers_lite.c b/arch/arm/mach-mmp/avengers_lite.c
index 3d2aea830ef7..19b476e590eb 100644
--- a/arch/arm/mach-mmp/avengers_lite.c
+++ b/arch/arm/mach-mmp/avengers_lite.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/avengers_lite.c
  *
  *  Support for the Marvell PXA168-based Avengers lite Development Platform.
  *
  *  Copyright (C) 2009-2010 Marvell International Ltd.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/init.h>
diff --git a/arch/arm/mach-mmp/brownstone.c b/arch/arm/mach-mmp/brownstone.c
index d2560fb1e835..8d8704382cf3 100644
--- a/arch/arm/mach-mmp/brownstone.c
+++ b/arch/arm/mach-mmp/brownstone.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/brownstone.c
  *
  *  Support for the Marvell Brownstone Development Platform.
  *
  *  Copyright (C) 2009-2010 Marvell International Ltd.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/init.h>
diff --git a/arch/arm/mach-mmp/flint.c b/arch/arm/mach-mmp/flint.c
index 078b98034960..48e04c3f2193 100644
--- a/arch/arm/mach-mmp/flint.c
+++ b/arch/arm/mach-mmp/flint.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/flint.c
  *
  *  Support for the Marvell Flint Development Platform.
  *
  *  Copyright (C) 2009 Marvell International Ltd.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/init.h>
diff --git a/arch/arm/mach-mmp/gplugd.c b/arch/arm/mach-mmp/gplugd.c
index c224119dc0f4..24f8797893e7 100644
--- a/arch/arm/mach-mmp/gplugd.c
+++ b/arch/arm/mach-mmp/gplugd.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/gplugd.c
  *
  *  Support for the Marvell PXA168-based GuruPlug Display (gplugD) Platform.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/init.h>
diff --git a/arch/arm/mach-mmp/jasper.c b/arch/arm/mach-mmp/jasper.c
index 5dbb753a77ac..104c18853ea8 100644
--- a/arch/arm/mach-mmp/jasper.c
+++ b/arch/arm/mach-mmp/jasper.c
@@ -1,13 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/jasper.c
  *
  *  Support for the Marvell Jasper Development Platform.
  *
  *  Copyright (C) 2009-2010 Marvell International Ltd.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/init.h>
diff --git a/arch/arm/mach-mmp/mmp-dt.c b/arch/arm/mach-mmp/mmp-dt.c
index 6e155f03b83c..829a3ddeab13 100644
--- a/arch/arm/mach-mmp/mmp-dt.c
+++ b/arch/arm/mach-mmp/mmp-dt.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/mmp-dt.c
  *
  *  Copyright (C) 2012 Marvell Technology Group Ltd.
  *  Author: Haojian Zhuang <haojian.zhuang@marvell.com>
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/irqchip.h>
diff --git a/arch/arm/mach-mmp/mmp2-dt.c b/arch/arm/mach-mmp/mmp2-dt.c
index e3ef1da26d5e..51482f23f253 100644
--- a/arch/arm/mach-mmp/mmp2-dt.c
+++ b/arch/arm/mach-mmp/mmp2-dt.c
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/mmp2-dt.c
  *
  *  Copyright (C) 2012 Marvell Technology Group Ltd.
  *  Author: Haojian Zhuang <haojian.zhuang@marvell.com>
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/io.h>
diff --git a/arch/arm/mach-mmp/tavorevb.c b/arch/arm/mach-mmp/tavorevb.c
index efe35fadeb60..e272b9218e17 100644
--- a/arch/arm/mach-mmp/tavorevb.c
+++ b/arch/arm/mach-mmp/tavorevb.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/tavorevb.c
  *
  *  Support for the Marvell PXA910-based TavorEVB Development Platform.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 #include <linux/gpio.h>
 #include <linux/gpio-pxa.h>
diff --git a/arch/arm/mach-mmp/teton_bga.c b/arch/arm/mach-mmp/teton_bga.c
index cf038eb3bb4b..122f8288526e 100644
--- a/arch/arm/mach-mmp/teton_bga.c
+++ b/arch/arm/mach-mmp/teton_bga.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/teton_bga.c
  *
@@ -6,10 +7,6 @@
  *  Author: Mark F. Brown <mark.brown314@gmail.com>
  *
  *  This code is based on aspenite.c
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/init.h>
diff --git a/arch/arm/mach-mmp/teton_bga.h b/arch/arm/mach-mmp/teton_bga.h
index 019730f5aa56..d3c764aa4f97 100644
--- a/arch/arm/mach-mmp/teton_bga.h
+++ b/arch/arm/mach-mmp/teton_bga.h
@@ -1,9 +1,6 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  Support for the Marvell PXA168 Teton BGA Development Platform.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 #ifndef __ASM_MACH_TETON_BGA_H
 #define __ASM_MACH_TETON_BGA_H
diff --git a/arch/arm/mach-mmp/ttc_dkb.c b/arch/arm/mach-mmp/ttc_dkb.c
index 09b53ace08ac..0091a97d4f33 100644
--- a/arch/arm/mach-mmp/ttc_dkb.c
+++ b/arch/arm/mach-mmp/ttc_dkb.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  linux/arch/arm/mach-mmp/ttc_dkb.c
  *
  *  Support for the Marvell PXA910-based TTC_DKB Development Platform.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 #include <linux/init.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
