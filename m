Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A181F57A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 17:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+BpurAOvnY3E3gnfUs1Xs9arG1X4rQCICiorS7qYEJM=; b=cu8RARWvsCWPZC
	oH7kTcjLw81xUNGc9YGwpz6xQUipIylQuQ150o9+pzBEKuGxMP84E+IEqQPihlZwStyCWqnmgr6Hg
	1dUQj/+mVNRgNx7Bsbx5eqHqT8OTXWgoxVKtT1P+K16JAvHrLzlyIePwa+dKelP3Zm+YndL4eZY58
	qEc/poX2L6f3vgL4VBM+YY2OL/DaWQoa51gXCfD/jNwBD3muvbnfukBDFwdix/u1rs/njFlU5nfZd
	d3+NarfSL7iY3rsBd+K1+ThjYEJAM1UPJQgKYtE7BWrNkJSxaMd1f19R3so6w/I/xCWGIwsEmo9Mu
	kSUGwGh4CoOBspUp5WIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj2Xs-0007bw-Od; Wed, 10 Jun 2020 15:21:40 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj2Xk-0007bU-8S
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 15:21:33 +0000
Received: by mail-io1-xd43.google.com with SMTP id u13so2597928iol.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 08:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rDIT6x87ISO3TnYeS6spJXv8ZoQmwNPEKf3Qs0adTWg=;
 b=QZTHa8QrEZjMQuJ9tkWDu1RFvtMyhjk7qROm7omdjC1CgoXYpgUU5UHxQGj31i+io3
 EciL1+PXhuiz+mSUdq21pFbl91WIzCwJ8O8+ZXHF31amgFtErVCEe6W47VqgIfZxb37M
 yk+tj6f2Tl5R4SsaeTXDEG9mKIFX/1x0YfDwrabaDItK0vCjv7SXUecuI1G6VVfbyC6U
 uksWNNTTlhV6b4aalTTbF3l/hD08TfObXvyTGob4r8R8aJfmEVdYE9h5000HMtHKR7xH
 d6F+IX/zGImQ+DJp+eWPl2txEl/XR8kzncK9giayu/3Dz71hka71owx6uDqcupFU1IM/
 kgUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rDIT6x87ISO3TnYeS6spJXv8ZoQmwNPEKf3Qs0adTWg=;
 b=jTAM/FB7K/cln24QNqTWRpvS8nQXNW0kjDCHfKjBLSVCxf9CIYJZuQ5k/gzyv/1B0y
 9jHRLbi44ekdnqNwQI8TnSDhv1P07+J8vJur6byM0bj/9J8du6anWzMshOWfKLDJc8IV
 GIEOulXbkWJcCkEi7pOuxRadtriUArH45EyAcdTxGU8zAaRY6+mrtdEMF7rC/v+fhLCC
 /KFbKPiosTvsLDTHdkdCYmivPnWdbxoHFu5zCaqmnbNybPVjN7pNrEhwhOazVLO3xzO6
 RDramFvTo6O63Z1CCWZiZJCV/iUV4AWggcRiAXRZbet4//OV6EP7aKD3M7iYrMZXOS7B
 t49A==
X-Gm-Message-State: AOAM531weTSIkCA/1Cn5ng2NE/UUMT0FYed4QAWu9qXdT6kMJLYVUfBf
 2OoqiAbZ3qCUjwDGfTSSvtWtdFKQpieDFwA3mc0=
X-Google-Smtp-Source: ABdhPJwlpnE1mMDsScFZY6A2ChwqnbMX2Dfb5g5WGluoTGmF82+K/Rsrds1krZpmpZcF4ac0f23skflBlNDgrrwU+Vg=
X-Received: by 2002:a6b:b515:: with SMTP id e21mr3827345iof.53.1591802491079; 
 Wed, 10 Jun 2020 08:21:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200607193023.52344-1-jassisinghbrar@gmail.com>
 <20200610082315.GB2689@bogus>
In-Reply-To: <20200610082315.GB2689@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Wed, 10 Jun 2020 10:21:19 -0500
Message-ID: <CABb+yY1T03YLwiFvBykxsAHQ9Kpu=r1nRTuaP3Emf5dP=Upm0g@mail.gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: fix timeout value for send_message
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_082132_327476_0E7FAF3F 
X-CRM114-Status: GOOD (  26.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 3:23 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Sun, Jun 07, 2020 at 02:30:23PM -0500, jassisinghbrar@gmail.com wrote:
> > From: Jassi Brar <jaswinder.singh@linaro.org>
> >
> > Currently scmi_do_xfer() submits a message to mailbox api and waits
> > for an apparently very short time. This works if there are not many
> > messages in the queue already. However, if many clients share a
> > channel and/or each client submits many messages in a row, the
>
> The recommendation in such scenarios is to use multiple channel.
>
If SCMI is to be accepted as a standard (which I hope), it has to
support most kinds of controllers, but currently the implementation is
too myopic. It is only a matter of time, when someone sees value in
reusing firmware implementation (scmi) but does not have a MHU like
controller.

> > timeout value becomes too short and returns error even if the mailbox
> > is working fine according to the load. The timeout occurs when the
> > message is still in the api/queue awaiting its turn to ride the bus.
> >
> >  Fix this by increasing the timeout value enough (500ms?) so that it
> > fails only if there is an actual problem in the transmission (like a
> > lockup or crash).
> >
> > [If we want to capture a situation when the remote didn't
> > respond within expected latency, then the timeout should not
> > start here, but from tx_prepare callback ... just before the
> > message physically gets on the channel]
> >
>
> The bottle neck may not be in the remote. It may be mailbox serialising
> the requests even when it can parallelise.
>
Your logs show (in your test case), using 1 physical channel shows
better transfer (those that complete) rates than virtual channels.
The transfers that fail are purely because of this short timeout.

> >
> >       if (xfer->hdr.poll_completion) {
> > -             ktime_t stop = ktime_add_ns(ktime_get(), SCMI_MAX_POLL_TO_NS);
> > +             ktime_t stop = ktime_add_ns(ktime_get(), 500 * 1000 * NSEC_PER_USEC);
> >
>
> This is unacceptable delay for schedutil fast_switch. So no for this one.
>
Increasing timeout does not increase latency.
Also scmi_xfer() can not know if it was reached from the fast_switch path.

If a platform has many users over a channel such that it can not
guarantee low enough latency, then it must not set the
fast_switch_possible flag, which is optional for this reason.


> > @@ -313,7 +313,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
> >                       ret = -ETIMEDOUT;
> >       } else {
> >               /* And we wait for the response. */
> > -             timeout = msecs_to_jiffies(info->desc->max_rx_timeout_ms);
> > +             timeout = msecs_to_jiffies(500);
>
> In general, this hides issues in the remote.
>
If you want to uncover remote issues, start the timeout in
tx_prepare() because that is when the message is physically sent to
the remote.

> We are trying to move towards
> tops 1ms for a request and with MBOX_QUEUE at 20, I see 20ms is more that
> big enough. We have it set to 30ms now. 500ms is way too large and not
> required IMO.
>
Again, increasing timeout does not slow the system down. It is to
support more variety of platform setups.

Cheers!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
