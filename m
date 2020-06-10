Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B181F4F4D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:39:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+tYD86myGXsC+49imrXrT+1VkzXcAJRgdCsxeNyCLU=; b=L4E+cZYOS9+ar2
	ob9c3V8K7F13eQQmlak1VDLbN/lJqiDAmiA/rdmQ/qx2za34aWA9+iyxUsfWhd/DfTi/WYz3EKGlk
	5dZmuSMx2oU5THBIgUHNzVrd3p/viARvgplfQ279PTUpZ9RtpcMutdV4ZtD7gfi3zAtzDzZyC2Rff
	pTCzg2lZLb2LCYgiWXY2vspAzGjjPk9grgERySkl2ctBlJSuFJ2nM71/jQMvtbaLV0IDMPRCQiGgY
	2mHO9xw7RVQ98BamvvYV2izDsOrfhJmoUTegn9ZGFcLrqeQnXTZQpz07duhws0vhvYB2rl/ISAB11
	wTEV5eRAo2dGnKBbwRJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivKB-0003Kz-LX; Wed, 10 Jun 2020 07:39:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivJk-0003Aw-VF; Wed, 10 Jun 2020 07:38:39 +0000
X-UUID: 3870a09a3b7e4ec2ba3e5ef16947e634-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Ra99Eu+wdfyk6Soso8ag8ilUd7xttL71qdj/oWcCkzo=; 
 b=b0WrZCfDOOsHHNmPOHAj8eHMelJQY1ihQXtKYtC9j4kW4IBR/jzWo0egBoy1Vq+TxAqgVg0m5asDjp0PtKO8a6H1F9f3RBApjqZD6BND/ijj19LClFfP8uIs3s0xCluHrqJeI88/ZiGVI1WxkASp4Rmf3zhm5vjKDFVbuQd25hs=;
X-UUID: 3870a09a3b7e4ec2ba3e5ef16947e634-20200609
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <tiffany.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1524447845; Tue, 09 Jun 2020 23:38:10 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 10 Jun 2020 00:38:28 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 10 Jun 2020 15:38:26 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 10 Jun 2020 15:38:25 +0800
Message-ID: <1591774707.21260.14.camel@mtksdaap41>
Subject: Re: [PATCH v4 01/17] media: dt-binding: mtk-vcodec: Separating
 mtk-vcodec encode node.
From: Tiffany Lin <tiffany.lin@mediatek.com>
To: Alexandre Courbot <acourbot@chromium.org>
Date: Wed, 10 Jun 2020 15:38:27 +0800
In-Reply-To: <CAPBb6MXdbEgWtOx_b5ab3hOTdyPPaGDQ2kA21pLjoLE-2sjuTg@mail.gmail.com>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
 <1590826218-23653-2-git-send-email-yong.wu@mediatek.com>
 <20200609212102.GA1416099@bogus>
 <CAPBb6MXdbEgWtOx_b5ab3hOTdyPPaGDQ2kA21pLjoLE-2sjuTg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_003837_234572_C9A3B43D 
