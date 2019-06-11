Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA123C56F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 09:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpzXVaaU/PnCRPC4dtZ9usbJhI7mumSoXNIHXABFhCA=; b=Z2IPNCK5GEYE5C
	mtEGmecED8PzLSX6X8rewdemt8zd/1+BBLhy2kQtfSQg5uNVIS5kLota1y2gAQpCARlM5XUWlf2SI
	0a9Fom1VemIwxAChW1vj2N5ZJV8gzJbdT+ov7cRe8Eytv4AFvZJt30WTCpiIPj2lP3hEx8FYFgW/B
	j+d1W1HEIYKyDBBHVlocPAZDbBl1oIS7W2N+fdppI8gncrBKT+rsS9o/ogIDlP4Lz1MI/bYMH+sN+
	/Xyt0CsqqQF2mzqF2sDl+lPMvNvWzxAGY9RhDKoDhGs05C1SHkkY9Aj23wIWrWulQOpOc9I32i2yP
	alrE0qgdpZWidj27xeXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haban-0003CX-Dd; Tue, 11 Jun 2019 07:53:17 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1habaa-0003Bn-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 07:53:06 +0000
Received: by mail-wm1-x341.google.com with SMTP id u8so1737533wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 00:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9PsR1uMNskWCiaEKRGZYWd94CEQPhPEaiy0Vl1ILZFE=;
 b=mn2UBoenodifxg0P77dyoVoUnVeu4+uGvE+hcTxJytv8hOPa9T2vCglpsXT/cqqWtU
 y9FPAz+yMc6ryQhJLPq7N94QbOGDhm2iLCKoST+WRNtOac0TxcYo6RkAxi2sFX7M/evw
 8iOj3cvE8UaBGXWJAQknwdfguvVCgZHvgo5WCRy1XKiZcIS3nX/3MvTVIjprUgymio/g
 MwtX8KX7w+GraVVSmch85QHq5s31505o+xryemWmTOndVteDzd/zBaLN9y3K3ZSqSvrm
 4T7EqRUvMoARBaeszJuHO8SvdKlA5FIkfRYAIeGiCmgKHH1ONuDplh4aXqIlVPmNMeP/
 qlMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9PsR1uMNskWCiaEKRGZYWd94CEQPhPEaiy0Vl1ILZFE=;
 b=EcqcuiR+DXHzApwOWaQbU/h/l2KW5nAruEfKRbWqiiWsI556lIXdz1j3fYMq3W109Q
 k/TiEoM/MFf+/4tUZf1A/Izlh+++5ixGQ0pJq7BSj0QYdsmHR+7/+5Ofnj1rLBX+EX15
 P/sGSd8zwrwcYDN4Cs/0qjk1F2Ch4bRPxBscMqvpgEE4fphdcsNiSfzwrsFI/riDGIle
 982IJQOdKECQMWPWOc43dSsWm+2Lovs58yrofLR72R1RjHAJgYZ8pB0wK5W/eI24DEB5
 q6u4vUMscZu3lyqfVr8ix8MOyEl6cf4NYUkgFaailRrz9WLTMvP/38YcqsnYz6sKrCf6
 D1Hw==
X-Gm-Message-State: APjAAAVnbxHH5sY2XW3wIDDRqEXsKmSrNxaIP4bAo6qMdz1o4zB4a5fj
 wZPPIyc0e3AcU9GKO5IFIrcYaDdpTQ/maukfNrQ=
X-Google-Smtp-Source: APXvYqyF5SIUSHmvr/zUiXBYqwiUEUowRdzvH15L9I89xnXliAVBtDAbkb+4ZlrKEzxAwasxqqY7JX7xtKEdekYs5Rk=
X-Received: by 2002:a05:600c:206:: with SMTP id
 6mr15768111wmi.73.1560239578870; 
 Tue, 11 Jun 2019 00:52:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190610141609.17559-1-daniel.baluta@nxp.com>
 <20190610141609.17559-3-daniel.baluta@nxp.com>
 <20190611055530.sl3krujmcqnq6ntt@pengutronix.de>
