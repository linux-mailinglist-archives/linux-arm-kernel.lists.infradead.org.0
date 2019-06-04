Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA1334378
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W0bZPukxnkgSNfai5f6IclFzs7R6pt7WYlhtnnkQ0eM=; b=hVcbpTg4YG+Fjm
	bq/ReIk3+yjxwm9J1BphIhoET0eQ8/J3chvLgWEUbyThHw0qeWKqI+MWQVn8q9lxiRPZVRZa8l9Nn
	2OXTTY3pvwlvM1Y9s/WcY6dpYuPHB8owsAtAoadCsjQ4AP4d4DxL99cpMtgPxjaTK1Hebs36pa16g
	xBx48k1eeMJ3BTgYEnuXkoqDv9IyK/zKWug9kAN5nD+OvzyjIFdrIxOt0jyVme5WY6nO/DV/tZud3
	WN0ZNbpzBI08eWMvMKodKuz1XqhD7IWcRcWAyMOg4KermUZHQyeUrm4zYrqMfdx2X7k3/cJ0uJcnE
	Dfl6Rv4z4lK1JNuSMxvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5zq-00036h-6e; Tue, 04 Jun 2019 09:44:46 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5zi-000363-RE
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:44:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98CB980D;
 Tue,  4 Jun 2019 02:44:38 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [10.37.9.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A1203F246;
 Tue,  4 Jun 2019 02:44:35 -0700 (PDT)
Date: Tue, 4 Jun 2019 10:44:24 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
Message-ID: <20190604093827.GA31069@e107533-lin.cambridge.arm.com>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
 <20190531165326.GA18115@e107155-lin>
 <20190603193946.GC2456@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603193946.GC2456@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_024438_890004_9500B962 
X-CRM114-Status: GOOD (  24.18  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 08:39:46PM +0100, Mark Brown wrote:
> On Fri, May 31, 2019 at 05:53:26PM +0100, Sudeep Holla wrote:
> > On Fri, May 31, 2019 at 11:21:08AM -0500, Jassi Brar wrote:
> > > On Fri, May 31, 2019 at 9:33 AM Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> > > > This is my another attempt to extend mailbox framework to support
> > > > doorbell mode mailbox hardware. It also adds doorbell support to ARM
> > > > MHU driver.
>
> > > Nothing has really changed since the last time we discussed many months ago.
> > > MHU remains same, and so are my points.
>
> > Yes, I understand your concern.
>
> > But as mentioned in the cover letter I did try the suggestions and have
> > detailed reasoning why that's still an issue. In short I ended up
> > re-inventing mailbox framework with all the queuing and similar APIs
> > for this. Worse, we can't even add an extra node for that in DT to
> > describe that. It can't be simple shim as we need to allow multiple
> > users to access one physical channel at a time. We have use case
> > where we can this for CPU DVFS fast switching in scheduler context.
>
> Forgive me if I'm missing something here (this is partly based on
> conversations from months ago so I may be misremembering things) but is
> the issue here specifically the doorbell mode or is it the need to have
> partly software defined mailboxes implemented using this hardware?

I can say it's partially both.

1. The hardware is designed keeping in mind multiple transport protocols:
   doorbell mode, single word and multiple work(only in newer versions)
   Using that hardware capability provides access to multiple channels
   to the software.

2. I can also view this as software defined mailboxes if we go by
   definition that each channel should have associated dedicated interrupt
   as Jassi mentions.

The main idea is that each bit in these 32-bit registers can be written
atomically without the need of read-modify-write enabling software to
implement multiple channels in lock-less way.

> My understanding is that the hardware is more a component that's intended
> to allow potentially multiple more complex mailboxes to be tied to a
> single hardware block than a complete mailbox in and of itself.

Correct.

> It feels like the issues with sharing access to the hardware and with the
> API for talking to doorbell hardware are getting tied together and
> confusing things.  But like I say I might be missing something here.

As I tried to simply in my cover letter, I will try to explain in simpler
terms.

 1. This version of hardware has 3 blocks(one for secure and 2 non-secure)
    Each block has 3 sets of 32-bit registers(SET, CLEAR and STATUS)
    SET and CLEAR are write only and STATUS is read-only.

    Each block has a dedicated interrupt line.

2. The hardware was designed to cater 2 transport protocols. A single
   word transfer(non-zero) or each bit in doorbell mode.

3. The next version extends with each block having larger than 32-bit
   window(up to 124 words) allowing it to used it for multiple
   word as transport protocol. Mainly for some IoT usecase.

So what I am trying to convey here is MHU controller hardware can be
used choosing one of the  different transport protocols available and
that's platform choice based on the use-case.

The driver in the kernel should identify the same from the firmware/DT
and configure it appropriately.

It may get inefficient and sometime impossible to address all use-case
if we stick to one transport protocol in the driver and try to build
an abstraction on top to use in different transport mode.

Hope this clarify things little bit more.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
