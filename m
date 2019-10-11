Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AABD3B49
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 10:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzFrNy9CMXU4ouL6rMLwDse8/RGHBc/Hk323+tS0K6U=; b=OmhNQixb2JYl2j
	SDs9h7nEZAyDpxeHAbmnZVRQuS4zO2bvYoQNX6ZyV621zmxsFgLOwUPEQqAffcN17ArpRres74vUB
	7ervsZArGAAvqw5pLFZFx5TQTvZcvgNcNFH0fgW8/2LSiTE2A6aiyvHlC5j37WV/8LJHGExEqQsQB
	gRzOHt8foUvINqreqsqNDw3aMKoQcds9NJIbpTTnD3MkhhEEEE5tDNAiSRwixgbvP8MZnSGPaDGfe
	qs+hzuHOmr9eHyIgCBWXalG55mSJnUZcj5S5JsSYY+4zEUwnNkMqCuWDxJdhPVmHwqffEaTjNoePw
	Wl0p8Qj+mgLaq7O/fIuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqPb-0000mP-Ri; Fri, 11 Oct 2019 08:36:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqPT-0000m0-P2; Fri, 11 Oct 2019 08:36:29 +0000
X-UUID: 451443f206f34e7f94df501256195b8d-20191011
X-UUID: 451443f206f34e7f94df501256195b8d-20191011
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 46076108; Fri, 11 Oct 2019 00:36:14 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 11 Oct 2019 01:36:18 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 11 Oct 2019 16:21:07 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 11 Oct 2019 16:21:07 +0800
Message-ID: <1570782069.5044.12.camel@mhfsdcap03>
Subject: Re: [PATCH] net: stmmac: disable/enable ptp_ref_clk in
 suspend/resume flow
From: biao huang <biao.huang@mediatek.com>
To: Jakub Kicinski <jakub.kicinski@netronome.com>
Date: Fri, 11 Oct 2019 16:21:09 +0800
In-Reply-To: <20191010160103.63c3c0ed@cakuba.netronome.com>
References: <20191009085649.6736-1-biao.huang@mediatek.com>
 <20191010160103.63c3c0ed@cakuba.netronome.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 830FACAF2A292503757689C34417C3AFCD74A88CD9AC4330D44496E1DBE6BC492000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_013627_820557_038B7E7E 
X-CRM114-Status: GOOD (  17.91  )
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
Cc: andrew@lunn.ch, jianguo.zhang@mediatek.com, Alexandre
 Torgue <alexandre.torgue@st.com>, boon.leong.ong@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, yt.shen@mediatek.com,
 Jose Abreu <joabreu@synopsys.com>, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Appreciate your comments!

On Thu, 2019-10-10 at 16:01 -0700, Jakub Kicinski wrote:
> On Wed, 9 Oct 2019 16:56:49 +0800, Biao Huang wrote:
> > disable ptp_ref_clk in suspend flow, and enable it in resume flow.
> > 
> > Signed-off-by: Biao Huang <biao.huang@mediatek.com>
> > ---
> >  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > index c7c9e5f162e6..b592aeecc3dd 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> > @@ -4469,6 +4469,8 @@ int stmmac_suspend(struct device *dev)
> >  		stmmac_mac_set(priv, priv->ioaddr, false);
> >  		pinctrl_pm_select_sleep_state(priv->device);
> >  		/* Disable clock in case of PWM is off */
> > +		if (priv->plat->clk_ptp_ref)
> > +			clk_disable_unprepare(priv->plat->clk_ptp_ref);
> 
> I don't know much embedded, but it seems like this should perhaps just
> be clk_disable() without the unprepare? stmmac_hw_teardown() is called
> when driver is removed so it needs to unprepare as well.
> 
> Please feel free to explain to me why this needs to be
> clk_disable_unprepare(), as I said - not an expert.
> 
As our clock owner's advice, there are prepare/unprepare clk_ops for
pll, but no enable/disable clk_ops for it, and pll will be off only when
the prepare reference count decrease to 0.

so for the sake of power saving, we'd better call clk_disable_unprepare
to turn the parent pll off.

> Also - if this is a bug fix and you'd like to have it backported to
> older releases you need to add a Fixes tag.
> 
Thanks for the reminder, I'll add the fixes tag in the next version.
> Thanks!
> 
> >  		clk_disable(priv->plat->pclk);
> >  		clk_disable(priv->plat->stmmac_clk);
maybe it should be clk_disable_unprepare(priv->plat->pclk);
		   clk_disable_unprepare(priv->plat->stmmac_clk);
> >  	}
> > @@ -4535,6 +4537,8 @@ int stmmac_resume(struct device *dev)
> >  		/* enable the clk previously disabled */
> >  		clk_enable(priv->plat->stmmac_clk);
> >  		clk_enable(priv->plat->pclk);
> > +		if (priv->plat->clk_ptp_ref)
> > +			clk_prepare_enable(priv->plat->clk_ptp_ref);
> >  		/* reset the phy so that it's ready */
> >  		if (priv->mii)
> >  			stmmac_mdio_reset(priv->mii);
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
