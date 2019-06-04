Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B8934283
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UGRZQgkpv9tQR8g2PEJBvNZEepxPERzGfSs33vVdEdQ=; b=YGsbazETir98DD
	nwDUP64BfGDGw0+wrB+kKEv8BI0PPBMgiMc/4AboIobrpAs7rR7ZLg7hlVmQB7BQv7euht6XGOVwo
	gn6wIERI3IRw0hYE80ICKzpUGH5E/mfvXXTmtxpfnhGaX2pAXLr38i9zlwEVRRqspjkIhwcS8uK7K
	y2GbtLp9dLm4lw5aToGU1WE+lrvXheb3SH4pF7ZVbeHtN4gTHLL6/+xge6dh7mHEsggobUtNEbMF6
	ATorN+4W/VSPSP+hmIOyNaalv4CwzPP6Y2HHWgt0+jTcvDaffElyK669NeWLFSyAwhuE3xk084V30
	mG1jimipssy6T61zc08A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5K4-0001Di-7c; Tue, 04 Jun 2019 09:01:36 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5Jx-0001DC-Ab
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:01:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3BB2315A2;
 Tue,  4 Jun 2019 02:01:29 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [10.37.9.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B45243F246;
 Tue,  4 Jun 2019 02:01:26 -0700 (PDT)
Date: Tue, 4 Jun 2019 10:01:23 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH 1/6] mailbox: add support for doorbell/signal mode
 controllers
Message-ID: <20190604090123.GC23250@e107533-lin.cambridge.arm.com>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <20190531143320.8895-2-sudeep.holla@arm.com>
 <CABb+yY2ON+etV_g+zBQUrV9x2_0QubUeEPuxs=EKw_JCt570BQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY2ON+etV_g+zBQUrV9x2_0QubUeEPuxs=EKw_JCt570BQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_020129_369710_88E307C6 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mark Brown <broonie@kernel.org>, Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 04:51:05PM -0500, Jassi Brar wrote:
> On Fri, May 31, 2019 at 9:33 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> 
> > diff --git a/drivers/mailbox/mailbox.c b/drivers/mailbox/mailbox.c
> > index 38d9df3fb199..e26a079f8223 100644
> > --- a/drivers/mailbox/mailbox.c
> > +++ b/drivers/mailbox/mailbox.c
> > @@ -77,7 +77,10 @@ static void msg_submit(struct mbox_chan *chan)
> >         if (chan->cl->tx_prepare)
> >                 chan->cl->tx_prepare(chan->cl, data);
> >         /* Try to submit a message to the MBOX controller */
> > -       err = chan->mbox->ops->send_data(chan, data);
> > +       if (chan->mbox->ops->send_data)
> > +               err = chan->mbox->ops->send_data(chan, data);
> > +       else
> > +               err = chan->mbox->ops->send_signal(chan);
> >         if (!err) {
> >                 chan->active_req = data;
> >                 chan->msg_count--;
> >
> The  'void *data'  parameter in send_data() is controller specific.
> The doorbell controllers should simply ignore that.
> 
> So signal/doorbell controllers are already supported fine. See
> drivers/mailbox/tegra-hsp.c for example.
>

Agreed, I did have that. But then I thought this API makes it even
clearer to the users that no data is expected. I am fine either way.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
