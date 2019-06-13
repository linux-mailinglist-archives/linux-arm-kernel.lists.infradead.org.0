Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9AB44B55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6vtZK19t1Y7BopxLasxN/86iOXGMa7lZ9GWkDML5AI=; b=AbXDhkoZQwXR6w
	p+TPfsvLEPkQHD/m/DfVmu63EAJsSCBaoQoyZP3tMQIZ+l0M9oqpMPR/56F2i1yc2XgEthO5506Vx
	x9ZlJqwe2qqBZdhecuwIVFKbkY4wB0NP/KTbriX2MCQshJjnPijGLphajy1BkcBUe22IFgUVhL3M1
	qSrg/xnUIR09mO23AP+Vquw7B2gpGWrl8N0q3IzltxKjfoh6OzaZA1IozYJm/1e5DzIWhaaLyJRdx
	7pZCkJfwgSIcshLTOmV+X7FU43CVZ0sXH1zyJi0Yybznc7f2LGnJZ3Y7aoOOKlxHV1RHc+XeIUGwn
	ONml3Gl+ETE9ve7VK38Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUsD-0006M4-AB; Thu, 13 Jun 2019 18:54:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUrL-0005kD-JM
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:54:05 +0000
Received: by mail-pg1-x543.google.com with SMTP id s27so43423pgl.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MxUBHxdyKSzAEkz8czOIEFewVHEPOOsCs5aBdAtPCog=;
 b=Kume8Qo4DTG31GVT3HwqbSf3jX8+J5mtu6SNBDXX4prsKonHXwtLuXX1DCWbwlHeOw
 RHJzfX2ocMubC3vE5FSZ9hKhNTLlI9eva7D8JP29vVUiTPla+FjmevRgyG2Mf2GisNf0
 ujNCTpb7ZdioL8SUWW0FMmy5symxIEKBW2XOM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MxUBHxdyKSzAEkz8czOIEFewVHEPOOsCs5aBdAtPCog=;
 b=X7Mizb9OQlq8L3XAObpEan+ZbSwC91OmecOJf6JVYMPbUXtJgKIOkq0Hcyer8FpqFK
 XYi5K2zAbshaDgwx5uNQBzoMwsQBrThBh9pzgzxL4OiPweRbTLOSrRpWMCc+CimtKWrW
 wXmt8muy8S99lVUSfCrtgYR+DGQEl6JfrWKXGySCT3BZda2gKYxTLF9bkCGxcmMa54se
 WlLWtzeF46uS+O9aBQ0Ex6sUtaBG6rVmtpFXrKlxrF4y3Bw/IvFQ9DmIAQL1vliwstHD
 dWPOoTK9t2m06+Iog+wCVCY6wKrLzj6pV+U/NIWayogEH3eKHUCIfvdmBwTihISMxm5N
 w6gA==
X-Gm-Message-State: APjAAAV9mYt3SunY9zFi011zvHUkkzoedyY4r63Xkn5C1bA35i8iFf6Z
 FnwSUZ11N30hRbMGXHJ3UdzozA==
X-Google-Smtp-Source: APXvYqwk7NSKhbPrQsFpyhC5tg7Fy+h3BJ/6OroJFVaqFFLZ0+/oLQ3lZQhgppFUTYV9k17o5ZQ2qQ==
X-Received: by 2002:a63:9142:: with SMTP id l63mr14357491pge.185.1560452041895; 
 Thu, 13 Jun 2019 11:54:01 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.53.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:54:01 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 3/9] ARM: dts: sun8i: r40: Use tcon top clock index macros
Date: Fri, 14 Jun 2019 00:22:35 +0530
Message-Id: <20190613185241.22800-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115403_690804_E6125C20 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

tcon_tv0, tcon_tv1 nodes have a clock names of tcon-ch0,
tcon-ch1 which are referring tcon_top clocks via index
numbers like 0, 1 with CLK_TCON_TV0 and CLK_TCON_TV1
respectively.

Use the macro in place of index numbers, for more code
readability.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index bb856e53b806..219d2dca16b3 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -44,6 +44,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/sun8i-de2.h>
 #include <dt-bindings/clock/sun8i-r40-ccu.h>
+#include <dt-bindings/clock/sun8i-tcon-top.h>
 #include <dt-bindings/reset/sun8i-r40-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
 
@@ -704,7 +705,7 @@
 			compatible = "allwinner,sun8i-r40-tcon-tv";
 			reg = <0x01c73000 0x1000>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_TCON_TV0>, <&tcon_top 0>;
+			clocks = <&ccu CLK_BUS_TCON_TV0>, <&tcon_top CLK_TCON_TOP_TV0>;
 			clock-names = "ahb", "tcon-ch1";
 			resets = <&ccu RST_BUS_TCON_TV0>;
 			reset-names = "lcd";
@@ -747,7 +748,7 @@
 			compatible = "allwinner,sun8i-r40-tcon-tv";
 			reg = <0x01c74000 0x1000>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_TCON_TV1>, <&tcon_top 1>;
+			clocks = <&ccu CLK_BUS_TCON_TV1>, <&tcon_top CLK_TCON_TOP_TV1>;
 			clock-names = "ahb", "tcon-ch1";
 			resets = <&ccu RST_BUS_TCON_TV1>;
 			reset-names = "lcd";
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
