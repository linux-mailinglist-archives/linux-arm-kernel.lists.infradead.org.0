Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2366A73377
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwDkqJcGkalPbN1ID3X9EV29ktEQrCz/mwhjfkSW1mM=; b=DDMg4UJ0N+DxEA
	++iz4aMqKs3uPPtj1oZyeTWeIfoGsEX8fcwj07Z/4UGfom6KK4YNhpe9AI72qz5F33uliKApNXwMw
	BLJsiNmlxMaLl5SwSFRfuSlxDO7OYFemS6X+/YJ3z5s23KPey9WP7XPtnVk0qZ8i50amGMqLmhCmV
	MtjWKziQozqsgaAgt5B3nV24qe/7SH+flgQp0MUiBYJP3m4R5fcF+asPDhqqBPuHQOTofcw870hd3
	6lv2C3O4Y3Z8Ka08c6R4I3p4JX3OA6GXR7YA/fa6LWT6b9+VnRGYm7+c9XsjeOmdaVQP5aL0liufj
	6qu/c7a6NBUNjGu0q36g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJvC-00046Z-OU; Wed, 24 Jul 2019 16:15:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJv2-0003Vf-AZ
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:15:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94F4828;
 Wed, 24 Jul 2019 09:15:04 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AD5DE3F71F;
 Wed, 24 Jul 2019 09:15:02 -0700 (PDT)
Date: Wed, 24 Jul 2019 17:15:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ruslan Bilovol <ruslan.bilovol@gmail.com>
Subject: Re: [PATCH v8 0/5] arm64: ftrace with regs
Message-ID: <20190724161500.GG2624@lakrids.cambridge.arm.com>
References: <20190208150826.44EBC68DD2@newverein.lst.de>
 <0f8d2e77-7e51-fba8-b179-102318d9ff84@arm.com>
 <20190311114945.GA5625@lst.de>
 <20190408153628.GL6139@lakrids.cambridge.arm.com>
 <20190409175238.GE9255@fuggles.cambridge.arm.com>
 <CAB=otbRXuDHSmh9NrGYoep=hxOKkXVsy6R84ACZ9xELwNr=4AA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAB=otbRXuDHSmh9NrGYoep=hxOKkXVsy6R84ACZ9xELwNr=4AA@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_091508_442612_9831F85A 
X-CRM114-Status: GOOD (  23.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Arnd Bergmann <arnd@arndb.de>, Julien Thierry <julien.thierry@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ingo Molnar <mingo@redhat.com>,
 Torsten Duwe <duwe@lst.de>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, live-patching@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ruslan,

On Wed, Jul 10, 2019 at 03:27:58PM +0300, Ruslan Bilovol wrote:
> On Tue, Apr 9, 2019 at 8:52 PM Will Deacon <will.deacon@arm.com> wrote:
> >
> > On Mon, Apr 08, 2019 at 04:36:28PM +0100, Mark Rutland wrote:
> > > On Mon, Mar 11, 2019 at 12:49:46PM +0100, Torsten Duwe wrote:
> > > > On Wed, Feb 13, 2019 at 11:11:04AM +0000, Julien Thierry wrote:
> > > > > Hi Torsten,
> > > > >
> > > > > On 08/02/2019 15:08, Torsten Duwe wrote:
> > > > > > Patch series v8, as discussed.
> > > > > > The whole series applies cleanly on 5.0-rc5
> > > >
> > > > So what's the status now? Besides debatable minor style
> > > > issues there were no more objections to v8. Would this
> > > > go through the ARM repo or via the ftrace repo?
> > >
> > > Sorry agains for the delay on this. I'm now back in the office and in
> > > front of a computer daily, so I can spend a bit more time on this.
> > >
> > > Regardless of anything else, I think that we should queue the first
> > > three patches now. I've poked the relevant maintainers for their acks so
> > > that those can be taken via the arm64 tree.
> > >
> > > I'm happy to do the trivial cleanups on the last couple of patches (e.g.
> > > s/lr/x30), and I'm actively looking at the API rework I requested.
> >
> > Ok, I've picked up patches 1-3 and I'll wait for you to spin updates to the
> > last two.
> 
> Ok, I see that patches 1-3 are picked up and are already present in recent
> kernels.
> 
> Is there any progress on remaining two patches?

I'm afraid that I've been distracted on other fronts, so I haven't made
progress there.

> Any help required?

If you'd be happy to look at the cleanup I previously suggested for the
core, that would be great. When I last looked, it was simple to rework
things so that arch code doesn't have to define MCOUNT_ADDR, but I
hadn't figured out exactly how to split the core mcount assumptions from
the important state machine bits.

I'll take another look and see if I can provide more detail. :)

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
