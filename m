Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1284A57DDC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 10:04:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H53TZ41WXuuyg812E48ExnhY7N0eatwwaESHRMhlDuI=; b=S6ddG2YAfOvxYc
	sYZnle/k7ncJxoxdfb6lbgiGsPqlEeuckGpEgfoCS/qwv9SNLIBeicM/7ZjewVrznjplhKBZ2Wpsp
	8fpFojKMQ8W2fXKQhC+JZ1SCTRv/1FqmMHclR7FQpIEdPcnquhjC0ghensa0vuZ4iQEPpz0xY/t+6
	qweYZWjmWdcetIAmjI5bnoQedN3+6DnMafkX/idDp9qSHHj/Pq2BraeONf7yHZnf7zWUYKbgBjBco
	3WvIPJ0JfpntiREZy64oEYgFEzX9D0sHgL/XkrBaNY+ytg7JE+E6UKDHS5cb4vQpjg10Q2Q5e7RPP
	A+/boSW2FkHw3f/Uvm6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPOk-0008Fv-6I; Thu, 27 Jun 2019 08:04:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPMw-00071D-Lx; Thu, 27 Jun 2019 08:03:00 +0000
X-UUID: 78903081d62d4ce1bcd4038c950ace92-20190627
X-UUID: 78903081d62d4ce1bcd4038c950ace92-20190627
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1576000544; Thu, 27 Jun 2019 00:01:39 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Jun 2019 01:01:38 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 27 Jun 2019 16:01:19 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Thu, 27 Jun 2019 16:01:17 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [v5 0/7] Support dsi for mt8183
Date: Thu, 27 Jun 2019 16:01:08 +0800
Message-ID: <20190627080116.40264-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_010258_761372_B697E756 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Change since v4:
 - move mipi_dsi_host_unregiter() to .remove()
 - fine tune add frame size control coding style
 - change the data type of data_rate as u32, and add DIV_ROUND_UP_ULL
 - use div_u64 when 8000000000ULL / dsi->data_rate.

Changes since v3
 - add one more 'tab' for bitwise define.
 - add Tested-by: Ryan Case <ryandcase@chromium.org>
	and Reviewed-by: CK Hu <ck.hu@mediatek.com>.
 - remove compare da_hs_zero to da_hs_prepare.

Changes since v2:
 - change the video timing calc method
 - fine the dsi and mipitx init sequence
 - fine tune commit msg

Changes since v1:
 - separate frame size and reg commit control independent patches.
 - fix some return values in probe
 - remove DSI_CMDW0 in "CMDQ reg address of mt8173 is different with mt2701" 

Jitao Shi (7):
  drm/mediatek: move mipi_dsi_host_register to probe
  drm/mediatek: fixes CMDQ reg address of mt8173 is different with
    mt2701
  drm/mediatek: add dsi reg commit disable control
  drm/mediatek: add frame size control
  drm/mediatek: add mt8183 dsi driver support
  drm/mediatek: change the dsi phytiming calculate method
  drm: mediatek: adjust dsi and mipi_tx probe sequence

 drivers/gpu/drm/mediatek/mtk_drm_drv.c |   2 +-
 drivers/gpu/drm/mediatek/mtk_dsi.c     | 223 ++++++++++++++++++-------
 2 files changed, 160 insertions(+), 65 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
