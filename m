Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6331F89151
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 12:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UNUGqJ0KYaotrpfXMXxb6yZni2i/16d7QgDzg530nRY=; b=chdwOCuJjTdjSP
	Bc0IbUlfG3YFV84PsewvXn/kSEhvJV6iEui9LtSbp1ct4xSvuhED8FT/w7e3nhb7O3br+5wJaV4dr
	LKSmrmDqY5Yeypbjo3qUbYvWI8+Nw1tXqFi8yfXiN+lgXdw/2jSLdpPP2nmvE8iRBc/zRbof0cUMf
	fQsC5FUEUOty/HC5rGlvEbkK65xtX6T1FoOxF42+3hYmd73NjytV3k7wW7DLo5GFXU3yc3eiogTzg
	AiVhbDX7+uc0TddxB+L336ixwq9lztc+2Vhj3Zv477BGT6VicnAlpU4gbOchJ9GQFKwzzQi6j0SWc
	m6PP50BmsHTcfNYuJXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwlHQ-00038L-Fl; Sun, 11 Aug 2019 10:40:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwlHI-00036Y-DT; Sun, 11 Aug 2019 10:40:46 +0000
X-UUID: d536d8f0c5154c1fb0649654b64c943f-20190811
X-UUID: d536d8f0c5154c1fb0649654b64c943f-20190811
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1757315547; Sun, 11 Aug 2019 02:40:30 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 11 Aug 2019 03:40:28 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 11 Aug 2019 18:40:22 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sun, 11 Aug 2019 18:40:21 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v6 0/7] Support dsi for mt8183
Date: Sun, 11 Aug 2019 18:40:01 +0800
Message-ID: <20190811104008.53372-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24840.000
X-TM-AS-Result: No-5.718800-8.000000-10
X-TMASE-MatchedRID: PCFkxA7eE66hZP7w7B20aBIRh9wkXSlFNV9S7O+u3KadzjX37VUcWqEG
 Khm9baaNNopdIl2CpsDdUKRFRakaQnimQCA94R1WLbjXqdzdtCX3/H7adAffkmu9/l5WAy7sO9Z
 u2UZqoB4haUDpkJbehghuCIQJ30DP0Gz/Cfu4aZIaLqFbxdotGfG6GRFYrbYYHWtVZN0asTiBE9
 XLgD84RgQiZjW65EMBAdXPD0156qGvvxILmKK/HBRFJJyf5BJe3QfwsVk0UbtuRXh7bFKB7pXkZ
 x4nnABf5ZwGcBkyiq7xZlyRTC5yty9XGqRRih6PS4W/MRhJ1X4=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.718800-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24840.000
X-TM-SNTS-SMTP: F80B6B3FC6BAC26A8837D7BF87385F3155E757CEC496A3054F68F3063D8FE6672000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_034044_477053_AF9FCAE2 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Change since v5:
 - fine tune dphy timing.

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
 drivers/gpu/drm/mediatek/mtk_dsi.c     | 224 ++++++++++++++++++-------
 2 files changed, 161 insertions(+), 65 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
