Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4458B1ED06C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 15:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bY6Wfq6hH5fUWLwNwSdZV2ALe050FWcqdJHfC2PLk88=; b=pdATY7+Nw6aK9e
	uNrg5i1RSwlfHvAU/SvdUgdyrEkf9ezjgO2yUxqJkDJor8zP+DLavVzdzOJT/r7i79PSZqWqRUGC6
	1Yd0IHFtuIEGvOiY7xESlQjNogWk4OADP5cyHpPsymy6wqQG6dNO+T3hTTV7OTIkrmT/3KuL4uIdL
	9+bqGjUSZqfwnuQlov9SQosywWdk/jPKjPc3WPgLAr4yc6NTiNdr0hmMOdydE1nwlr9dM/9RuMWBn
	6gZafVp/NuF2CQ9IHpZZzjw5OWaJgnoNzaieVcmuMnR0GWm8sjj/76Ad6IF8jV66+nhAJID31+2Ml
	Dc3s5aZe84qSkRbpNnFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgT1l-0003k9-Mk; Wed, 03 Jun 2020 13:01:53 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgT1b-0003j0-6e; Wed, 03 Jun 2020 13:01:44 +0000
X-UUID: 0f564a730245468984ee339ef768c81b-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=4T4GZu2BhBmei0L8cxQIJh1W9EQOektqEZeHV+JC9ko=; 
 b=Vm6d7M2iXShnUXPqPG/6Uw7SJYLRssCcEXVgJODiqyHSSQG1tBCE9WULJBnW0tf4gClUKWe1Cpk7LccVeSXEIvJx4csFxIYToGazbUHfu0LrwU8wHoY86pAxbO3Ck7L1qpQj5caTQwhJHFt2dQOGvSd23bTl3kkLoMbWupal5HU=;
X-UUID: 0f564a730245468984ee339ef768c81b-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1347354342; Wed, 03 Jun 2020 05:01:23 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 06:01:35 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 3 Jun 2020 21:01:20 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 3 Jun 2020 21:01:22 +0800
Message-ID: <1591189283.23525.67.camel@mtkswgap22>
Subject: Re: [PATCH] usb: host: xhci-mtk: avoid runtime suspend when
 removing hcd
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Mathias Nyman <mathias.nyman@linux.intel.com>
Date: Wed, 3 Jun 2020 21:01:23 +0800
In-Reply-To: <ebd32a2b-c4ba-8891-b13e-f6c641a94276@linux.intel.com>
References: <1590726569-28248-1-git-send-email-macpaul.lin@mediatek.com>
 <ebd32a2b-c4ba-8891-b13e-f6c641a94276@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_060143_360493_0D51283E 
X-CRM114-Status: GOOD (  15.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mathias Nyman <mathias.nyman@intel.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Macpaul Lin <macpaul.lin@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-06-03 at 14:47 +0300, Mathias Nyman wrote:
> On 29.5.2020 7.29, Macpaul Lin wrote:
> > When runtime suspend was enabled, runtime suspend might happened
> > when xhci is removing hcd. This might cause kernel panic when hcd
> > has been freed but runtime pm suspend related handle need to
> > reference it.
> > 
> > Change-Id: I70a5dc8006207caeecbac6955ce8e5345dcc70e6
> > Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> > ---
> >  drivers/usb/host/xhci-mtk.c |    5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> > index bfbdb3c..641d24e 100644
> > --- a/drivers/usb/host/xhci-mtk.c
> > +++ b/drivers/usb/host/xhci-mtk.c
> > @@ -587,6 +587,9 @@ static int xhci_mtk_remove(struct platform_device *dev)
> >  	struct xhci_hcd	*xhci = hcd_to_xhci(hcd);
> >  	struct usb_hcd  *shared_hcd = xhci->shared_hcd;
> >  
> > +	pm_runtime_put_sync(&dev->dev);
> 
> Might runtime suspend here.
> It's a lot better than before, no panic as hcd isn't released, but a bit unnecessary.
> 
> how about this sequence instead:
> pm_runtime_disable()
> pm_runtime_put_noidle()
> 
> > +	pm_runtime_disable(&dev->dev);
> > +
> 
> -Mathias

Thanks for your suggestion!
Will it better to put no idle before disable? 
pm_runtime_put_noidle()
pm_runtime_disable()

I've found pm_runtime_put_noidle is called in pm_runtime_disable() when
there is a pending request.

I will send patch v3 as noidle() called earlier than disable(). Please
help to comment it if disable() should go before.

Thanks!
Macpaul Lin 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
