Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D21130733
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 11:47:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nBLx6JUOGjGrn7yFnuVs729MTfOdu0MyzfjLQQws5CU=; b=cXEbrMah0aMP65
	Dz2ulAod81CWq8CU7nNmy2025X6nXBz4fpc9SQznlzs80F1zg4W59WHTWerRTu+oQkiK5EqIG/Zdz
	QRe5Gh5/+l/akq4hVrXvHkYMP8FfnhOw5PVqNbNQm4dQsKGJYIkMfx+yw7VfrQ0vau7HDfbLd5w/v
	CEAt78nBEutX4YetlKfiJeTZ6y1UzBgFyb+KfFOL0RawOS4cgFfLG5nDDr9DfguUACVAtSjjA2N2e
	ynQJL8FFaQSzQqJd4q278SrJHbeOyvW5ok2U7EZ8Xodi/0xNsvwwvQx6tMxwnLVHseQM4eqq7XEB7
	Eet+Ro+c0s/+guhdLaOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3R0-00008z-TA; Sun, 05 Jan 2020 10:47:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3Qb-0008Rs-Fe; Sun, 05 Jan 2020 10:46:40 +0000
X-UUID: 4c2f27ff799c4e09abf7c00a8b2d19af-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=lA5PzyXuyizUyRDDlXySD7ztXLzdwWD6WEfL0quguyU=; 
 b=HHLi2PYBBcwxhcMDxTY4DWHgLRp73zYcGBUpCWH5jq0Il7+4y0ad0Gnubn00kHyCGEio7urgihAo4WfvP0bwTmgpZdIBiUuD+fWjKyeX14DRf+saGMXwRQmnmjR+A9s3v/PF3trUJmWsa6hNy3lUor7PpKhcIbRlTFXHx0COXu0=;
X-UUID: 4c2f27ff799c4e09abf7c00a8b2d19af-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 164975596; Sun, 05 Jan 2020 02:46:27 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:46:27 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:00 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:44:56 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 00/19] MT6779 IOMMU SUPPORT
Date: Sun, 5 Jan 2020 18:45:04 +0800
Message-ID: <20200105104523.31006-1-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_024637_530848_B1143EE5 
X-CRM114-Status: UNSURE (   8.22  )
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Jun Yan <jun.yan@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, Cui Zhang <zhang.cui@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This patchset adds mt6779 iommu support and adjusts mtk iommu software architecture mainly.
1. Add mt6779 basic function, such as smi_larb port define, registers define and so on.
2. In addition, this patchset will adjust current mtk iommu SW architecture mainly to adapt all the mtk platforms:
   Firstly, mt6779 iommu can support more HW modules, but some modules have special requirements for iova region,
   for example, CCU only can access 0x4000_0000~0x47ff_ffff, VPU only can access 0x7da0_0000~0x7fbf_ffff. Current
   architecture only support one iommu domain(include 0~4GB), all the modules allocate iova from 0~4GB region, so
   it doesn't ensure to allocate expected iova region for special module(CCU and VPU). In order to resolve the problem,
   we will create different iommu domains for special module, and every domain can include iova region which module needs.
   Secondly, all the iommus share one page table for current architecture by "mtk_iommu_get_m4u_data", to make the
   architecture look clearly, we will create a global page table firstly(mtk_iommu_pgtable), and all the iommus can
   use it. One page table can include 4GB iova space, so multiple iommu domains are created based on the same page table.
   New SW architecture diagram is as below:

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

change notes:
 v2:
  1. Rebase on v5.5-rc1.
  2. Delete M4U_PORT_UNKNOWN define because of not use it.
  3. Correct coding format.
  4. Rename offset=0x48 register.
  5. Split "iommu/mediatek: Add mt6779 IOMMU basic support(patch v1)" to several patches(patch v2).

 v1:
  http://lists.infradead.org/pipermail/linux-mediatek/2019-November/024567.html


 Chao Hao (19):
   dt-bindings: mediatek: Add bindings for MT6779
   iommu/mediatek: Add m4u1_mask to distinguish m4u_id
   iommu/mediatek: Extend larb_remap to larb_remap[2]
   iommu/mediatek: Rename offset=0x48 register
   iommu/mediatek: Put inv_sel_reg in the plat_data for preparing add
                   0x2c support in mt6779
   iommu/mediatek: Add new flow to get SUB_COMMON ID in translation fault
   iommu/mediatek: Add REG_MMU_WR_LEN reg define prepare for mt6779
   iommu/mediatek: Add mt6779 basic support
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
  drivers/iommu/mtk_iommu.c                     | 493 +++++++++++++++---
  drivers/iommu/mtk_iommu.h                     |  50 +-
  include/dt-bindings/memory/mt6779-larb-port.h | 215 ++++++++
  4 files changed, 683 insertions(+), 77 deletions(-)

 --
 2.18.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
