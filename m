Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D051A3C4D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:21:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bWQr5AQrETsBz+gd2pTseDAV82CX/t6lxpExDCAd5FI=; b=tMx70zO82TdwEx
	7yq/I8COVg/WT2g96apLAoqSuCqWbskDKYtU3asU5pxhEuDaYxWKCZ1Vy6iFtARA/XEIv4LxgLRw8
	mXXVuDtUHcQUj/3y4EEVMNwV+BfMUAMN1V7HDpttIWLS/DYwwYx/IA3FlSsc6rd2lx0TWHgKG0QUY
	6uC7YeOIkU042dmw+oNrDP/kWYs/XyKHNgbIlUE43I2D+udBUGM0p02prnKwyflXYU0dgf2mX4/Uu
	RYIj3xV3DBWbqPQOxeTCVnJFlOtXpL0xDADknDHbgV4JWY3cBfVb/V+Lw619KZtIFtBl+Lnd4S/z6
	ZlAkJm6tj+iKVR1aPyow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hab5b-000777-Je; Tue, 11 Jun 2019 07:21:03 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hab5N-00075l-Gz
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 07:20:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 3142B104F74;
 Tue, 11 Jun 2019 09:20:42 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id FvvXSs4m1zKn; Tue, 11 Jun 2019 09:20:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 45134104F78;
 Tue, 11 Jun 2019 09:20:18 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rRDIVzG3U7MD; Tue, 11 Jun 2019 09:20:14 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 2749B104F6E;
 Tue, 11 Jun 2019 09:20:14 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Wei Xu <xuwei5@hisilicon.com>
Subject: [PATCH] arm64: dts: hisilicon: Switch to SPDX header
Date: Tue, 11 Jun 2019 09:20:09 +0200
Message-Id: <20190611072009.2978447-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_002049_877357_99E298CE 
X-CRM114-Status: UNSURE (   7.05  )
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
Cc: devicetree@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 linux-kernel@vger.kernel.org, Pengcheng Li <lipengcheng8@huawei.com>,
 Leo Yan <leo.yan@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The original license text had a typo ("publishhed") which would be
likely to confuse automated licensing auditing tools. Let's just switch
to SPDX instead of fixing the wording.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi | 5 +----
 arch/arm64/boot/dts/hisilicon/hip05-d02.dts         | 5 +----
 arch/arm64/boot/dts/hisilicon/hip05.dtsi            | 5 +----
 arch/arm64/boot/dts/hisilicon/hip06-d03.dts         | 5 +----
 arch/arm64/boot/dts/hisilicon/hip06.dtsi            | 5 +----
 arch/arm64/boot/dts/hisilicon/hip07-d05.dts         | 5 +----
 arch/arm64/boot/dts/hisilicon/hip07.dtsi            | 5 +----
 7 files changed, 7 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
index 68c52f1149be..f9662a9f17b8 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220-coresight.dtsi
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * dtsi file for Hisilicon Hi6220 coresight
  *
@@ -6,10 +7,6 @@
  * Author: Pengcheng Li <lipengcheng8@huawei.com>
  *         Leo Yan <leo.yan@linaro.org>
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
- *
  */
 
 / {
diff --git a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
index 3bbd017f088f..154c25d1d50d 100644
--- a/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip05-d02.dts
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /**
  * dts file for Hisilicon D02 Development Board
  *
  * Copyright (C) 2014,2015 Hisilicon Ltd.
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
- *
  */
 
 /dts-v1/;
diff --git a/arch/arm64/boot/dts/hisilicon/hip05.dtsi b/arch/arm64/boot/dts/hisilicon/hip05.dtsi
index d321edc09c3f..a2ffaee686b0 100644
--- a/arch/arm64/boot/dts/hisilicon/hip05.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip05.dtsi
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /**
  * dts file for Hisilicon D02 Development Board
  *
  * Copyright (C) 2014,2015 Hisilicon Ltd.
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
- *
  */
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
diff --git a/arch/arm64/boot/dts/hisilicon/hip06-d03.dts b/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
index a95c6f5619bf..46616215969d 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip06-d03.dts
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /**
  * dts file for Hisilicon D03 Development Board
  *
  * Copyright (C) 2016 Hisilicon Ltd.
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
- *
  */
 
 /dts-v1/;
diff --git a/arch/arm64/boot/dts/hisilicon/hip06.dtsi b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
index 56625587b6de..00baee6d399c 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /**
  * dts file for Hisilicon D03 Development Board
  *
  * Copyright (C) 2016 Hisilicon Ltd.
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
- *
  */
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
diff --git a/arch/arm64/boot/dts/hisilicon/hip07-d05.dts b/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
index 21147e8e3f94..d0cd986ab3a0 100644
--- a/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
+++ b/arch/arm64/boot/dts/hisilicon/hip07-d05.dts
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /**
  * dts file for Hisilicon D05 Development Board
  *
  * Copyright (C) 2016 Hisilicon Ltd.
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
- *
  */
 
 /dts-v1/;
diff --git a/arch/arm64/boot/dts/hisilicon/hip07.dtsi b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
index 28bd4389441f..abfa416613e5 100644
--- a/arch/arm64/boot/dts/hisilicon/hip07.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
@@ -1,12 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0
 /**
  * dts file for Hisilicon D05 Development Board
  *
  * Copyright (C) 2016 Hisilicon Ltd.
  *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License version 2 as
- * publishhed by the Free Software Foundation.
- *
  */
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
