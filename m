Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10441CA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 08:52:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HMChJOFjBx25xF9OhMca+nOXkCQTsdbf1sHy0Benck=; b=ooPdyN6onRbHAA
	R2YpI1JRSj7DLhcwFM+rIhT/fd86MWf6cARykFXdrmcFpVIM7e5eKlvsXZrIzx9MmZ7P+9VmO1AzM
	rS26U1jEdDEJf+v+xdsdlQQUNoMZmp/1YjWLKru7TyJ2Pkg+w+wpAOnHqCFyVcLdy6ZEEugM9nHtn
	RIKOYHgf2pcTbNWPbcW/kQfpaFVYfewsc7Uj98kCGJNwDH/hWun9cxl4RxLlY63jai0mnOshfWpNV
	In17pAW+6VUhA+CkLZwPykkAUqWhRjPspcna/gzZD4GQHqTdoGT2Hz1lRRaor9V+vXDESfa45exWs
	1CCiZSrmuCo1af3eqUQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hax7G-0000Zk-OL; Wed, 12 Jun 2019 06:52:14 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hax72-0000ZN-Mw
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 06:52:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id u8so5262440wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 23:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ulcq9xQCWAH/f9UsiQoGM9KGdiggu8TOlzSXG8MJFvc=;
 b=g6PcKyLgyxgXjOl38WQ3dtb/t1EvHgLpzS6nqkS1MhYS6WaJd4F5g1XKNvyYUwqpGC
 ZSf+5qCxgoCvK+JOGRePPereWPkLZWFsLe8e6KbOTyP74sX12epc1ubdK00Iz8OxTerM
 aNpy4wLrGX7BsRYrnlJ4CFICKYdjfZrW/0Vt5AHfzKr66JIH6evx6LbXbauI9BrHxrbF
 vts7VcpRjHrxtnFoJt84AFVBqUb5Y02QHOJTRoHoLXos0J9VsnCrH5UBU5cTHOBd5fCg
 68ODBOlPLix5Z9WG/dZWXuMsdTCjxgetp3T52NRotZzk3hWEav5QnzfpdAgZHSpfCUU7
 AAQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ulcq9xQCWAH/f9UsiQoGM9KGdiggu8TOlzSXG8MJFvc=;
 b=VXufGmv+xkMqGRAKd3PJGMPESkDagHH2812kEJsw7mxQoieCIkL/nNDJio19IvHrZa
 +tL4xGyvGA4C7VEybPiqCdCdqSKcBDYPfrkqt6kz7/eBIOO69bqy7P8Y/dKB7ayFtcB8
 ErcF5c6Bj7SugV9xiC+u1ubEzu78nIXbuCowgR1WuqkK/VWWN1+yEmklUEc9YbuHEyVe
 9RQ3cY9BQTON3/Lg5UVPQtCyylR3QEd7a7cDXtNmbLFNfS85Geo5M298Cm1W0y1DILH9
 OEmPrFK3ohgu0prVXh/VB9IOi9/TUKwED/AarYatKAfVZK54KP+w5vJnsFJ9cZ0yX7Ci
 wf0g==
X-Gm-Message-State: APjAAAXZXCCby16ykwWZuxk0zpoR8ATR6PECVrAMscdSegpaE238MTFw
 QhmV1Rig3LFobwth2B3zlNnqzvoc9/BIc+djVV0=
X-Google-Smtp-Source: APXvYqwKztTk7/FeTwYoLGsG/mYqVgPTvTXh4npMNyAQdvR4Z7GHbkhBngHF6MEwzZWxtpCZ0X19H87b+wWCMZWlNUk=
X-Received: by 2002:a05:600c:206:: with SMTP id
 6mr19660271wmi.73.1560322319303; 
 Tue, 11 Jun 2019 23:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190610141609.17559-1-daniel.baluta@nxp.com>
 <20190610141609.17559-3-daniel.baluta@nxp.com>
 <20190611055530.sl3krujmcqnq6ntt@pengutronix.de>
 <CAEnQRZB9irx7_AeYPCdv5WU3Q-MGt96BiUH8Yk8raeBDA0RjTQ@mail.gmail.com>
 <20190611084015.bjsusho5leqvfvhr@pengutronix.de>
