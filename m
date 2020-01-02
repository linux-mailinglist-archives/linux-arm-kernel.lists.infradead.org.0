Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0079612E2D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 06:44:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cmw8h5msFPdEIgHdk+0j2XpfVFXoGi1fhknSAuwRH38=; b=GWrB80FswIfQ92
	YpsXfQl7mAYFvgVsUpfuXSx1KlMr6WMlCeKFeVS+YYt0GWG769m4Jkfs+NOwF80bQ20GoTyLpIB1j
	uf2/KjKO0f9NuIIjgb7CUHF8J+v8n25cEk6N760ATgPGqOqgkkEajWLRQwLpM4Uy0gckUMDXdqcqP
	H16lAD+2Sn2Zm+uSWQuYhMF0oHOvNVg1vV4XzkzOsHuz00M3UumG0IVq1QJC7Wc5bX7y9BdUuBMfN
	MGqRcbRcE7Kviqc6DsF3f1+vaOlRF3TVc4i19QtKW//Bbp08EymP3OlpY3tFxMXgklwwypY9m+ECu
	XGEt7LO3bgBfVLYqzQiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imtHa-0007ar-HX; Thu, 02 Jan 2020 05:44:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imtHS-0007a5-Sr; Thu, 02 Jan 2020 05:44:24 +0000
X-UUID: cc5db3a269df453db28b256d03004054-20200101
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:Reply-To:From:Subject:Message-ID;
 bh=vyS7IWI4BRwbY7rXWub/fMYSKrH1gB0wk72YU/M9xPs=; 
 b=BwOVawKJjLDFPQgtOkgL/FOx+/WcyOn05f6M9bRIG9sdJ+CJLapfPiCbcvWMg8G+xgeSBHX0gszHgNsKZ3mGsR0oKKTHYk+AWP3DzXRvBsjd4QXnMd35Nw2XrJW9a3AETxJuYJsr1mvMtMG+h7N6o/r+fiR8b1fWEfcfSeKQ8SI=;
X-UUID: cc5db3a269df453db28b256d03004054-20200101
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 382314809; Wed, 01 Jan 2020 21:44:19 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Jan 2020 21:44:38 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs05n2.mediatek.inc
 (172.21.101.140) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 2 Jan 2020 13:43:46 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 Jan 2020 13:44:40 +0800
Message-ID: <1577943764.15116.3.camel@mhfsdcap03>
Subject: Re: [PATCH v6, 13/14] drm/mediatek: add fifo_size into rdma private
 data
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 2 Jan 2020 13:42:44 +0800
In-Reply-To: <1577942440.24650.5.camel@mtksdaap41>
References: <1577937624-14313-1-git-send-email-yongqiang.niu@mediatek.com>
 <1577937624-14313-14-git-send-email-yongqiang.niu@mediatek.com>
 <1577942440.24650.5.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_214422_940233_85F990E5 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reply-To: Yongqiang Niu <yongqiang.niu@mediatek.com>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-01-02 at 13:20 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Thu, 2020-01-02 at 12:00 +0800, Yongqiang Niu wrote:
> > the fifo size of rdma in mt8183 is different.
> > rdma0 fifo size is 5k
> > rdma1 fifo size is 2k
> > 
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_disp_rdma.c | 21 ++++++++++++++++++++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> > index 405afef..691480b 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> > @@ -62,6 +62,7 @@ struct mtk_disp_rdma {
> >  	struct mtk_ddp_comp		ddp_comp;
> >  	struct drm_crtc			*crtc;
> >  	const struct mtk_disp_rdma_data	*data;
> > +	u32				fifo_size;
> >  };
> >  
> >  static inline struct mtk_disp_rdma *comp_to_rdma(struct mtk_ddp_comp *comp)
> > @@ -130,10 +131,16 @@ static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
> >  	unsigned int threshold;
> >  	unsigned int reg;
> >  	struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
> > +	u32 rdma_fifo_size;
> >  
> >  	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0, 0xfff, width);
> >  	rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_1, 0xfffff, height);
> >  
> > +	if (rdma->fifo_size)
> > +		rdma_fifo_size = rdma->fifo_size;
> > +	else
> > +		rdma_fifo_size = RDMA_FIFO_SIZE(rdma);
> > +
> >  	/*
> >  	 * Enable FIFO underflow since DSI and DPI can't be blocked.
> >  	 * Keep the FIFO pseudo size reset default of 8 KiB. Set the
> > @@ -142,7 +149,7 @@ static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
> >  	 */
> >  	threshold = width * height * vrefresh * 4 * 7 / 1000000;
> >  	reg = RDMA_FIFO_UNDERFLOW_EN |
> > -	      RDMA_FIFO_PSEUDO_SIZE(RDMA_FIFO_SIZE(rdma)) |
> > +	      RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) |
> >  	      RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
> >  	writel(reg, comp->regs + DISP_REG_RDMA_FIFO_CON);
> >  }
> > @@ -284,6 +291,18 @@ static int mtk_disp_rdma_probe(struct platform_device *pdev)
> >  		return comp_id;
> >  	}
> >  
> > +	if (of_find_property(dev->of_node, "mediatek,rdma_fifo_size", &ret)) {
> 
> "mediatek,rdma_fifo_size" does not exists in binding document.
> 
> > +		ret = of_property_read_u32(dev->of_node,
> > +					   "mediatek,rdma_fifo_size",
> > +					   &priv->fifo_size);
> > +		if (ret) {
> > +			dev_err(dev, "Failed to get rdma fifo size\n");
> > +			return ret;
> > +		}
> > +
> > +		priv->fifo_size *= SZ_1K;
> 
> Why not define fifo_size in 'bytes' ?
> 
> Regards,
> CK

this is align the definition of fifo_size in mtk_disp_rdma_data, it is
SZ_1K, 
and the macro RDMA_FIFO_PSEUDO_SIZE calculated with SZ_1K
> 
> > +	}
> > +
> >  	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
> >  				&mtk_disp_rdma_funcs);
> >  	if (ret) {
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
