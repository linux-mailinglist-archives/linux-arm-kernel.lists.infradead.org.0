Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 085D91C2CF1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 16:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GL7+csgOBxD3TNUQ5ae694XNL30B+cIcBv/KyGh6Qg=; b=uGysLx24d8rgXs
	1Vr+J/s0Qn0TmNDhSGsNsKkt8t5W6LuvKCv9VtJUVwiCyuCJKpDy+2pAeGf1eLUcFc47Veor8Au0c
	7bL7lZrB9f3oGOZ/cJgKwTJfGkIugaS/oAbB9Lnnty4NxcAbSd42rnEujXI4VLbFr4jK2y9VpfS7L
	px7Pu+G6kJCwfvmYPqHvAkVuLrqpt2lUDLTzjJuKrz3L48+4yYVYZlSJ4Pt+yWyh2e44L2QP9abVO
	tM9HIVr2GUe7+158UwMrR96ngCT3igqNUJzIh4V153uJNikKM/Gbl1Go36ANozo8nvOa/TQY7BmWq
	Ey33C15OUpH7rywom60A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVFN3-00010i-IC; Sun, 03 May 2020 14:13:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVFMw-0000zF-Np
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 14:13:24 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BFB512075B;
 Sun,  3 May 2020 14:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588515200;
 bh=VwFDi18uItpdaTttUtjRkKgBhmoR+CTBkU21YkTrWEQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Mom6aQXebEJMjo6moLHFErcGMYoEWb9EKBGiehFK98UmKFn71rYa0akF8nSXe1bwt
 7zPAubNRfR9ZC2FAgv8CDsXwW8yKsRl8FMqoByL3BfrzYkLvCbj5ZtV6kcsGwmERPt
 cD+qW8PTdMcvcQsm8gS9uQlo6o5gFbLo9uOxJzW0=
