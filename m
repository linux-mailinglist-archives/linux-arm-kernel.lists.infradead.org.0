Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78733C526
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:32:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfIJBmvICHA0+RoKnka1Nbg69vg6+662hC1/LY1H330=; b=m+wBRK1hQ/OMVD
	4+OOobzse3RPWGamZ28MSwqVJKbwIBN4pfV4loevRXGdPiCkgXUgGmcXK1xBEYoHXH+OJpDdkPHQh
	SIdGUcuDrD/0oubU6moKGxnO+lrr8w8y6xCqjgO48HDDURVwDuC2xcJn/AlUZ6XzqSzVnSD2gLCyv
	QgHUOt1X2zQnGTSvB5SQp0wKpTRSdF+kSjMT+UaPCRpgBVrxV1D6+/MIoQFo/9jlh0wkWz/wQVrdr
	3HLcaUu9LcmlbnK/K1rIsMhRW7RxvByeFFSU1th5NMamU6vO9ENn2GvwcT/q9HDYQwhlh3C6N9U2B
	GuuzzOihANFPqNzq7zyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1habGH-0004HO-CC; Tue, 11 Jun 2019 07:32:05 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habE6-0001EM-GO
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 07:29:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id F133F104F85;
 Tue, 11 Jun 2019 09:29:48 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id HVHb10XKGsyh; Tue, 11 Jun 2019 09:29:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 471B1104F87;
 Tue, 11 Jun 2019 09:29:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Yxt4QUuLaodL; Tue, 11 Jun 2019 09:29:26 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 2CDFB104F82;
 Tue, 11 Jun 2019 09:29:25 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 6/6] ARM: hisilicon: DT: Switch to SPDX header
Date: Tue, 11 Jun 2019 09:29:21 +0200
Message-Id: <20190611072921.2979446-7-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611072921.2979446-1-lkundrak@v3.sk>
References: <20190611072921.2979446-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_002951_044058_797CCBE2 
X-CRM114-Status: UNSURE (   7.86  )
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
 arch/arm/boot/dts/hi3620-hi4511.dts  | 5 +----
 arch/arm/boot/dts/hi3620.dtsi        | 5 +----
 arch/arm/boot/dts/hip04-d01.dts      | 5 +----
 arch/arm/boot/dts/hisi-x5hd2-dkb.dts | 5 +----
 arch/arm/boot/dts/hisi-x5hd2.dtsi    | 5 +----
 5 files changed, 5 insertions(+), 20 deletions(-)

diff --git a/arch/arm/boot/dts/hi3620-hi4511.dts b/arch/arm/boot/dts/hi3620-hi4511.dts
index a579fbf13b5f..86282e6a2eff 100644
--- a/arch/arm/boot/dts/hi3620-hi4511.dts
+++ b/arch/arm/boot/dts/hi3620-hi4511.dts
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  Copyright (C) 2012-2013 Linaro Ltd.
  *  Author: Haojian Zhuang <haojian.zhuang@linaro.org>
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/hi3620.dtsi b/arch/arm/boot/dts/hi3620.dtsi
index 541d70094544..d6aed21eaac5 100644
--- a/arch/arm/boot/dts/hi3620.dtsi
+++ b/arch/arm/boot/dts/hi3620.dtsi
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Hisilicon Ltd. Hi3620 SoC
  *
@@ -5,10 +6,6 @@
  * Copyright (C) 2012-2013 Linaro Ltd.
  *
  * Author: Haojian Zhuang <haojian.zhuang@linaro.org>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
  */
 
 #include <dt-bindings/clock/hi3620-clock.h>
diff --git a/arch/arm/boot/dts/hip04-d01.dts b/arch/arm/boot/dts/hip04-d01.dts
index ca48641d0f48..157244dbd074 100644
--- a/arch/arm/boot/dts/hip04-d01.dts
+++ b/arch/arm/boot/dts/hip04-d01.dts
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  *  Copyright (C) 2013-2014 Linaro Ltd.
  *  Author: Haojian Zhuang <haojian.zhuang@linaro.org>
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/hisi-x5hd2-dkb.dts b/arch/arm/boot/dts/hisi-x5hd2-dkb.dts
index d13af8437d10..cb507e237068 100644
--- a/arch/arm/boot/dts/hisi-x5hd2-dkb.dts
+++ b/arch/arm/boot/dts/hisi-x5hd2-dkb.dts
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2013-2014 Linaro Ltd.
  * Copyright (c) 2013-2014 Hisilicon Limited.
- *
- *  This program is free software; you can redistribute it and/or modify
- *  it under the terms of the GNU General Public License version 2 as
- *  publishhed by the Free Software Foundation.
  */
 
 /dts-v1/;
diff --git a/arch/arm/boot/dts/hisi-x5hd2.dtsi b/arch/arm/boot/dts/hisi-x5hd2.dtsi
index 50d3f8426da1..2dd1d4fb0c27 100644
--- a/arch/arm/boot/dts/hisi-x5hd2.dtsi
+++ b/arch/arm/boot/dts/hisi-x5hd2.dtsi
@@ -1,10 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Copyright (c) 2013-2014 Linaro Ltd.
  * Copyright (c) 2013-2014 Hisilicon Limited.
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
  */
 
 #include <dt-bindings/clock/hix5hd2-clock.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
