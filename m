Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 724F912516F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 20:10:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cv4CvqtNTwaigKdWLR7s8MEXLqHgNWHLlj2vQ3GOjis=; b=RL1u+WjiqIxpkS
	x2hvt9MLIBUMuIYfvnBjT4K9SbIazBTNfaDWUGyxePxZbBVsRNbfl+p+xN8FrH/HL6jySd2+baUJU
	Qvz81fWwCLaECJdE07qHsz2/kRLofPxaY0X0Py1c0/LIBZsV/oqj6jGFa28WtobKD+7wFRr74pJok
	JhoBYQSYbC3fmvApEoNzFX9/cwT2lk7f+D/IVtXB6ofxoM86a6tToAcesnvdUJ0VQOXVYpMDaQIZA
	J0DGqyTlkGSUyfZQiG+54Dtuxh7noNtOSorHFVWyUU+BCFpDPeA7WkZDYGf44/WFh4KVUNkRqW4P+
	J4BFAF4Cu62cC4Migwtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iheib-0000Uu-NE; Wed, 18 Dec 2019 19:10:45 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iheiL-0000U7-5N
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 19:10:30 +0000
Received: by mail-pl1-x642.google.com with SMTP id bd4so1390578plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 11:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EuBd5H0Egt+eDY+fK/iuV4fphB2qstxtMKk6PdK6o5A=;
 b=S86ZB6KZWjzBWNer4WPm2X1LwRziSTHVHOQAcHfs+JFNZIdFhkw7JLb807hllDCYEy
 Hu6MigRzR6kEQQW6ZcMElMamn2hUOuhvHGRSY3E3rVhsd/AdBI32u9lqJJRK1y71MuQp
 ncwlCQBEFnBNd45zE4nJPZMklK8i2yW5fNy4s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EuBd5H0Egt+eDY+fK/iuV4fphB2qstxtMKk6PdK6o5A=;
 b=NQTblgGTfrOhjyF4DqmCS/XXGEbUX239Web/UR84xOTKmOegxSiNgIjIgy8X7xPBB9
 GeZBI4SjS9Xd5hjgZA5ogwMZFA5f5zRkXdbZQCSJTrLQjER7pB04EjaLBwJS1M/sBHzw
 STxpxR2xsvS3R2ckwWZAH5m7u+Qnf4N41murQb9Ku5jhb1ne6koyKoWvYPtRUtHCy4XB
 YhzTFqJft59pr0Wqk6+oZccLONS9lF8YGJVwDRPO0p5B6UDwyAUmbsa0ce+9RMcVNHxE
 bcNDVz3grBsLDON8+dzFEiJneh8LnU0B0TlXi/j7cvCtupV8fnoOBjlIsYSUGHXip4mC
 o00Q==
X-Gm-Message-State: APjAAAVJo9GOogtCKktzeaO7syGO4WmVp8DEVVbJetRyp2Rm7D18l8eK
 Dm9sN2pgdCjeoXTJ0DZGrxVykA==
X-Google-Smtp-Source: APXvYqwU8uLra6sgkg2kZFnCJdBPd9PVO3B5cEcqJKnQ6ikq51O0B+PtJzugqG3VZX2O+nw+6dGAJQ==
X-Received: by 2002:a17:90a:e389:: with SMTP id b9mr4642793pjz.7.1576696227877; 
 Wed, 18 Dec 2019 11:10:27 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:78ea:e014:edb4:e862])
 by smtp.gmail.com with ESMTPSA id q7sm3745855pjd.3.2019.12.18.11.10.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 11:10:27 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v13 0/7] drm/sun4i: Allwinner A64 MIPI-DSI support
Date: Thu, 19 Dec 2019 00:40:10 +0530
Message-Id: <20191218191017.2895-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_111029_344165_0BC010F9 
X-CRM114-Status: GOOD (  11.26  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is v13 version for Allwinner A64 MIPI-DSI support
and here is the previous version set[1]

Changes for v13:
- update dt-bindings for A64
- drop has_mod_clk variant
- use regmap bus clock properly
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

[1] https://patchwork.freedesktop.org/series/70361/

Any inputs?
Jagan.

Jagan Teki (7):
  dt-bindings: sun6i-dsi: Document A64 MIPI-DSI controller
  dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/ A31 fallback)
  drm/sun4i: dsi: Get the mod clock for A31
  drm/sun4i: dsi: Handle bus clock via regmap_mmio_attach_clk
  drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
  arm64: dts: allwinner: a64: Add MIPI DSI pipeline
  [DO NOT MERGE] arm64: dts: allwinner: bananapi-m64: Enable Bananapi S070WV20-CT16 DSI
    panel

 .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 33 ++++++++++-
 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  6 +-
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 31 +++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 37 +++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        | 55 +++++++++++++++----
 5 files changed, 148 insertions(+), 14 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
