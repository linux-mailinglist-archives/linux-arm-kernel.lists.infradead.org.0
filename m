Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B50B0D39B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OeA3FXGB7hhkFWc1nkL4gP7bNlOwlDfWIleDB7Vv64=; b=O8GSUs9w6HNxTb
	yDWwR9TRxz+tP6NPO10L0u92cJPoEwg7qjK3WnY8jLhKbJ9GO+bEKlDET4wkVciqIP3+h2M1uORyV
	6myPANdIg2nfDE4SIP/h62k+xbEacZinzs/83rT3JUAwNA84TkS5BFQ5N2w91KzSCZ+MTl2/0/v/R
	tmw0LGQC4QqF4cU8iANG5HRwIz7haB/tSCe5TSD0I0EF/fs+eiN90tmzdodKfxeTygUQK99jXQT24
	E+9lVfMQ9heUPq98M3iLv/ao2aE9WhOXkkQscFEQdGgva44liisSp3O1ichfiNHhBifY3Jnb90oFt
	aYcHqiOJ6QdiwBaXHMsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIooS-0003JF-Nf; Fri, 11 Oct 2019 06:54:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIoo4-00037G-0U; Fri, 11 Oct 2019 06:53:45 +0000
X-UUID: 482fd237eb0844deb848f0ad5cb3877b-20191010
X-UUID: 482fd237eb0844deb848f0ad5cb3877b-20191010
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 906061277; Thu, 10 Oct 2019 22:53:33 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 10 Oct 2019 23:53:37 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 11 Oct 2019 14:53:34 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 11 Oct 2019 14:53:34 +0800
Message-ID: <1570776816.31576.5.camel@mhfsdcap03>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 11 Oct 2019 14:53:36 +0800
In-Reply-To: <CAAFQd5AszvSow2vgRq+CbtBzdNO7ysymXp=xerR6dtmi8OxMZw@mail.gmail.com>
References: <20191010075004.192818-1-tfiga@chromium.org>
 <1570697118.32135.20.camel@mhfsdcap03>
 <CAAFQd5AU53=BRUrK_i-0dRYueVoSd3Bg3AtvZUMHgFv3hLuNug@mail.gmail.com>
 <1570705147.22261.13.camel@mhfsdcap03>
 <CAAFQd5AszvSow2vgRq+CbtBzdNO7ysymXp=xerR6dtmi8OxMZw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D8EE885003961319CABE961ECF4458C14AC152F23B5B99A43253D19FAF83B5E22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_235344_065167_4116CB9E 
X-CRM114-Status: GOOD (  30.75  )
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Changqi Hu <Changqi.Hu@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-10-11 at 13:35 +0900, Tomasz Figa wrote:
> On Thu, Oct 10, 2019 at 7:59 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> >
> > On Thu, 2019-10-10 at 18:00 +0900, Tomasz Figa wrote:
> > > Hi Chunfeng,
> > >
> > > On Thu, Oct 10, 2019 at 5:45 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> > > >
> > > > Hi, Tomasz,
> > > >
> > > > On Thu, 2019-10-10 at 16:50 +0900, Tomasz Figa wrote:
> > > > > MediaTek XHCI host controller does not support 64-bit addressing despite
> > > > > the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> > > > > glue sets the DMA mask to 32 bits on its own, but it has no effect,
> > > > > because xhci_gen_setup() overrides it according to hardware
> > > > > capabilities.
> > Yes, this is what I want to do, maybe need remove DMA mask setting in
> > platform-specific.
> >
> > > > >
> > > > > Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> > > > > 32-bit DMA mask instead.
> > > > >
> > > > > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> > > > > ---
> > > > >  drivers/usb/host/xhci-mtk.c | 10 +++++-----
> > > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > > > > index b18a6baef204a..4d101d52cc11b 100644
> > > > > --- a/drivers/usb/host/xhci-mtk.c
> > > > > +++ b/drivers/usb/host/xhci-mtk.c
> > > > > @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
> > > > >       xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
> > > > >       if (mtk->lpm_support)
> > > > >               xhci->quirks |= XHCI_LPM_SUPPORT;
> > > > > +     /*
> > > > > +      * MTK host controller does not support 64-bit addressing, despite
> > > > > +      * having the AC64 bit of the HCCPARAMS1 register set.
> > > > > +      */
> > > > > +     xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
> > > > Somes SoCs support 64bits in fact, so can't support this quirk, do you
> > > > encounter any issues without this quirk?
> > > >
> > >
> > > Thanks for taking a look at this patch.
> > >
> > > Yes, on MT8183 the DMA mask ended up being set to 64 bits, but
> > > according to the information I received from MediaTek, the controller
> > > on that SoC only supports 32 bits.
> > As I know, mt8183 doesn't support memory greater than 4G mode.
> >
> 
> We have 4GB of DRAM at 0x40000000-0x140000000 on our board with
> MT8183. What happens if you attempt to use the memory from
> 0x100000000-0x140000000 with the XHCI controller on this SoC?
Ok, I'll contact USB SA of MT8183, and discuss this problem.
I guess MT8183 don't plan to support 4G mode when kick off.

> 
> > >
> > > If some SoCs support only 32 bits and some support 64 bits, we may
> > > either need to use different DT compatible string for them or add a DT
> > > property and set the quirk based on that. Right now in upstream we
> > > have:
> > >
> > > 1) "mediatek,mt8173-xhci", used by:
> > > MT8173
> > >
> > > 2)"mediatek,mtk-xhci", used by:
> > > MT2712
> > > MT7622
> > > MT8183 (not yet upstream, but I suppose it's on the mailing lists)
> > >
> > > Would you be able to check which of the SoCs above report 64 bits but
> > > support only 32? (and so would need this quirk)
> > I'm afraid I can't, almost all MTK SoCs supporting xHCI are using this
> > driver, AC64 should be set rightly according to addressing capability.
> >
> 
> Does it mean that only MT8183 may be the only SoC with a problem with
> this capability bit?
Maybe, I'll check it with USB DE.

Thanks

> 
> Matthias, do you have access to MT2712 and MT7622 devices? I have
> MT8173 and MT8183, so I can check them, but would be good to check
> this on the other ones too.
> 
> Best regards,
> Tomasz



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
