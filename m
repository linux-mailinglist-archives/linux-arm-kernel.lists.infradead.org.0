Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1542B472F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 08:08:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vd0B3j120Iuo9mFh/R6c6bUgkVQiW2AIyw/uGJHIZIc=; b=A8BtyjqoG18bpG
	hk8GvK03ORIStNPoXVF7DlVgWyCO01ipWqvNEign3tAiZ1bB0WJ1N+W0GHnn6twhkrmypXTX09o1I
	HQMAc3UhrLPCdGO18bUoaIMe+IKXzpCLachAZ8DjZJ7qdyl1z4oyQCy342FaBkerSeC02Ljy+wOzx
	mlwAB9cKg8rv9REmeL78VCYhVXty8zZK18meubwVQrbAIHvd0iMhYitHXkDfm4NKQvTY6nHAtal7j
	J/bD6dDGTYzPU+tPTq74XWkfFclhnFY5MxOLxdrVzSnVbRlJtDveoFuveMIOn3SsFA0S3TtqfQw+H
	7Addet7kflX++gTO9BRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA6es-0002O3-Fj; Tue, 17 Sep 2019 06:08:14 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA6eJ-00025k-OC; Tue, 17 Sep 2019 06:07:41 +0000
Received: from localhost.localdomain (10.28.8.19) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Tue, 17 Sep 2019
 14:08:27 +0800
From: Qianggui Song <qianggui.song@amlogic.com>
To: Linus Walleij <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [PATCH 1/3] pinctrl: add compatible for Amlogic Meson A1 pin
 controller
Date: Tue, 17 Sep 2019 14:07:20 +0800
Message-ID: <1568700442-18540-2-git-send-email-qianggui.song@amlogic.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568700442-18540-1-git-send-email-qianggui.song@amlogic.com>
References: <1568700442-18540-1-git-send-email-qianggui.song@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.19]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_230739_785694_15E6078A 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Qianggui Song <qianggui.song@amlogic.com>,
 Mark Rutland <mark.rutland@arm.com>, Hanjie Lin <hanjie.lin@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new compatible name for Amlogic's Meson-A1 pin controller
add a dt-binding header file which document the detail pin names.

Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
---
 .../devicetree/bindings/pinctrl/meson,pinctrl.txt  |  1 +
 include/dt-bindings/gpio/meson-a1-gpio.h           | 73 ++++++++++++++++++++++
 2 files changed, 74 insertions(+)
 create mode 100644 include/dt-bindings/gpio/meson-a1-gpio.h

diff --git a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
index 10dc4f7..0aff1f2 100644
--- a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
@@ -15,6 +15,7 @@ Required properties for the root node:
 		      "amlogic,meson-axg-aobus-pinctrl"
 		      "amlogic,meson-g12a-periphs-pinctrl"
 		      "amlogic,meson-g12a-aobus-pinctrl"
+		      "amlogic,meson-a1-periphs-pinctrl"
  - reg: address and size of registers controlling irq functionality
 
 === GPIO sub-nodes ===
diff --git a/include/dt-bindings/gpio/meson-a1-gpio.h b/include/dt-bindings/gpio/meson-a1-gpio.h
new file mode 100644
index 0000000..40e57a5
--- /dev/null
+++ b/include/dt-bindings/gpio/meson-a1-gpio.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
+ * Author: Qianggui Song <qianggui.song@amlogic.com>
+ */
+
+#ifndef _DT_BINDINGS_MESON_A1_GPIO_H
+#define _DT_BINDINGS_MESON_A1_GPIO_H
+
+#define GPIOP_0		0
+#define GPIOP_1		1
+#define GPIOP_2		2
+#define GPIOP_3		3
+#define GPIOP_4		4
+#define GPIOP_5		5
+#define GPIOP_6		6
+#define GPIOP_7		7
+#define GPIOP_8		8
+#define GPIOP_9		9
+#define GPIOP_10	10
+#define GPIOP_11	11
+#define GPIOP_12	12
+#define GPIOB_0		13
+#define GPIOB_1		14
+#define GPIOB_2		15
+#define GPIOB_3		16
+#define GPIOB_4		17
+#define GPIOB_5		18
+#define GPIOB_6		19
+#define GPIOX_0		20
+#define GPIOX_1		21
+#define GPIOX_2		22
+#define GPIOX_3		23
+#define GPIOX_4		24
+#define GPIOX_5		25
+#define GPIOX_6		26
+#define GPIOX_7		27
+#define GPIOX_8		28
+#define GPIOX_9		29
+#define GPIOX_10	30
+#define GPIOX_11	31
+#define GPIOX_12	32
+#define GPIOX_13	33
+#define GPIOX_14	34
+#define GPIOX_15	35
+#define GPIOX_16	36
+#define GPIOF_0		37
+#define GPIOF_1		38
+#define GPIOF_2		39
+#define GPIOF_3		40
+#define GPIOF_4		41
+#define GPIOF_5		42
+#define GPIOF_6		43
+#define GPIOF_7		44
+#define GPIOF_8		45
+#define GPIOF_9		46
+#define GPIOF_10	47
+#define GPIOF_11	48
+#define GPIOF_12	49
+#define GPIOA_0		50
+#define GPIOA_1		51
+#define GPIOA_2		52
+#define GPIOA_3		53
+#define GPIOA_4		54
+#define GPIOA_5		55
+#define GPIOA_6		56
+#define GPIOA_7		57
+#define GPIOA_8		58
+#define GPIOA_9		59
+#define GPIOA_10	60
+#define GPIOA_11	61
+
+#endif /* _DT_BINDINGS_MESON_A1_GPIO_H */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
