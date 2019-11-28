Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B67EF10C283
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 03:43:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IILBXNbHm4j7e2l9BU7U1nF6e9MQV6kZRKqypuOBuvQ=; b=kdKd169Bz++oBj
	diwYOe76K7zSlEGqcB3k3JaWxV7hpV8kqVKGZTFUW8pG4s0PAYQUl/1sHtBDAlCecxeY4pevjNd/F
	4Z+yUahIoM9hbQ9vV+b9zlBxszJP8eg4DLnJfpRxrnT7f/znbGpQtAfMuagd87X1r+OIa41Cwc+A4
	QEh8fZrQ/hHJ3OccvIafyYtp8u/OHTdi6D/ajI+hHVmxC4oUx+GzHO2UTAslq/lL8YwScedZDbaxD
	vKjaFRMGSn3JlhcFM4NpyLAu45HwbGbutc3h/6RbBD8ZJQ2IhQd180/IyXuPCDyltjWSlwHhiebRf
	awrAyDrnu7k1X7ndUjVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia9lk-00080J-IC; Thu, 28 Nov 2019 02:43:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia9lW-0007yy-6w; Thu, 28 Nov 2019 02:42:47 +0000
X-UUID: 220e4084c94841179843d8c04388eb4a-20191127
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=oHZC5icCH5/wMlvpWjG0WjAvOh0Af+uvtWMpfg0PxOw=; 
 b=ez+4GEyULaJkqHYk9IA+WzOQRwpYrzeuk40EgDmL5i/k6/KYQOj/9uiDJzxKW4wgLSRaPJC2pO8vHi3lXV06VHQmDxjpNezW8MpLdBxm7VrXWdPjz2AQ6D1+9IWPtXp/jBUeq6TAdubdAxvrPObIcjT+wQ2bdcyH3iT1rg4YYNg=;
X-UUID: 220e4084c94841179843d8c04388eb4a-20191127
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1953066866; Wed, 27 Nov 2019 18:42:43 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 18:42:51 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 28 Nov 2019 10:42:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 28 Nov 2019 10:42:45 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v1 0/6] drm/mediatek: fix cursor issue and apply CMDQ in
Date: Thu, 28 Nov 2019 10:42:32 +0800
Message-ID: <20191128024238.9399-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_184246_259083_D21DED99 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: drinkcat@chromium.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CMDQ (Command Queue) in MT8183 is used to help update all
relevant display controller registers with critical time limation.
This patch add cmdq interface in ddp_comp interface, let all
ddp_comp interface can support cpu/cmdq function at the same time.

These patches also can fixup cursor moving is not smooth
when heavy load in webgl.

This patch depends on ptach:
add drm support for MT8183
(https://patchwork.kernel.org/cover/11121519/)
support gce on mt8183 platform
(https://patchwork.kernel.org/cover/11255147)
drm/mediatek: Refactor plane init/check and support rotation
(https://pw-emeril.freedesktop.org/series/69015/)
drm/mediatek: Check return value of mtk_drm_ddp_comp_for_plane
(https://lore.kernel.org/patchwork/patch/1154517/)

Changes since v0:
 - remove redundant code
 - remove patch
   "drm/mediatek: fix atomic_state reference counting"
   After remove this patch, the issue we met before is gone.
   So I do not add any extra code to do something.

Bibby Hsieh (6):
  drm/mediatek: put "event" in critical section
  drm/mediatek: use DRM core's atomic commit helper
  drm/mediatek: handle events when enabling/disabling crtc
  drm/mediatek: update cursors by using async atomic update
  drm/mediatek: support CMDQ interface in ddp component
  drm/mediatek: apply CMDQ control flow

 drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  65 +++++----
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  43 +++---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 139 +++++++++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 151 +++++++++++++++-----
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  55 ++++---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c      |  96 +++----------
 drivers/gpu/drm/mediatek/mtk_drm_drv.h      |   9 +-
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  50 +++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.h    |   2 +
 11 files changed, 423 insertions(+), 196 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
