Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC1E15FC9A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Feb 2020 05:48:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bd/EdZFdcvTE2JKBp9Mt134vCil3TdZQyaaZ8kcfnAE=; b=H0z7azmYrAleAk
	uPYj9OG/mfdWXX6RstaaphiPv0mQmPhY13oBLr4vcfZu9Ecuw2WLrs8HX8OVSzljR2jC93lm7REd1
	rlFxUO3ToXT+78nsYu2mRJEiStEpoC0UJ+x8VWMg1zUJXPcn+r/0FcVTyf8qUSZQ3xv++bzhpbiR9
	0mB5/MwsF1TTaQ6KjCQi5UIAvvzK+XmxYnV3IwilONZdIN3S+dcbGc2+5lbNtgVyNub4C7OIjGwSl
	paBNhvlhoi8xW+nN9lX60L/yDet63Y9eNxPhqIjbpZexO+vNKZsy4YatHyetV23FESBZmeF8wGSdB
	b8qEXI9Kui2aDkKjHLLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2pMq-0003QQ-Ag; Sat, 15 Feb 2020 04:47:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2pMi-0003Q6-V2
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Feb 2020 04:47:42 +0000
Received: by mail-io1-xd43.google.com with SMTP id n21so718922ioo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 20:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qq1JsAqiCjHcNPcsxXhmdc0nETQ0QzWBRojx90PLlJU=;
 b=VvFoDcYynIy2stzEw4tKB18BCJsauZ+AfV0YOmIiF9nKGXLTfkLhww+/JkXKopTgkn
 iK4/7NeLk6x4hF6W0aW1opGzM9p+s1IQCJwh8Dcjdm4IVSpiDvZ6akg+m6StChFeAcWF
 Hh2q7Wl33hq52TsWxh7PGARsgmPfqN8RYw+dctlEK/bfJxwafmwbyhfSDgbX4zIlMDqI
 8FVS0kwjUMpV6tJDEAGPT9a0rcMfY1i2E1gLH6feO81+wg9ZKmRCwkI/RSUhq/4WS15U
 g4owFwK23i6eVSdleazq+yPmeHBQtCUe9AcJ4NA67mCMHxrwP9O7nVDREpv0dt4bdLi/
 lZEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qq1JsAqiCjHcNPcsxXhmdc0nETQ0QzWBRojx90PLlJU=;
 b=bkEETiv7ZS1PE4fwSzaicjUOG0uHK/heHps4a37Ysg1m09zmPhTiMdICGMYbadwvrY
 jPO6lwD2XztJBqNGhDjRVSI9mg4bdv3Kva0lzVSjsD/6gW2D1CnqDP3BwAUqJnkxr2SQ
 aS3Qd+6jecs8Dr0AJL3xr2f9Ha//k4XK9UO0Qc4bVjeST/qX8vVBkLXlDwqPS5bXF64t
 V0Vq0AIX8qz39eWvG5rkzq1ccLDzOU2hwc+V5lQUWpoA9OGogTKzFs+ItG6TtqRFeyxN
 VooAbQfckFMp22U71se4WR+UK3SYuIeMwAXiaS+CwwXEttko/MSd74vzF3IWNveEpH//
 nXRg==
X-Gm-Message-State: APjAAAUSPeBQFclegBIyymitaF+gk0T9JDu+81teEr+GJ6pOx56vGaXf
 y/kWNo4mjbOXOmsZ86HFIR7UQ0J3GV/u2kKXNwk=
X-Google-Smtp-Source: APXvYqzf4RcDZyunuxJs2Ub2RQ8Gq79dlZl5MpqCbLh8XGUvgtMOKI57M3Ctdi0XYVfLmyYogCjU3fCB2/BeMTFx2Nc=
X-Received: by 2002:a05:6602:214f:: with SMTP id
 y15mr4934405ioy.69.1581742059344; 
 Fri, 14 Feb 2020 20:47:39 -0800 (PST)
