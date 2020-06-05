Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582D11EF0C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 06:57:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9xDxyN70ExM7cEcrAZEhiQXUgcc8bC4ALRpE/+pbfk=; b=jmXmCyHCfPT6YI
	zNaip1wFmO0qrpYEHflqXs9A1wUw95/vDHVAl8AozmqcT8xZ142sWM06TVIRPMeqkpbW/tMRjKOAb
	Po0OHxY1du5d8HOeYSTWBPpWDBFVLkmBnmezkIWyZ8Mcvnyx+DJFtATs7a42NT6cHEbe/E4/DC/zp
	h2d32loe73PCAfaerl6ZZ24E9TyZ330SQXi7t0k56+W0naeS8GtgOO3DWZu7YlqEeOx1YiVdZs4yG
	FSl1ttmde540pXL3pOOaNXiD5W9+OGAw4Z/GBUUeFm0JkhUZBmeFvEtaHuEdFNN7geXectLkFOsRR
	lcUXhpYG2aMbQ46hcTvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh4Pe-0002kA-Cz; Fri, 05 Jun 2020 04:57:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh4PV-0002jC-Nv
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 04:56:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00B832B;
 Thu,  4 Jun 2020 21:56:51 -0700 (PDT)
Received: from bogus (unknown [10.37.12.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 65DA43F6CF;
 Thu,  4 Jun 2020 21:56:48 -0700 (PDT)
Date: Fri, 5 Jun 2020 05:56:45 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Jassi Brar <jassisinghbrar@gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
Message-ID: <20200605045645.GD12397@bogus>
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
 <20200529040758.kneg2j4n3gxh2rfv@vireshk-i7>
 <20200603180435.GB23722@bogus>
 <CABb+yY0cW1GZHVmwEr19JRdJTmsAxw9uq83QV_aq-tdPJO5_Fg@mail.gmail.com>
 <20200604092052.GD8814@bogus>
 <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABb+yY27Ngb0C-onkU2qyt=uKgG4iVrcv8hGkC+anypQbTRA1w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_215653_864215_DE4E7A27 
X-CRM114-Status: GOOD (  25.58  )
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
Cc: Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Devicetree List <devicetree@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 10:15:55AM -0500, Jassi Brar wrote:
> On Thu, Jun 4, 2020 at 4:20 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Wed, Jun 03, 2020 at 01:32:42PM -0500, Jassi Brar wrote:
> > > On Wed, Jun 3, 2020 at 1:04 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Fri, May 29, 2020 at 09:37:58AM +0530, Viresh Kumar wrote:
> > > > > On 28-05-20, 13:20, Rob Herring wrote:
> > > > > > Whether Linux
> > > > > > requires serializing mailbox accesses is a separate issue. On that side,
> > > > > > it seems silly to not allow driving the h/w in the most efficient way
> > > > > > possible.
> > > > >
> > > > > That's exactly what we are trying to say. The hardware allows us to
> > > > > write all 32 bits in parallel, without any hardware issues, why
> > > > > shouldn't we do that ? The delay (which Sudeep will find out, he is
> > > > > facing issues with hardware access because of lockdown right now)
> > > >
> > > > OK, I was able to access the setup today. I couldn't reach a point
> > > > where I can do measurements as the system just became unusable with
> > > > one physical channel instead of 2 virtual channels as in my patches.
> > > >
> > > > My test was simple. Switch to schedutil and read sensors periodically
> > > > via sysfs.
> > > >
> > > >  arm-scmi firmware:scmi: message for 1 is not expected!
> > > >
> > > This sounds like you are not serialising requests on a shared channel.
> > > Can you please also share the patch?
> >
> > OK, I did try with a small patch initially and then realised we must hit
> > issue with mainline as is. Tried and the behaviour is exact same. All
> > I did is removed my patches and use bit[0] as the signal. It doesn't
> > matter as writes to the register are now serialised. Oh, the above
> > message comes when OS times out in advance while firmware continues to
> > process the old request and respond.
> >
> > The trace I sent gives much better view of what's going on.
> >
> BTW, you didn't even share 'good' vs 'bad' log for me to actually see
> if the api lacks.
>
> Let us look closely ...
>
>  >>    bash-1019  [005]  1149.452340: scmi_xfer_begin:
> transfer_id=1537 msg_id=7 protocol_id=19 seq=0 poll=1
>  >>    bash-1019  [005]  1149.452407: scmi_xfer_end:
> transfer_id=1537 msg_id=7 protocol_id=19 seq=0 status=0
> >
> This round trip took  67usecs.  (log shows some at even 3usecs)
> That includes mailbox api overhead, memcpy and the time taken by
> remote to respond.

This is DVFS request which firmware acknowledges quickly and expected
to at most 100us.

> So the api is definitely capable of much faster transfers than you require.
>

I am not complaining about that. The delay is mostly due to the load on
the mailbox and parallelising helps is the focus here.

> >>     bash-1526  [000]  1149.472553: scmi_xfer_begin:      transfer_id=1538 msg_id=6 protocol_id=21 seq=0 poll=0
> >>      <idle>-0     [001]  1149.472733: scmi_xfer_begin:      transfer_id=1539 msg_id=7 protocol_id=19 seq=1 poll=1
> >
> Here another request is started before the first is finished.

Ah, the prints are when the client requested. It is not when the mailbox
started it. So this just indicates the beginning of the transfer from the
client. I must have mentioned that earlier. Some request timeout before
being picked up by mailbox if the previous request is not acknowledge
quickly. E.g. Say a sensor command started which may take upto 1ms,
almost 5-6 DVFS request after that will timeout.

> If you want this to work you have to serialise access to the single
> physical channel and/or run the remote firmware in asynchronous mode -
> that is, the firmware ack the bit as soon as it sees and starts
> working in the background, so that we return in ~3usec always, while
> the data returns whenever it is ready.

Yes it does that for few requests like DVFS while it uses synchronous
mode for few others. While ideally I agree everything in asynchronous
most is better, I don't know there may be reasons for such design. Also
the solution given is to use different bits as independent channels
which hardware allows. Anyways it's open source SCP project[1].

--
Regards,
Sudeep

[1] https://github.com/ARM-software/SCP-firmware

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
