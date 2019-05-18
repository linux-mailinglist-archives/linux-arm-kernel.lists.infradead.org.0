Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3930322232
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 10:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kGxM+UeK25XD7fBccX95zKdCBt+HzDyFyeA4tXDIOQI=; b=KTq/5AdBRHg+pg
	mshEHdf7saOZqpXG3aJlMguP5OmPp8V+uoSCfwV2YJFhwM+1LFJfjd9kEo6bUKKJM0yO0efaTBcYV
	JVnS+gf2QImA1qFOXHiTzCgUnnsdMHYE9fWpHf7zu0jVRhYTqAgw53MCa5KbDNYtWCgEN4ZdP2wnG
	2+sBKwF4fmvLwbQI6CVywaai8TZadf0q0FWtsIfksK97mSl+t6Ea8TvLH5jYo+KPCLJSTm4R4s61a
	dHCfARMOIoNfAi3mqIe5uy8Kf5XFBqZ9UA2dwVemuvnITsoyQh2lK1UamdWIoB2S6/W9OHLre9L7H
	AFUegxa2JyHQe5K/3GYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRucB-0000Xl-TP; Sat, 18 May 2019 08:22:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRuc2-0000Vp-Gy; Sat, 18 May 2019 08:22:40 +0000
X-UUID: 97976c2946c949b68ae445b44c2b2ec7-20190518
X-UUID: 97976c2946c949b68ae445b44c2b2ec7-20190518
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 456678562; Sat, 18 May 2019 00:22:34 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 18 May 2019 01:22:33 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 18 May 2019 16:22:30 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sat, 18 May 2019 16:22:29 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, Kumar Gala <galak@codeaurora.org>,
 <linux-pwm@vger.kernel.org>, David Airlie <airlied@linux.ie>, Matthias
 Brugger <matthias.bgg@gmail.com>
Subject: [v3 0/3] Support mipitx on mt8183
Date: Sat, 18 May 2019 16:22:24 +0800
Message-ID: <20190518082227.14507-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_012238_575879_E8411897 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes since v2:
 - update Acked-by: Rob Herring <robh@kernel.org>
 - update mt8183 max bit rate support

Changes since v1:
 - update dt-bindings document for mt8183 mipitx.
 - remove mtk_mipitx_clk_get_ops and assign clk_ops in probe.
 - fix the lincence
 - remove txdiv1 from mtk_mipi_tx_pll_prepare

Jitao Shi (3):
  dt-bindings: display: mediatek: update dsi supported chips
  drm/mediatek: separate mipi_tx to different file
  drm/mediatek: add mipi_tx driver for mt8183

 .../display/mediatek/mediatek,dsi.txt         |   2 +-
 drivers/gpu/drm/mediatek/Makefile             |   2 +
 drivers/gpu/drm/mediatek/mtk_mipi_tx.c        | 344 ++----------------
 drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |  50 +++
 drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c | 289 +++++++++++++++
 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 160 ++++++++
 6 files changed, 527 insertions(+), 320 deletions(-)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mipi_tx.h
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8173_mipi_tx.c
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
