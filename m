Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50157A2F1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 07:40:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=elcrFclvbS0lqihB1otKkV93gcb3mtw9f7Zy84kqJDE=; b=ag+SItNQR+pjR/
	Csj/jTKh9zAywb+pYyAUHMXkuIxI29mZV0gA7smkallu4broHbtkZcfJeKi6cwBSEznwMaxDVuIm/
	/05PNzXSdbU53pNquJYnyW69/f2rtqRvwvZa29LpQ+nsI/tJzkVKXa0pUL+U9J6YbMEG0el7G9CJC
	6QQpnZSs+PavFTFT4d6Car9zkJASWut6/Lie4e2xzUY2vuKyYeEv2meuIBB5a+TyaTK804RlJxTTC
	6VTkwOJ2hP+9CCCnqUP/96OrmGkNMIxsVXDlP9X/QyFbZZLsnMrZf58cB84Kwr3PtpIczx48gv2ij
	etXHG96njMb/sC9C7tWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ZeU-0000em-3Z; Fri, 30 Aug 2019 05:40:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ZeE-0000eG-NF; Fri, 30 Aug 2019 05:40:36 +0000
X-UUID: 9468da78b613427f8ba9aa748471e67e-20190829
X-UUID: 9468da78b613427f8ba9aa748471e67e-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 497296445; Thu, 29 Aug 2019 21:40:37 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:40:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 13:40:32 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 13:40:32 +0800
Message-ID: <1567143627.5942.10.camel@mtksdaap41>
Subject: Re: [PATCH v5, 12/32] drm/mediatek: add mmsys private data for ddp
 path config
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 30 Aug 2019 13:40:27 +0800
In-Reply-To: <1567142858.5942.6.camel@mtksdaap41>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-13-git-send-email-yongqiang.niu@mediatek.com>
 <1567142858.5942.6.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 63705600795A02F27505757BDD9CBCADFD9382BB26651453F850F28E9B4B8EDE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_224034_770095_6EB0C9B3 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

Hi, Yongqiang:

On Fri, 2019-08-30 at 13:27 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> > From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > 
> > This patch add mmsys private data for ddp path config
> > all these register offset and value will be different in future SOC
> > add these define into mmsys private data
> > 	u32 ovl0_mout_en;
> > 	u32 rdma1_sout_sel_in;
> > 	u32 rdma1_sout_dsi0;
> > 	u32 dpi0_sel_in;
> > 	u32 dpi0_sel_in_rdma1;
> > 	u32 dsi0_sel_in;
> > 	u32 dsi0_sel_in_rdma1;
> > 
> > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  4 ++
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 86 +++++++++++++++++++++++----------
> >  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |  5 ++
> >  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  3 ++
> >  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |  3 ++
> >  5 files changed, 76 insertions(+), 25 deletions(-)
> > 
> 
> [snip]
> 
> >  
> >  void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> > +			      const struct mtk_mmsys_reg_data *reg_data,
> >  			      enum mtk_ddp_comp_id cur,
> >  			      enum mtk_ddp_comp_id next)
> >  {
> >  	unsigned int addr, value, reg;
> >  
> > -	value = mtk_ddp_mout_en(cur, next, &addr);
> > +	value = mtk_ddp_mout_en(reg_data, cur, next, &addr);
> >  	if (value) {
> >  		reg = readl_relaxed(config_regs + addr) | value;
> >  		writel_relaxed(reg, config_regs + addr);
> >  	}
> >  
> > -	mtk_ddp_sout_sel(config_regs, cur, next);
> > +	value = mtk_ddp_sout_sel(reg_data, cur, next, &addr);
> > +	if (value)
> > +		writel_relaxed(value, config_regs + addr);
> 
> I think the register could be written inside mtk_ddp_sout_sel(), why do
> you move out of that function?

OK, after review other patch, I understand what you do here.
You want to align the method of mtk_ddp_mout_en(), mtk_ddp_sout_sel(),
and mtk_ddp_sel_in(). so modification in these three function would be
the same style. So I think this alignment should be an independent patch
before this patch.

Regards,
CK

> 
> Regards,
> CK
> 
> >  
> > -	value = mtk_ddp_sel_in(cur, next, &addr);
> > +	value = mtk_ddp_sel_in(reg_data, cur, next, &addr);
> >  	if (value) {
> >  		reg = readl_relaxed(config_regs + addr) | value;
> >  		writel_relaxed(reg, config_regs + addr);
> > @@ -420,18 +455,19 @@ void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> >  }
> >  
> >  
> >  
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
