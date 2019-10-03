Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9460C9874
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 08:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G8JqT6c0JMWhkAPCaTYnvXvjZWN6NYVT53bWgq0CVMA=; b=eWow/QSrA3JArp
	0HO8ZMGjhbeYumK40f/2JA2u6fClZy3XXwN8D1h4TRBlVYSy5FrS3qNw2DD7amaoGTy8lZk1smML9
	MnABUlVQbL367NRvYh+J8tCPG1FGnGfs59j22qGfoaygl28gJSJvTL/L5D7iNB2EA1QQB2JJjWnNP
	vnDpdyntZKV2fKg01TUDyLRSknPqyf2EooNZUiw05optbDp0jFseKJDGycXllfML56rd0Xa8Fz2IQ
	JSQtrzjdPm0wLjWJmqC0DFLLolFBnULzBWL3pN+9idizvtS2Mv9Y4eVCBSTlAJxe9bgdzGIQK9nUg
	SClIEa3pqDnymCgtSVqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFusN-0003jq-Vi; Thu, 03 Oct 2019 06:46:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFusD-0003jN-Ah
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 06:46:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id y35so1155546pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 23:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tmedhzX9C+cN8nQlDlRuERilhLkK7PZoYSIAR3+m8Og=;
 b=UlIYKajkWrpON8MaHPgN7XHZDHJbOBa85ryXrpg2AQ4pavpCqkCc8RsWPqMMSIBkw/
 sB0z2HVCWKGIHFCBf2SrufCZhwoSyh5DYyjEFygGztaYKCR3A7mgmFjz87dQ1b1IR6AY
 rksgIwmeq/xMyCqS60GUxfNLTEpyrjYwTXmVE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tmedhzX9C+cN8nQlDlRuERilhLkK7PZoYSIAR3+m8Og=;
 b=cOFamLvWl4WCsPi/uuIxGavaBnDwSAu02ZzpUOfvAgJvWrZnbmoK7zVM8bgAlJLW45
 F2Udhh0p6SWXTb70Kabj37o8M8oAmTDehaj7zANJchzwJZ9BG5MdI33OPUaN/RJh6vqU
 ZsZWKiTJouvx0V/UKv/iczNeFOsGqMCt3BkVwU51MBeGhDTBG5XFfY3wzU2FGfF0nn71
 aMr7KS9JXxY83A4tZBLtRaIqXwsuDwEQPMy//EXUtIpkyP+IYpZOHb/1axZHOwhTLGxO
 NjTJw6rzXsMRox/m9c/rAbEhgleVtt4JpgnEow1V3GbQKY5ARvYkoKT40O0EIb0CUPWu
 KVEw==
X-Gm-Message-State: APjAAAVMtmrqtpDVfq2CTLUhE50k+sFVw5lUQPAph+jXXDuQ1DFKscRB
 N89x73BHnKAtOo9T17tArFKokQ==
X-Google-Smtp-Source: APXvYqxQCK4/7MbbkBagZV2vOcHKusaEK4mXaxvR66zcwNTDIsrsGqkeRKcQ4QxTDvq2Kmwy+8UUQw==
X-Received: by 2002:a63:4762:: with SMTP id w34mr8014842pgk.202.1570085160475; 
 Wed, 02 Oct 2019 23:46:00 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.121])
 by smtp.gmail.com with ESMTPSA id b18sm1423294pfi.157.2019.10.02.23.45.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 23:45:59 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v11 0/7] drm/sun4i: dsi: Fixes/updates (A33 reworked!)
Date: Thu,  3 Oct 2019 12:15:20 +0530
Message-Id: <20191003064527.15128-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_234601_508500_AF72E240 
X-CRM114-Status: GOOD (  14.96  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is v11 version changes for previous series[1].

This series dropped the tcon->dclk_min_div and tcon->dclk_max_div
patches, since the discussion on the respective threads[2][3] 
not finalized or not agree on both the ends.

This series mostly the commit messages changes suggested by Chen-Yu.

Most of these issues are reproduced while supporting Allwinner A64
MIPI-DSI [4] but to confirm it with other SoC this series is reworked
on A33 since the controller tested it A33 as of now.

Since we don't have proper evidence and documentation for dsi controller
in Allwinner, these changes are more likely to rely on new working BSP
codes (even the initial driver written as per this rule).

All these fixes/updates are tested in "bananapi,s070wv20-ct16" panel
on Allwinner A33, the same panel timings are available in panel-simple
in mainline tree.

Changes for v11:
- Drop DCLK dividers patches
- Updated the commit message changes suggested by Chen-Yu
- rebased on linux-next
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

[1] https://patchwork.freedesktop.org/series/60847/
[2] https://patchwork.freedesktop.org/patch/305923/?series=60847&rev=1
[3] https://patchwork.kernel.org/patch/10779937/
[4] https://patchwork.freedesktop.org/series/57834/

Jagan Teki (7):
  drm/sun4i: dsi: Fix TCON DRQ set bits
  drm/sun4i: dsi: Update start value in video start delay
  drm/sun4i: dsi: Fix video start delay computation
  dt-bindings: sun6i-dsi: Add VCC-DSI supply property
  drm/sun4i: sun6i_mipi_dsi: Add VCC-DSI regulator support
  [DO NOT MERGE] drm/panel: Add Bananapi S070WV20-CT16 ICN6211 MIPI-DSI to RGB bridge
  [DO NOT MERGE] ARM: dts: sun8i: bananapi-m2m: Enable Bananapi S070WV20-CT16 DSI panel

 .../display/allwinner,sun6i-a31-mipi-dsi.yaml |   3 +
 arch/arm/boot/dts/sun8i-r16-bananapi-m2m.dts  |  40 +++
 drivers/gpu/drm/panel/Kconfig                 |   9 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../panel/panel-bananapi-s070wv20-icn6211.c   | 293 ++++++++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        |  32 +-
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h        |   2 +
 7 files changed, 376 insertions(+), 4 deletions(-)
 create mode 100644 drivers/gpu/drm/panel/panel-bananapi-s070wv20-icn6211.c

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
