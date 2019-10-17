Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD12DB92D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 23:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WquRUw9bJAOrurFZE7UhFmX/9bh3KSzAqBx7ejGLXT8=; b=ugtO7b//ZKHNEF
	1oDL6zz1XxSzSv+IRiHVVSH0utkXezxLWBq+Enl56tdYmebctyIJFQkXd9OEbno1CwcMMNLLtzrU5
	gtyYsomrbTpstct7ugl6sRUtAm6aiC85S/2aVIp+ng07qKVtPUD7yx2zwocgPy/juHZ/8p1rMwmhX
	2YV1vx3LM83kYwPPCXDK6yZZmIl9yDMSPC8Wlk5fY5JVebmtrrrFotqBlFbfuN/UtBeBMKHP03SFm
	QQ0lE9A1wFDIqGI2/k0w+n8q0P0Dyr4l27qwZRrYlsPydvMByXA6/kUoED4lpIn+ZPThWLs1+oPsH
	XjN6ritV/I7ozdaerO0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLDX3-0007OR-Jh; Thu, 17 Oct 2019 21:42:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLDWu-0007O3-Jq
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 21:41:58 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6431C2067B;
 Thu, 17 Oct 2019 21:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571348515;
 bh=nL5RyYEfnCQ/xMkhILlMFuPBby2mRFtC95ZvlIcD5DM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=L9h5G71ITKBOg+OObh19mJhCP2z0YPE5UKzQe1SOZIAWGWrU+4TMMmjQfoVben1Ji
 g06sKHmFk6jCgAXJ8GZpMVge6OEz+4J2FuxElTVe3b9Cqq/jW+qHX3M7n1BcOCQHRU
 CBbACUUL/kIJWOsSl/GrZglY/tLRGceGOXrqPXRs=
Date: Thu, 17 Oct 2019 22:41:48 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v5 0/3] Simplify count_read/count_write/signal_read
Message-ID: <20191017224148.5f7edae2@archlinux>
In-Reply-To: <20191012145101.GA3463@icarus>
References: <cover.1570391994.git.vilhelm.gray@gmail.com>
 <20191012150012.5e3399f1@archlinux> <20191012145101.GA3463@icarus>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_144156_687896_4AFB57D0 
X-CRM114-Status: GOOD (  27.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 linux-kernel@vger.kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, david@lechnology.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 12 Oct 2019 10:51:19 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> On Sat, Oct 12, 2019 at 03:00:12PM +0100, Jonathan Cameron wrote:
> > Hi William
> > 
> > What's the status on these? If you are happy that reviews and
> > testing is complete enough, do you want me to take them after
> > I pick up the eqep driver (hopefully shortly dependent on
> > the pull request Greg has from me being fine).
> > 
> > Thanks,
> > 
> > Jonathan  
> 
> Yes, this is ready for you to take. So after the eqep driver is picked
> up you can apply this patchset.

Series applied to the togreg branch of iio.git and pushed out as testing
for the autobuilders to play with it.

Thanks,

Jonathan

> 
> Thanks,
> 
> William Breathitt Gray
> 
> > 
> > On Sun,  6 Oct 2019 16:03:08 -0400
> > William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> >   
> > > Changes in v5:
> > >  - Add changes and additions to generic-counter.rst to clarify theory
> > >    and use of the Generic Counter interface
> > >  - Fix typo in counter.h action_get description comment
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
> > > William Breathitt Gray (3):
> > >   counter: Simplify the count_read and count_write callbacks
> > >   docs: driver-api: generic-counter: Update Count and Signal data types
> > >   counter: Fix typo in action_get description
> > > 
> > >  Documentation/driver-api/generic-counter.rst | 162 +++++++++++--------
> > >  drivers/counter/104-quad-8.c                 |  33 ++--
> > >  drivers/counter/counter.c                    | 101 ++----------
> > >  drivers/counter/ftm-quaddec.c                |  14 +-
> > >  drivers/counter/stm32-lptimer-cnt.c          |   5 +-
> > >  drivers/counter/stm32-timer-cnt.c            |  17 +-
> > >  drivers/counter/ti-eqep.c                    |  19 +--
> > >  include/linux/counter.h                      |  76 ++-------
> > >  8 files changed, 144 insertions(+), 283 deletions(-)
> > > 
> > > 
> > > base-commit: 0c3aa63a842d84990bd02622f2fa50d2bd33c652
> > > prerequisite-patch-id: ebe284609b3db8d4130ea2915f7f7b185c743a70
> > > prerequisite-patch-id: cbe857759f10d875690df125d18bc04f585ac7c9
> > > prerequisite-patch-id: 21f2660dc88627387ee4666d08044c63dd961dae  
> >   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
