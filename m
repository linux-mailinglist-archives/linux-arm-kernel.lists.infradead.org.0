Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AD3CCF7C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 10:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26h6fVF0hKNxthG6bUUiUT4eea8mphXeStYbQmBSlY8=; b=CCaua+2hTYcl+t
	ZHkaquR8uu9ynWATaH8oHASUQJ2hw32D4Ke90WFwfRM3Vlrwy/cBn2/NTv+cj109VGa6PZL+7ux9H
	U2oPtRAvX4Gr59UXhPaG6neAPW0AYl9WUo1l6I9b7qd94xgNXz9LU0eL+grZ76WLps/J4NS7WznJb
	kUKQ7/CSxSS18xS8wPf1hRBIdZ3r2xTu5VPGBhlvLRrfuLnQZ/8Oa8cC4UaniGbFr2JuC+rzY6ZOx
	VjTwc5QB3UC0gfe88wPMTB1a47X2WHiUDx+xNzCtwXseHJ6oYPOcSMiE2LZN24jTPpeb4sHB8+IVI
	ps1aJTohgH2xujK3SPBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH29k-0002cb-2r; Sun, 06 Oct 2019 08:44:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH29b-0002cI-66
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 08:44:36 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1516C2084D;
 Sun,  6 Oct 2019 08:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570351474;
 bh=Qf2wrEgOiBLE4CvRNCZMKzOomxtdyr42HQz7czSbh/Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ZUa+8iqqCOY9u9t6rIWLLiN44mhLkXg/U6bB3USOYcapHN5mQjCmUp1QGu2MZTxaR
 S73/1eaqnVMPLVPID1dZCiFJPQUZcCQQ4hZPefE+0mhtnhFNX+SRfxwWV5sbXWn+xZ
 yV0Q0nUEKvYFASLrkf7C4RMHydUrr0DWNh+nUze8=
Date: Sun, 6 Oct 2019 09:44:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v3 0/2] Simplify count_read/count_write/signal_read
Message-ID: <20191006094417.602757a1@archlinux>
In-Reply-To: <20191005171938.GA7199@icarus>
References: <cover.1568816248.git.vilhelm.gray@gmail.com>
 <20191005153255.4290ce81@archlinux> <20191005171938.GA7199@icarus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_014435_267781_05065272 
