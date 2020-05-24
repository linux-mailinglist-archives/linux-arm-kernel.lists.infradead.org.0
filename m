Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E25F31E008F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 18:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QtWUiuZsJN+EW2P86EyOBO037lYtEEO6FFX/0HE2IA=; b=Z8GTtLvyTPBEBI
	2iZUaQNhk5taaJYh83MYkejAOxmtcY3umZmWSxo3CGomJQGMO4g8W8fxif/xmDhB4eC1jj2tLAHZx
	9EvzK2hPPD5DPWaxs0ngLs21XeHiTCiLiB3C1HIHT/U2tyxAnabbX7omYJyThbP+xyC9SSIF6wuJZ
	Lg9MyO9zh9KQj89sWR/BnE7d2ptHoX9XApqZo97LtUcY3n9ZD41ser3rItrLfoNWjQAPi9kI8ik4t
	EnPV3Roud3IINt5DfdBlYLknMFCKPOo1j04kscmIrvHd22Uq/dexQVojOZH0qVWlS22hqmB81Kw6f
	5wI4QY6cIpyxiEq+pZvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jctRl-0007ma-SD; Sun, 24 May 2020 16:25:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jctRb-0007ln-Su
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 16:25:49 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5530520787;
 Sun, 24 May 2020 16:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590337547;
 bh=8Sow2b/gmRxdhLhwL/1TKHwvcuZIa5HKY7WTfS3ObwI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=lKUqdmL7BX21pzqiPn4lYuHypLtRe8EUcHU9E3pM0K1NNzzHlbFi7yv7uOzMEObL6
 mJL0PVz+X0UcMZUPfPpWZ3va+Wu5GEAGNIJqBqcGA0yfTKn9RHZUevbSlKv/70CUFm
 29ptM9hsJEneyIy1zYhNeH10rXnQWD4lYK2IE+yY=
Date: Sun, 24 May 2020 17:25:42 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: William Breathitt Gray <vilhelm.gray@gmail.com>
Subject: Re: [PATCH v2 0/4] Introduce the Counter character device interface
Message-ID: <20200524172542.31ff6ac7@archlinux>
In-Reply-To: <cover.1589654470.git.vilhelm.gray@gmail.com>
References: <cover.1589654470.git.vilhelm.gray@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_092547_975035_1FE09ADD 
X-CRM114-Status: GOOD (  24.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-iio@vger.kernel.org, patrick.havelange@essensium.com,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com, syednwaris@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 alexandre.torgue@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


...

> The following are some questions I have about this patchset:
> 
> 1. Should the data format of the character device be configured via a
>    sysfs attribute?
> 
>    In this patchset, the first 196095 bytes of the character device are
>    dedicated as a selection area to choose which Counter components or
>    extensions should be exposed; the subsequent bytes are the actual
>    data for the Counter components and extensions that were selected.

That sounds like the worst of all possible worlds.  Reality is you need
to do some magic library so at that point you might as well have ioctl
options to configure it.   I wonder if you can keep the data flow
to be a simple 'read' from the chardev but move the control away from
that.  Either control via some chrdevs but keep them to the 'set / get'
if this element is going to turn up in the read or not.  You rapidly
run into problems though, such as now to see how large a given element
is going to be etc.  Plus ioctls are rather messier to extend than
simply adding a new sysfs file.  Various subsystems do complex
'descriptor' type approaches to get around this, or you could do
self describing records rather than raw data - like an input
ev_dev event.

> 
>    Moving this selection to a sysfs attribute and dedicating the
>    character device to just data transfer might be a better design. If
>    such a design is chosen, should the selection attribute be
>    human-readable or binary?

Sysfs basically requires things are more or less human readable.
So if you go that way I think it needs to be.

> 
> 2. How much space should allotted for strings?
> 
>    Each Counter component and extension has a respective size allotted
>    for its data (u8 data is allotted 1 byte, u64 data is allotted 8
>    bytes, etc.); I have arbitrarily chosen to allot 64 bytes for
>    strings. Is this an apt size, or should string data be allotted more
>    or less space?

I'd go with that being big enough, but try to keep the expose interface
such that the size can change it it needs to the in the future.

> 
> 3. Should the owning component of an extension be handled by the device
>    driver or Counter subsystem?
> 
>    The Counter subsystem figures out the owner (enum counter_owner_type)
>    for each component/extension in the counter-sysfs and counter-chrdev
>    code. When a callback must be executed, there are various switch
>    statements throughout the code to check whether the respective
>    Device, Signal, or Count version of the callback should be executed;
>    similarly, the appropriate owner type must match for the struct
>    counter_data macros such as COUNTER_DATA_DEVICE_U64,
>    COUNTER_DATA_SIGNAL_U64, COUNTER_DATA_COUNT_U64, etc.
> 
>    All this complexity in the Counter subsystem code can be eliminated
>    if a single callback type with a `void *owner` parameter is defined
>    for use with all three owner types (Device, Signal, and Count). The
>    device driver would then be responsible for casting the callback
>    argument to the appropriate owner type; but in theory, this should
>    not be much of a problem since the device driver is responsible for
>    assigning the callbacks to the owning component anyway.

Whilst its more complex for subsytem I think it's better to keep everything
typed if we possibly can.  Always a trade off though, so use your discretion.

Jonathan


> 
> William Breathitt Gray (4):
>   counter: Internalize sysfs interface code
>   docs: counter: Update to reflect sysfs internalization
>   counter: Add character device interface
>   docs: counter: Document character device interface
> 
>  Documentation/driver-api/generic-counter.rst |  275 +++-
>  MAINTAINERS                                  |    3 +-
>  drivers/counter/104-quad-8.c                 |  547 +++----
>  drivers/counter/Makefile                     |    1 +
>  drivers/counter/counter-chrdev.c             |  656 ++++++++
>  drivers/counter/counter-chrdev.h             |   16 +
>  drivers/counter/counter-core.c               |  187 +++
>  drivers/counter/counter-sysfs.c              |  881 +++++++++++
>  drivers/counter/counter-sysfs.h              |   14 +
>  drivers/counter/counter.c                    | 1496 ------------------
>  drivers/counter/ftm-quaddec.c                |   89 +-
>  drivers/counter/stm32-lptimer-cnt.c          |  161 +-
>  drivers/counter/stm32-timer-cnt.c            |  139 +-
>  drivers/counter/ti-eqep.c                    |  211 +--
>  include/linux/counter.h                      |  626 ++++----
>  include/linux/counter_enum.h                 |   45 -
>  include/uapi/linux/counter-types.h           |   45 +
>  17 files changed, 2826 insertions(+), 2566 deletions(-)
>  create mode 100644 drivers/counter/counter-chrdev.c
>  create mode 100644 drivers/counter/counter-chrdev.h
>  create mode 100644 drivers/counter/counter-core.c
>  create mode 100644 drivers/counter/counter-sysfs.c
>  create mode 100644 drivers/counter/counter-sysfs.h
>  delete mode 100644 drivers/counter/counter.c
>  delete mode 100644 include/linux/counter_enum.h
>  create mode 100644 include/uapi/linux/counter-types.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
