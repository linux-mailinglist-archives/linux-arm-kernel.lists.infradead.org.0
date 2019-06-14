Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F035C464D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQw6FuCJmNM6CYYXcnL7WD8MxF6zxEk/FPYPc8za6r8=; b=bMmTxoWbkgkw3K
	qn4Qftm38h+uiHWfqou2DYTnuSE+0YJTWByNmhdhCIO8hmxRtwljfrh9iW+GC90ZraU71I3HpYn9F
	h+UJWkCHL8pbMK0HTyMKL0S585fA/9pcNWqy9tcJIxRN7c5aTClQ/LZOq2nkAH/E5OeadB7EtBk/v
	f6srUVWH815T3CNm+GGMV9XoLMtLVhfmMPQ2/mLGx0oflJeBS55CHAgTTV7d6qz8T0rmSdtQ3Y+nR
	Arz2bao+mlH21CE4YN4m+7tfJvMZ8NmpODTA0U2bDxNQhJaw7xv9S3USXxlrtMOPhocXXuAQLM/qq
	ybprnG71NaoptPGmYszQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpLF-000392-9B; Fri, 14 Jun 2019 16:46:17 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpJ9-0007eU-US
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:44:15 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so1847300pgp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7rjQuB296hfp4qUoq+6jTshGIZnt17kv/able4oYgNY=;
 b=jcBZ6YMltICKDAXDCZu7yT0KHax9GStXh55CAzwxRtyM1XcvrLR4OeHIh+melge7j8
 8KlHTIWZZj09dAZONDclCazGOwpGX2wsWeiBI2/Z76lDWhXgfMlFtFx+bCcmcR6e1w2a
 il57TilFvp/301Ukd0ea7ssDIf2cdSg9z35GI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7rjQuB296hfp4qUoq+6jTshGIZnt17kv/able4oYgNY=;
 b=B1eMecE8ip1p4rkAtmfrrKfHM1BvwVni8ZksdzZlvRsWBdQiHuWlTnRZu6AKdDmFgz
 VHYoVjUlGFTUPZ27gbAo1ch1Iiv5kzwYYn7wAibJa0taBzchZrLskyz2ueIm4HQONh/8
 gBC79cpwNj/IEUxpFdlnprTwnVkwFbOcJWJSSVTNha5YFUIE/HmO2behAS3oPQTKzO3S
 lq2Qse21WH+iZcSklmgnURS+xe6HJRcQqWRZGrEvOZ9kXuGRCu5mH0ZSArBJ21dZ5/hL
 Rk1jK31LOFYalrz5I4o4FPhKWD4quyCMn6NvFb6CJgrboSbMH4Rey2tp3l8XO11RgySc
 F2QQ==
X-Gm-Message-State: APjAAAXEShz83+4w83R7Vrthkk00EQRRXkOwgTFr4NiKJpMH2XzHF8fP
 Zv+siF2QgszvlHvfPIOyl+6BQg==
X-Google-Smtp-Source: APXvYqxP0WmrTVw50rx/FytEhR6NAKnXMvz/RCUMoTAx8wmz1g6jzNa4s+rIzY3i9D8U4EzfOzGmgg==
X-Received: by 2002:a17:90a:b00b:: with SMTP id
 x11mr12178417pjq.120.1560530645251; 
 Fri, 14 Jun 2019 09:44:05 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.44.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:44:04 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v2 6/9] dt-bindings: sun6i-dsi: Add R40 MIPI-DSI compatible
 (w/ A64 fallback)
Date: Fri, 14 Jun 2019 22:13:21 +0530
Message-Id: <20190614164324.9427-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094408_030358_E41EDC6B 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

The MIPI DSI controller on Allwinner R40 is similar on
the one on A64 like doesn't associate any DSI_SCLK gating.

So, add R40 compatible and append A64 compatible as fallback.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
index d0ce51fea103..438f1f999aeb 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
@@ -13,6 +13,7 @@ Required properties:
   - compatible: value must be one of:
     * allwinner,sun6i-a31-mipi-dsi
     * allwinner,sun50i-a64-mipi-dsi
+    * allwinner,sun8i-r40-mipi-dsi, allwinner,sun50i-a64-mipi-dsi
   - reg: base address and size of memory-mapped region
   - interrupts: interrupt associated to this IP
   - clocks: phandles to the clocks feeding the DSI encoder
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
