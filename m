Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D957D5082
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 16:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lv1QfuBZ4+5zIa5kX5OYlJo7E3/znDQIYoidarVHn6s=; b=gDxSx38Nmx234O
	yJ7eyAoATRGvNslW1JIpzUJydC2EIEd61p4HkUR8juIGsu3YntsBAo1BApRfJ+7PF3GOtQOumkLHs
	xzVO/yTpMd0kvWaZdkXKff7m0KHBJi0wK3/hFwlrJQ1bAUZGFUwUUsc5P2oaH/qdO0s+8HaeDNnHS
	IgkHexWHblnqVdjPntccftNlGNixvO+/LOX15V24fbWN2wm16lu6ZTEU47xSdjZGxfCKiMcuT5Yte
	z3jhd/2om6IynrKH6vNYNSV2DNcb+XgfrD0QUVSC6Lm5/P/neETzwg8IJwc/Y70ScmY07zHGuPS3Z
	cBZRifE1beE+qZdm5LDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJIkM-0004pJ-2N; Sat, 12 Oct 2019 14:51:54 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJIk9-0004oc-Oc
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 14:51:43 +0000
Received: by mail-yb1-xb43.google.com with SMTP id h202so4039715ybg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 07:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/ZoUm6X5G3HDfQhEntZgmJ59I63O9/tKKJbnPl2JY/k=;
 b=hk1eKYzZeL1pp5cDqiAgSIS/n4gu6WYa8pXSCB4OBj6T11M3htlnbk2B1LKj0tpx1X
 KMAJ2VxqF9MR1pWQZAucq4JGOHHVTROy2J9OtF6L1UYO7SZJ1ueqP8d1+1YDJjjUsPR9
 PfqIe4+EPPDUrsVUk7Q0F6okxnmo7rrminHkyxyGTJHMut5t3wnMM0MuVxhO+C9M1HPy
 7wYl3+R6AN/pwjV3iIzh789QwyLNKl+Xle1LsuwwkEkh1TufWhGLOcWFqIo5VO1+99Q/
 nyTZdDs/STDcM43gRkQOFgKBTZYEIm1Zc1h5pfvPVxtReTe1G4icK+Z2nTT9SJlY5Df+
 myTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/ZoUm6X5G3HDfQhEntZgmJ59I63O9/tKKJbnPl2JY/k=;
 b=gcXCfFc5RjMvUN9GSlpq8TrTNQEinSE/e6N0gIADpaNGuQsm3pt/cj8gNnGBrg/dry
 6vfdMxPQE4RfvUDVu0dc4fAfRykDnjmHHMQRPwWslrFilOqPUNBtMHPcxZVYknAimzM1
 Gv8ngJ3KEu8JE0qYzpWbNmMhwXHkVkys3B/cl413lJqW7g66J/HYz+YwMk5i+8TjSe/y
 j+T0JUKwxRWIQfWH4U+meJlejIHSfLHjptG154Roq4ahhMhGArLz4rERs82V8MpXDZfZ
 3D+iUkF4/Q7BS3AXTDFf9RDUJXk5mky+zX9HjsWOL8CA+KJ7mXAvQLZRsggy8owrAFjn
 lXXQ==
X-Gm-Message-State: APjAAAVtfBZiE0xijlzfGiAxRYOGTaFzGswTlxSHrfu1EGPBtJFzQV9x
 FTnFvHV8pcRY51NzBBLrxFc=
X-Google-Smtp-Source: APXvYqxSNcAPqwSZH31b87Ji1TKnGay22xxNKrq1QLqwgT769H3cS7IndXWaX2hKTQ5Lh5hCv6smew==
X-Received: by 2002:a25:d144:: with SMTP id i65mr13849331ybg.266.1570891900143; 
 Sat, 12 Oct 2019 07:51:40 -0700 (PDT)
Received: from icarus (072-189-084-142.res.spectrum.com. [72.189.84.142])
 by smtp.gmail.com with ESMTPSA id g207sm843084ywb.4.2019.10.12.07.51.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 07:51:39 -0700 (PDT)
Date: Sat, 12 Oct 2019 10:51:19 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v5 0/3] Simplify count_read/count_write/signal_read
Message-ID: <20191012145101.GA3463@icarus>
References: <cover.1570391994.git.vilhelm.gray@gmail.com>
 <20191012150012.5e3399f1@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191012150012.5e3399f1@archlinux>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_075141_820836_3DAF37A5 
