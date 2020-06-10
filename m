Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8511F50F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:10:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNeQyfjJSy4a9Wl0rN12jhaV10iUJ5WCNuuScOPJVPU=; b=qnmgiw5QuvW7dA
	gCEa0vjIKqTbquy5bkYVdf6wbAEIJxxYLKaXNmpGj0Udoh6cRVoCLCYbgNNP9ITne3b+QAKVFbsVA
	YlqvA4O+g6LKn+OctenWj3fdNX/2esS+tZqV3skikOlMn7Fj5K4KRUYFAkUjDuinm2AIvRFf0zM/n
	kWANtLQe/di53wCnoNCiyossQ+G8uebdnFfO0+nslKPbPpxQiwCMSekXpi8rjojxiKmzrTiALWMNw
	BI82Q8Pp/yFpZifNsUWby6r7/ioFSydhnY6gJCDM8pEulnvfl5n3TVadytSwiSjdZLeKiTSj968ET
	vAAqeKmZmzrL+NKN8zMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwkQ-0003RC-0p; Wed, 10 Jun 2020 09:10:14 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwk2-0003JJ-IQ
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:09:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id jz3so609093pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8rOPH/PbuLqa2Cv7xwtOA9u/UUbRhuHyuujsYiUr6F0=;
 b=eBHYdxR1Xa52Fqd6sKtA6Rq9srTsGJmyYGxwbZSYDhJs6eswpgfL+p9qNHFYDV7KsI
 ea0S7VZZel+/Np8snAXVZxKW3KU7rulyRGs1hilXxkMK4Au7hYZWzXz9YV1FisLONDxq
 3C5cCG9B7w6VuXyD5NLkLc9pSlNglhlDmqEDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8rOPH/PbuLqa2Cv7xwtOA9u/UUbRhuHyuujsYiUr6F0=;
 b=fGIwJOBo2rRGJWI3vuuv9UX56u2ot5/qu3YDCUySD1Gkx8YypM5+yMvgBP7PXxLIrv
 4O6iiQpwXQHx3iEuTq3yU6bwMIrHWJYy9ODqbmzxiSGL5k/v7UTVzNAKflfT5yyoz8qM
 +BR94XekpYnOT8KKvXKA6PZUHFH+cTGmk/pd8JhCTrZJstZGOmsocme5kJsXZblPiOEg
 cshDWg/ufsQ1jKIEIWIwXoUgzQv5SeHLTPdIQDSDp5xn9D4mqqTJd+la2cAxMUtlZSKo
 RLycswzo/W/cR3azpF0l2OtB9jPpRo5vXCnRqUPXU9l8/LkvssWwTLUvNK9FTptinI0e
 YTBA==
X-Gm-Message-State: AOAM531QizpVdeW6gIYXggKimMD0DvkoUS3p/0BeMw6xgdQI5cKL9U1r
 EAam0uEPUn1kF79GquC5xVtI0g==
X-Google-Smtp-Source: ABdhPJww724krgp0BaN7nCeOkrtyuYDvte4q30IE/QoN+f33C/Hjei4IWQ+/yy2VykQxBXRYOfRA7Q==
X-Received: by 2002:a17:902:968b:: with SMTP id
 n11mr2104726plp.331.1591780189664; 
 Wed, 10 Jun 2020 02:09:49 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id nl8sm5191620pjb.13.2020.06.10.02.09.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 02:09:49 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: 
Subject: [PATCH v2 5/5] ARM: mstar: Add dts for 70mai midrive d08
Date: Wed, 10 Jun 2020 18:04:03 +0900
Message-Id: <20200610090421.3428945-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20191014061617.10296-2-daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020950_668004_89C87DC0 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck15@gmail.com>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 allen <allen.chen@ite.com.tw>, tim.bird@sony.com,
 Will Deacon <will@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds inital support for the 70mai midrive d08 dash camera.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  3 ++-
 .../boot/dts/mercury5-ssc8336n-midrive08.dts  | 25 +++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 4a5f8075a4f6..35c7ecc52c60 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1344,7 +1344,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_MSTARV7) += \
 	infinity-msc313-breadbee_crust.dtb \
-	infinity3-msc313e-breadbee.dtb
+	infinity3-msc313e-breadbee.dtb \
+	mercury5-ssc8336n-midrive08.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts b/arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts
new file mode 100644
index 000000000000..4ee50ecf6ab1
--- /dev/null
+++ b/arch/arm/boot/dts/mercury5-ssc8336n-midrive08.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "mercury5-ssc8336n.dtsi"
+
+/ {
+	model = "midrive d08";
+	compatible = "70mai,midrived08", "mstar,mercury5";
+
+	aliases {
+		serial0 = &pm_uart;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&pm_uart {
+	status = "okay";
+};
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
