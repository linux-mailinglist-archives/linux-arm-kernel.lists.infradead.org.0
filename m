Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954F71E8F69
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 10:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hw49/ojMptzRSafGK66O8YQ053tRAenFm8NBVe/onEo=; b=ZYU8fI00/LiYj4
	7lVegVS9m8EKFKaNpnIzmfqQuCwAi1siZhsbTXlFQuLPIyky2vlMYj341Mk03KWfDFJx2SLcR0iyP
	12cOA/kzijW1qdXqB5TyMnf17+z18p+9NPuc1n6qzMQmr5/wpGssiOQmViaMhC1xCReBYJGOL24M3
	6tlMzmOUsKQuABRxHAXxUhqP3Q54NKn+B6oDbyzrhWGHdnjfUHOG9uJFaTbVaXe6ihYZowff7wevj
	ak/Z+ogZGJmO39iMucuoMt68OHapyRBz0h5TFMmw4KbI3pIQCRpYFXk1q7jR6imhMzI3pzQdi5W61
	D5byb1z4mIwslG7DzbBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jewbi-00051K-1C; Sat, 30 May 2020 08:12:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jewba-00050Z-Ly; Sat, 30 May 2020 08:12:36 +0000
X-UUID: 6f45c15c2e1c4224ad9f0942b23fcfc9-20200530
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=V8yQ0GxXRXQMXl/iXHArWIMs4HfP9plBlPfYP2LJor0=; 
 b=cxIr4GaEPMjVfBXN/wfzcG1r9RRPXSXNhlpW9fnLqATEEm2zOKK04MHNCZSXSC3NKhIAfEO4EfuMytDxRz1bSr2nNr2eH+aNgIr/E4tfN9ZwEGILehZZuI4Yys2oHpWsYfCeBOI5/7WGsrb2GoGkupDx5xru6nJTjU7rWgiu6cg=;
X-UUID: 6f45c15c2e1c4224ad9f0942b23fcfc9-20200530
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1829483864; Sat, 30 May 2020 00:12:18 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 01:12:21 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 16:12:18 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 30 May 2020 16:12:18 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 00/17] Clean up "mediatek,larb" after adding device_link
Date: Sat, 30 May 2020 16:10:01 +0800
Message-ID: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_011234_728912_A5B60518 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 eizan@chromium.org, srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, acourbot@chromium.org,
 linux-arm-kernel@lists.infradead.org
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

This patchset depends on v5.7-rc1 and several patchset. Mainly venc and MDP
adjust their flow, then this patchset can work successfully.

a) IOMMU depend on [1][2].
b) MDP depend on [3][4][5].
c) VENC depend on [6].

[1] iommu: Move iommu_group setup to IOMMU core code
   https://lore.kernel.org/linux-iommu/20200429133712.31431-1-joro@8bytes.org/
[2] iommu/mediatek-v1: Fix a build warning for a unused variable 'data'
   https://lore.kernel.org/linux-iommu/1589875064-662-1-git-send-email-yong.wu@mediatek.com/
[3] arm64: dts: mt8173: fix mdp aliases property name
   https://lore.kernel.org/linux-mediatek/20200414030815.192104-1-hsinyi@chromium.org/
[4] MTK MDP driver cleanups to prep for futher work
    https://lore.kernel.org/linux-mediatek/20200507102345.81849-1-eizan@chromium.org/
[5] Refactor MDP driver and add dummy component driver
    https://lore.kernel.org/linux-mediatek/20200506084039.249977-1-eizan@chromium.org/
[6] media: mtk-vcodec: venc: support for MT8183
    https://lore.kernel.org/linux-mediatek/20200520082723.96136-1-acourbot@chromium.org/

[1][2][3] have already been in lastest linux-next.

Change notes:

v4: base on v5.7-rc1.
  1) Move drm PM patch before smi patchs.
  2) Change builtin_platform_driver to module_platform_driver since we may need
     build as module.
  3) Rebase many patchset as above.

v3: https://lore.kernel.org/linux-iommu/1567503456-24725-1-git-send-email-yong.wu@mediatek.com/
    1) rebase on v5.3-rc1 and the latest mt8183 patchset.
    2) Use device_is_bound to check whether the driver is ready from Matthias.    
    3) Add DL_FLAG_STATELESS flag when calling device_link_add and explain the
   reason in the commit message[3/14].
    4) Add a display patch[12/14] into this series. otherwise it may affect
   display HW fastlogo even though it don't happen in mt8183.
   
v2: http://lists.infradead.org/pipermail/linux-mediatek/2019-June/020440.html
   1) rebase on v5.2-rc1.
   2) Move adding device_link between the consumer and smi-larb into
iommu_add_device from Robin.
   3) add DL_FLAG_AUTOREMOVE_CONSUMER even though the smi is built-in from Evan.
   4) Remove the shutdown callback in iommu.   

v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-January/032387.html

Irui Wang (1):
  arm64: dts: mt8173: Separate mtk-vcodec-enc node

Maoguang Meng (2):
  media: dt-binding: mtk-vcodec: Separating mtk-vcodec encode node.
  media: mtk-vcodec: separate mtk-vcodec-enc node.

Yong Wu (13):
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
  iommu/mediatek: Use module_platform_driver
  memory: mtk-smi: Use device_is_bound to check if smi-common is ready
  arm: dts: mediatek: Get rid of mediatek,larb for MM nodes
  arm64: dts: mediatek: Get rid of mediatek,larb for MM nodes

Yongqiang Niu (1):
  drm/mediatek: Add pm runtime support for ovl and rdma

 .../bindings/display/mediatek/mediatek,disp.txt    |   9 --
 .../bindings/media/mediatek-jpeg-decoder.txt       |   4 -
 .../devicetree/bindings/media/mediatek-mdp.txt     |   8 --
 .../devicetree/bindings/media/mediatek-vcodec.txt  |  58 +++++-----
 arch/arm/boot/dts/mt2701.dtsi                      |   1 -
 arch/arm/boot/dts/mt7623.dtsi                      |   1 -
 arch/arm64/boot/dts/mediatek/mt8173.dtsi           |  72 +++++-------
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c            |   9 +-
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c           |   9 +-
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c            |  19 +--
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c        |  21 +---
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h        |   2 +-
 drivers/iommu/mtk_iommu.c                          |  44 ++++---
 drivers/iommu/mtk_iommu_v1.c                       |  39 +++++--
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c    |  22 ----
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h    |   2 -
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.c      |  44 +------
 drivers/media/platform/mtk-mdp/mtk_mdp_comp.h      |   2 -
 drivers/media/platform/mtk-mdp/mtk_mdp_core.c      |   1 -
 .../media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c  |  19 ---
 drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h |  13 +--
 drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c |  24 +++-
 .../media/platform/mtk-vcodec/mtk_vcodec_enc_drv.c | 127 +++++++++------------
 .../media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c  |  56 ---------
 .../media/platform/mtk-vcodec/mtk_vcodec_enc_pm.h  |   1 -
 .../media/platform/mtk-vcodec/venc/venc_vp8_if.c   |   4 +-
 drivers/memory/mtk-smi.c                           |  41 +++----
 include/soc/mediatek/smi.h                         |  20 ----
 28 files changed, 246 insertions(+), 426 deletions(-)

-- 
1.9.1 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
