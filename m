Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BE0CCA5D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 16:19:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F73+tXOuF+zTcuB0VGZoCTT2n1cRv6hmVEwTCxlrwVg=; b=M+QdYmTs8X366i
	jZImBRyWJ1T60I95V6la/+0exEBfc16hcgy8cxsQx7wGA4LM13zu4rlx1wbNq8DYlnmJmiRkFpCnk
	WbgLwb0jpCKdeMJOdnWKtZmFRWMuLGAafLu4bRJIGOw8kgN/WB0oLBxLhM9HBwRoy8WuQzNIGCA9m
	fDcj73XKYjyGwcXmJN80Kk4vjpiPnG/S5H4EdcBSQVw7CfyRN37aKG7iahNgME1aOnaFGCzcrv2rg
	3ubRVGiXzScDXgGavWW2+6WLV6T/ihh69W6K2QrxzgaSwR0pQdvSY226sO7DhJh+akvgjFfRLrdIE
	H65WcyPiSdQkCOgaEkjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGkuG-0003eH-2d; Sat, 05 Oct 2019 14:19:36 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGku8-0003dA-0y
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 14:19:30 +0000
Received: by mail-pf1-x442.google.com with SMTP id q7so5651209pfh.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 05 Oct 2019 07:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jdWK5vcnTFqPnDbfTqA+QzxqCP19t4414D5Iqnjivjw=;
 b=RLuH2sZmuDvU+uZL9GR5HKUHIyvGHORFuotX786UAEAO4gjExN56qdYbwWBsyNCJB9
 lB2cWvH+S52Iu4E0wWtFxOctbuBR6AG5xSCkDqwE5f1QZ1hxqVVtCJMIZEnl9D49ZEbm
 U98Psud4qpBIol8tKfWnPmsQqbYwrRnDBOLeA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jdWK5vcnTFqPnDbfTqA+QzxqCP19t4414D5Iqnjivjw=;
 b=R9gZ6aG7gQBXHMpeuspYkCehfl+idMJgr0ciGxhUjiPUEQd+v7xFR0wkKaAdO83uR0
 VT/VMVmc+zog4jeyYUVT12ZA0/x5YfO5HRSBOual7TWdIo6732M6puqwF534lcYvoobf
 8+N/N0Nx3pBoy5npvVVgSs7zT4u6/i01+xU5x07xFFxyiR06WIYlJxIMir4AMsgJTNEe
 VINoNADpVBlfA8ZBghDeISau5Meyr4ff1urDhoBuyrH6DHKJpYPKoMWL3w20K69ifMFP
 STf12zvkbZJFhW8iA46dQwVPcqbBZMdmtrtxZwpNKfgBR7EHiS2d0wsSQfXC6sY7qdeO
 X5hQ==
X-Gm-Message-State: APjAAAUOEuKZlscXcGI0HE3eGHFSM/B4Tb40ovOPa9zTBFOMvnbEe0K/
 uINpye0KKbr03vCxczzb8sllww==
X-Google-Smtp-Source: APXvYqwk1UplFcpr14yl8Ol/aKp4v+RqV5P1b8raPNprUYPv/a1x8kHBAbG4SDprN6vZk6cwyggzxw==
X-Received: by 2002:a63:d754:: with SMTP id w20mr6349432pgi.74.1570285163831; 
 Sat, 05 Oct 2019 07:19:23 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y138sm8977604pfb.174.2019.10.05.07.19.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Oct 2019 07:19:22 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v10 0/6] drm/sun4i: Allwinner A64 MIPI-DSI support
Date: Sat,  5 Oct 2019 19:49:07 +0530
Message-Id: <20191005141913.22020-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_071928_490000_CAF33A5E 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is v10 version for Allwinner A64 MIPI-DSI support
and here is the previous version set[1].

This series on top of drm-misc/for-linux-next along with video start
delay fix [2]

Changes for v10:
- updated dt-bindings as per .yaml format
- rebased on drm-misc/for-linux-next
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

[1] https://patchwork.freedesktop.org/series/61310/
[2] https://patchwork.freedesktop.org/patch/334086/

Any inputs?
Jagan.

Jagan Teki (6):
  dt-bindings: sun6i-dsi: Add A64 MIPI-DSI compatible
  dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/ A31 fallback)
  drm/sun4i: dsi: Add has_mod_clk quirk
  drm/sun4i: dsi: Add Allwinner A64 MIPI DSI support
  arm64: dts: allwinner: a64: Add MIPI DSI pipeline
  [DO NOT MERGE] arm64: dts: allwinner: bananapi-m64: Enable Bananapi S070WV20-CT16 DSI
    panel

 .../display/allwinner,sun6i-a31-mipi-dsi.yaml |  4 +-
 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  6 ++-
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts | 31 ++++++++++++++
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 38 +++++++++++++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c        | 42 ++++++++++++++-----
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h        |  5 +++
 6 files changed, 114 insertions(+), 12 deletions(-)

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
