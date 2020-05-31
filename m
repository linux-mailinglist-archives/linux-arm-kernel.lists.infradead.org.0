Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEEA1E9A2A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 21:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tY3t4zPM1i/Z1GCIC2JOPxH/tOQRf+QiM3ZsgjanDEY=; b=CdhkvrvlKxxmbV
	08/8/NYoVluCudQK8OEY8wVhVlJ5OSu2SjZZPUik2wKqw/vPBdOn76d8UHLW3lzoIXSgrgc6S9RZQ
	zcBFX7O42+ySUD6yO21Sm2PhHxRLPkDr3ncgABLFgeFK9tlQe9L0DIUzeONl4kfWQN+xV5LGXFSsW
	BNt2D75mAAWOt+CljjAS8wm6FXumfcFmSSHT9Dr11YTE7ECT0bGXa9xDMetNscWtHMpIz6cBHx+49
	NeRAYvPLGTqF7i/dDAVJA7ex0pdsUxD71ZWAROZ6gfG/nS2KWhy6szvDA7IOzaMbkDJV2u5qQx1EG
	XbFe8E/J9EZYbVW0P6Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfTok-000303-2l; Sun, 31 May 2020 19:40:22 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfToX-0002GT-GO
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 19:40:12 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id B2143810A;
 Sun, 31 May 2020 19:40:55 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 0/5] Suspend and resume fixes for omapdrm pdata removal
Date: Sun, 31 May 2020 12:39:36 -0700
Message-Id: <20200531193941.13179-1-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_124009_600297_0CD087F3 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 "Andrew F . Davis" <afd@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Suman Anna <s-anna@ti.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Recent omapdrm related changes to drop legacy platform data caused
a suspend and resume regression. I must have only tested suspend
and resume only with the changes preparing to drop the platform data,
but looks like I forgot to test suspend after dropping the platform
data.

There seem to be other longer term DSS regressions remaining too.
Looks like at least panel-simple currently does not probe. It fails
with "panel-simple display: Reject override mode: panel has a fixed
mode". I think the solution there is to drop the board specific
panel-timing related dts lines, but that still seems to be pending.
Anyways, no luck getting the LCD enabled on am437x-sk-evm with v5.6
or v5.7-rc kernels.

Regards,

Tony


Tony Lindgren (5):
  drm/omap: Fix suspend resume regression after platform data removal
  bus: ti-sysc: Use optional clocks on for enable and wait for softreset
    bit
  bus: ti-sysc: Ignore clockactivity unless specified as a quirk
  bus: ti-sysc: Fix uninitialized framedonetv_irq
  ARM: OMAP2+: Fix legacy mode dss_reset

 arch/arm/mach-omap2/omap_hwmod.c         |  2 +-
 drivers/bus/ti-sysc.c                    | 93 ++++++++++++++++++------
 drivers/gpu/drm/omapdrm/dss/dispc.c      |  6 +-
 drivers/gpu/drm/omapdrm/dss/dsi.c        |  6 +-
 drivers/gpu/drm/omapdrm/dss/dss.c        |  6 +-
 drivers/gpu/drm/omapdrm/dss/venc.c       |  6 +-
 drivers/gpu/drm/omapdrm/omap_dmm_tiler.c |  4 +-
 7 files changed, 79 insertions(+), 44 deletions(-)

-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