Date: Sun, 3 May 2020 15:13:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH 0/4] Introduce the Counter character device interface
Message-ID: <20200503151314.2ac1fc2e@archlinux>
In-Reply-To: <cover.1588176662.git.vilhelm.gray@gmail.com>
References: <cover.1588176662.git.vilhelm.gray@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_071322_821782_42447436 
X-CRM114-Status: GOOD (  36.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kamel.bouhara@bootlin.com, gwendal@chromium.org, david@lechnology.com,
 felipe.balbi@linux.intel.com, linux-iio@vger.kernel.org, syednwaris@gmail.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, patrick.havelange@essensium.com,
 fabrice.gasnier@st.com, fabien.lahoudere@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 14:11:34 -0400
William Breathitt Gray <vilhelm.gray@gmail.com> wrote:

> Over the past couple years we have noticed some shortcomings with the
> Counter sysfs interface. Although useful in the majority of situations,
> there are certain use-cases where interacting through sysfs attributes
> can become cumbersome and inefficient. A desire to support more advanced
> functionality such as timestamps, multi-axis positioning tables, and
> other such latency-sensitive applications, has motivated a reevaluation
> of the Counter subsystem. I believe a character device interface will be
> helpful for this more niche area of counter device use.
> 
> To quell any concerns from the offset: this patchset makes no changes to
> the existing Counter sysfs userspace interface -- existing userspace
> applications will continue to work with no modifications necessary. I
> request that driver maintainers please test their applications to verify
> that this is true, and report any discrepancies if they arise.
> 
> However, this patchset does contain a major reimplementation of the
> Counter subsystem core and driver API. A reimplementation was necessary
> in order to separate the sysfs code from the counter device drivers and
> internalize it as a dedicated component of the core Counter subsystem
> module. A minor benefit from all of this is that the sysfs interface is
> now ensured a certain amount of consistency because the translation is
> performed outside of individual counter device drivers.
> 
> Essentially, the reimplementation has enabled counter device drivers to
> pass and handle data as native C datatypes now rather than the sysfs
> strings from before. A high-level view of how a count value is passed
> down from a counter device driver can be exemplified by the following:
> 
>                  ----------------------
>                 / Counter device       \
>                 +----------------------+
>                 | Count register: 0x28 |
>                 +----------------------+
>                         |
>                  -----------------
>                 / raw count data /
>                 -----------------
>                         |
>                         V
>                 +----------------------------+
>                 | Counter device driver      |----------+
>                 +----------------------------+          |
>                 | Processes data from device |   -------------------
>                 |----------------------------|  / driver callbacks /
>                 | Type: unsigned long        |  -------------------
>                 | Value: 42                  |          |
>                 +----------------------------+          |
>                         |                               |
>                  ----------------                       |
>                 / unsigned long /                       |
>                 ----------------                        |
>                         |                               |
>                         |                               V
>                         |               +----------------------+
>                         |               | Counter core         |
>                         |               +----------------------+
>                         |               | Routes device driver |
>                         |               | callbacks to the     |
>                         |               | userspace interfaces |
>                         |               +----------------------+
>                         |                       |
>                         |                -------------------
>                         |               / driver callbacks /
>                         |               -------------------
>                         |                       |
>                 +-------+---------------+       |
>                 |                       |       |
>                 |               +-------|-------+
>                 |               |       |
>                 V               |       V
>         +--------------------+  |  +---------------------+
>         | Counter sysfs      |<-+->| Counter chrdev      |
>         +--------------------+     +---------------------+
>         | Translates to the  |     | Translates to the   |
>         | standard Counter   |     | standard Counter    |
>         | sysfs output       |     | character device    |
>         |--------------------|     |---------------------+
>         | Type: const char * |     | Type: unsigned long |
>         | Value: "42"        |     | Value: 42           |
>         +--------------------+     +---------------------+
>                 |                               |
>          ---------------                 ----------------
>         / const char * /                / unsigned long /
>         ---------------                 ----------------
>                 |                               |
>                 |                               V
>                 |                       +-----------+
>                 |                       | ioctl     |
>                 |                       +-----------+
>                 |                       \ Count: 42 /
>                 |                        -----------
>                 |
>                 V
>         +--------------------------------------------------+
>         | `/sys/bus/counter/devices/counterX/countY/count` |
>         +--------------------------------------------------+
>         \ Count: "42"                                      /
>          --------------------------------------------------
> 
> I am aware that an in-kernel API can simplify the data transfer between
> counter device drivers and the userspace interfaces, but I want to
> postpone that development until after the new Counter character device
> ioctl commands are solidified. A userspace ABI is effectively immutable
> so I want to make sure we get that right before working on an in-kernel
> API that is more flexible to change. However, when we do develop an
> in-kernel API, it will likely be housed as part of the Counter core
> component, through which the userspace interfaces will then communicate.
> 
> Interaction with Counter character devices occurs via ioctl commands.
> This allows userspace applications to access and set counter data using
> native C datatypes rather than working through string translations.
> 
> Regarding the organization of this patchset, I have combined the counter
> device driver changes with the first patch because the changes must all
> be taken together in order to avoid compilation errors. I can see how
> this can end up making it difficult to review so many changes at once,
> so alternatively I can separate out the counter device driver changes
> into their own dedicated patches -- with the understanding that the
> patches must all be taken together.
> 
> In addition, I anticipate the Microchip TCB capture counter driver to
> break with this patchset. I'm not sure how that driver will be picked
> up yet so I have avoided adding it to this patchset right now. But the
> changes to support that driver are simple to make so I can add them in a
> later revision of this patchset.
> 
> The following are some questions I have about this patchset:
> 
> 1. Should enums be used to represent standard counter component states
>    (e.g. COUNTER_SIGNAL_LOW), or would these be better defined as int?
> 
>    These standard counter component states are defined in the
>    counter-types.h file and serve as constants used by counter device
>    drivers and Counter subsystem components in order to ensure a
>    consistent interface.
> 
>    My concern is whether enum constants will cause problems when passed
>    to userspace via the Counter character device ioctl calls. Along the
>    same lines is whether the C bool datatype is safe to pass as well,
>    given that it is a more modern C datatype.

For enums, I'd pass them as integers.

Bool is probably fine either way.

> 
> 2. Should device driver callbacks return int or long? I sometimes see
>    error values returned as long (e.g. PTR_ERR(), the file_operations
>    structure's ioctl callbacks, etc.); when is it necessary to return
>    long as opposed to int?

In my view it doesn't really matter that much.  For PTR_ERR it has to be
a long because a long is always the same length as a pointer, but an int
'might' not be.  However PTR_ERR returns a value that always fits in an
integer anyway.

https://www.oreilly.com/library/view/linux-device-drivers/0596005903/ch11.html

Coding style in linux mostly use int for return values that might indicate
an error.

> 
> 3. I only implemented the unlocked_ioctl callback. Should I implement a
>    compat_ioctl callback as well?

Depends if you need to deal with the 32bit userspace on 64 bit kernel corner
cases.  Looks like you only pass a pointer, in which case I think you
can just use the ioctl_compat_ptr callback to handle it for you.

> 
> 4. How much space should allot for name strings? Name strings hold the
>    names of components (ideally as they appear on datasheets), so I've
>    arbitrarily chosen a size of 32 for the character device interface.
> 
> 5. Should the owning component of an extension be determined by the
>    device driver or Counter subsystem?
> 
>    A lot of the complexity in the counters-function-types.h file and the
>    sysfs-callbacks.c file is due to the function pointer casts required
>    in order to support three different ownership scenarios: the owning
>    component is the device, the owning component is a Count, the owning
>    component is a Signal.
> 
>    Because the Counter subsystem doesn't not know which scenario is
>    valid, it must manually check and provide for all three ownership
>    cases. On the other hand, device drivers do know exactly which case
>    applies because they are the ones providing the callbacks.
> 
>    The complexity in the Counter subsystem code can be eliminated if the
>    owning component is simply passed down to the callbacks as a void
>    pointer. The device drivers will then be responsible for casting to
>    the appropriate component type, but this should in theory not be a
>    problem since the device driver assigned the callback to the owning
>    component in the first place.
> 
> William Breathitt Gray (4):
>   counter: Internalize sysfs interface code
>   docs: counter: Update to reflect sysfs internalization
>   counter: Add character device interface
>   docs: counter: Document character device interface
> 
>  Documentation/driver-api/generic-counter.rst  |  259 ++-
>  .../userspace-api/ioctl/ioctl-number.rst      |    1 +
>  MAINTAINERS                                   |    3 +-
>  drivers/counter/104-quad-8.c                  |  437 +++--
>  drivers/counter/Makefile                      |    2 +
>  drivers/counter/counter-chrdev.c              | 1134 +++++++++++++
>  drivers/counter/counter-chrdev.h              |   16 +
>  drivers/counter/counter-core.c                |  220 +++
>  drivers/counter/counter-function-types.h      |   81 +
>  drivers/counter/counter-strings.h             |   46 +
>  drivers/counter/counter-sysfs-callbacks.c     |  566 +++++++
>  drivers/counter/counter-sysfs-callbacks.h     |   28 +
>  drivers/counter/counter-sysfs.c               |  524 ++++++
>  drivers/counter/counter-sysfs.h               |   14 +
>  drivers/counter/counter.c                     | 1496 -----------------
>  drivers/counter/ftm-quaddec.c                 |   46 +-
>  drivers/counter/stm32-lptimer-cnt.c           |  159 +-
>  drivers/counter/stm32-timer-cnt.c             |  132 +-
>  drivers/counter/ti-eqep.c                     |  170 +-
>  include/linux/counter.h                       |  547 +++---
>  include/linux/counter_enum.h                  |   45 -
>  include/uapi/linux/counter-types.h            |   67 +
>  include/uapi/linux/counter.h                  |  313 ++++
>  23 files changed, 3816 insertions(+), 2490 deletions(-)
>  create mode 100644 drivers/counter/counter-chrdev.c
>  create mode 100644 drivers/counter/counter-chrdev.h
>  create mode 100644 drivers/counter/counter-core.c
>  create mode 100644 drivers/counter/counter-function-types.h
>  create mode 100644 drivers/counter/counter-strings.h
>  create mode 100644 drivers/counter/counter-sysfs-callbacks.c
>  create mode 100644 drivers/counter/counter-sysfs-callbacks.h
>  create mode 100644 drivers/counter/counter-sysfs.c
>  create mode 100644 drivers/counter/counter-sysfs.h
>  delete mode 100644 drivers/counter/counter.c
>  delete mode 100644 include/linux/counter_enum.h
>  create mode 100644 include/uapi/linux/counter-types.h
>  create mode 100644 include/uapi/linux/counter.h
> 
> 
> base-commit: 00edef1ac058b3c754d29bcfd35ea998d9e7a339


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
