Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597013B54F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:56:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i1lzMLK17h23gIbwQqaBdA2S4IO82Pl9RLeAqUcMdj4=; b=WQbedjk3T5Nks5
	60gKvg27c6Yv/MhejQbB0RepwIlGFgJwoyxXcwjw3KVcZvkfwvYkNyoTUcS26hjCBZ1L/JEVWGb/z
	VqoptmpOxWr+aNWHY+hiLkE0DgnVDKoIgyl7lXTyYbEpDtcb0rx08yYfEsXol/ZQ/hpuH9RNHG7Qz
	zdba3+Jg4inodZah47x3D3zDNyLmYHSW1Hw6NYL9dFzWkDdFuHaj58H2CVffYntA3QG2SiWN0jOJs
	iLI0qch7y9LORvrMTorxgXkFgQ+Ol5f2sA+/5S8k1Xfl1qh2a+z+PiUv8awun9C/Z8zNK9sz4GsM5
	7wzY/bwuAj5SiiZ2kFIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJq9-0002k8-1x; Mon, 10 Jun 2019 12:55:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJpn-0002gH-VM; Mon, 10 Jun 2019 12:55:40 +0000
X-UUID: 62173a01d62648b68a3329e12dee5574-20190610
X-UUID: 62173a01d62648b68a3329e12dee5574-20190610
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 135762632; Mon, 10 Jun 2019 04:55:31 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:55:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:55:29 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:55:28 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 00/12] Clean up "mediatek,larb" after adding device_link
Date: Mon, 10 Jun 2019 20:55:01 +0800
Message-ID: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_055536_022107_6264DDE4 
X-CRM114-Status: UNSURE (   9.97  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MediaTek IOMMU block diagram always like below:

        M4U
         |
    smi-common
         |
  -------------
  |         |  ...
  |         |
larb1     larb2
  |         |
vdec       venc

All the consumer connect with smi-larb, then connect with smi-common.

MediaTek IOMMU don't have its power-domain. When the consumer works,
it should enable the smi-larb's power which also need enable the smi-common's
power firstly.

Thus, Firstly, use the device link connect the consumer and the
smi-larbs. then add device link between the smi-larb and smi-common.

After adding the device_link, then "mediatek,larb" property can be removed.
the iommu consumer don't need call the mtk_smi_larb_get/put to enable
the power and clock of smi-larb and smi-common.

This patchset depends on "MT8183 IOMMU SUPPORT"[1].

[1] https://lists.linuxfoundation.org/pipermail/iommu/2019-June/036552.html

Change notes:
v2:
   1) rebase on v5.2-rc1.
   2) Move adding device_link between the consumer and smi-larb into
iommu_add_device from Robin.
   3) add DL_FLAG_AUTOREMOVE_CONSUMER even though the smi is built-in from Evan.
   4) Remove the shutdown callback in iommu.   

v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-January/032387.html

Yong Wu (12):
  dt-binding: mediatek: Get rid of mediatek,larb for multimedia HW
  iommu/mediatek: Add probe_defer for smi-larb
  iommu/mediatek: Add device_link between the consumer and the larb
    devices
  memory: mtk-smi: Add device-link between smi-larb and smi-common
  media: mtk-jpeg: Get rid of mtk_smi_larb_get/put
  media: mtk-mdp: Get rid of mtk_smi_larb_get/put
  media: mtk-vcodec: Get rid of mtk_smi_larb_get/put
  drm/mediatek: Get rid of mtk_smi_larb_get/put
  memory: mtk-smi: Get rid of mtk_smi_larb_get/put
  iommu/mediatek: Use builtin_platform_driver
  arm: dts: mediatek: Get rid of mediatek,larb for MM nodes
  arm64: dts: mediatek: Get rid of mediatek,larb for MM nodes

 .../bindings/display/mediatek/mediatek,disp.txt    |  9 -----
 .../bindings/media/mediatek-jpeg-decoder.txt       |  4 --
 .../devicetree/bindings/media/mediatek-mdp.txt     |  8 ----
 .../devicetree/bindings/media/mediatek-vcodec.txt  |  4 --
 arch/arm/boot/dts/mt2701.dtsi                      |  1 -
 arch/arm/boot/dts/mt7623.dtsi                      |  1 -
 arch/arm64/boot/dts/mediatek/mt8173.dtsi           | 15 -------
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c            | 11 -----
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c        | 26 ------------
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h        |  1 -
 drivers/iommu/mtk_iommu.c                          | 45 +++++++--------------
 drivers/iommu/mtk_iommu_v1.c                       | 39 +++++++-----------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c    | 22 ----------
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h    |  2 -
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c      | 38 -----------------
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h      |  2 -
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c      |  1 -
 .../media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c  | 21 ----------
 drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h |  3 --
 drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c |  1 -
 .../media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c  | 47 ----------------------
 drivers/memory/mtk-smi.c                           | 31 ++++----------
 include/soc/mediatek/smi.h                         | 20 ---------
 23 files changed, 36 insertions(+), 316 deletions(-)

-- 
1.9.1 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
