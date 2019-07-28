Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BA677D6B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 05:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsca5FxO+xIVsUXQZKpGTomJl0EfWGihX/UZZPhD0xk=; b=dQ7vHLQmFqmt7N
	QJ6QgJKQY3Y+Q8bLvQe6zPHjW8xCVd4sIFFoBTnTl7jjiiONv1P/oMElYiAY2kJn3J9MRTmZnXvf7
	WCklcA/tB9xe+ksAHC1mrTUSDvpotJLJxBUgdpeVboOrUL+4xmAvJcJb3P2du6ThlkZX8nmJdjdft
	yDl+IvN2VT6JN239C8h/pQKm3xn4BViGqJv2CIZKFJgDyQ4+nbkGWHV2LavEkFEfKAxm6R4jnLuO6
	vfpL0BjA+WGqVi7PrDZDuCIN6T6RJOf63EDFKFV+80lLaN7IB1HAj42hirIel3qlyDfBShJxzFAUP
	rvMtdavswo2bips0hIaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrZel-0004EZ-IT; Sun, 28 Jul 2019 03:15:31 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrZdS-0002RH-0c
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 03:14:11 +0000
Received: from [199.195.250.187] (port=43281 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1hrZdO-0000n7-VY; Sun, 28 Jul 2019 04:14:07 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 5345D6F8D3;
 Sun, 28 Jul 2019 03:14:02 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v5 4/6] ARM: sunxi: dts: s3/s3l/v3: add DTSI files for
 S3/S3L/V3 SoCs
Date: Sun, 28 Jul 2019 11:12:25 +0800
Message-Id: <20190728031227.49140-5-icenowy@aosc.io>
In-Reply-To: <20190728031227.49140-1-icenowy@aosc.io>
References: <20190728031227.49140-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_201410_328241_EB0C1285 
X-CRM114-Status: GOOD (  14.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner S3/S3L/V3 SoCs all share the same die with the V3s SoC,
but with more GPIO wired out of the package.

Add a DTSI file for these SoCs. It just replaces some compatible strings
of the V3s DTSI now. As these SoCs share the same feature set on Linux,
we use the first known chip (V3) as the file's name.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
Changes in v5:
- Dropped dedicated S3/S3L DTSIs.

No changes until v5.

 arch/arm/boot/dts/sun8i-v3.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-v3.dtsi

diff --git a/arch/arm/boot/dts/sun8i-v3.dtsi b/arch/arm/boot/dts/sun8i-v3.dtsi
new file mode 100644
index 000000000000..6ae8645ade50
--- /dev/null
+++ b/arch/arm/boot/dts/sun8i-v3.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2019 Icenowy Zheng <icenowy@aosc.io>
+ */
+
+#include "sun8i-v3s.dtsi"
+
+&ccu {
+	compatible = "allwinner,sun8i-v3-ccu";
+};
+
+&pio {
+	compatible = "allwinner,sun8i-v3-pinctrl";
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