MIME-Version: 1.0
References: <20200113051852.15996-1-samuel@sholland.org>
 <20200113051852.15996-3-samuel@sholland.org>
 <CABb+yY2MJ-1i0K7XVkPT3+6ac1XR9-3zf-GDNeswOMp6Zn_Ufw@mail.gmail.com>
 <72dc2074-c06d-4bdf-ca5f-b4007f492407@sholland.org>
 <89168ba0-a8ac-b433-3f93-412b22a9bc1a@sholland.org>
In-Reply-To: <89168ba0-a8ac-b433-3f93-412b22a9bc1a@sholland.org>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 14 Feb 2020 22:47:28 -0600
Message-ID: <CABb+yY3T1cL+E6Y1tGb5cuKLSY5m_zi=VOx4AJzuX40TMOSQTw@mail.gmail.com>
Subject: Re: [PATCH v6 2/6] mailbox: sun6i-msgbox: Add a new mailbox driver
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_204741_025533_5A16D5E9 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 Devicetree List <devicetree@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 9:48 PM Samuel Holland <samuel@sholland.org> wrote:
>
> On 2/12/20 8:18 PM, Samuel Holland wrote:
> > Jassi,
> >
> > On 2/12/20 8:02 PM, Jassi Brar wrote:
> >> On Sun, Jan 12, 2020 at 11:18 PM Samuel Holland <samuel@sholland.org> wrote:
> >>>
> >>> +static int sun6i_msgbox_send_data(struct mbox_chan *chan, void *data)
> >>> +{
> >>> +       struct sun6i_msgbox *mbox = to_sun6i_msgbox(chan);
> >>> +       int n = channel_number(chan);
> >>> +       uint32_t msg = *(uint32_t *)data;
> >>> +
> >>> +       /* Using a channel backwards gets the hardware into a bad state. */
> >>> +       if (WARN_ON_ONCE(!(readl(mbox->regs + CTRL_REG(n)) & CTRL_TX(n))))
> >>> +               return 0;
> >>> +
> >>> +       /* We cannot post a new message if the FIFO is full. */
> >>> +       if (readl(mbox->regs + FIFO_STAT_REG(n)) & FIFO_STAT_MASK) {
> >>> +               mbox_dbg(mbox, "Channel %d busy sending 0x%08x\n", n, msg);
> >>> +               return -EBUSY;
> >>> +       }
> >>> +
> >> This check should go into sun6i_msgbox_last_tx_done().
> >> send_data() assumes all is clear to send next packet.
> >
> > sun6i_msgbox_last_tx_done() already checks that the FIFO is completely empty (as
> > the big comment explains). So this error could only be hit in the knows_txdone
> > == true case, if the client pipelines multiple messages by calling
> > mbox_client_txdone() before the message is actually removed from the FIFO.
> >
> > From the comments in mailbox_controller.h, this kind of usage looks to be
> > unsupported. In that case, I could remove the check entirely. Does that sound right?
>
> After more thought, I would prefer to keep the check. It is fast/simple, and it
> keeps the hardware from getting into an inconsistent state. Silently dropping
> messages sounds like a poor quality of implementation.
>
If the FIFO becomes full after calling send_data(),  then
last_tx_done() should not only check remote's irq status but also
check that the data has been consumed from the FIFO locally (hence the
check becomes redundant in send_data). Otherwise the last_tx_done is
incomplete.  And you actually end up writing more code (error handling
and resubmission instead of the api managing it all transparently)

> send_data() is documented in mailbox_controller.h as returning EBUSY,
>
error is usually returned for s/w check (like mssg too big for fifo),
not h/w events.

> and I see multiple other mailbox controllers implementing the same or a similar check.
>
That it encourages next developer to repeat, is another reason to do
it right this time. Otherwise, I can live with that check in
send_data.

> If
> that is not the way you intend for the API to work, then please update the
> comments in mailbox_controller.h.
>
Mailbox implementations follow no spec. There may be prudent need to
return from send_data, but practically I haven't come across any(?)
platform that can't do without the check in send_data.

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
