Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DE1117F7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 06:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KRTv7/PFn9zhKAAw9j5QJcEqn2O0aQn2awNRTXyTJ5A=; b=buV5f836qFN7Vg
	MqmPnhsJ9KIOkhkJUDDP9o0UftUKKKzmuxpf6/v+U7CBH1Uv+CRXKFte0FOLDs2XrE36Z85oMDmqh
	iohb4HHnL+csIRQT4+AllRDKoqcRlb4qNb6a0yMKMVaqrCZHwFwmJtxXY/GinzM6O/wGPu5TL2YBP
	y5MCNN1ITje1gdKyLlE9GXGzn/QMCNEoLeg4lZ9cfpVAUSPkkSevFsoqPWCzCHDXQbSyVwOtfkrNJ
	EbU6Sx3ONzfSDKQt6PcyvngA9zNl9XhDNllelQol8R2ov2GZ6mtaq351czcmwzOfoP+5+9I7sce7k
	L0Hviujt6M9XWXRlsGhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieXsT-00080b-LF; Tue, 10 Dec 2019 05:16:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieXs6-0007pz-2t; Tue, 10 Dec 2019 05:15:43 +0000
X-UUID: 22046493a3eb4b45aa3f04a5ad3bb38f-20191209
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Ely1YZpvhNjk+dbvsntQPD0NZpTuLQm46xCTloZtkzc=; 
 b=j0tv+qYBPFqlSoT1oPOlJa55agEFNxbAkZHJlgeR2yawZ5yDImSaMzm/s95EpJjclPkRIV9jn6zKY/ssetF9n9i47Sfl+QXbEymlpZa6s5rqdOivYjgA8OEVe+KzjhesyUWErF5iQ7aGwTMXNS117Gc3JS2Ej199xXXxOf66Plo=;
X-UUID: 22046493a3eb4b45aa3f04a5ad3bb38f-20191209
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1587432194; Mon, 09 Dec 2019 21:15:37 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 21:06:32 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 13:05:04 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Dec 2019 13:05:21 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v5 0/7] drm/mediatek: fix cursor issue and apply CMDQ in MTK
 DRM
Date: Tue, 10 Dec 2019 13:05:19 +0800
Message-ID: <20191210050526.4437-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_211542_135540_F479491E 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
(https://patchwork.kernel.org/cover/11255147/)
drm/mediatek: Check return value of mtk_drm_ddp_comp_for_plane
(https://lore.kernel.org/patchwork/patch/1154517/)

Changes since v4:
 - rebase to Linux 5.5-rc1
 - add fixes tag

Changes since v3:
 - remove redundant code and variable

Changes since v2:
 - move some changes to another patch
 - disable layer in atomic_disable()

Changes since v1:
 - remove redundant code
 - merge the duplicate code
 - use async instead of cursor

Changes since v0:
 - remove redundant code
 - remove patch
   "drm/mediatek: fix atomic_state reference counting"
   After remove this patch, the issue we met before is gone.
   So I do not add any extra code to do something.

Bibby Hsieh (7):
  drm/mediatek: use DRM core's atomic commit helper
  drm/mediatek: handle events when enabling/disabling crtc
  drm/mediatek: update cursors by using async atomic update
  drm/mediatek: disable all the planes in atomic_disable
  drm/mediatek: remove unused external function
  drm/mediatek: support CMDQ interface in ddp component
  drm/mediatek: apply CMDQ control flow

 drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  67 ++++----
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  43 ++---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 165 ++++++++++++++++----
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |   2 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 131 ++++++++++++----
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  47 +++---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c      |  86 +---------
 drivers/gpu/drm/mediatek/mtk_drm_drv.h      |   7 -
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  47 ++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.h    |   2 +
 11 files changed, 380 insertions(+), 224 deletions(-)

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
