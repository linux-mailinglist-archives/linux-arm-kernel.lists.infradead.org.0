Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0FA10FF1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 14:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G9RaJj+lqvn0AUIF1AOEd+WmyskUiJAJR+lg0bBjCVQ=; b=step25vNa0Cy3n
	Hml6aZpcMvbHvF49sBkAMQ6yM4OrjjmFtZgdY6V/r5OicPLSwG8OI0JFAni/ebVMa/s5Dw+1icLpu
	ZJ/VSiX6jHo1XoppH8QF7SV708d14WgCvPZ+uT04bKXk5xgUP+F09A4OyIjt8gSgRqIjkGuAQfvm8
	umXmEuMvzKASOb6zhQxbaIWRnkT5om+ZzBFAeqBvoYoHXMAiUlHqMqwHPXIL1B7ZZbUrsXZ/9FOcw
	vShIjSnAjCEqKGYYA8r0mR6JPZiW+umJiM2IDVzKb4bf/obcLN/g8ovxrYz7StcQP+u/zMc4bgTv4
	1Yh14Uilf79zMa/gXl+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8Xd-00089H-6J; Tue, 03 Dec 2019 13:48:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8XV-00088x-WB
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 13:48:31 +0000
Received: by mail-pl1-x642.google.com with SMTP id o9so1726633plk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Dec 2019 05:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7fyH+2F2a+rl1kectMRnZFlHTKNuWeTnYPoVBXe5Db4=;
 b=O7md203+f98TyLan33Yz4aeIVna2Ip1fUra9eSfxZt0oM+104KLRNIYxIR3+igDF91
 ZSIlXuIuSFdOCRwQA6VRzSsU2uUWuWRdGZ3LpLOzawoqqBUauMRZWt0AH5gcrW+KIbbg
 TGcdTj7F2aaAZV+V9yBZPetyHggQ+sa8SJ5gI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7fyH+2F2a+rl1kectMRnZFlHTKNuWeTnYPoVBXe5Db4=;
 b=TRESSQEXWSzW57D67DNBOvjBmPjXAqhvC3YwSBeY+PkW+SMR66TOqTH9bAdQeDxuDG
 zx84prQNciPP0E1bYNAPxn6ETIjRtNLau9NA+0ScLYJPh7G7xGZqddX2T8IkSeyGDd0R
 q1EabMOLm2dQJgVM2lbWwSxZzr292XLw9HffokxU96IMWVW6G7mWs1f4H4ZPJyYfuyRQ
 SuQgOccQsKB9bTH83KsD9rMPcFjGCVZI9sOfxlZDgBWkBsnJE75N7OjAgCB3XtCOLcgH
 npBMTYnMeIvq4tF5bzDy5zy8An32Ev+Szex2/vT9sEPIu+N+JF1nXzq+VE6x9KzRjKsD
 CHKQ==
X-Gm-Message-State: APjAAAVCvpyr+zOW4ZjTQoqQwi5/AYNVakB7cVL9RIswQyLGv/g+AUnN
 KUaIHlLzb8liqgPFjvsA+g4Erpirs0CXgg==
X-Google-Smtp-Source: APXvYqzbpkPoRAjx7jYyIBTmDtEHbDTA8NmXpToYJsChd3LnIUvBCuRXvE+x3s8pofxO0AXSfe7fjg==
X-Received: by 2002:a17:902:fe12:: with SMTP id
 g18mr4992444plj.20.1575380908885; 
 Tue, 03 Dec 2019 05:48:28 -0800 (PST)
Received: from localhost.localdomain ([115.97.190.29])
 by smtp.gmail.com with ESMTPSA id y144sm4397892pfb.188.2019.12.03.05.48.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Dec 2019 05:48:28 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v12 0/7] drm/sun4i: Allwinner A64 MIPI-DSI support
Date: Tue,  3 Dec 2019 19:18:09 +0530
Message-Id: <20191203134816.5319-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054830_181049_AE964794 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is v12 version for Allwinner A64 MIPI-DSI support
and here is the previous version set[1]

Changes for v12:
- use enum insted of oneOf+const
- handle bus clock using regmap attach clk
- tested on A64, A33 boards.
Changes for v11:
- fix dt-bindings for dphy
- fix dt-bindings for dsi controller
- add bus clock handling code
- tested on A64, A33 boards.
Changes for v10:
- updated dt-bindings as per .yaml format
- rebased on drm-misc/for-linux-next
Changes for v9:
- moved dsi fixes in separate series on top of A33
- rebase on linux-next
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

[1] https://patchwork.freedesktop.org/series/68579/

Any inputs?
Jagan.

Jagan Teki (7):
  dt-bindings: sun6i-dsi: Document A64 MIPI-DSI controller
  dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/ A31 fallback)
  drm/sun4i: dsi: Add has_mod_clk quirk
  drm/sun4i: dsi: Handle bus clock via regmap_mmio_attach_clk
  drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
  arm64: dts: allwinner: a64: Add MIPI DSI pipeline
  [DO NOT MERGE] arm64: dts: allwinner: bananapi-m64: Enable Bananapi S070WV20-CT16 DSI panel

 .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 ++++-
 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  6 +-
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 31 +++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 37 ++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        | 86 +++++++++++++++----
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h        |  5 ++
 6 files changed, 164 insertions(+), 21 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
