Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AAF19DD65
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 20:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QGT8RWoM0XHoTw9Q178K4wr3XuzR1lx/yBoPb500VZc=; b=up1LZC3+GMU6yuYfbqNeEWl/E0
	83ySiSJg1qakY/ukMIshvy7H5LSnRSU1ydX4X9mH0edJYDazs4oaFM3QYKbbHNXUKWeKKsbyw1iG3
	gohQEPKaRvy0zU8sa3J1tv+hVXWWDMh2suOdHDnBToIM4olIj+QZ+M8GnnsMtq2WgYN0+IR/h5vTs
	TqWShr8tR9prJWxnx3uf92ssJL6TKo1ku+OTR61I9gKQESMKRwHrXmiB5UlGYzV1w1iUmiSerBUbl
	IunaDW+aMx304yW+QhT6RJsGf8Wt1C+5g++6qFQqTlqalWWv0mz2+5TymXEx8Ua8sjOBM61WAezTx
	N6slW5hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKQeH-0005HZ-GR; Fri, 03 Apr 2020 18:02:33 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKQdz-00055H-4t; Fri, 03 Apr 2020 18:02:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id w10so9623821wrm.4;
 Fri, 03 Apr 2020 11:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bmSExbPcYsSLBGuvWWlddM3gtwpXwrgXWshNJkEoawc=;
 b=HNSzBx3vmm9ICSvF+V+FKfX4HydCxtwyiJ5H9kcsNR3jMarjQKjZt4ZZ8PmdBTwA/C
 SVlEHCG/8+6Rk2Z7t2qw8KNfPyJLGVnTP81H2mwdB2Qc5O6t1TlTPzYH4G502D1+xzHq
 f3aufq0lV3hmNVz+5ZpO/1zZhsulaCujzWCmO8U5XGgIOQF11aqYxt3Wy2wxw6/e28D4
 dBVdO9K9hu1uHJ1PEMAJMMW+/yHgHkyu04t9U6dmstavfayu2g5OOTs1vGJNoWB9LafO
 ZYPQryA17uqXi704N7Jxwh55Icqjz2yQVEgbiaThOHVBX3yCTAR7Fowqv1KD5T43DEFX
 zy4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bmSExbPcYsSLBGuvWWlddM3gtwpXwrgXWshNJkEoawc=;
 b=tZKxjqogfA87hB3FnT+iQiXbud+pVkurqoVmF1Jveh6gy48Hol9W4OHfSNvXTFCp+4
 X/7MXujBO5oEPMHVb74ETbBO5LIO2DjI9RK6FI3FVwaysGltGCjUsfaUGLwZ5cOb15T3
 VU3qlrjCW7sDpuCX9ihvmgQWIKSs2Ejsf4CykHkOcDln0kVChH1tlJKree8AzakHUfvt
 9myrcHSJCiWadfvK2sjGBaNsM92K2vLULhBFquon0qJomJR5Nkmy3wSDefmb/8TBssxC
 w+myTB79TwKbBsbybGVJ+n1A7YDvnI783Zp8ZHdu5u0b/93pOm0Mr/CQjqNTCaGCf5dh
 p31Q==
X-Gm-Message-State: AGi0PuZIjxGzDrH+2j2t3F6Y0R1sK5q5yk6HBiJvzNj9WHlY3VgSLG9l
 eVFWMNP8MkqGcj0PE8z7tZ0=
X-Google-Smtp-Source: APiQypJIXvJp2Ky9wBX9h9hFu/x5hSk116TIOt+sFie8LhvXCTRdOUioItrnInQpyW3Iyj1g2uBNbw==
X-Received: by 2002:adf:c511:: with SMTP id q17mr10412087wrf.275.1585936931733; 
 Fri, 03 Apr 2020 11:02:11 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j11sm13005492wrt.14.2020.04.03.11.02.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 Apr 2020 11:02:11 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v3 2/4] ARM: dts: rockchip: remove include for irq.h
Date: Fri,  3 Apr 2020 20:01:57 +0200
Message-Id: <20200403180159.13387-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200403180159.13387-1-jbx6244@gmail.com>
References: <20200403180159.13387-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_110215_212573_6A73A2A0 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'irq.h' file is already included through 'arm-gic.h',
so remove them from all Rockchip dtsi files.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 1 -
 arch/arm/boot/dts/rk322x.dtsi | 1 -
 arch/arm/boot/dts/rk3288.dtsi | 1 -
 arch/arm/boot/dts/rk3xxx.dtsi | 1 -
 arch/arm/boot/dts/rv1108.dtsi | 1 -
 5 files changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 781ac7583..8be47354d 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/clock/rk3036-cru.h>
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index c14891fe8..86c4d62fc 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/clock/rk3228-cru.h>
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index f102fec69..ace67aa7d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/clock/rk3288-cru.h>
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index f9fcb7e96..c79d98edd 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -4,7 +4,6 @@
  * Author: Heiko Stuebner <heiko@sntech.de>
  */
 
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
 
diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index b453f8d0f..7d2ef39db 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
 
 #include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/rv1108-cru.h>
 #include <dt-bindings/pinctrl/rockchip.h>
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
