Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11122464B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3CrAvi3RnnFKMeAeNla4nQmwPW3WeqzeXIEXX0THRw=; b=A596DZTsNejLX0
	zF3sk8oWolKNCMbAp90GBHqj3A7obqByzR+wjIr2zTqg9H3hhdBvF87zqZOztnGSh8Qatnbo/G9yj
	qn19dMTF4Rq1/tV4xoi3NZGP5whGI24mvFNktS9RBSGVohxFBBjcMDIVgYLhaSigsAnZxFs9pxwug
	xiSQtAS8Nl0c9TOUt/oBdriNjKstTiU7fDHQk05w9qPNpXgyeWdWEWT4K1L3lBC6Wk5ul62eS/oOO
	QQKwjHEr1jutwGNoSPmyjaHSxIjip09X89+znEY8Uy8Ey9708Z1vWSbdhQ4E2PAKB5mYVJ7rlEWI9
	ruWg96YzNmuo8daIDekQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpKI-0000iS-6z; Fri, 14 Jun 2019 16:45:18 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpIw-0007DC-6t
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:43:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so1781698pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=848PkAQSuqGBV9d1ZE22q9YEz/y0k4xnXoRXzpZqX+0=;
 b=dZXH9NvKdmO0bTsLkbJzcgWsuOWrWooI8HoZvgEnDZAITMfdSO31becAdutXgCndye
 MHderODMAFVl3kDDQUpeEvuaZoNXhqkGysP/vFvCfDg3SYV3HcMKFSS9NMVFDDhAaFDG
 eJI66CGb5Ses9xXU+ojj0rPo/6FtA8Nuaz1Pk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=848PkAQSuqGBV9d1ZE22q9YEz/y0k4xnXoRXzpZqX+0=;
 b=AiFNHObRu08ecAMdOxn8jRBAXTfORwMs0FuU2xA/Oo8EDArjWnEzpjS0tR0usT+JNt
 xy34v4GGyAHwZBduxfvEbxbfsYhfMMWNQ1LjNPziI3O9SDuwzQ/jB9J0SvgJHkR1yk/Y
 Ay/1QEVUkjFA3EeWSsvrcZBtNYXWGS8vlnY7n3Ffzz/oAvZpSi++4FyDRnAhD4OE3sC/
 PkXgGzyuHj/a/sdNYwGCxXhUp6M22rNg8/OUn8umIHs3Kf80QAeAVOAk8kInPrZjFyZ+
 EQz3pjIx7aUUXLJGLzOhTdZN/p8g1MtYeDok9b7Hq2K4RR19Pu4k6jWUKv5UDo9CT6t8
 yWxQ==
X-Gm-Message-State: APjAAAW/wmA0FiSYRQTRZIh5/lgpbis0HRXGJ385QgyiXT6O2X/MGJ68
 tX/AeirpNGJnxDDvBWcYnNX34w==
X-Google-Smtp-Source: APXvYqwUHYYxZ/0pN9i06WfooF6JJ94tywE4LYJ0JGGICFTLtuW3GCdvLxxtuIbnkkx9sC5rpEpZNA==
X-Received: by 2002:a63:2349:: with SMTP id u9mr10900061pgm.410.1560530633068; 
 Fri, 14 Jun 2019 09:43:53 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:43:52 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v2 3/9] ARM: dts: sun8i: r40: Use tcon top clock index macros
Date: Fri, 14 Jun 2019 22:13:18 +0530
Message-Id: <20190614164324.9427-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094354_285801_2A4D839F 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Reviewed-by: Chen-Yu Tsai <wens@csie.org>
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