X-CRM114-Status: GOOD (  26.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vilhelm.gray[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Sat, Oct 12, 2019 at 03:00:12PM +0100, Jonathan Cameron wrote:
> Hi William
> 
> What's the status on these? If you are happy that reviews and
> testing is complete enough, do you want me to take them after
> I pick up the eqep driver (hopefully shortly dependent on
> the pull request Greg has from me being fine).
> 
> Thanks,
> 
> Jonathan

Yes, this is ready for you to take. So after the eqep driver is picked
up you can apply this patchset.

Thanks,

William Breathitt Gray

> 
> On Sun,  6 Oct 2019 16:03:08 -0400
> William Breathitt Gray <vilhelm.gray@gmail.com> wrote:
> 
> > Changes in v5:
> >  - Add changes and additions to generic-counter.rst to clarify theory
> >    and use of the Generic Counter interface
> >  - Fix typo in counter.h action_get description comment
> > 
> > The changes in this patchset will not affect the userspace interface.
> > Rather, these changes are intended to simplify the kernelspace Counter
> > callbacks for counter device driver authors.
> > 
> > The following main changes are proposed:
> > 
> > * Retire the opaque counter_count_read_value/counter_count_write_value
> >   structures and simply represent count data as an unsigned integer.
> > 
> > * Retire the opaque counter_signal_read_value structure and represent
> >   Signal data as a counter_signal_value enum.
> > 
> > These changes should reduce some complexity and code in the use and
> > implementation of the count_read, count_write, and signal_read
> > callbacks.
> > 
> > The opaque structures for Count data and Signal data were introduced
> > originally in anticipation of supporting various representations of
> > counter data (e.g. arbitrary-precision tallies, floating-point spherical
> > coordinate positions, etc). However, with the counter device drivers
> > that have appeared, it's become apparent that utilizing opaque
> > structures in kernelspace is not the best approach to take.
> > 
> > I believe it is best to let userspace applications decide how to
> > interpret the count data they receive. There are a couple of reasons why
> > it would be good to do so:
> > 
> > * Users use their devices in unexpected ways.
> > 
> >   For example, a quadrature encoder counter device is typically used to
> >   keep track of the position of a motor, but a user could set the device
> >   in a pulse-direction mode and instead use it to count sporadic rising
> >   edges from an arbitrary signal line unrelated to positioning. Users
> >   should have the freedom to decide what their data represents.
> > 
> > * Most counter devices represent data as unsigned integers anyway.
> > 
> >   For example, whether the device is a tally counter or position
> >   counter, the count data is represented to the user as an unsigned
> >   integer value. So specifying that one device is representing tallies
> >   while the other specifies positions does not provide much utility from
> >   an interface perspective.
> > 
> > For these reasons, the count_read and count_write callbacks have been
> > redefined to pass count data directly as unsigned long instead of passed
> > via opaque structures:
> > 
> >         count_read(struct counter_device *counter,
> >                    struct counter_count *count, unsigned long *val);
> >         count_write(struct counter_device *counter,
> >                     struct counter_count *count, unsigned long val);
> > 
> > Similarly, the signal_read is redefined to pass Signal data directly as
> > a counter_signal_value enum instead of via an opaque structure:
> > 
> >         signal_read(struct counter_device *counter,
> >                     struct counter_signal *signal,
> >                     enum counter_signal_value *val);
> > 
> > The counter_signal_value enum is simply the counter_signal_level enum
> > redefined to remove the references to the Signal data "level" data type.
> > 
> > William Breathitt Gray (3):
> >   counter: Simplify the count_read and count_write callbacks
> >   docs: driver-api: generic-counter: Update Count and Signal data types
> >   counter: Fix typo in action_get description
> > 
> >  Documentation/driver-api/generic-counter.rst | 162 +++++++++++--------
> >  drivers/counter/104-quad-8.c                 |  33 ++--
> >  drivers/counter/counter.c                    | 101 ++----------
> >  drivers/counter/ftm-quaddec.c                |  14 +-
> >  drivers/counter/stm32-lptimer-cnt.c          |   5 +-
> >  drivers/counter/stm32-timer-cnt.c            |  17 +-
> >  drivers/counter/ti-eqep.c                    |  19 +--
> >  include/linux/counter.h                      |  76 ++-------
> >  8 files changed, 144 insertions(+), 283 deletions(-)
> > 
> > 
> > base-commit: 0c3aa63a842d84990bd02622f2fa50d2bd33c652
> > prerequisite-patch-id: ebe284609b3db8d4130ea2915f7f7b185c743a70
> > prerequisite-patch-id: cbe857759f10d875690df125d18bc04f585ac7c9
> > prerequisite-patch-id: 21f2660dc88627387ee4666d08044c63dd961dae
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
