Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5482644B5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 20:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hT9YWyR6h4xH7NoujU16BgwaRsdUmQIk2MSBD47rShc=; b=dyvN1LS+peo0vl
	/bYV6aBv1fTPj06riSCwhsGkIKDpTW6UU9i+kBmKQaTPs8rqw3f3/jN3WR5dopvlN5jzOhH9hAyBA
	gY6EFbikJ9d0sKsaD0sFW1c+dbhp6ul/WpcgBcVXwJmJx4jnt8tCqiDcWbCzYztfW77wn3ngCTTor
	eBV6Gt1f7GoWLPEYdNN/LxUfa/HxSEpp+kIbelzvpvjH9KcIXu0vS+4toXpMdaBF5bM9DS8gl5Yb+
	o4k5cbmSr49C1JwztbH/IePW3A8pu9gLt3cKv5TO3hShIuUiYoj0rhxQg+Z8GGQPD2gSY2+1b8Enq
	mjFP74+xIy/aey393uFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbUsy-00086A-IU; Thu, 13 Jun 2019 18:55:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbUrS-0005rJ-Uv
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 18:54:13 +0000
Received: by mail-pl1-x642.google.com with SMTP id go2so8507891plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 11:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q8S69BX3xpHZr2uy2odezTDXnVK0j/vxrp4XQpnzj94=;
 b=X69ZulaE4ksswSOcisK935ppPOCimBaK9wKQzoWbdJx9hexnxFxppTxwlkfyDk335f
 zg+xx/max7Lj5RHHaALWr4GF2Rs4pIVNcW+EsctqJTj4kTJGRhw4jp4Qu94m+HyOzm5y
 brXa4+I9BLezFomx007mMIT0udlZ21rLXg6bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q8S69BX3xpHZr2uy2odezTDXnVK0j/vxrp4XQpnzj94=;
 b=Oq2Xgmmo3kDxrTmgi5KUr6St4h+GZBJejPCK/TomWg/1XogrB1egQxvRpN4Ux5AyaA
 rubaGCceSJxci36waqfwG+C8++Qx9CR9T3fY/xJxyW0vV5l7NEWxzTYaa1bvynIHro35
 DMPHY7Y5l7sC0WmthDF+zJQ//CPKyx2cJi/nsoz/FiXBfYeT2su/P5bmFkezSkwtry/E
 nXrJ7NyPk9QVfToQiobQu8ndZha4m9r1ZdbSgPXd0HJS3kvJPZkTfAN977Sx/05aVfpF
 Vkv+GYp41W8V6DYUvCm2kxkLRa9Im0XUhFTR0gQqF4zM7LS3DViLWEVSvsbINn9xegCQ
 YXtQ==
X-Gm-Message-State: APjAAAX0Dmn0O7Jr1NiswO+/0kHaqn4y4dAMQsV/VbNUolaOPcoxL57f
 cgjYAmPabShpR31vQuT4HgZxlQ==
X-Google-Smtp-Source: APXvYqxaaPemy8HlCqx44EJP2dYlb26OfNzzTdIleOfRx7U76bvedSxq5O2wJ0IWbVnEXm6M9wSwDQ==
X-Received: by 2002:a17:902:7793:: with SMTP id
 o19mr28815033pll.110.1560452049961; 
 Thu, 13 Jun 2019 11:54:09 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id p43sm946314pjp.4.2019.06.13.11.54.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 11:54:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 5/9] ARM: dts: sun8i: r40: Add TCON TOP LCD clocking
Date: Fri, 14 Jun 2019 00:22:37 +0530
Message-Id: <20190613185241.22800-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190613185241.22800-1-jagan@amarulasolutions.com>
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_115411_086316_E8689BD8 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

According to Fig 7-2. TCON Top Block Diagram in User manual.

TCON TOP can have an hierarchy for TCON_LCD0, LCD1 like
TCON_TV0, TV1 so, the tcon top would handle the clocks of
TCON_LCD0, LCD1 similar like TV0, TV1.

But, the current tcon_top node is using dsi clock name with
CLK_DSI_DPHY which is ideally handle via dphy which indeed
a separate interface block.

So, use tcon-lcd0 instead of dsi which would refer the
CLK_TCON_LCD0 similar like CLK_TCON_TV0 with tcon-tv0.

This way we can refer CLK_TCON_LCD0 from tcon_top clock in
tcon_lcd0 node and the actual DSI_DPHY clock node would
refer in dphy node.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/boot/dts/sun8i-r40.dtsi           | 6 +++---
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c     | 6 +++---
 include/dt-bindings/clock/sun8i-tcon-top.h | 2 +-
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 219d2dca16b3..12576536df4a 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -591,16 +591,16 @@
 				 <&ccu CLK_TVE0>,
 				 <&ccu CLK_TCON_TV1>,
 				 <&ccu CLK_TVE1>,
-				 <&ccu CLK_DSI_DPHY>;
+				 <&ccu CLK_TCON_LCD0>;
 			clock-names = "bus",
 				      "tcon-tv0",
 				      "tve0",
 				      "tcon-tv1",
 				      "tve1",
-				      "dsi";
+				      "tcon-lcd0";
 			clock-output-names = "tcon-top-tv0",
 					     "tcon-top-tv1",
-					     "tcon-top-dsi";
+					     "tcon-top-lcd0";
 			resets = <&ccu RST_BUS_TCON_TOP>;
 			#clock-cells = <1>;
 
diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 465e9b0cdfee..e23c19f18986 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -205,11 +205,11 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 						     CLK_TCON_TOP_TV1);
 
 	if (quirks->has_dsi)
-		clk_data->hws[CLK_TCON_TOP_DSI] =
-			sun8i_tcon_top_register_gate(dev, "dsi", regs,
+		clk_data->hws[CLK_TCON_TOP_LCD0] =
+			sun8i_tcon_top_register_gate(dev, "tcon-lcd0", regs,
 						     &tcon_top->reg_lock,
 						     TCON_TOP_TCON_DSI_GATE,
-						     CLK_TCON_TOP_DSI);
+						     CLK_TCON_TOP_LCD0);
 
 	for (i = 0; i < CLK_NUM; i++)
 		if (IS_ERR(clk_data->hws[i])) {
diff --git a/include/dt-bindings/clock/sun8i-tcon-top.h b/include/dt-bindings/clock/sun8i-tcon-top.h
index 25164d767835..88de3f2ba335 100644
--- a/include/dt-bindings/clock/sun8i-tcon-top.h
+++ b/include/dt-bindings/clock/sun8i-tcon-top.h
@@ -6,6 +6,6 @@
 
 #define CLK_TCON_TOP_TV0	0
 #define CLK_TCON_TOP_TV1	1
-#define CLK_TCON_TOP_DSI	2
+#define CLK_TCON_TOP_LCD0	2
 
 #endif /* _DT_BINDINGS_CLOCK_SUN8I_TCON_TOP_H_ */
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
