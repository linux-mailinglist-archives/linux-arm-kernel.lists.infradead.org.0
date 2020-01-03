Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3223D12F356
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 04:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=maAV/75/PiKr//3kWPjce6i8FPYX7aRv6MdhoRwVmo8=; b=dUbJWRLvvKff3P
	hf9WFYGdNGllQcfJT0GjXYFZIO6Df4NxgiizS+kzV1n/4tBA1tWbZYYJygdaJ/kjYqnlzp4jRCTol
	Y0TciXhZWhf3KDBr4Rttz/Fq8obf5+l6zEg8gfAW0KZJziRFZt5tHnGJG2VDoX+TeL3VTwCRTG3Ns
	RfRsyw1BkqY99VZtdp6a7yhZmPRERHLHM2DqOr9/u8oQSnqBEl5aM850in9BgZOQuv4o6JB4MA2nj
	8H5OykVhZtmX04p9d6LfxpmAJG3xIJDJVIqr5t4GKTVOe9SRbyNaqh1aqyl6SXqBh4LRWSZY+yJ4w
	fXfwc98lKQD7Qg0B5eUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inDQ0-0004qo-SA; Fri, 03 Jan 2020 03:14:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inDON-0003Ei-1t; Fri, 03 Jan 2020 03:12:52 +0000
X-UUID: d000a9ff25be42bab383ee3dae315d71-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Y87Ghi2q7lqLcNdble/73yvTJNLbvfLPEvasR6g7eVc=; 
 b=n3S+s0MnR2PzbD/oV1gWA13W9jg4kjBv2fWHmwe2Q9MWn+YGvAqb+666qLHSGcSbnJcdvUa3Ia3jWTaP4hH7gRpKXRcZeJ7jB+AANQQeNu+57cpWmx7qFm+udWUo4hsXUGtLLoYww5zIrKmrBDv7M0DKtZpKHIsMkX+7MoDDVHs=;
X-UUID: d000a9ff25be42bab383ee3dae315d71-20200102
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 156878775; Thu, 02 Jan 2020 19:12:38 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 19:13:01 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 11:12:10 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 3 Jan 2020 11:13:03 +0800
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND PATCH v6 00/17] add drm support for MT8183
Date: Fri, 3 Jan 2020 11:12:11 +0800
Message-ID: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_191251_144201_65B7881E 
X-CRM114-Status: GOOD (  10.71  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series are based on 5.5-rc1 and provid 17 patch
to support mediatek SOC MT8183

Change since v5
- fix reviewed issue in v5
base https://patchwork.kernel.org/project/linux-mediatek/list/?series=213219

Change since v4
- fix reviewed issue in v4

Change since v3
- fix reviewed issue in v3
- fix type error in v3
- fix conflict with iommu patch

Change since v2
- fix reviewed issue in v2
- add mutex node into dts file

Changes since v1:
- fix reviewed issue in v1
- add dts for mt8183 display nodes
- adjust display clock control flow in patch 22
- add vmap support for mediatek drm in patch 23
- fix page offset issue for mmap function in patch 24
- enable allow_fb_modifiers for mediatek drm in patch 25

Yongqiang Niu (17):
  dt-bindings: mediatek: add rdma_fifo_size description for mt8183
    display
  arm64: dts: add display nodes for mt8183
  drm/mediatek: move dsi/dpi select input into mtk_ddp_sel_in
  drm/mediatek: make sout select function format same with select input
  drm/mediatek: add mmsys private data for ddp path config
  drm/mediatek: add private data for rdma1 to dpi0 connection
  drm/mediatek: add private data for rdma1 to dsi0 connection
  drm/mediatek: move rdma sout from mtk_ddp_mout_en into
    mtk_ddp_sout_sel
  drm/mediatek: add connection from OVL0 to OVL_2L0
  drm/mediatek: add connection from RDMA0 to COLOR0
  drm/mediatek: add connection from RDMA1 to DSI0
  drm/mediatek: add connection from OVL_2L0 to RDMA0
  drm/mediatek: add connection from OVL_2L1 to RDMA1
  drm/mediatek: add connection from DITHER0 to DSI0
  drm/mediatek: add connection from RDMA0 to DSI0
  drm/mediatek: add fifo_size into rdma private data
  drm/mediatek: add support for mediatek SOC MT8183

 .../bindings/display/mediatek/mediatek,disp.txt    |  13 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |  98 +++++++
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c            |  18 ++
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c           |  25 +-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c            |   4 +
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c             | 288 ++++++++++++++++-----
 drivers/gpu/drm/mediatek/mtk_drm_ddp.h             |   7 +
 drivers/gpu/drm/mediatek/mtk_drm_drv.c             |  49 ++++
 drivers/gpu/drm/mediatek/mtk_drm_drv.h             |   3 +
 9 files changed, 435 insertions(+), 70 deletions(-)

-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
