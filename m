Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF741279CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:13:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTNIHTTfRTuQx+NhQUaTXd/SBhdBxReh7LSdWsSC5so=; b=h6fY533X3DatC8
	1DFtp7qUtZkS597nF4mcAC42k0U7JSG6Qi5WXurDIf53etPdKv/ztrvP8kxCyaUD6QSAgCHelI6kg
	p5Pinzl1Utnj3lNlhpWYx6P09LKdqdTsbOEp9nroBu37yeJuPXGZbceB6V6UUL0g6DS3+ee2AEFsc
	/I6HO6FZ52UjlFdotew5+UZUgOc9mv3QJu3xp0exNy6yqub+KnSNEKLCO9bjInnghbzlNfcuOtCaQ
	EvOV6ix1nqLxiJ/0j3tIulsGEz/RoI4UQC9LHdPrB6DQ2p7X1N+rrjOMWxV8Isq8wt3VCFcefUB8o
	mMZ2HRIQNRk/yw+fFgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGDQ-0000Q2-Dn; Fri, 20 Dec 2019 11:13:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGDC-0000Ot-7z; Fri, 20 Dec 2019 11:12:51 +0000
X-UUID: d7e3bbc0fb044724a0c743edf5514638-20191220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Aatwr+ttc7zxtmKQFYI1z8gYIV9l40lZAUrGhcyY+f0=; 
 b=UTsoNvfMIUoGvvlSNUgB2UmObQmBJ+442yHczbdjBdYZu6Hfzn7Jwidyqp5HfgzNJVvgeU4yw1XXKYmpKq193HvZ206AuMWiLLyp7NpgqsAddrr3MZsb6y1O6TFzQo9gxaYMlCja/pZIFm0O/FfvcMYG4FxN0RWy9F4IpEJCTxY=;
