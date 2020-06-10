Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1961F586D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1a9lNaPyY52b2d6dkjEaudyuHMNJkLPh6otSMPwJbc=; b=EL+ilv+qFLnryw
	Kb9N8GGW/SktjchY/Jg5QEkGAz1ZhP7stNrSZB74iSBoKbjca+HgFB1MpPqhTfn2DN9VRt3AgjSa6
	3qibpiDxi4SCYM9k64IBg09Mr7kXNo6vfg4GuPMe+eOHxsw6zmn/c/8ZH/LLAmCA1vM8y7+zukDZq
	vr7R/6mtCRbIUtPNPpKKiJdMR3PQHGrT2we8wLqih3PkqEjeOLDhKIzpQ9cymEmgCynne5bET34WF
	+eitskVVqeq6buYrE26idwDj5w9Rvr8yIXfLk1K7/cjXByCxEQfr3Bx7hWeo69fvHD2U80BQ9fJ3x
	VsayvEgSEyv1Rzm2dUtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj35t-0004eu-V2; Wed, 10 Jun 2020 15:56:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj35k-0004eI-Sv
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 15:56:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A52401FB;
 Wed, 10 Jun 2020 08:56:39 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 448083F6CF;
 Wed, 10 Jun 2020 08:56:36 -0700 (PDT)
Date: Wed, 10 Jun 2020 16:56:29 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: fix timeout value for send_message
Message-ID: <20200610155629.GA7357@bogus>
References: <20200607193023.52344-1-jassisinghbrar@gmail.com>
 <20200610082315.GB2689@bogus>
 <CABb+yY1T03YLwiFvBykxsAHQ9Kpu=r1nRTuaP3Emf5dP=Upm0g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY1T03YLwiFvBykxsAHQ9Kpu=r1nRTuaP3Emf5dP=Upm0g@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_085641_019671_CBD1B944 
X-CRM114-Status: GOOD (  37.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 10:21:19AM -0500, Jassi Brar wrote:
> On Wed, Jun 10, 2020 at 3:23 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Sun, Jun 07, 2020 at 02:30:23PM -0500, jassisinghbrar@gmail.com wrote:
> > > From: Jassi Brar <jaswinder.singh@linaro.org>
> > >
> > > Currently scmi_do_xfer() submits a message to mailbox api and waits
> > > for an apparently very short time. This works if there are not many
> > > messages in the queue already. However, if many clients share a
> > > channel and/or each client submits many messages in a row, the
> >
> > The recommendation in such scenarios is to use multiple channel.
> >
> If SCMI is to be accepted as a standard (which I hope), it has to
> support most kinds of controllers, but currently the implementation is
> too myopic. It is only a matter of time, when someone sees value in
> reusing firmware implementation (scmi) but does not have a MHU like
> controller.
>

It is being used with other transports like smc/hvc and virtio.
But I agree, this experiment made me realise we need to work with
single channel disabling certain features like fast_switch. I will
work on that and push a solution. Thanks for asking for traces
and having stared at it for sometime, I see some issues but that's
orthogonal to this one. Fixing that won't solve the issue we are
discussing though.

But that said, that is not the solution for Juno/MHU. We can parallelise
there with multiple requests and we should do so.

> > > timeout value becomes too short and returns error even if the mailbox
> > > is working fine according to the load. The timeout occurs when the
> > > message is still in the api/queue awaiting its turn to ride the bus.
> > >
> > >  Fix this by increasing the timeout value enough (500ms?) so that it
> > > fails only if there is an actual problem in the transmission (like a
> > > lockup or crash).
> > >
> > > [If we want to capture a situation when the remote didn't
> > > respond within expected latency, then the timeout should not
> > > start here, but from tx_prepare callback ... just before the
> > > message physically gets on the channel]
> > >
> >
> > The bottle neck may not be in the remote. It may be mailbox serialising
> > the requests even when it can parallelise.
> >
> Your logs show (in your test case), using 1 physical channel shows
> better transfer (those that complete) rates than virtual channels.

Indeed that is expected. It is like comparing output with 1 vs 2 CPUs
with some multi-thread load. The remote is now handling 2 requests at
a time and it clearly puts DVFS at priority and this will show up as
little higher latency for other requests like sensors.

> The transfers that fail are purely because of this short timeout.
>
> > >
> > >       if (xfer->hdr.poll_completion) {
> > > -             ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);
> > > +             ktime_t stop = ktime_add_ns(ktime_get(), 500 * 1000 * NSEC_PER_USEC);
> > >
> >
> > This is unacceptable delay for schedutil fast_switch. So no for this one.
> >
> Increasing timeout does not increase latency.

Agreed, but worst case you may be stuck here for 500ms which is not
acceptable. That's what I meant, not that the request will take 500ms.
Sorry if I was not clear earlier on that.

> Also scmi_xfer() can not know if it was reached from the fast_switch path.
>
> If a platform has many users over a channel such that it can not
> guarantee low enough latency, then it must not set the
> fast_switch_possible flag, which is optional for this reason.
>

Yes, that's what I am trying to explore and that's what I meant above
when I mentioned I see some issues. I have hacked and checked that doesn't
change much, the timeout happens but under bit heavy load and not in simpler
use-case as I showed in my traces. In short, having multiple channels
helps. And we have been so fixated on Tx in our discussions. More fun
with Rx and serialising as it impacts remote firmware too.

>
> > > @@ -313,7 +313,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
> > >                       ret = -ETIMEDOUT;
> > >       } else {
> > >               /* And we wait for the response. */
> > > -             timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
> > > +             timeout = msecs_to_jiffies(500);
> >
> > In general, this hides issues in the remote.
> >
> If you want to uncover remote issues, start the timeout in
> tx_prepare() because that is when the message is physically sent to
> the remote.
>

In that case we need to set it to 1ms as I mentioned earlier. Current
timeout of 30ms is for MBOX_MAX_LEN=20 which gives more than 1ms for each
and that's what we are targeting. I see no point in just changing the
timeout as you already mentioned above it is not changing the latency
anyway.

> > We are trying to move towards
> > tops 1ms for a request and with MBOX_QUEUE at 20, I see 20ms is more that
> > big enough. We have it set to 30ms now. 500ms is way too large and not
> > required IMO.
> >
> Again, increasing timeout does not slow the system down. It is to
> support more variety of platform setups.
>

Agreed and I have acknowledge. 30ms is chosen based on experiments and
also we are trying to achieve 1ms tops for each message. If some platform
has serious limitation, desc->max_rx_timeout_ms is configurable. We can
identify the platform and add specific timings for that. Same is true
do other parameters like the max_len and max_msg_size. If default is not
suitable, it can be changed.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
