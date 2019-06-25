Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4C5556AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 20:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Htl0LnqaOazBatX2HcHSi7HvDb3FJa7zEqhdkgi7jT0=; b=iKr
	htuRM1D4Kw19RZlXx83cS4Y3YaMiJmB1S7R4XeIcfNRbWMopyej/X4D+d4xzWFuZk3zdSN0U+Ct9R
	bTkopBnZ/7SdtK6PiSJh091xmiaiewuL1FMjaNx7mrsA4lmzQztUUxhybBzQPl6lzp5ZqC70TbAYq
	1fElINQ/DZBnirn9Lhumed7vnKWknfoQHa1bbQGYA7XbzQxkFQnHh8sIuI+6PRGy50Rrnd96efGYj
	YoWXkCZSTlEhKjtLohyD/Y6uXsJ4VuqOlipeQMLDZYAiZ1f87GvfM358Ay3tqp2yV8FoV1hxLJ7bc
	3MMX3lkAMx5BiHo4pFmgPxSF7Zi0Dtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfpmj-0005cJ-K5; Tue, 25 Jun 2019 18:03:13 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfpmB-0005Op-W1
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 18:02:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: bbeckett) with ESMTPSA id 776DF2606DF
From: Robert Beckett <bob.beckett@collabora.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/4] handle vblank when disabling ctc with interrupt
 disabled (was [PATCH v2] drm/imx: correct order of crtc disable)
Date: Tue, 25 Jun 2019 18:59:11 +0100
Message-Id: <cover.1561483965.git.bob.beckett@collabora.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_110240_160202_CB5DA820 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Robert Beckett <bob.beckett@collabora.com>,
 Fabio Estevam <festevam@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, David Airlie <airlied@linux.ie>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Handle vblank event sent to signal crtc disable while the backend vblank
interrupt has already been disabled by vblank_disable_fn.

Fixes: a474478642d5 ("drm/imx: fix crtc vblank state regression")
Fixes: 68036b08b91bc ("drm/vblank: Do not update vblank count if interrupts are already disabled.")
Fixes: 5f2f911578fb ("drm/imx: atomic phase 3 step 1: Use atomic configuration")


Changes since v2:
Split up the patch in to smaller pieces.
Add warning when about to send bogus vblank event.
Update vblank to best guess info during drm_vblank_disable_and_save.

Robert Beckett (4):
  drm/vblank: warn on sending stale event
  drm/imx: notify drm core before sending event during crtc disable
  drm/vblank: estimate vblank while disabling vblank if interrupt
    disabled
  drm/imx: only send event on crtc disable if kept disabled

 drivers/gpu/drm/drm_vblank.c     | 33 +++++++++++++++++++++++++++++++-
 drivers/gpu/drm/imx/ipuv3-crtc.c |  6 +++---
 2 files changed, 35 insertions(+), 4 deletions(-)

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
