Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F65012D8D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysh+bSJyaCTnWOw4w3bmrOduxYWUlz05jgal3kMiclA=; b=qcpcCqjvk5C/uv
	sR6MgyLX16OcgZ7FOGWaRAHBe+B97wbn/r7H5SdyK+1mceiNmYZz1IX27sNnvFs5dR6VgE49fRa/K
	OtL5e6EoOMtP0chl+9QTaCxQIGBuIyZ5r2TNYqenyPFqq55eVR1BOK+pwd8XPcGvItG4VGR1bx8Eg
	KqbbjXB1Ic8jKtcZdU4MJr5t9zFY1SGKv0UtGxHfHfpzLHuScxplA8mUTMOWIqHdoGNcl3/c1XLQb
	VLQ+xg2timxfjqdF61bhcjRp7LWB18N6oU9J6HafLDsI/YJo3oaqSnURPSq577qX7Mxzdpm2vHUan
	N5ZUkUsETzY4W8A80h5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHEn-0006Hm-FS; Tue, 31 Dec 2019 13:07:05 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHDi-0005ec-Oh
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:06:00 +0000
Received: by mail-pj1-x1043.google.com with SMTP id n59so1213378pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J4bPo8ZUsPUay4xqO2AMjOfE/DZ5OrDO5jUkRoUY2VY=;
 b=U1gmKyx8CuXnL3PQzKepsp555RKkUMBTs6zt2sWqDklR4ytbWLaYee8G1BijtxRCRg
 gDTWkAZOJlMcS86FTxi4jnDeXF0O2vOyq/pDQrgzV01yZVIkCQReTf5nEn2xZZ7+4wJM
 /aYKLrB4tYGlRHKShfKL0jtLnB2dUzDRnMWWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J4bPo8ZUsPUay4xqO2AMjOfE/DZ5OrDO5jUkRoUY2VY=;
 b=Kq8jZnV7pW835DgaInjDNUddE8B+vPBT2digSucwHhQhhgo6e+df63gpP3juO9PXa/
 VyhC/32+IlMJjbGJseCAxChoDMSWnhDuIM+rhRQwOl9nnw6dODfM1RAbfAbmcIv+vBIY
 nwIFDe8zPR2Y3naEN+vHeeIihd2B2kFDYZ2Sp2LjMkmE0b/MIk6xXgy1Nk9p6G1vejm7
 ii6RO9lpPQemtFpUoCs7Lunk4mKrL5rMC808TG4JUQ3K5t0hNghtMpo6u1TRlhi84TZI
 EC0eTpElvA+0X/gy2MDLE5voRI7F0HTn0/3SA05oZtkJDK8mDvxXCT3/LDCRvfYyYLxu
 dphg==
X-Gm-Message-State: APjAAAX2/YNCv0am5Hdq+9XmKsFxff7oT1ZxnhnPlhADBJXvx0KA+J7M
 pakHHV/DSTjioQ+ZekDTqN4NKg==
X-Google-Smtp-Source: APXvYqzGxUTLPshcgs4piIKf+BqFt92fK+2KuvQXB+m3PyXKksH8GIPO+5kN+3UoqrcAEtaSJdCpLw==
X-Received: by 2002:a17:902:b611:: with SMTP id
 b17mr74759458pls.210.1577797557554; 
 Tue, 31 Dec 2019 05:05:57 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.05.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:05:57 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 3/9] ARM: dts: sun8i: r40: Use tcon top clock index macros
Date: Tue, 31 Dec 2019 18:35:22 +0530
Message-Id: <20191231130528.20669-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050558_829727_71FE6307 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
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
Reviewed-by: Chen-Yu Tsai <wens@csie.org>
---
Changes for v3:
- none

 arch/arm/boot/dts/sun8i-r40.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index c9c2688db66d..3faa35d43afa 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -44,6 +44,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/sun8i-de2.h>
 #include <dt-bindings/clock/sun8i-r40-ccu.h>
+#include <dt-bindings/clock/sun8i-tcon-top.h>
 #include <dt-bindings/reset/sun8i-r40-ccu.h>
 #include <dt-bindings/reset/sun8i-de2.h>
 
@@ -709,7 +710,7 @@
 			compatible = "allwinner,sun8i-r40-tcon-tv";
 			reg = <0x01c73000 0x1000>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_TCON_TV0>, <&tcon_top 0>;
+			clocks = <&ccu CLK_BUS_TCON_TV0>, <&tcon_top CLK_TCON_TOP_TV0>;
 			clock-names = "ahb", "tcon-ch1";
 			resets = <&ccu RST_BUS_TCON_TV0>;
 			reset-names = "lcd";
@@ -752,7 +753,7 @@
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
