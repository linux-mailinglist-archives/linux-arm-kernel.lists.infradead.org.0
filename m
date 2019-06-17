Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B6C479CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 07:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypJ2vAVWUD4NnwYzLPPKwnBEH3HqL5N30uIdLLKd2oA=; b=fmdhvY7wQdohGN
	hKQh/RjmTzhk4OTQtxwkf428VBfpaPniKmLhDPRUgmMhSTXxP5cB5Twy78igeVb1YKkfWlo4l0BVu
	LggO9Yl4Wkcr9eiRIwYBYL0OKbTF80W0j/DOWYMhcxO1StuiXZAJJqPkeO6PvWWiRWTLItbt7b26F
	I2mi69sSoCjQNDm9f/oRiInZe/Syi5ki3AG3SGSXXUzTyckwgJjRcfvVWpZz3jntwaDX//TZ+TT4v
	HUsBkKqofD4eqVolJSeDU3+FOoYZV3Ufmc5H8f/j8ozirprnmx4vuTvAxn7ABhC+3txPCXUQ1B/cy
	VOQ7dbCB+hqlEQEQC2yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcke3-0007qI-IO; Mon, 17 Jun 2019 05:57:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hckdo-0007on-D1; Mon, 17 Jun 2019 05:57:18 +0000
X-UUID: f727c30043fa477b8ea731a0c8a35c63-20190616
X-UUID: f727c30043fa477b8ea731a0c8a35c63-20190616
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jjian.zhou@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1216551598; Sun, 16 Jun 2019 21:57:10 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 16 Jun 2019 22:57:08 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 17 Jun 2019 13:57:03 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Jun 2019 13:57:01 +0800
Message-ID: <1560751020.3103.25.camel@mhfsdcap03>
Subject: Re: [PATCH 1/2] mmc: mediatek: fix SDIO IRQ interrupt handle flow
From: jjian zhou <jjian.zhou@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 17 Jun 2019 13:57:00 +0800
In-Reply-To: <CAPDyKFrXU4bpKeB7Aa15j2nHqUCn-bk+YKn9_vkznmi+PS8H7A@mail.gmail.com>
References: <1560489970-30467-1-git-send-email-jjian.zhou@mediatek.com>
 <CAPDyKFrXU4bpKeB7Aa15j2nHqUCn-bk+YKn9_vkznmi+PS8H7A@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_225716_454505_35672E50 
X-CRM114-Status: GOOD (  20.69  )
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yong Mao =?UTF-8?Q?=28=E6=AF=9B=E5=8B=87=29?= <yong.mao@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Chaotian Jing =?UTF-8?Q?=28=E4=BA=95=E6=9C=9D=E5=A4=A9=29?=
 <Chaotian.Jing@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-06-14 at 17:46 +0800, Ulf Hansson wrote:
> On Fri, 14 Jun 2019 at 07:26, Jjian Zhou <jjian.zhou@mediatek.com> wrote:
> >
> > From: jjian zhou <jjian.zhou@mediatek.com>
> >
> > SDIO IRQ is triggered by low level. It need disable SDIO IRQ
> > detected function. Otherwise the interrupt register can't be cleared.
> > It will process the interrupt more.
> >
> > Signed-off-by: Jjian Zhou <jjian.zhou@mediatek.com>
> > Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
> > Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> > ---
> >  drivers/mmc/host/mtk-sd.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> > index c518cc2..29992ae 100644
> > --- a/drivers/mmc/host/mtk-sd.c
> > +++ b/drivers/mmc/host/mtk-sd.c
> > @@ -1389,10 +1389,12 @@ static void __msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
> >         struct msdc_host *host = mmc_priv(mmc);
> >
> >         spin_lock_irqsave(&host->lock, flags);
> > -       if (enb)
> > +       if (enb) {
> >                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> > -       else
> > +               sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> > +       } else {
> >                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> 
> Rather than clearing SDC_CFG_SDIOIDE in the irq handler, you need to
> do it here. As otherwise when the mmc core calls
> host->ops->enable_sdio_irq() to disable the SDIO IRQ, it may stay
> enabled.
> 

Thank you for your review.

I remove the spin lock in "__msdc_enable_sdio_irq" and add 
spin lock in "msdc_enable_sdio_irq". The modification of
"__msdc_enable_sdio_irq" and "msdc_enable_sdio_irq" is as following.

static void __msdc_enable_sdio_irq(struct msdc_host *host, int enb)
{
	if (enb) {
		sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
		sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
	} else {
		sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
		sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
	}
}

static void msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
{
	unsigned long flags;
	struct msdc_host *host = mmc_priv(mmc);
	spin_lock_irqsave(&host->lock, flags);;
	__msdc_enable_sdio_irq(host, enb);
	spin_unlock_irqrestore(&host->lock, flags);

	if (enb)
		pm_runtime_get_noresume(host->dev);
	else
		pm_runtime_get_noidle(host->dev);
}

> > +       }
> >         spin_unlock_irqrestore(&host->lock, flags);
> >  }
> >
> > @@ -1422,6 +1424,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
> >                 spin_lock_irqsave(&host->lock, flags);
> >                 events = readl(host->base + MSDC_INT);
> >                 event_mask = readl(host->base + MSDC_INTEN);
> > +               if ((events & event_mask) & MSDC_INT_SDIOIRQ)
> > +                       sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> 
> As stated above, I suggest you move this into __msdc_enable_sdio_irq()
> and thus call that function from here instead. Well, that doesn't work
> as is, because of the spin lock, so you rather need to make a
> sub-function of __msdc_enable_sdio_irq, that don't take/releases the
> lock.
> 
> I hope that was clear. If not, I can post a patch to show you what I mean.
> 

I also modify this part handler in msdc_irq.

	spin_lock_irqsave(&host->lock, flags);
	events = readl(host->base + MSDC_INT);
	event_mask = readl(host->base + MSDC_INTEN);
	if ((events & event_mask) & MSDC_INT_SDIOIRQ)
		__msdc_enable_sdio_irq(host, 0);
	/* clear interrupts */
	writel(events & event_mask, host->base + MSDC_INT);

	mrq = host->mrq;
	cmd = host->cmd;
	data = host->data;
	spin_unlock_irqrestore(&host->lock, flags);

	if ((events & event_mask) & MSDC_INT_SDIOIRQ)
		sdio_signal_irq(host->mmc);

I also will add spin lock in the "msdc_ack_sdio_irq".

Looking forward to your suggestions.
> 
> >                 /* clear interrupts */
> >                 writel(events & event_mask, host->base + MSDC_INT);
> >
> > @@ -1572,10 +1576,7 @@ static void msdc_init_hw(struct msdc_host *host)
> >         sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIO);
> >
> >         /* Config SDIO device detect interrupt function */
> > -       if (host->mmc->caps & MMC_CAP_SDIO_IRQ)
> > -               sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> > -       else
> > -               sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> > +       sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> >
> >         /* Configure to default data timeout */
> >         sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, 3);
> > --
> > 1.9.1
> >
> 
> Kind regards
> Uffe



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
