Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527212DB21
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 12:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x1V2iqy/6duhZfdeKJDKxC35+gRfmnhCEctHIjK1L88=; b=Kiu4neaAw8jSif
	/lN+Pn4XEtEVEA9fCnyUyzF5igRiBxOjxF2pO0fNQgz6qYMKY5N1yDiR+JIRqV/67xJVZSLsBCPFB
	SdqrEW0Il7Gj1pOloMxVK/5pchdzeLXwgzkVTHdTTeBdlo5qwm1E5GIXNqbnfsaj+8iJzUV5hDxBU
	xdvPh37qW6ttU9/ms3g+U5kbzZMYROJsYiDe9UN2HwQoUUBmUPmnNG/xdpVDhRjPt2DbOzpdTBxWO
	K7ggqWrOycx6M6wSobqWU3zkZqachtmTph7PPESEhIpcn/rzS9Q9oJUNfNbLma1QogLk6nk145vRL
	7HtiHOcbF7Piy7PZf4cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVwGJ-00051Y-0T; Wed, 29 May 2019 10:56:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVwGA-00050p-Ta
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 10:56:44 +0000
Received: by mail-pg1-x541.google.com with SMTP id z3so1149906pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 03:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QlH+bdDvrGkuMtx4C8zLdS+VSlbI3yCzUmJWnWewlAQ=;
 b=kfGgahWwlz5uJSHrLWZExXhJWc3KlK4MMXhmTTh+sXSy+X+iDvCc5QAhKKrMul3hax
 A06X6vN8umwMZrLMbJigUxxvoiTdMo+G+G+zXKocEc+mu6DeVbKjcbgn9OkfVFbM7Fmz
 EhJ6p3maCAEB1pecz9FsYfm3piVA8gqN4OxNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QlH+bdDvrGkuMtx4C8zLdS+VSlbI3yCzUmJWnWewlAQ=;
 b=C0kD6lqZahqe/UJgQhri8Sh6MV8Ab4A5APT0I7ewWSrVe7STXt68UsUSe/HQ3SXfMu
 08a3hDRw+EYITj2pHQnZ2aHTYL/r6Jfeg/j2EYceLu4pGGhUDHLbIvRMjYJnJG0xPOa0
 m7PPqtY/Tzn16wvauHWykJrQhblohAXHwsPVC9dkHcPnqhSoU9FP8xEBlqjlLPvmEg5u
 hHCCwBFadmVx4gr3fxNTu/Bu0o4aLR7s6TWqrkARhpFQW9t7W8Aw7sFAfCbXLNM91yoi
 +/vIBz+MHfLj1coA0724BIzD3KRnbO/fsNa+hv3eHpI7d5XyxEiHzxkTgG61Axcl5wjq
 iu8w==
X-Gm-Message-State: APjAAAUDXeFEl/BqARTf1nMuZGwgoK+N3aVhQMLTuQ+WodnNZNa4yGOz
 x2P5BJb7GAH4Km1KsAqr0juigw==
X-Google-Smtp-Source: APXvYqxDCqXNYYDrNO19C8eevIbe90q34Fw+quaxpak9TU0mVV/bwLX0fPihzSEx0Ivy40x8IOR0eQ==
X-Received: by 2002:a65:5347:: with SMTP id w7mr81611008pgr.375.1559127401755; 
 Wed, 29 May 2019 03:56:41 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
 by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.56.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 29 May 2019 03:56:41 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v9 0/9] drm/sun4i: Allwinner A64 MIPI-DSI support
Date: Wed, 29 May 2019 16:26:06 +0530
Message-Id: <20190529105615.14027-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_035643_127145_B541FA21 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Ryan Pannell <ryan@osukl.com>,
 bshah@mykolab.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Sergey Suloev <ssuloev@orpaltech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is v9 version for Allwinner A64 MIPI-DSI support
and here is the previous version set[1].

This depends on dsi host controller fixes which were
supported in this series[2].

All these changes are tested in Allwinner A64 with
2, 4 lanes devices and whose pixel clocks are 27.5 MHz,
30MHz, 55MHz and 147MHz.

Changes for v9:
- moved dsi fixes in separate series on top of A33 [2]
- rebase on linux-next and on top of [2]
Changes for v8:
- rebased on drm-misc change along with linux-next
- reworked video start delay patch
- tested on 4 different dsi panels
- reworked commit messages
Changes for v7:
- moved vcc-dsi binding to required filed.
- drop quotes on fallback dphy bindings.
- drop min_rate clock pll-mipi patches.
- introduce dclk divider computation as like A64 BSP.
- add A64 DSI quark patches.
- fixed A64 DSI pipeline.
- add proper commit messages.
- collect Merlijn Wajer Tested-by credits.
Changes for v6:
- dropped unneeded changes, patches
- fixed all burst mode patches as per previous version comments
- rebase on master
- update proper commit message
- dropped unneeded comments
- order the patches that make review easy
Changes for v5:
- collect Rob, Acked-by
- droped "Fix VBP size calculation" patch
- updated vblk timing calculation.
- droped techstar, bananapi dsi panel drivers which may require
  bridge or other setup. it's under discussion.
Changes for v4:
- droppoed untested CCU_FEATURE_FIXED_POSTDIV check code in
  nkm min, max rate patches
- create two patches for "Add Allwinner A64 MIPI DSI support"
  one for has_mod_clk quirk and other one for A64 support
- use existing driver code construct for hblk computation
- dropped "Increase hfp packet overhead" patch [2], though BSP added
  this but we have no issues as of now.
  (no issues on panel side w/o this change)
- create separate function for vblk computation 
- enable vcc-dsi regulator in dsi_runtime_resume
- collect Rob, Acked-by
- update MAINTAINERS file for panel drivers
- cleanup commit messages
- fixed checkpatch warnings/errors

[1] https://patchwork.freedesktop.org/series/57834/
[2] https://patchwork.freedesktop.org/series/60847/

Jagan Teki (9):
  dt-bindings: sun6i-dsi: Add A64 MIPI-DSI compatible
  dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/ A31 fallback)
  drm/sun4i: dsi: Add has_mod_clk quirk
  drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
  arm64: dts: allwinner: a64: Add MIPI DSI pipeline
  arm64: dts: allwinner: a64-amarula-relic: Add Techstar TS8550B MIPI-DSI panel
  [DO NOT MERGE] arm64: dts: allwinner: bananapi-m64: Enable Bananapi S070WV20-CT16 DSI panel
  [DO NOT MERGE] arm64: dts: allwinner: a64-pine64-lts: Enable Feiyang FY07024DI26A30-D DSI panel
  [DO NOT MERGE] arm64: dts: allwinner: oceanic-5205-5inmfd: Enable Microtech MTF050FHDI-03 panel

 .../bindings/display/sunxi/sun6i-dsi.txt      |  2 +
 .../allwinner/sun50i-a64-amarula-relic.dts    | 35 +++++++++++++
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 31 ++++++++++++
 .../sun50i-a64-oceanic-5205-5inmfd.dts        | 49 +++++++++++++++++++
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 31 ++++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 ++++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        | 45 ++++++++++++-----
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h        |  5 ++
 8 files changed, 225 insertions(+), 11 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
