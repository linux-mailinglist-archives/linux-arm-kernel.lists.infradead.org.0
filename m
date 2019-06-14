Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A378546498
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PUCMRGRubASXZsef6+G9c1AhMOg5u7CDlBghCHv6IUM=; b=LMx1kcJ9vit9Cx
	OAOZIGg/B1JU/zhXLWx0rz6PuT7n6s0dglH6zK0Yl22yznxgTi/31Dl/wqw5F5HKNtFFvWzewwL32
	BR+sPs5b7+gwSFbf1uh1Ke0ZIxU8ASOQQNc8362eCvVRRTvGx6egF5mLsAwwE3LACocS1r8UY/Ng4
	12+TaBuIECH46oHz3QfaaAlbhSImrbKwDukwkuM3Lm+t16cxNMvlAo+iMQIw5IKm96b3ytHBE9YXr
	tn533m1cTiuhY/LGL258sW1E9pncmbrzed6y0Qv/eKcIkeonN2l3yLerZ+KBwrJxAg+TTEuqYbODe
	xvhDYEwPkORPPZg0t/kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpIx-00073h-Gv; Fri, 14 Jun 2019 16:43:55 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpIi-0006uj-SM
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:43:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id s21so1839304pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YB8tvQ/A4LBfMdy9uXKQQ4D0KlkqxcG44woQEGvz30s=;
 b=qYxsx+A6S9zLLNTdR52vMXSYNC4esdZSFUMNrOleaGkevIAAzDbqGuI9GvOfXHTW0t
 K6MWIOyfG3XEJvM8gDFnZbOcCzjNuRKhwawvyODHKOUMtD9GlufynwBgS84+Dr6eR6EN
 zVUtAhESJK8BH/wZD1lA5elxAzgdFRasq3A6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YB8tvQ/A4LBfMdy9uXKQQ4D0KlkqxcG44woQEGvz30s=;
 b=hS4k6sVTqcE8F+QefbtzIdI0lvxzcGW8gSdxp6aJ5x8qw9amdWc+2Bt5Ko2UXZ6yht
 6uw8Q/KXu/vwz74jahD1yUB04+x58x+6PYuHf27IGpgJyM/V2YcNdPKRiRU5mPEzDYEm
 SJPV9xLkbJEGV5zh00PHCb06Rbhc2F+XpNHU7xrmNXor/y1SrywpDiMGYBzyqU6htN1n
 cBGqdCxZCBka6u7GUGkeUJHWhgS8nXIR5kppWEk+gLFtGlyqDiWaICWpZITCN5hU/1Bf
 3YLiLwcjire+0UW1rblJUfqfdQ9PmQFVYvSlBiHzu5JZWGBk0ZY1kXTxEHTdvIsvhNA6
 uMLw==
X-Gm-Message-State: APjAAAXMzyqUVTx8S1tFwucQNemsX4xgrXO3HdGgqdInLldvgcnCFGO5
 VcgNWVckeTdoakJm4H271785pA==
X-Google-Smtp-Source: APXvYqwYXdTXpfDhGmQt8us4MjMKgpbr+c5sCD+q4V7paAN4sFr9nfOElG4ad8gQmXlIHo+aNGcOGQ==
X-Received: by 2002:aa7:8c0f:: with SMTP id c15mr73672184pfd.113.1560530619784; 
 Fri, 14 Jun 2019 09:43:39 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:43:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v2 0/9] drm/sun4i: Allwinner R40 MIPI-DSI support
Date: Fri, 14 Jun 2019 22:13:15 +0530
Message-Id: <20190614164324.9427-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094341_067775_F6746694 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

This is v2 version for supporting MIPI-DSI on Allwinner R40 from
initial version[4].

The controller look similar like, Allwinnwe A64 so it has
dependencies with A64 MIPI DSI changes, DSI fixes and R40 pwm 
driver [1] [2] [3]. 

PLL-MIPI, dclk divders logic bpp/lanes are properly work for R40,
like A31, A64.

Changes for v2:
- drop tcon top lcd clock patch
- add TODO text while adding tcon lcd support
- add patch for registering tcon top clock gates in probe
- change tcon-ch0 in tcon_lcd0 to CLK_TCON_LCD0
- change mod clock in dphy to tcon_top with index 3 

[1] https://patchwork.freedesktop.org/series/61310/
[2] https://patchwork.freedesktop.org/series/60847/ 
[3] https://lore.kernel.org/patchwork/cover/862766/ 
[4] https://patchwork.freedesktop.org/series/62062/

Any inputs?
Jagan.

Jagan Teki (9):
  dt-bindings: display: Add TCON LCD compatible for R40
  drm/sun4i: tcon: Add TCON LCD support for R40
  ARM: dts: sun8i: r40: Use tcon top clock index macros
  drm/sun4i: tcon_top: Use clock name index macros
  drm/sun4i: tcon_top: Register clock gates in probe
  dt-bindings: sun6i-dsi: Add R40 MIPI-DSI compatible (w/ A64 fallback)
  dt-bindings: sun6i-dsi: Add R40 DPHY compatible (w/ A31 fallback)
  ARM: dts: sun8i: r40: Add MIPI DSI pipeline
  [DO NOT MERGE] ARM: dts: sun8i-r40: bananapi-m2-ultra: Enable Bananapi S070WV20-CT16 DSI panel

 .../bindings/display/sunxi/sun4i-drm.txt      |   1 +
 .../bindings/display/sunxi/sun6i-dsi.txt      |   2 +
 .../boot/dts/sun8i-r40-bananapi-m2-ultra.dts  |  36 ++++++
 arch/arm/boot/dts/sun8i-r40.dtsi              |  78 ++++++++++++-
 drivers/gpu/drm/sun4i/sun4i_tcon.c            |   8 ++
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c        | 103 ++++++++++--------
 6 files changed, 178 insertions(+), 50 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
