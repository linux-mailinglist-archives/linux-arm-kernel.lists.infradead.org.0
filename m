Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD39B116352
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 19:06:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJ2dEFjdW0Lzocq/98ECTlQeaO51leOVv2ucuxhoGO0=; b=fgPaRxDG6fJoJF
	7XPiuc08Ac+JPwkQpAZ7ik9mPvERwsGCrIO0fttTsSwbU4PIoLAnXNsV+UjEWBtoyiiLnw172xRSj
	995zfjMDXn1PDZSx9ac9BgSgQXHs/T5jfRUxwRpYWh0/FZkAkdu5NoGttwpEczlvX7whooAgCMmdd
	DEJwqgpA6xnii/aSv/pXk3AixarxE+3tWm6VpTNyS7sSUaElN8fDF9bUIUcY66aefuf9k0MLu+M/u
	zhZVDG1vy9qsfZhTJKLBnOdRpZ7x3t8iILRkjBpJ9xWxsw88+PLs8zgvev+tCFkgi/GsHIfzWsPSd
	twvlujg2ivxa8gGrSVXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie0wj-0003f6-SC; Sun, 08 Dec 2019 18:06:17 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie0wE-0003JQ-LS; Sun, 08 Dec 2019 18:05:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id a15so13431374wrf.9;
 Sun, 08 Dec 2019 10:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UuP9LhRtgkK8koesUiLux4flnpKR/nS/46pWP1bbRQo=;
 b=DjcQP7b2GrL9Y8doqAnmZen1LtRo/zLBC1HSPEYSk45emHJ+l/CcOF1N1rZ0x69LE5
 5pUjYqbdjixV6s7xBJFTymPx/cpB7o8w2ZOK/Xqhq+Xis2+H+x6f8gboyA1cGUWizrdg
 OfO+6IxkHRsV7ut1LzxU67zJhph+4MZDY4tJHjiClgNH+AFuU5LsH1Gqs3W7RvQO5+r7
 LpkfjwfqnkxffPgmzDG4oRgf4/5mFsHvohvSj5eXsMbzM5eDCVhzMCvUD4ZAapaUEqW/
 8UAfaLVY/lvEwQ9xx19uBmvslYY2oZ1GgLiTeh6nI5TMaNwAp8h0G6y4lHFgub8LlG4e
 l3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UuP9LhRtgkK8koesUiLux4flnpKR/nS/46pWP1bbRQo=;
 b=to28YIRiZdwdUPoWzQekN4MQ7/z1MsxpkHVRA6BLAAr9F/Mq488d8APgfEQv2X+30t
 TWg4SB/VBQoNO7eGAt/zNRVgTgvYefLCtDnZ06qFtV3Fz+wyDoIN8qdvBnweAjg+cLZE
 xtN9F9SFvbD3mfO6xnqK1C7PfXS8MerE5VSNSEaHUQajCNDfwNrBtHgq/turEzINeWf4
 87XgVOmmlRAZE6r4bpijD1LPVM1O7idRuSTF4t2gF0+DnGg8X10zet2V4hpxOqUpPwa+
 XsG1UGuv8/zGGzVyZ3TvS6zVsay7D6Jl/TRSRh0QXeaf8FNLBfwo8SBT9St0vR1nJtYE
 i16g==
X-Gm-Message-State: APjAAAVjSZf9b26XzUu3SilScR42AzsyraSxHAEhp9yxJh2r7ucxBZ99
 wwtL46iWUylp4uK5IYFIzGG5mbX8
X-Google-Smtp-Source: APXvYqz8FE+HKKyDmebCrGclBYajOMpFDHdh0F2mObT75i8X0038zJYEHXA76soGKk0k6BHGl4WkiQ==
X-Received: by 2002:adf:b605:: with SMTP id f5mr25821137wre.383.1575828343648; 
 Sun, 08 Dec 2019 10:05:43 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371AD700428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371a:d700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a64sm11797687wmc.18.2019.12.08.10.05.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 10:05:43 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com
Subject: [PATCH 2/3] ARM: dts: meson8: add the DDR clock controller
Date: Sun,  8 Dec 2019 19:05:24 +0100
Message-Id: <20191208180525.1076152-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
References: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_100546_703184_70049EBE 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the DDR clock controller and pass it's DDR_CLKID_DDR_PLL to the main
(HHI) clock controller as "ddr_clk". The "ddr_clk" is used as one of the
inputs for the audio clock muxes.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8.dtsi | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index add6d7991fdf..b35d7444c1f4 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -3,6 +3,7 @@
  * Copyright 2014 Carlo Caione <carlo@caione.org>
  */
 
+#include <dt-bindings/clock/meson8-ddr-clkc.h>
 #include <dt-bindings/clock/meson8b-clkc.h>
 #include <dt-bindings/gpio/meson8-gpio.h>
 #include <dt-bindings/reset/amlogic,meson8b-clkc-reset.h>
@@ -195,6 +196,14 @@ mmcbus: bus@c8000000 {
 		#size-cells = <1>;
 		ranges = <0x0 0xc8000000 0x8000>;
 
+		ddr_clkc: clock-controller@400 {
+			compatible = "amlogic,meson8-ddr-clkc";
+			reg = <0x400 0x20>;
+			clocks = <&xtal>;
+			clock-names = "xtal";
+			#clock-cells = <1>;
+		};
+
 		dmcbus: bus@6000 {
 			compatible = "simple-bus";
 			reg = <0x6000 0x400>;
@@ -455,8 +464,8 @@ &gpio_intc {
 &hhi {
 	clkc: clock-controller {
 		compatible = "amlogic,meson8-clkc";
-		clocks = <&xtal>;
-		clock-names = "xtal";
+		clocks = <&xtal>, <&ddr_clkc DDR_CLKID_DDR_PLL>;
+		clock-names = "xtal", "ddr_pll";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
