Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6104EDF66
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 12:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VRpykrXdME7Cvw0PhEDZwl2R0gJzt+lFaJPRabRkMII=; b=VyAlpbdnitcaft
	V9/SydEJ0aj4n4Nxk8u1wg1dnZNH9aBZp2Y0kWShYYylyYg0j17WOj8+mpWDRBWlLJ4o9r9LWVN7z
	jFAMs4teEnECS0/TsjQklXqeiZJkh/nBegLegilq83w2O8wur857bfEQTePUiZL4ppI2NvzkPYwPW
	9pO5r2eL6itZrgwQINQh6Pr8RklfE3X/CJI2EzZJCV8Z+3Cl+Mgn+0jliQNBojeSy5lhIA3Oc2ACE
	mLGUrf2lmkBgJ4qPq+a4ZOZ1hpoDSJNNIQ7kUOUj2QYAKB6YIab6bpDOtiJw0wADNRmbvple9LPfI
	I+QmONvgW0kX6zboyOdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRb0E-0003Xn-1W; Mon, 04 Nov 2019 11:58:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRawG-0007LR-Or; Mon, 04 Nov 2019 11:54:31 +0000
X-UUID: cf8fd8b6a1a84d5fb2dc3bc72124570f-20191104
X-UUID: cf8fd8b6a1a84d5fb2dc3bc72124570f-20191104
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 923489357; Mon, 04 Nov 2019 03:54:27 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 03:52:34 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 4 Nov 2019 19:52:35 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 4 Nov 2019 19:52:31 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [RESEND,PATCH 00/13] MT6779 IOMMU SUPPORT
Date: Mon, 4 Nov 2019 19:52:25 +0800
Message-ID: <20191104115238.2394-1-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_035428_903670_39FDE61C 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Cui Zhang <cui.zhang@mediatek.com>, Jun Yan <jun.yan@mediatek.com>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 Miles Chen <miles.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Guangming Cao <guangming.cao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I am sorry that previous patchset(2019/10/28) has a problem with e-mail format, some websites don't recevied it,
so please based on this patchset to review, thanks!

This patchset adds mt6779 iommu support and adjusts mtk iommu software architecture mainly.
1. Add mt6779 basic function, such as smi_larb port define, registers define and so on.
2. In addition, this patchset will adjust current mtk iommu SW architecture mainly to adapt all the mtk platforms:
   Firstly, mt6779 iommu can support more HW modules, but some modules have special requirements for iova region,
   for example, CCU only can access 0x4000_0000~0x47ff_ffff, VPU only can access 0x7da0_0000~0x7fbf_ffff. Current
   architecture only support one iommu domain(include 0~4GB), all the modules allocate iova from 0~4GB region, so
   it doesn't ensure to allocate expected iova region for special module(CCU and VPU). In order to resolve the problem,
   we will create different iommu domains for special module, and every domain can include iova region which module
   needs.
   Secondly, all the iommus share one page table for current architecture by "mtk_iommu_get_m4u_data", to make the
   architecture look clearly, we will create a global page table firstly(mtk_iommu_pgtable), and all the iommus can
   use it. One page table can include 4GB iova space, so multiple iommu domains are created based on the same page
   table. New SW architecture diagram is as below:

                          iommu0   iommu1
                             |        |
                             ----------
                                  |
                         mtk_iommu_pgtable
                                  |
             ------------------------------------------
             |                    |                   |
       mtk_iommu_domain1   mtk_iommu_domain2   mtk_iommu_domain3
             |                    |                   |
        iommu_group1         iommu_group2        iommu_group3
             |                    |                   |
        iommu_domain1       iommu_domain2        iommu_domain3
             |                    |                   |
      iova region1(normal)  iova region2(CCU)   iova region3(VPU)

This patchset depends on "Improve tlb range flush"[1] and based on v5.4-rc1.
[1]http://lists.infradead.org/pipermail/linux-mediatek/2019-October/024207.html

Chao Hao (13):
  dt-bindings: mediatek: Add bindings for MT6779
  iommu/mediatek: Add mt6779 IOMMU basic support
  iommu/mediatek: Add mtk_iommu_pgtable structure
  iommu/mediatek: Remove mtk_iommu_domain_finalise
  iommu/mediatek: Remove pgtable info in mtk_iommu_domain
  iommu/mediatek: Change get the way of m4u_group
  iommu/mediatek: Add smi_larb info about device
  iommu/mediatek: Add mtk_domain_data structure
  iommu/mediatek: Remove the usage of m4u_dom variable
  iommu/mediatek: Remove mtk_iommu_get_m4u_data api
  iommu/mediatek: Add iova reserved function
  iommu/mediatek: Change single domain to multiple domains
  iommu/mediatek: Add multiple mtk_iommu_domain support for mt6779

 .../bindings/iommu/mediatek,iommu.txt         |   2 +
 drivers/iommu/mtk_iommu.c                     | 488 +++++++++++++++---
 drivers/iommu/mtk_iommu.h                     |  50 +-
 include/dt-bindings/memory/mt6779-larb-port.h | 217 ++++++++
 4 files changed, 685 insertions(+), 72 deletions(-)

--
2.18.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
