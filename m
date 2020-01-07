Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DFB13248E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:12:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oyZA2NeD3sACHCgyPOK+Sxs5b5133QZrofwbyZlw51Q=; b=nu63BMOCO8y1Q/
	Btlvext8QYFfp2d48/jblzjK+bOGBYVeS1Ip2BmnapBKEsOkQokOVAYv2db1faFXf0xCydqTJK2RV
	twKz8AnsyjC7vT0YKKhHUg5JQw21OTF2dUbBs/Up9RdpsDXSnikk9P8A9Eb5hraTXlE8+oN95tCsj
	6FMldPQU6V5Rrav1sXIOXFky9FxvDw2+kwmu/JS6Y/DKgTM3ZDy2y63j2B7zZSCT4V92uiCY9vMv1
	wFpLPoH1frhmY091PCqB8AR+pSF4m0aAPfQDE49uRES2PeKg3A8I76HR8LWo/djTaUoQ4shi+H5eQ
	fnlq4+80NNUt1RmDmeMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iommW-0006BF-78; Tue, 07 Jan 2020 11:12:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iommP-0006A6-Be; Tue, 07 Jan 2020 11:12:10 +0000
X-UUID: 2453bb36f4434bafa35227751ad50355-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WMr3UPnGITP5bTTnYXem67Bw3Z1PvUOBw2GrJkfKFx8=; 
 b=YwjgCSzJXVfLC99n7e4cqNA2MAxsJEgaIqsnetT4ZmqDb/cjlZSbLtLJhs43Ra2dI+kqo0a3iE1DAxWBN3QgL1hhf/oeZ0NEGC5lH2pcQcqrs1otIyQLNnEd6FM1Q3PnvH+pYPGDgANzAKiEfQhOTtMkenTM8Rvgj8r5FqSqwro=;
X-UUID: 2453bb36f4434bafa35227751ad50355-20200107
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1570949696; Tue, 07 Jan 2020 03:12:03 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 03:12:01 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 19:11:33 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 Jan 2020 19:10:53 +0800
Message-ID: <1578395459.19217.5.camel@mbjsdccf07>
Subject: Re: [PATCH v2 01/19] dt-bindings: mediatek: Add bindings for MT6779
From: chao hao <Chao.Hao@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Tue, 7 Jan 2020 19:10:59 +0800
In-Reply-To: <20200106215716.GA31059@bogus>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
 <20200105104523.31006-2-chao.hao@mediatek.com>
 <20200106215716.GA31059@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_031209_415762_FE6C1F96 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Cui Zhang <cui.zhang@mediatek.com>, Jun Yan <jun.yan@mediatek.com>,
 wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2020-01-06 at 15:57 -0600, Rob Herring wrote:
> On Sun, 5 Jan 2020 18:45:05 +0800, Chao Hao wrote:
> > This patch adds description for MT6779 IOMMU.
> > 
> > MT6779 has two iommus, they are MM_IOMMU and APU_IOMMU which
> > use ARM Short-Descriptor translation format.
> > 
> > The MT6779 IOMMU hardware diagram is as below, it is only a brief
> > diagram about iommu, it don't focus on the part of smi_larb, so
> > I don't describe the smi_larb detailedly.
> > 
> > 			     EMI
> > 			      |
> > 	   --------------------------------------
> > 	   |					|
> >         MM_IOMMU                            APU_IOMMU
> > 	   |					|
> >        SMI_COMMOM-----------		     APU_BUS
> >           |		   |			|
> >     SMI_LARB(0~11)  SMI_LARB12(FAKE)	    SMI_LARB13(FAKE)
> > 	  |		   |			|
> > 	  |		   |		   --------------
> > 	  |		   |		   |	 |	|
> >    Multimedia engine	  CCU		  VPU   MDLA   EMDA
> > 
> > All the connections are hardware fixed, software can not adjust it.
> > 
> > >From the diagram above, MM_IOMMU provides mapping for multimedia engine,
> > but CCU is connected with smi_common directly, we can take them as larb12.
> > APU_IOMMU provides mapping for APU engine, we can take them larb13.
> > Larb12 and Larb13 are fake larbs.
> > 
> > Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> > ---
> >  .../bindings/iommu/mediatek,iommu.txt         |   2 +
> >  include/dt-bindings/memory/mt6779-larb-port.h | 215 ++++++++++++++++++
> >  2 files changed, 217 insertions(+)
> >  create mode 100644 include/dt-bindings/memory/mt6779-larb-port.h
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

Hi Rob,

I am Sorry, this is my first time upstream and not clear for some
details, please forgive me for this mistake.
I put the changed explanation into cover letter([PATCH v2 00/19] MT6779
IOMMU SUPPORT) about this patch. I will pay attention to this problem in
next version.

Change since v1 for this patch
1.Delete M4U_PORT_UNKNOWN define because of not use it.
2.Correct coding format: ex: /*larb3-VENC*/  -->  /* larb3-VENC */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