X-CRM114-Status: GOOD (  32.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: benjamin.gaignard@linaro.org, alexandre.torgue@st.com,
 Felipe Balbi <felipe.balbi@linux.intel.com>, linux-iio@vger.kernel.org,
 patrick.havelange@essensium.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 Fabien Lahoudere <fabien.lahoudere@collabora.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 David Lechner <david@lechnology.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 5 Oct 2019 13:19:38 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Sat, Oct 05, 2019 at 03:33:08PM +0100, Jonathan Cameron wrote:
> > Hi William,
> > 
> > This all makes sense to me.  Do you want to wait for some more reviews
> > or should I pick them up now through IIO?  We are really early in
> > the cycle so plenty of time, unless there are new drivers coming you
> > want to use these from the start.
> > 
> > Thanks,
> > 
> > Jonathan  
> 
> Getting this in sooner would be better since that will save Fabien from
> having to introduce the COUNTER_COUNT_TALLY type in the cros_ec patch
> submission.
> 
> The only concern left now is that the TI eQEP driver needs to be updated
> as well for these changes, but it's not in the IIO testing branch yet.
> 
> Do you want to merge this patchset first, or wait until TI eQEP makes it
> into the testing branch? Alternatively, I can merge the cros_ec patchset
> and Intel QEP patchset into my personal repository when they are ready,
> then later submit a git pull request to you with these changes if you
> prefer that route.

OK, so I need to do a pull request to be able to move the testing branch
to the point where I can do the immutable branch needed for that TI set.
Should do that later this week. So I'll take the TI eQEP series at that
point. If you want to prep a version of this that includes this driver
that would be great.  Should be able to pull both in next weekend at
the latest.  If it takes a bit longer for you to be ready, no problem!

Thanks,

Jonathan



> 
> William Breathitt Gray
> 
> > On Wed, 18 Sep 2019 23:22:44 +0900
> > William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> >   
> > > Changes in v3:
> > >  - Squash code changes to single patch to avoid compilation error
> > > 
> > > The changes in this patchset will not affect the userspace interface.
> > > Rather, these changes are intended to simplify the kernelspace Counter
> > > callbacks for counter device driver authors.
> > > 
> > > The following main changes are proposed:
> > > 
> > > * Retire the opaque counter_count_read_value/counter_count_write_value
> > >   structures and simply represent count data as an unsigned integer.
> > > 
> > > * Retire the opaque counter_signal_read_value structure and represent
> > >   Signal data as a counter_signal_value enum.
> > > 
> > > These changes should reduce some complexity and code in the use and
> > > implementation of the count_read, count_write, and signal_read
> > > callbacks.
> > > 
> > > The opaque structures for Count data and Signal data were introduced
> > > originally in anticipation of supporting various representations of
> > > counter data (e.g. arbitrary-precision tallies, floating-point spherical
> > > coordinate positions, etc). However, with the counter device drivers
> > > that have appeared, it's become apparent that utilizing opaque
> > > structures in kernelspace is not the best approach to take.
> > > 
> > > I believe it is best to let userspace applications decide how to
> > > interpret the count data they receive. There are a couple of reasons why
> > > it would be good to do so:
> > > 
> > > * Users use their devices in unexpected ways.
> > > 
> > >   For example, a quadrature encoder counter device is typically used to
> > >   keep track of the position of a motor, but a user could set the device
> > >   in a pulse-direction mode and instead use it to count sporadic rising
> > >   edges from an arbitrary signal line unrelated to positioning. Users
> > >   should have the freedom to decide what their data represents.
> > > 
> > > * Most counter devices represent data as unsigned integers anyway.
> > > 
> > >   For example, whether the device is a tally counter or position
> > >   counter, the count data is represented to the user as an unsigned
> > >   integer value. So specifying that one device is representing tallies
> > >   while the other specifies positions does not provide much utility from
> > >   an interface perspective.
> > > 
> > > For these reasons, the count_read and count_write callbacks have been
> > > redefined to pass count data directly as unsigned long instead of passed
> > > via opaque structures:
> > > 
> > >         count_read(struct counter_device *counter,
> > >                    struct counter_count *count, unsigned long *val);
> > >         count_write(struct counter_device *counter,
> > >                     struct counter_count *count, unsigned long val);
> > > 
> > > Similarly, the signal_read is redefined to pass Signal data directly as
> > > a counter_signal_value enum instead of via an opaque structure:
> > > 
> > >         signal_read(struct counter_device *counter,
> > >                     struct counter_signal *signal,
> > >                     enum counter_signal_value *val);
> > > 
> > > The counter_signal_value enum is simply the counter_signal_level enum
> > > redefined to remove the references to the Signal data "level" data type.
> > > 
> > > William Breathitt Gray (2):
> > >   counter: Simplify the count_read and count_write callbacks
> > >   docs: driver-api: generic-counter: Update Count and Signal data types
> > > 
> > >  Documentation/driver-api/generic-counter.rst |  22 ++--
> > >  drivers/counter/104-quad-8.c                 |  33 ++----
> > >  drivers/counter/counter.c                    | 101 +++----------------
> > >  drivers/counter/ftm-quaddec.c                |  14 +--
> > >  drivers/counter/stm32-lptimer-cnt.c          |   5 +-
> > >  drivers/counter/stm32-timer-cnt.c            |  17 +---
> > >  include/linux/counter.h                      |  74 ++------------
> > >  7 files changed, 53 insertions(+), 213 deletions(-)
> > >   
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
