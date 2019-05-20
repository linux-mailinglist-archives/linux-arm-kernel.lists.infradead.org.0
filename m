Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FA822FB6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mLtvvUFS5mkiCjc9HqqMUA28PT00X/kUaK3zF0tljX0=; b=ZajgC8fHmAf39R
	9GtkUYcDhnQveGYgiy2l4MgYwbbZMOi3PRjhEv3QE6fKbRraY40o6TQGXb2MMOFmhJhGOFgLHgWep
	MOklDBsgdMZADSrWy5ll1oE1kqE92j/Lq/Ef3FEn4/GhcU7zUDNA9OomJHeQzgY78rxaKM5f9sjWX
	JiuFOGFWYJSWdD5vVvguCswaNVFQYB9PpmGD6drcusrKC/PqooYmi+EKHcn3M/O7rItXMD66s20Bx
	Wqiu9mDohvr0PlAOhGuT/PyizOrYngEfU4fKOoAOtzuPl1KUqS/sXARxY10Hlet9bRZCU0EPQfpzI
	9sJjhhAQi5Aj8USujvnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeGP-0002Hy-JG; Mon, 20 May 2019 09:07:21 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeGH-0002HH-Rz
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:07:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id p1so1043007plo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5cW/Ykas8y/ulbRnNYCc1U7OJGD9GTeKEiiivcIo+lE=;
 b=D19AjoC0eMZThH2guQSI02LbCXWxIu9yFHbIFGyjKVoGdpanTTC1WH7LHFeWV3LN9c
 d+yGjqnD+B5OyZm2YFjaXIFqcJ595lDsnFX1pVaqXzeFzILB+N3gsgqf8ztcbrMrnWiF
 9sRtvb5LzYCHUKcbV/RZZSIPazKFf+S+J4nbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5cW/Ykas8y/ulbRnNYCc1U7OJGD9GTeKEiiivcIo+lE=;
 b=S+XvrE5B2YntzhIEZq72QHcyzwRlZgd3j7yFWLiPRzfOGzveGZLoL2Z5tuVJ5k8hEC
 LaYWeaI9h2SQqVYVSUqv2AOEgDCPtxl2XOsF03XyG7sIbloZ7HvCFLzvlcQd5hWzYo8V
 wWmjyzb6HEB98FdmXa4VIyXDs0ut1d5ZN/aEquPYv1K5zF5D2Bc7zT1o0DS7tU8ry/h0
 oK/5gsYmuBNlgc7UwfMqIDeVTcW7bXXzqsEhd1e0L6Itsua4ebhfoz675h1QjEUXmZhp
 /pdEuRaIAlKOLTdydnMRaKb1Ii1/AMDyzXXjBVGsbjUnij3QGGGeVA0x6ixRv3gkQCmQ
 CTog==
X-Gm-Message-State: APjAAAUbCpWA8VE9vAoIvJ91RyfKngs3hahve47RNE0y0oCaTDdAmhkT
 0jh5its/HAcmR0WwP2sbfTo7oQ==
X-Google-Smtp-Source: APXvYqz8pwdU8mC+t3ZXYb6Q+Pg04mL44SIkX5k3pYjBHVjtKxFYa0Qa7kCCe3U/5VkpdkgVqE12iA==
X-Received: by 2002:a17:902:2a07:: with SMTP id
 i7mr76936917plb.125.1558343232148; 
 Mon, 20 May 2019 02:07:12 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.07.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:07:11 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 00/11] drm/sun4i: dsi: Fixes/updates (A33 reworked!)
Date: Mon, 20 May 2019 14:33:07 +0530
Message-Id: <20190520090318.27570-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020714_401025_15EB38F5 
X-CRM114-Status: GOOD (  15.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most of these issues are reproduced while supporting Allwinner A64
MIPI-DSI [1] but to confirm it with other SoC this series is reworked
on A33 since the controller tested it A33 as of now.

Since we don't have proper evidence and documentation for dsi controller
in Allwinner, these changes are more likely to rely on new working BSP
codes (even the initial driver written as per this rule).

All these fixes/updates are tested in "bananapi,s070wv20-ct16" panel
on Allwinner A33, the same panel timings are available in panel-simple
in mainline tree.

Changes for v10:
- reworked previous "Fixes/updates" patches on A33
- reworked previous A64 DSI fixes on A33
- added proper detailed commit messages with logs
- tested on BPI-M2M board.
Changes for v9:
- rebase on drm-misc
- update commit messages
- add hsync_porch overflow patch
Changes for v8:
- rebase on master
- rework on commit messages
- rework video start delay
- include drq changes from previous version
Changes for v7:
- rebase on master
- collect Merlijn Wajer Tested-by credits.
Changes for v6:
- fixed all burst mode patches as per previous version comments
- rebase on master
- update proper commit message
- dropped unneeded comments
- order the patches that make review easy
Changes for v5, v4, v3, v2:
- use existing driver code construct for hblk computation
- create separate function for vblk computation
- cleanup commit messages
- update proper commit messages
- fixed checkpatch warnings/errors
- use proper return value for tcon0 probe
- add logic to get tcon0 divider values
- simplify timings code to support burst mode
- fix drq computation return values
- rebase on master

Any inputs?
Jagan.

[1] https://patchwork.freedesktop.org/series/57834/

Jagan Teki (11):
  drm/sun4i: dsi: Fix TCON DRQ set bits
  drm/sun4i: dsi: Update start value in video start delay
  drm/sun4i: dsi: Fix video start delay computation
  drm/sun4i: tcon: Compute DCLK dividers based on format, lanes
  drm/sun4i: tcon: Export get tcon0 routine
  drm/sun4i: dsi: Probe tcon0 during dsi_bind
  drm/sun4i: dsi: Get tcon0_div at runtime
  dt-bindings: sun6i-dsi: Add VCC-DSI supply property
  drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator support
  [DO NOT MERGE] drm/panel: Add Bananapi S070WV20-CT16 ICN6211 MIPI-DSI to RGB bridge
  [DO NOT MERGE] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi S070WV20-CT16 DSI panel

 .../bindings/display/sunxi/sun6i-dsi.txt      |   1 +
 arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts  |  40 +++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../panel/panel-bananapi-s070wv20-icn6211.c   | 293 ++++++++++++++++++
 drivers/gpu/drm/sun4i/sun4i_tcon.c            |   7 +-
 drivers/gpu/drm/sun4i/sun4i_tcon.h            |   1 +
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        |  46 ++-
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h        |   4 +-
 9 files changed, 393 insertions(+), 9 deletions(-)
 create mode 100644 drivers/gpu/drm/panel/panel-bananapi-s070wv20-icn6211.c

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
