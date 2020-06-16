Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397481FB044
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2R3oeWZVoCBpHM0U2qBRsoBr1P/d5PayEdAtFNJt6Y=; b=EJxcIWAAe1Ttmq
	vUbo0VXfrbXV54SWzvoFrP2Rj2HNpC8lobV3SODAag2/QrBOvdTqN6M33cLJv82Ud5SIZODOM/N8V
	yF1p5Vrz0THo8HO2etKnIKEEMreFhyMFMYmCBR1iENsvuBlDE5m8zDvD3HvTzJhMi3ZPgXtCDniv+
	q430YuC9AA+8FVVDeCCr2hcTSybBN/KRE4Be5+zsa7uUhwzDtLCu6IahzgVejo66vp0qs0z7ye6ay
	2FLeqg8gfWL3G0xFYbYiLh6crE/c7ZchGKnZUH6leOzE1cL1xyCRV/tbmCQa46ELOD4xaMCqtshPv
	DfZ6YDxY2KLmL0F+iBUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAag-0005rZ-7Z; Tue, 16 Jun 2020 12:21:22 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAX4-0000Wk-AP
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:17:40 +0000
Received: by mail-pj1-x1041.google.com with SMTP id a45so1141446pje.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 05:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MpmBavrAY+NcMSTsAQ48p6wNUiPoSL0d6miZz8y14IE=;
 b=hwME/2Hm3k/tQH8+cNITC/0sv5z1s66dwLdL9ZBejhoO8dCZP8qWsUz1a7Ty6ig6/k
 ZwMDrtDor3C/9rmei6eOmJ03z7IO5+ZmY0lJ4C91pk38otK0rMkONaIUlhBecx/xZp7H
 a8Q/lGNgicWPz2MztwMBSKUoMI9KIuvaIMr8s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MpmBavrAY+NcMSTsAQ48p6wNUiPoSL0d6miZz8y14IE=;
 b=lde7WfqPiML//W3URpY5il7v1j6pXDvWxcEkASHI8EhCXomrcdLiziCP8cUm0HBPfZ
 NJ6M+kxBf57Yjy7sA2IWGmuAyCbSDAxETl00sRZ/YeP75Zyx8vb2mWnTSd1/t0qAQVxt
 TZiHVWafJVutNZoGi9HvKmJ+jYByNWKfxTr8VRDiH4U79dBNj6m/8zfWIuDwDV3fh6LQ
 KEZOz6xBMW3fb/b6u0FxFLmjSROWAxDS7wMzqfeTmLlHlYre8S5lGb3KFxYvlI4TS0PE
 uVhYOeurbqBVDWHm6r5D4KqMXeOoX2gOfHNqjaGGnqopoKVDilB/F+/6VHuk2YuRurKT
 8Vdg==
X-Gm-Message-State: AOAM530bUBn9ore9gxj/N2TfdtHoo6Xc/2a7ziEO6ZYYW7HAIn2eHazc
 hovlZ8RBBVvM/7X/yTfqCVw/KTq9/eE=
X-Google-Smtp-Source: ABdhPJx+VzlhYRDn2bciHUsOTxFZn0WI19a1389Xf6c/UNJAsKB62DbXZwkrPG+vjKCyonbf4o/IyQ==
X-Received: by 2002:a17:90a:f0d4:: with SMTP id
 fa20mr2743765pjb.160.1592309856671; 
 Tue, 16 Jun 2020 05:17:36 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 05:17:36 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 12/12] ARM: mstar: Add dts for 70mai midrive d08
Date: Tue, 16 Jun 2020 21:15:25 +0900
Message-Id: <20200616121525.1409790-13-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_051738_385875_3EEEC562 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adds initial support for the 70mai midrive d08 dash camera.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  3 ++-
 .../boot/dts/mercury5-ssc8336n-midrived08.dts | 25 +++++++++++++++++++
 2 files changed, 27 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 4a5f8075a4f6..caf4a47ba799 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1344,7 +1344,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
 dtb-$(CONFIG_ARCH_MSTARV7) += \
 	infinity-msc313-breadbee_crust.dtb \
-	infinity3-msc313e-breadbee.dtb
+	infinity3-msc313e-breadbee.dtb \
+	mercury5-ssc8336n-midrived08.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts b/arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts
new file mode 100644
index 000000000000..f24bd8cb8e60
--- /dev/null
+++ b/arch/arm/boot/dts/mercury5-ssc8336n-midrived08.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "mercury5-ssc8336n.dtsi"
+
+/ {
+	model = "70mai Midrive D08";
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
