Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4BD12E30D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 07:33:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Date:To:From:Subject:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzQGOYKuCeCroyb53wwC2v9agNEhvjA6CglYDNCw1D4=; b=BhwT9TcY3FVQBE
	PyRJDgLKczVVEMeUzLQq1pKuD8Ug6E2wb0TxlwqLI2rufPLcFNPTWgiYf0mgNuUV90m0kjrUNrypH
	cye0X3sNbMw+i1H9PASxtpAYdPQG5fLTIHXbIZL2k0bl25XKlQjKVhnREv+QH+AmXgb1+Ft+VxyL8
	j6AM35tdwK/Hm0ZNxLodabXUT+Uu1l67IxpRSb9qeNVyoyvrpKKsdMasw5ExmviBxuM45v4/lieZB
	/Ye504Ee/sXfTwrlloVVhW5ryl5ivVfq/dlTN+B8WMpJRnswVsGxwrGUu27xUSjEyOWLdtqfthDkC
	NdaY6aCo1UMnUd1dqj7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imu2a-0006gb-7m; Thu, 02 Jan 2020 06:33:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imu2U-0006fF-3X; Thu, 02 Jan 2020 06:33:00 +0000
X-UUID: dd96970a39904bbfb1ba3ea902421bf1-20200101
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:Reply-To:From:Subject:Message-ID;
 bh=9vypeXyGCV1z946FM6RAns12k9X/Zs6/MFy6RvOrBHY=; 
 b=gKiq4EoLmDrnVhVePAzPEyZ6mdgbnf8W48tf+kPL5nHXw4tMimwhuqDganbA8HDsVVxCO6yGxD9rPdqlRdn+Oxku+VHHVTSE40hxMiMlMGHwQneOBmlhwANTAwt8M9Kh34sQTcX3MgFxyhtmEmasrSCh06VIFlqgozLZbuk844s=;
X-UUID: dd96970a39904bbfb1ba3ea902421bf1-20200101
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1900066326; Wed, 01 Jan 2020 22:32:48 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 1 Jan 2020 22:23:07 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs05n2.mediatek.inc
 (172.21.101.140) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 2 Jan 2020 14:22:15 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 2 Jan 2020 14:23:09 +0800
Message-ID: <1577946073.15116.8.camel@mhfsdcap03>
Subject: Re: [PATCH v6, 02/14] drm/mediatek: move dsi/dpi select input into
 mtk_ddp_sel_in
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Thu, 2 Jan 2020 14:21:13 +0800
In-Reply-To: <1577944949.32066.1.camel@mtksdaap41>
References: <1577937624-14313-1-git-send-email-yongqiang.niu@mediatek.com>
 <1577937624-14313-3-git-send-email-yongqiang.niu@mediatek.com>
 <1577941388.24650.2.camel@mtksdaap41> <1577943579.15116.1.camel@mhfsdcap03>
 <1577944949.32066.1.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_223258_156137_57D24BFB 
X-CRM114-Status: GOOD (  15.41  )
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

On Thu, 2020-01-02 at 14:02 +0800, CK Hu wrote:
> Hi, Yongqiang:
> 
> On Thu, 2020-01-02 at 13:39 +0800, Yongqiang Niu wrote:
> > On Thu, 2020-01-02 at 13:03 +0800, CK Hu wrote:
> > > Hi, Yongqiang:
> > > 
> > > On Thu, 2020-01-02 at 12:00 +0800, Yongqiang Niu wrote:
> > > > move dsi/dpi select input into mtk_ddp_sel_in
> > > > 
> > > > Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> > > > ---
> > > >  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 10 ++++++----
> > > >  1 file changed, 6 insertions(+), 4 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> > > > index 39700b9..91c9b19 100644
> > > > --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> > > > +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> > > > @@ -376,6 +376,12 @@ static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
> > > >  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> > > >  		*addr = DISP_REG_CONFIG_DSI_SEL;
> > > >  		value = DSI_SEL_IN_BLS;
> > > > +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
> > > > +		*addr = DISP_REG_CONFIG_DSI_SEL;
> > > > +		value = DSI_SEL_IN_RDMA;
> > > 
> > > In original code, this is set when cur == DDP_COMPONENT_BLS and next ==
> > > DDP_COMPONENT_DPI0. Why do you change the condition?
> > > 
> > > Regards,
> > > CK
> > 
> > if bls connect with dpi0, rdma1 should connect with dsi0, the condition
> > is same with before.
> 
> You suggest that two crtcs are both enabled. If only one crtc is
> enabled, just one of these two would be set.
> 
> Regards,
> CK

OK, i will modify like this
else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
		*addr = DISP_REG_CONFIG_DSI_SEL;
		value = DPI_SEL_IN_RDMA;
	}
in mtk_ddp_sel_in.

don't set DISP_REG_CONFIG_DPI_SEL to DPI_SEL_IN_BLS anymore, because
DPI_SEL_IN_BLS is zero, it is same with hardware default setting.
> 
> > > 
> > > > +	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> > > > +		*addr = DISP_REG_CONFIG_DPI_SEL;
> > > > +		value = DPI_SEL_IN_BLS;
> > > >  	} else {
> > > >  		value = 0;
> > > >  	}
> > > > @@ -393,10 +399,6 @@ static void mtk_ddp_sout_sel(struct regmap *config_regs,
> > > >  	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> > > >  		regmap_write(config_regs, DISP_REG_CONFIG_OUT_SEL,
> > > >  				BLS_TO_DPI_RDMA1_TO_DSI);
> > > > -		regmap_write(config_regs, DISP_REG_CONFIG_DSI_SEL,
> > > > -				DSI_SEL_IN_RDMA);
> > > > -		regmap_write(config_regs, DISP_REG_CONFIG_DPI_SEL,
> > > > -				DPI_SEL_IN_BLS);
> > > >  	}
> > > >  }
> > > >  
> > > 
> > > 
> > 
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