In-Reply-To: <20190611055530.sl3krujmcqnq6ntt@pengutronix.de>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 11 Jun 2019 10:52:47 +0300
Message-ID: <CAEnQRZB9irx7_AeYPCdv5WU3Q-MGt96BiUH8Yk8raeBDA0RjTQ@mail.gmail.com>
Subject: Re: [RFC PATCH 2/2] imx: mailbox: Introduce TX doorbell with ACK
To: Oleksij Rempel <o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_005304_539696_809D179F 
X-CRM114-Status: GOOD (  37.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (daniel.baluta[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 jassisinghbrar@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Oleksij,

On Tue, Jun 11, 2019 at 8:56 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>
> Hi Daniel,
>
> On Mon, Jun 10, 2019 at 10:16:09PM +0800, daniel.baluta@nxp.com wrote:
> > From: Daniel Baluta <daniel.baluta@nxp.com>
> >
> > TX doorbell with ACK will allow us to push the doorbell ring button
> > (trigger GIR) and also will allow us to handle the response from DSP.
> >
> > DSP firmware found on i.MX8 boards implements a duplex
> > communication protocol over MU channels.
> >
> > On the host side (Linux) we need to plugin into Sound Open Firmware IPC
> > communication infrastructure which handles all the details (e.g message
> > queuing, tx/rx logic) [1] and the users are only required to provide the
> > following callbacks:
> >
> >   - send_msg (for Tx)
> >   - irq_handler (Ack of Tx, request from DSP)
> >
> > In order to implement send_msg and irq_handler we will use two MU
> > channels:
> >       * channel #0, TX doorbell with ACK
> >       * channel #1, RX doorbell
> >
> > Sending a request Host -> DSP (channel #0)
> >   - send_msg callback
> >       - write data into SHMEM
> >       - push doorbell ring button (trigger GIR)
> >  - irq handler
> >       - handle DSP request (channel #1)
> >         - read SHMEM and trigger SOF IPC state machine
> >         - send ACK (push doorbell ring button for channel #1)
> >       - handle DSP response (ACK) (channel #0)
> >         - read SHMEM and trigger IPC state machine
> >
> > The easisest way to implement this is to directly access the MU
> > registers but since the MU is abstracted using the mailbox interface
> > we need to use that instead.
> >
> > [1] https://elixir.bootlin.com/linux/v5.2-rc4/source/sound/soc/sof/ipc.c
> >
> > Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
> > ---
> >  drivers/mailbox/imx-mailbox.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> > index 9f74dee1a58c..3a91611e17d2 100644
> > --- a/drivers/mailbox/imx-mailbox.c
> > +++ b/drivers/mailbox/imx-mailbox.c
> > @@ -42,6 +42,7 @@ enum imx_mu_chan_type {
> >       IMX_MU_TYPE_RX,         /* Rx */
> >       IMX_MU_TYPE_TXDB,       /* Tx doorbell */
> >       IMX_MU_TYPE_RXDB,       /* Rx doorbell */
> > +     IMX_MU_TYPE_TXDB_ACK    /* Tx doorbell with Ack */
> >  };
> >
> >  struct imx_mu_con_priv {
> > @@ -124,6 +125,7 @@ static irqreturn_t imx_mu_isr(int irq, void *p)
> >                       (ctrl & IMX_MU_xCR_RIEn(cp->idx));
> >               break;
> >       case IMX_MU_TYPE_RXDB:
> > +     case IMX_MU_TYPE_TXDB_ACK:
> >               val &= IMX_MU_xSR_GIPn(cp->idx) &
> >                       (ctrl & IMX_MU_xCR_GIEn(cp->idx));
> >               break;
> > @@ -200,6 +202,7 @@ static int imx_mu_startup(struct mbox_chan *chan)
> >               imx_mu_xcr_rmw(priv, IMX_MU_xCR_RIEn(cp->idx), 0);
> >               break;
> >       case IMX_MU_TYPE_RXDB:
> > +     case IMX_MU_TYPE_TXDB_ACK:
> >               imx_mu_xcr_rmw(priv, IMX_MU_xCR_GIEn(cp->idx), 0);
> >               break;
> >       default:
> > --
> > 2.17.1
>
> If I see it correctly, with your implementation  the mbox client
> communication on channel 0 will look as follow:
> mbox_client -> send_msg()
>             /* sheduling of mbox_chan_txdone tasklet is avoided */
> mbox_client <- cl->rx_callback()
> mbox_client -> mbox_client_txdone()
> mbox_client -> send_msg()
>

Correct! But what I thought it is most important here is that
send_msg and rx_callback are called on the same "connection"
so that inside rx_callback I can figure out if I got an ACK or I got
a request from the other side.

> Without your patch you will need to register tx and rx doorbell
> channels and the communication will looks like this:
> mbox_client -> send_msg()
> mbox_client <- mbox_chan_txdone() /* dummy notification, can be ignored */
> mbox_client <- cl->rx_callback()
> mbox_client -> send_msg()
>
> I assume, you are trying to optimize it and avoid dummy
> mbox_chan_txdone() notification. Correct?

TBH I am little bit confused about the role of txdb_tasklet. Is it there
just to trigger the sending of the next message in the buffer?

Using IMX mailbox with SOF IPC mechanism has a lot of overhead because
I think they are both doing the same thing.

E.g: On TX queuing the messages and then when ACK arrives it will send the
next message.

>
> The problem is, that current mailbox-framework will set txdone_method
> inside of mbox_controller_register() for all channels even if
> imx-mailbox has different types of channels.
>
> The problem with your patch is, that it will silently merge two channels
> (TXDB and RXDB) and not setting actual ACK by controller - mbox_chan_txdone().
> Not sure, why we need to merge it in this case.
>
> So, with current imx_mailbox implementation your firmware should work as
> is. You will need to register two separate channels for TXDB and
> RXDB. It will run with some overhead by triggering txdone tasklet in
> imx-mailbox driver.

I see your point. I think with the current imx_mailbox implementation SOF IPC
should work as it is with some overhead (at least when Host (Linux) initiates
the communication).

The keypoint here (I figured it out now) is that the two channels
TXDB and RXDB share the same IDX right? So, with
this idx we can figure out that we have an ACK from DSP or a request from DSP.

So we are set for communication when Host (Linux) starts the communication. It
should just work.

How about the case when DSP initiates the communication and Host needs to
send an ACK.

In this case we have:

mbox_client <- cl->rx_callback()
   mbox_client -> send_msg()

The problem here is that the Host needs to call send_msg() from inside
the rx_callback().
Do you see any problems with that:

Basically the pseudocode will be something like this:

Create connection #0 (RXDB0, TXDB0) Host -> DSP (Host initiates
communication, DSP sends ACK)
Create connection #1 (RXDB1, TXDB1) DSP -> Host (DSP initiates
communication, Host sends ACK).

rx_callback:
 -> if (chan_id == 0) // this has to be an ACK from DSP
      get_reply_from_shmem
      trigger SOF IPC state machine (let them know we got a reply)
    else if (chan_id == 1) // this has to be a request from DSP
      get_request()
       mbox_send_message(sc_chan->ch, NULL); //send back ACK



>
> If this overhead is a problem, then this should be fixed.

I need to have a working version with the current implementation
and then tell if overhead is a problem.

> Merging two doorbell  channels in to one with ACK support is nice,
> but will introduce more issues if we need other doorbell channels
> without ACK support on same controller
>
> I personally would prefer to to extend mailbox framework to support
> controllers with mixed channel types and remove dummy txdone tasklet
> from imx-mailbox.
>
> Since we already initialize part of &mbox->chans[i] by imx-mailbox driver,
> we can set proper chan->txdone_method as well. So we need only to
> prevent mbox_controller_register() to overwrite it.

Thanks for your explanations! Thinks are much clearer now!

Will try to work on implementing what I need with the current IMX mailbox
support and send patches for review.

thanks,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
