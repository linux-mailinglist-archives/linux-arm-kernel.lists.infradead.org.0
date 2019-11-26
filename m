Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EF1109948
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 07:34:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QjilEmgWcp0Iva5Zter+qA85UqvCPNrrPMjb4ctQmXg=; b=TXxxRekIcswibZ
	EvR666Pwpg+o3rb5MCTgWC1dzQIqAXqyLrcX7LMxNw4X62VYpmA1NHhluu7HDSr2rc0IUlWyruwtk
	1cAugpN8b1tgrSyuJAJBdblj4qMdv8lK9Mw0KrencANdjFjkKm7KolZHsyvvZFwF3cAnwWbuvSeAV
	SBOgAvUachzO5pCI1FNwRRBazQs645CFhbOPcoL+TpgzymA+aqz0yCM9Q+ec2Ij4AuztBTEim2FwI
	lccZGUR8r7+91tg7/IAmjuiOi1FfQBSx5ULvMZCWRb7J+oDoRGv4ROCyWoCUGMYdyaO7jQpDt3EcU
	SLZ0V5INZpce7HBs2Zyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZUR4-0008TT-Tl; Tue, 26 Nov 2019 06:34:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZUQb-0008Bv-Va; Tue, 26 Nov 2019 06:34:27 +0000
X-UUID: f825189d751e4673bb11e0f11d87f062-20191125
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=oJcXUCLZIxcF59qSTm2vQw2qkPkCytdOwN19qtc61zQ=; 
 b=LLe3uvSis0vKvlWOxtqBDOJUV+XnCbwW/fe2QqakZzH6RrAmyJqfq9cgeU96V9Gat+exbqJK3opEXz2Y5j4yqbKa7dRbY9SVkbXMhA96WZycRP2MhgVli0j/8TX62sFM0uMnSEojPi4tKQHpT8SncqJ8EEwf+wuVF2V3p7L8TYA=;
X-UUID: f825189d751e4673bb11e0f11d87f062-20191125
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1022281579; Mon, 25 Nov 2019 22:34:19 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 25 Nov 2019 22:30:05 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 14:29:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 26 Nov 2019 14:29:14 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH 0/7] drm/mediatek: fix cursor issue and apply CMDQ in
Date: Tue, 26 Nov 2019 14:29:25 +0800
Message-ID: <20191126062932.19773-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3886BE9112410BD4E984397ECA66E6660D117511F429C6329CE2E162650C9F092000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_223426_016495_22BF3DF9 
X-CRM114-Status: UNSURE (   7.75  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Bibby Hsieh (7):
  drm/mediatek: fix atomic_state reference counting
  drm/mediatek: put "event" in critical section
  drm/mediatek: use DRM core's atomic commit helper
  drm/mediatek: handle events when enabling/disabling crtc
  drm/mediatek: update cursors by using async atomic update
  drm/mediatek: support CMDQ interface in ddp component
  drm/mediatek: apply CMDQ control flow

 drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  65 +++---
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  43 ++--
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 223 ++++++++++++++++++--
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   4 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 151 +++++++++----
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  55 +++--
 drivers/gpu/drm/mediatek/mtk_drm_drv.c      | 143 +++++++------
 drivers/gpu/drm/mediatek/mtk_drm_drv.h      |  17 +-
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  54 +++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.h    |   2 +
 11 files changed, 575 insertions(+), 189 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
