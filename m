Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EE51FF303
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D1cCYoCY+/x1aORt7uWtFdp46P9XTi6YW+lb99CPdVI=; b=nh0o/ZOmEa+fV0
	nC7y6Gf4A9bN8ajSggwdzqTl+jqpoh/ikDTLPxUNetRm+/QbRL1x56ZVUfh1LAqQGJum5w0Rm74sv
	XEbjDJDH45unfZDm8T2FhHbkQq7BMxsITGd/TnSGK2Nh321Mf7g3CUasRsHwMmuPu7wJScCCfI4h3
	cmZfAxXY8EAyVblDm5NeK8bOW+7FIfZRP5FqSodGF6bXfqllEP8lQCA1etI4ct+PQjnq0xJOLWB3B
	0vgGYNrF1cqVNCbfg1zdheStL3ku56lwJfTlCMGFJceGPzXrz0MReL9N+vXoX14ILj9m7rHWopMzY
	ye4WWLrgW5BKFu3Av2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluaD-0000fh-8O; Thu, 18 Jun 2020 13:27:57 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlua2-0000e5-Rk
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:27:48 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so6023767wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 06:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xGuWagvHkR5CzPo1CRVJNp1xS36Ei3NsxHAn9Qc6w5w=;
 b=eHOmkiRHxbMLhRbAL0KHWuGUzadE+ZgogzWzMmhkx3LAIVM+AXis6XYnZre3Uf+LcZ
 QcWObIqEjvqx+6h83uCPq0nc79JdbpZgk0BHcDcpG+E3iKwwlH1lKCkh4AVAq5OX7ZJM
 8iD+ylvAc9hq2oAEXs/7ReqValj4Eln1UiErT4wuC0bHEWGlRs04Ikl13lbvbresYEts
 sKL+f4yHgN9AxRNv3fvPk1mnR5fNh9J20SxzOEXZSIZibA+ZNLSAponUFnymjtFdhwNb
 E6YZYUXWbu/YthMC0laqhe7S9VHJ8wZjpyfd6SICISVTMTvJ8F1lk5BP8uDbeR9peZQ9
 CFdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xGuWagvHkR5CzPo1CRVJNp1xS36Ei3NsxHAn9Qc6w5w=;
 b=c8avOzuvK7scFAt4XM4Q3L1yeqNqml6krr7A1q9RF3IXtCXu9q7O+rD9TZN6XzaZTj
 e6iw4Q5yD1xoCDoFZe/23f6IQ7kkp/AQ8tKsUGH3CMKAaWPMlICa+MxDIoNNY6YgfCqv
 pIHJflJ/7fKmT6By4f7Qho73uOy6ykFww0DOxeZYB7sllkFW0kc9NFGTdEkxzY9exMmu
 5iYfHVebFB9HBuq0JiPAsapGh8IIqDR5ikrRrcE6A+MoPt4BkQJceXvx/Uepckukoi8W
 E4AMtUg4KgAzSu9aD17zgGeW1dFXKHHVKJuYyOmTDKcEyp5pgiM7i7FGSnlSG+bpRRHH
 KxGw==
X-Gm-Message-State: AOAM533rtH7mff39qx7qBM3aT3UEsKtGYmcTvG24aj0OI7dDcK810F99
 F2xEV33Dr1uspG3LdSq8+LAn6A==
X-Google-Smtp-Source: ABdhPJwppCorQbCpUQGKifbVA2gARZbO1wdWdyRTreqjCiFRT7SQ5iqEUtlUzbrx4RUAnkHkA5UfPA==
X-Received: by 2002:a5d:61c6:: with SMTP id q6mr4518545wrv.282.1592486864043; 
 Thu, 18 Jun 2020 06:27:44 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:9902:c1f0:76c7:9dbc])
 by smtp.gmail.com with ESMTPSA id a16sm3562843wrx.8.2020.06.18.06.27.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 06:27:43 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-gxl-s805x: reduce initial Mali450 core
 frequency
Date: Thu, 18 Jun 2020 15:27:37 +0200
Message-Id: <20200618132737.14243-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_062746_949754_826C8319 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When starting at 744MHz, the Mali 450 core crashes on S805X based boards:
 lima d00c0000.gpu: IRQ ppmmu3 not found
 lima d00c0000.gpu: IRQ ppmmu4 not found
 lima d00c0000.gpu: IRQ ppmmu5 not found
 lima d00c0000.gpu: IRQ ppmmu6 not found
 lima d00c0000.gpu: IRQ ppmmu7 not found
 Internal error: synchronous external abort: 96000210 [#1] PREEMPT SMP
 Modules linked in:
 CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.7.2+ #492
 Hardware name: Libre Computer AML-S805X-AC (DT)
 pstate: 40000005 (nZcv daif -PAN -UAO)
 pc : lima_gp_init+0x28/0x188
 ...
 Call trace:
  lima_gp_init+0x28/0x188
  lima_device_init+0x334/0x534
  lima_pdev_probe+0xa4/0xe4
 ...
 Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b

Reverting to a safer 666Mhz frequency on the S805X that doesn't use the
GP0 PLL makes it more stable.

Fixes: fd47716479f5 ("ARM64: dts: add S805X based P241 board")
Fixes: 0449b8e371ac ("arm64: dts: meson: add libretech aml-s805x-ac board")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../amlogic/meson-gxl-s805x-libretech-ac.dts  |  2 +-
 .../boot/dts/amlogic/meson-gxl-s805x-p241.dts |  2 +-
 .../boot/dts/amlogic/meson-gxl-s805x.dtsi     | 24 +++++++++++++++++++
 3 files changed, 26 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxl-s805x.dtsi

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
index 6a226faab183..9e43f4dca90d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
@@ -10,7 +10,7 @@
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/sound/meson-aiu.h>
 
-#include "meson-gxl-s905x.dtsi"
+#include "meson-gxl-s805x.dtsi"
 
 / {
 	compatible = "libretech,aml-s805x-ac", "amlogic,s805x",
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index 867e30f1d62b..eb7f5a3fefd4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -9,7 +9,7 @@
 
 #include <dt-bindings/input/input.h>
 
-#include "meson-gxl-s905x.dtsi"
+#include "meson-gxl-s805x.dtsi"
 
 / {
 	compatible = "amlogic,p241", "amlogic,s805x", "amlogic,meson-gxl";
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x.dtsi
new file mode 100644
index 000000000000..f9d705648426
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x.dtsi
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 BayLibre SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include "meson-gxl-s905x.dtsi"
+
+/ {
+	compatible = "amlogic,s805x", "amlogic,meson-gxl";
+};
+
+/* The S805X Package doesn't seem to handle the 744MHz OPP correctly */
+&mali {
+	assigned-clocks = <&clkc CLKID_MALI_0_SEL>,
+			  <&clkc CLKID_MALI_0>,
+			  <&clkc CLKID_MALI>; /* Glitch free mux */
+	assigned-clock-parents = <&clkc CLKID_FCLK_DIV3>,
+				 <0>, /* Do Nothing */
+				 <&clkc CLKID_MALI_0>;
+	assigned-clock-rates = <0>, /* Do Nothing */
+			       <666666666>,
+			       <0>; /* Do Nothing */
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