In-Reply-To: <20190611084015.bjsusho5leqvfvhr@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 12 Jun 2019 09:51:48 +0300
Message-ID: <CAEnQRZDbuvpFfr9vNCQ5+EDNnbgR7EwNGT55=M-7PKRY2OttOA@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] imx: mailbox: Introduce TX doorbell with ACK
To: Oleksij Rempel <o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_235200_761240_85C7CC1C 
X-CRM114-Status: GOOD (  44.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, jassisinghbrar@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 11:40 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>
> On Tue, Jun 11, 2019 at 10:52:47AM +0300, Daniel Baluta wrote:
> > Hi Oleksij,
> >
> > On Tue, Jun 11, 2019 at 8:56 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > >
> > > Hi Daniel,
> > >
> > > On Mon, Jun 10, 2019 at 10:16:09PM +0800, daniel.baluta@nxp.com wrote:
> > > > From: Daniel Baluta <daniel.baluta@nxp.com>
> > > >
> > > > TX doorbell with ACK will allow us to push the doorbell ring button
> > > > (trigger GIR) and also will allow us to handle the response from DSP.
> > > >
> > > > DSP firmware found on i.MX8 boards implements a duplex
> > > > communication protocol over MU channels.
> > > >
> > > > On the host side (Linux) we need to plugin into Sound Open Firmware IPC
> > > > communication infrastructure which handles all the details (e.g message
> > > > queuing, tx/rx logic) [1] and the users are only required to provide the
> > > > following callbacks:
> > > >
> > > >   - send_msg (for Tx)
> > > >   - irq_handler (Ack of Tx, request from DSP)
> > > >
> > > > In order to implement send_msg and irq_handler we will use two MU
> > > > channels:
> > > >       * channel #0, TX doorbell with ACK
> > > >       * channel #1, RX doorbell
> > > >
> > > > Sending a request Host -> DSP (channel #0)
> > > >   - send_msg callback
> > > >       - write data into SHMEM
> > > >       - push doorbell ring button (trigger GIR)
> > > >  - irq handler
> > > >       - handle DSP request (channel #1)
> > > >         - read SHMEM and trigger SOF IPC state machine
> > > >         - send ACK (push doorbell ring button for channel #1)
> > > >       - handle DSP response (ACK) (channel #0)
> > > >         - read SHMEM and trigger IPC state machine
> > > >
> > > > The easisest way to implement this is to directly access the MU
> > > > registers but since the MU is abstracted using the mailbox interface
> > > > we need to use that instead.
> > > >
> > > > [1] https://elixir.bootlin.com/linux/v5.2-rc4/source/sound/soc/sof/ipc.c
> > > >
> > > > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> > > > ---
> > > >  drivers/mailbox/imx-mailbox.c | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > >
> > > > diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> > > > index 9f74dee1a58c..3a91611e17d2 100644
> > > > --- a/drivers/mailbox/imx-mailbox.c
> > > > +++ b/drivers/mailbox/imx-mailbox.c
> > > > @@ -42,6 +42,7 @@ enum imx_mu_chan_type {
> > > >       IMX_MU_TYPE_RX,         /* Rx */
> > > >       IMX_MU_TYPE_TXDB,       /* Tx doorbell */
> > > >       IMX_MU_TYPE_RXDB,       /* Rx doorbell */
> > > > +     IMX_MU_TYPE_TXDB_ACK    /* Tx doorbell with Ack */
> > > >  };
> > > >
> > > >  struct imx_mu_con_priv {
> > > > @@ -124,6 +125,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
> > > >                       (ctrl & IMX_MU_xCR_RIEn(cp->idx));
> > > >               break;
> > > >       case IMX_MU_TYPE_RXDB:
> > > > +     case IMX_MU_TYPE_TXDB_ACK:
> > > >               val &= IMX_MU_xSR_GIPn(cp->idx) &
> > > >                       (ctrl & IMX_MU_xCR_GIEn(cp->idx));
> > > >               break;
> > > > @@ -200,6 +202,7 @@ static int imx_mu_startup(struct mbox_chan *chan)
> > > >               imx_mu_xcr_rmw(priv, IMX_MU_xCR_RIEn(cp->idx), 0);
> > > >               break;
> > > >       case IMX_MU_TYPE_RXDB:
> > > > +     case IMX_MU_TYPE_TXDB_ACK:
> > > >               imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIEn(cp->idx), 0);
> > > >               break;
> > > >       default:
> > > > --
> > > > 2.17.1
> > >
> > > If I see it correctly, with your implementation  the mbox client
> > > communication on channel 0 will look as follow:
> > > mbox_client -> send_msg()
> > >             /* sheduling of mbox_chan_txdone tasklet is avoided */
> > > mbox_client <- cl->rx_callback()
> > > mbox_client -> mbox_client_txdone()
> > > mbox_client -> send_msg()
> > >
> >
> > Correct! But what I thought it is most important here is that
> > send_msg and rx_callback are called on the same "connection"
> > so that inside rx_callback I can figure out if I got an ACK or I got
> > a request from the other side.
> >
> > > Without your patch you will need to register tx and rx doorbell
> > > channels and the communication will looks like this:
> > > mbox_client -> send_msg()
> > > mbox_client <- mbox_chan_txdone() /* dummy notification, can be ignored */
> > > mbox_client <- cl->rx_callback()
> > > mbox_client -> send_msg()
> > >
> > > I assume, you are trying to optimize it and avoid dummy
> > > mbox_chan_txdone() notification. Correct?
> >
> > TBH I am little bit confused about the role of txdb_tasklet. Is it there
> > just to trigger the sending of the next message in the buffer?
>
> ACK. The TX type channel is acknowledged as soon as opposite side will
> read out the TX/RX FIFO. In this case we will get an interrupt and
> call mbox_chan_txdone(). With the TXDB type channels we have no this
> kind of interrupts, so we need to some how to tell the mailbox framework
> that this transmission is kind of done.

All clear! Thanks for the explanation.

>
> Beside, are there any reason why do you use TXDB instead of TX channel?
> In this case you will get your ACK for free.

TX doesn't work for me because I get an ACK as soon as the other side reads the
message.

On the other side (DSP) I need the following:
- DSP receives interrupt
- DSP reads some SHM
- DSP writes some SHM
- DSP raises an interrupt to the Host

With only TX channel I cannot do this. I really need a doorbell + shmem.

>
> > Using IMX mailbox with SOF IPC mechanism has a lot of overhead because
> > I think they are both doing the same thing.
>
> Sorry, I fail to follow this argumentation. If it important, please
> describe your issue.

Not important for the moment. I need to have a working version with mailbox API
and then can tell.

>
> >
> > E.g: On TX queuing the messages and then when ACK arrives it will send the
> > next message.
> >
> > >
> > > The problem is, that current mailbox-framework will set txdone_method
> > > inside of mbox_controller_register() for all channels even if
> > > imx-mailbox has different types of channels.
> > >
> > > The problem with your patch is, that it will silently merge two channels
> > > (TXDB and RXDB) and not setting actual ACK by controller - mbox_chan_txdone().
> > > Not sure, why we need to merge it in this case.
> > >
> > > So, with current imx_mailbox implementation your firmware should work as
> > > is. You will need to register two separate channels for TXDB and
> > > RXDB. It will run with some overhead by triggering txdone tasklet in
> > > imx-mailbox driver.
> >
> > I see your point. I think with the current imx_mailbox implementation SOF IPC
> > should work as it is with some overhead (at least when Host (Linux) initiates
> > the communication).
> >
> > The keypoint here (I figured it out now) is that the two channels
> > TXDB and RXDB share the same IDX right?
>
> ACK. Same idx with different types.
>
> > So, with
> > this idx we can figure out that we have an ACK from DSP or a request from DSP.
>
> Actually you will get it no by idx, you will get it by proper device
> tree configuration and assigned cl->rx_callback(). You assign rx_callback() per
> each rx-able channel.

I get your point. But maybe I can use the same rx_callback for each
rx-able channel
and can somehow differentiate on which channel I got the RX interrupt.
Like imx-scu
does.

>
> >
> > So we are set for communication when Host (Linux) starts the communication. It
> > should just work.
> >
> > How about the case when DSP initiates the communication and Host needs to
> > send an ACK.
> >
> > In this case we have:
> >
> > mbox_client <- cl->rx_callback()
> > mbox_client -> send_msg()
>
> The call chain of rx_callback() is:
> imx_mu_isr()
>   mbox_chan_received_data()
>     cl->rx_callback()
>
> Since rx_callback() is in interrupt context, send_msg() should be non
> blocking. You can use workqueue or some thing like this to mbox_send_message()
> out of interrupt context.

Yup send message won't be blocking. It just sets a bit in MU registers.

>
> > The problem here is that the Host needs to call send_msg() from inside
> > the rx_callback().
> > Do you see any problems with that:
> >
> > Basically the pseudocode will be something like this:
> >
> > Create connection #0 (RXDB0, TXDB0) Host -> DSP (Host initiates
> > communication, DSP sends ACK)
> > Create connection #1 (RXDB1, TXDB1) DSP -> Host (DSP initiates
> > communication, Host sends ACK).
> >
> > rx_callback:
> >  -> if (chan_id == 0) // this has to be an ACK from DSP
> >       get_reply_from_shmem
> >       trigger SOF IPC state machine (let them know we got a reply)
> >     else if (chan_id == 1) // this has to be a request from DSP
> >       get_request()
> >        mbox_send_message(sc_chan->ch, NULL); //send back ACK
> >
>
> If properly implemented, you will have separate rx_callback()s for each
> channel.
>
> I assume at some later point you will need to extend the ACK to some
> thing like:
> - ACK - message is ok and processed
> - BUSY - endpoint is still processing
> - ERR - message is corrupt or wrong formatting
> ... and so on.
>
> To be able to transmit different types of ACK you will probably
> use TX/RX type channels + shmem instead of the doorbell.

I think SOF framework already does this:

https://elixir.bootlin.com/linux/v5.2-rc4/source/sound/soc/sof/ipc.c#L203

When ACK is sent it also contains a reply_error field. Also, for BUSY we
just use a timeout on Host side.

Thanks a lot Oleksij for your help!

Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