X-UUID: d7e3bbc0fb044724a0c743edf5514638-20191220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1778191535; Fri, 20 Dec 2019 03:12:42 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 03:03:01 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 19:02:38 +0800
Received: from [10.15.20.246] (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 20 Dec 2019 19:01:43 +0800
Message-ID: <1576839713.20031.2.camel@mbjsdccf07>
Subject: Re: [RESEND,PATCH 01/13] dt-bindings: mediatek: Add bindings for
 MT6779
From: chao hao <Chao.Hao@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>
Date: Fri, 20 Dec 2019 19:01:53 +0800
In-Reply-To: <1576497901.28043.71.camel@mhfsdcap03>
References: <20191104115238.2394-1-chao.hao@mediatek.com>
 <20191104115238.2394-2-chao.hao@mediatek.com>
 <1576497901.28043.71.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CED2145DA5A5DB969C5A979274DE6004671E4E920E54B13366D6759B41D5A90B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_031250_298232_3B5C9C96 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Cui Zhang <cui.zhang@mediatek.com>, Jun Yan <jun.yan@mediatek.com>,
 wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Miles Chen <miles.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Guangming Cao <guangming.cao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-12-16 at 20:05 +0800, Yong Wu wrote:
> On Mon, 2019-11-04 at 19:52 +0800, Chao Hao wrote:
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
> > From the diagram above, MM_IOMMU provides mapping for multimedia engine,
> > but CCU is connected with smi_common directly, we can take them as larb12.
> > APU_IOMMU provides mapping for APU engine, we can take them larb13.
> > Larb12 and Larb13 are fake larbs.
> > 
> > Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> > ---
> >  .../bindings/iommu/mediatek,iommu.txt         |   2 +
> >  include/dt-bindings/memory/mt6779-larb-port.h | 217 ++++++++++++++++++
> >  2 files changed, 219 insertions(+)
> >  create mode 100644 include/dt-bindings/memory/mt6779-larb-port.h
> > 
> > diff --git a/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt b/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> > index ce59a505f5a4..c1ccd8582eb2 100644
> > --- a/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> > +++ b/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> > @@ -58,6 +58,7 @@ Required properties:
> >  - compatible : must be one of the following string:
> >  	"mediatek,mt2701-m4u" for mt2701 which uses generation one m4u HW.
> >  	"mediatek,mt2712-m4u" for mt2712 which uses generation two m4u HW.
> > +	"mediatek,mt6779-m4u" for mt6779 which uses generation two m4u HW.
> >  	"mediatek,mt7623-m4u", "mediatek,mt2701-m4u" for mt7623 which uses
> >  						     generation one m4u HW.
> >  	"mediatek,mt8173-m4u" for mt8173 which uses generation two m4u HW.
> > @@ -78,6 +79,7 @@ Required properties:
> >  	Specifies the mtk_m4u_id as defined in
> >  	dt-binding/memory/mt2701-larb-port.h for mt2701, mt7623
> >  	dt-binding/memory/mt2712-larb-port.h for mt2712,
> > +	dt-binding/memory/mt6779-larb-port.h for mt6779,
> >  	dt-binding/memory/mt8173-larb-port.h for mt8173, and
> >  	dt-binding/memory/mt8183-larb-port.h for mt8183.
> >  
> > diff --git a/include/dt-bindings/memory/mt6779-larb-port.h b/include/dt-bindings/memory/mt6779-larb-port.h
> > new file mode 100644
> > index 000000000000..8b7f2d2446ea
> > --- /dev/null
> > +++ b/include/dt-bindings/memory/mt6779-larb-port.h
> > @@ -0,0 +1,217 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * Copyright (c) 2019 MediaTek Inc.
> > + * Author: Chao Hao <chao.hao@mediatek.com>
> > + */
> > +
> > +#ifndef _DTS_IOMMU_PORT_MT6779_H_
> > +#define _DTS_IOMMU_PORT_MT6779_H_
> > +
> > +#define MTK_M4U_ID(larb, port)		 (((larb) << 5) | (port))
> > +
> > +#define M4U_LARB0_ID			 0
> > +#define M4U_LARB1_ID			 1
> > +#define M4U_LARB2_ID			 2
> > +#define M4U_LARB3_ID			 3
> > +#define M4U_LARB4_ID			 4
> > +#define M4U_LARB5_ID			 5
> > +#define M4U_LARB6_ID			 6
> > +#define M4U_LARB7_ID			 7
> > +#define M4U_LARB8_ID			 8
> > +#define M4U_LARB9_ID			 9
> > +#define M4U_LARB10_ID			 10
> > +#define M4U_LARB11_ID			 11
> > +#define M4U_LARB12_ID			 12
> > +#define M4U_LARB13_ID			 13
> > +
> > +/* larb0 */
> > +#define M4U_PORT_DISP_POSTMASK0		 MTK_M4U_ID(M4U_LARB0_ID, 0)
> > +#define M4U_PORT_DISP_OVL0_HDR		 MTK_M4U_ID(M4U_LARB0_ID, 1)
> > +#define M4U_PORT_DISP_OVL1_HDR		 MTK_M4U_ID(M4U_LARB0_ID, 2)
> > +#define M4U_PORT_DISP_OVL0		 MTK_M4U_ID(M4U_LARB0_ID, 3)
> > +#define M4U_PORT_DISP_OVL1		 MTK_M4U_ID(M4U_LARB0_ID, 4)
> > +#define M4U_PORT_DISP_PVRIC0		 MTK_M4U_ID(M4U_LARB0_ID, 5)
> > +#define M4U_PORT_DISP_RDMA0		 MTK_M4U_ID(M4U_LARB0_ID, 6)
> > +#define M4U_PORT_DISP_WDMA0		 MTK_M4U_ID(M4U_LARB0_ID, 7)
> > +#define M4U_PORT_DISP_FAKE0		 MTK_M4U_ID(M4U_LARB0_ID, 8)
> > +
> > +/* larb1 */
> > +#define M4U_PORT_DISP_OVL0_2L_HDR	 MTK_M4U_ID(M4U_LARB1_ID, 0)
> > +#define M4U_PORT_DISP_OVL1_2L_HDR	 MTK_M4U_ID(M4U_LARB1_ID, 1)
> > +#define M4U_PORT_DISP_OVL0_2L		 MTK_M4U_ID(M4U_LARB1_ID, 2)
> > +#define M4U_PORT_DISP_OVL1_2L		 MTK_M4U_ID(M4U_LARB1_ID, 3)
> > +#define M4U_PORT_DISP_RDMA1		 MTK_M4U_ID(M4U_LARB1_ID, 4)
> > +#define M4U_PORT_MDP_PVRIC0		 MTK_M4U_ID(M4U_LARB1_ID, 5)
> > +#define M4U_PORT_MDP_PVRIC1		 MTK_M4U_ID(M4U_LARB1_ID, 6)
> > +#define M4U_PORT_MDP_RDMA0		 MTK_M4U_ID(M4U_LARB1_ID, 7)
> > +#define M4U_PORT_MDP_RDMA1		 MTK_M4U_ID(M4U_LARB1_ID, 8)
> > +#define M4U_PORT_MDP_WROT0_R		 MTK_M4U_ID(M4U_LARB1_ID, 9)
> > +#define M4U_PORT_MDP_WROT0_W		 MTK_M4U_ID(M4U_LARB1_ID, 10)
> > +#define M4U_PORT_MDP_WROT1_R		 MTK_M4U_ID(M4U_LARB1_ID, 11)
> > +#define M4U_PORT_MDP_WROT1_W		 MTK_M4U_ID(M4U_LARB1_ID, 12)
> > +#define M4U_PORT_DISP_FAKE1		 MTK_M4U_ID(M4U_LARB1_ID, 13)
> > +
> > +/* larb2-VDEC */
> > +#define M4U_PORT_HW_VDEC_MC_EXT          MTK_M4U_ID(M4U_LARB2_ID, 0)
> > +#define M4U_PORT_HW_VDEC_UFO_EXT         MTK_M4U_ID(M4U_LARB2_ID, 1)
> > +#define M4U_PORT_HW_VDEC_PP_EXT          MTK_M4U_ID(M4U_LARB2_ID, 2)
> > +#define M4U_PORT_HW_VDEC_PRED_RD_EXT     MTK_M4U_ID(M4U_LARB2_ID, 3)
> > +#define M4U_PORT_HW_VDEC_PRED_WR_EXT     MTK_M4U_ID(M4U_LARB2_ID, 4)
> > +#define M4U_PORT_HW_VDEC_PPWRAP_EXT      MTK_M4U_ID(M4U_LARB2_ID, 5)
> > +#define M4U_PORT_HW_VDEC_TILE_EXT        MTK_M4U_ID(M4U_LARB2_ID, 6)
> > +#define M4U_PORT_HW_VDEC_VLD_EXT         MTK_M4U_ID(M4U_LARB2_ID, 7)
> > +#define M4U_PORT_HW_VDEC_VLD2_EXT        MTK_M4U_ID(M4U_LARB2_ID, 8)
> > +#define M4U_PORT_HW_VDEC_AVC_MV_EXT      MTK_M4U_ID(M4U_LARB2_ID, 9)
> > +#define M4U_PORT_HW_VDEC_UFO_ENC_EXT     MTK_M4U_ID(M4U_LARB2_ID, 10)
> > +#define M4U_PORT_HW_VDEC_RG_CTRL_DMA_EXT MTK_M4U_ID(M4U_LARB2_ID, 11)
> > +
> > +/*larb3-VENC*/
> 
> Normally add space before and after the word. Like: /* larb3-VENC */
> 
> below are the same.
> 
> > +#define M4U_PORT_VENC_RCPU		 MTK_M4U_ID(M4U_LARB3_ID, 0)
> > +#define M4U_PORT_VENC_REC		 MTK_M4U_ID(M4U_LARB3_ID, 1)
> > +#define M4U_PORT_VENC_BSDMA		 MTK_M4U_ID(M4U_LARB3_ID, 2)
> > +#define M4U_PORT_VENC_SV_COMV		 MTK_M4U_ID(M4U_LARB3_ID, 3)
> > +#define M4U_PORT_VENC_RD_COMV		 MTK_M4U_ID(M4U_LARB3_ID, 4)
> > +#define M4U_PORT_VENC_NBM_RDMA		 MTK_M4U_ID(M4U_LARB3_ID, 5)
> > +#define M4U_PORT_VENC_NBM_RDMA_LITE	 MTK_M4U_ID(M4U_LARB3_ID, 6)
> > +#define M4U_PORT_JPGENC_Y_RDMA		 MTK_M4U_ID(M4U_LARB3_ID, 7)
> > +#define M4U_PORT_JPGENC_C_RDMA		 MTK_M4U_ID(M4U_LARB3_ID, 8)
> > +#define M4U_PORT_JPGENC_Q_TABLE		 MTK_M4U_ID(M4U_LARB3_ID, 9)
> > +#define M4U_PORT_JPGENC_BSDMA		 MTK_M4U_ID(M4U_LARB3_ID, 10)
> > +#define M4U_PORT_JPGDEC_WDMA		 MTK_M4U_ID(M4U_LARB3_ID, 11)
> > +#define M4U_PORT_JPGDEC_BSDMA		 MTK_M4U_ID(M4U_LARB3_ID, 12)
> > +#define M4U_PORT_VENC_NBM_WDMA		 MTK_M4U_ID(M4U_LARB3_ID, 13)
> > +#define M4U_PORT_VENC_NBM_WDMA_LITE	 MTK_M4U_ID(M4U_LARB3_ID, 14)
> > +#define M4U_PORT_VENC_CUR_LUMA		 MTK_M4U_ID(M4U_LARB3_ID, 15)
> > +#define M4U_PORT_VENC_CUR_CHROMA	 MTK_M4U_ID(M4U_LARB3_ID, 16)
> > +#define M4U_PORT_VENC_REF_LUMA		 MTK_M4U_ID(M4U_LARB3_ID, 17)
> > +#define M4U_PORT_VENC_REF_CHROMA	 MTK_M4U_ID(M4U_LARB3_ID, 18)
> > +
> > +/*larb4-dummy*/
> > +
> > +/*larb5-IMG*/
> 
> [snip]
> 
> > +
> > +#define M4U_PORT_VPU			 MTK_M4U_ID(M4U_LARB13_ID, 0)
> > +#define M4U_PORT_MDLA			 MTK_M4U_ID(M4U_LARB13_ID, 1)
> > +#define M4U_PORT_EDMA			 MTK_M4U_ID(M4U_LARB13_ID, 2)
> > +
> > +#define M4U_PORT_UNKNOWN		 (M4U_PORT_EDMA + 1)
> 
> When do you need this UNKNOWN one? The other SoC doesn't have it. Please
> remove if it is unnecessary.
> 
ok, I will fix it in next version, thanks

> > +
> > +#endif
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