X-CRM114-Status: GOOD (  24.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Maoguang Meng <maoguang.meng@mediatek.com>,
 Will Deacon <will.deacon@arm.com>, youlin.pei@mediatek.com,
 Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 Joerg Roedel <joro@8bytes.org>, Evan
 Green <evgreen@chromium.org>, eizan@chromium.org, Matthias
 Kaehlcke <mka@chromium.org>, Yong Wu <yong.wu@mediatek.com>,
 devicetree@vger.kernel.org, cui.zhang@mediatek.com,
 Irui Wang <irui.wang@mediatek.com>, Tomasz
 Figa <tfiga@google.com>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, anan.sun@mediatek.com,
 srv_heupstream@mediatek.com, LKML <linux-kernel@vger.kernel.org>,
 chao.hao@mediatek.com, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-10 at 15:46 +0900, Alexandre Courbot wrote:
> On Wed, Jun 10, 2020 at 6:21 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Sat, May 30, 2020 at 04:10:02PM +0800, Yong Wu wrote:
> > > From: Maoguang Meng <maoguang.meng@mediatek.com>
> > >
> > > Update binding document since the avc and vp8 hardware encoder in
> > > mt8173 are now separated. Separate "mediatek,mt8173-vcodec-enc" to
> > > "mediatek,mt8173-vcodec-vp8-enc" and "mediatek,mt8173-vcodec-avc-enc".
> >
> > The h/w suddenly split in 2? You are breaking compatibility. Up to the
> > Mediatek maintainers to decide if that's okay, but you need to state you
> > are breaking compatibility (here and in the driver) and why that is
> > okay.
> 
> In my understanding there is no real hardware using the old bindings
> at the moment, and the split is indeed a reflection of the actual
> hardware layout. Tiffany, can you give your acked-by if this change is
> ok with you?
> 

In my opinion, there is no need to change mt8173 dts for driver to
support mt8183.
I saw another patch that already make change to have encoder driver
support both mt8173 and mt8183.
But they done a lot to prove h264 and vp8 encoder could work
independently and parallel.
In this case, I am ok with it because dts should be a reflection of the
actual hardware.



> >
> > >
> > > This is a preparing patch for smi cleaning up "mediatek,larb".
> > >
> > > Signed-off-by: Maoguang Meng <maoguang.meng@mediatek.com>
> > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > Signed-off-by: Irui Wang <irui.wang@mediatek.com>
> > > Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> > > ---
> > >  .../devicetree/bindings/media/mediatek-vcodec.txt  | 58 ++++++++++++----------
> > >  1 file changed, 31 insertions(+), 27 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> > > index 8093335..1023740 100644
> > > --- a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> > > +++ b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
> > > @@ -4,7 +4,9 @@ Mediatek Video Codec is the video codec hw present in Mediatek SoCs which
> > >  supports high resolution encoding and decoding functionalities.
> > >
> > >  Required properties:
> > > -- compatible : "mediatek,mt8173-vcodec-enc" for MT8173 encoder
> > > +- compatible : must be one of the following string:
> > > +  "mediatek,mt8173-vcodec-vp8-enc" for mt8173 vp8 encoder.
> > > +  "mediatek,mt8173-vcodec-avc-enc" for mt8173 avc encoder.
> > >    "mediatek,mt8183-vcodec-enc" for MT8183 encoder.
> > >    "mediatek,mt8173-vcodec-dec" for MT8173 decoder.
> > >  - reg : Physical base address of the video codec registers and length of
> > > @@ -13,10 +15,11 @@ Required properties:
> > >  - mediatek,larb : must contain the local arbiters in the current Socs.
> > >  - clocks : list of clock specifiers, corresponding to entries in
> > >    the clock-names property.
> > > -- clock-names: encoder must contain "venc_sel_src", "venc_sel",,
> > > -  "venc_lt_sel_src", "venc_lt_sel", decoder must contain "vcodecpll",
> > > -  "univpll_d2", "clk_cci400_sel", "vdec_sel", "vdecpll", "vencpll",
> > > -  "venc_lt_sel", "vdec_bus_clk_src".
> > > +- clock-names:
> > > +   avc venc must contain "venc_sel";
> > > +   vp8 venc must contain "venc_lt_sel";
> > > +   decoder  must contain "vcodecpll", "univpll_d2", "clk_cci400_sel",
> > > +   "vdec_sel", "vdecpll", "vencpll", "venc_lt_sel", "vdec_bus_clk_src".
> > >  - iommus : should point to the respective IOMMU block with master port as
> > >    argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> > >    for details.
> > > @@ -80,14 +83,10 @@ vcodec_dec: vcodec@16000000 {
> > >      assigned-clock-rates = <0>, <0>, <0>, <1482000000>, <800000000>;
> > >    };
> > >
> > > -  vcodec_enc: vcodec@18002000 {
> > > -    compatible = "mediatek,mt8173-vcodec-enc";
> > > -    reg = <0 0x18002000 0 0x1000>,    /*VENC_SYS*/
> > > -          <0 0x19002000 0 0x1000>;    /*VENC_LT_SYS*/
> > > -    interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>,
> > > -              <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
> > > -    mediatek,larb = <&larb3>,
> > > -                 <&larb5>;
> > > +vcodec_enc: vcodec@18002000 {
> > > +    compatible = "mediatek,mt8173-vcodec-avc-enc";
> > > +    reg = <0 0x18002000 0 0x1000>;
> > > +    interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>;
> > >      iommus = <&iommu M4U_PORT_VENC_RCPU>,
> > >               <&iommu M4U_PORT_VENC_REC>,
> > >               <&iommu M4U_PORT_VENC_BSDMA>,
> > > @@ -98,8 +97,20 @@ vcodec_dec: vcodec@16000000 {
> > >               <&iommu M4U_PORT_VENC_REF_LUMA>,
> > >               <&iommu M4U_PORT_VENC_REF_CHROMA>,
> > >               <&iommu M4U_PORT_VENC_NBM_RDMA>,
> > > -             <&iommu M4U_PORT_VENC_NBM_WDMA>,
> > > -             <&iommu M4U_PORT_VENC_RCPU_SET2>,
> > > +             <&iommu M4U_PORT_VENC_NBM_WDMA>;
> > > +    mediatek,larb = <&larb3>;
> > > +    mediatek,vpu = <&vpu>;
> > > +    clocks = <&topckgen CLK_TOP_VENC_SEL>;
> > > +    clock-names = "venc_sel";
> > > +    assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>;
> > > +    assigned-clock-parents = <&topckgen CLK_TOP_VCODECPLL>;
> > > +  };
> > > +
> > > +vcodec_enc_lt: vcodec@19002000 {
> > > +    compatible = "mediatek,mt8173-vcodec-vp8-enc";
> > > +    reg =  <0 0x19002000 0 0x1000>;  /* VENC_LT_SYS */
> > > +    interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
> > > +    iommus = <&iommu M4U_PORT_VENC_RCPU_SET2>,
> > >               <&iommu M4U_PORT_VENC_REC_FRM_SET2>,
> > >               <&iommu M4U_PORT_VENC_BSDMA_SET2>,
> > >               <&iommu M4U_PORT_VENC_SV_COMA_SET2>,
> > > @@ -108,17 +119,10 @@ vcodec_dec: vcodec@16000000 {
> > >               <&iommu M4U_PORT_VENC_CUR_CHROMA_SET2>,
> > >               <&iommu M4U_PORT_VENC_REF_LUMA_SET2>,
> > >               <&iommu M4U_PORT_VENC_REC_CHROMA_SET2>;
> > > +    mediatek,larb = <&larb5>;
> > >      mediatek,vpu = <&vpu>;
> > > -    clocks = <&topckgen CLK_TOP_VENCPLL_D2>,
> > > -             <&topckgen CLK_TOP_VENC_SEL>,
> > > -             <&topckgen CLK_TOP_UNIVPLL1_D2>,
> > > -             <&topckgen CLK_TOP_VENC_LT_SEL>;
> > > -    clock-names = "venc_sel_src",
> > > -                  "venc_sel",
> > > -                  "venc_lt_sel_src",
> > > -                  "venc_lt_sel";
> > > -    assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>,
> > > -                      <&topckgen CLK_TOP_VENC_LT_SEL>;
> > > -    assigned-clock-parents = <&topckgen CLK_TOP_VENCPLL_D2>,
> > > -                             <&topckgen CLK_TOP_UNIVPLL1_D2>;
> > > +    clocks = <&topckgen CLK_TOP_VENC_LT_SEL>;
> > > +    clock-names = "venc_lt_sel";
> > > +    assigned-clocks = <&topckgen CLK_TOP_VENC_LT_SEL>;
> > > +    assigned-clock-parents = <&topckgen CLK_TOP_VCODECPLL_370P5>;
> > >    };
> > > --
> > > 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
