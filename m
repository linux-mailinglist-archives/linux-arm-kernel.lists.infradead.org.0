Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CFA1E7546
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 07:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rzi3O1uaECmlMd+XJX4ErVxBgKGJH2Dbpue6fR7yBdQ=; b=nNy8TB258NOCAV
	Ioh3iloT9YKrpQKRC3OHNWryra0OXufmvbWN0SILRwVXz9wEJ7qh91TRe3BYJcylXKfQYVV9QEGwl
	+EwSm3FXrUbG8ymB6le2FdMYWzOdIsx5G/wuT0ZBdHmfGuL2NrxfoNpjNeMpyauizFla6jsAq5ifv
	lJJnn1vSh0013efK+Qm/4vabM9M27vwVk9z+z8BPrAlAMIdYWnxX4dluj+TmGNKipdOZKe8RiNIN1
	ExDob6OVKLSKYAe4NDx59Iz5zuX7NnhCm+c3Yxl/9MwM17GMkJjd3AEeHsbSw0TLTa0BAq5LNj9fm
	7mywJOSH4ub47odexVFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeXS7-0003lv-SB; Fri, 29 May 2020 05:21:07 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeXS0-0003l0-C4
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 05:21:01 +0000
Received: by mail-io1-xd43.google.com with SMTP id y5so990118iob.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 22:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2FRaDrc5qz+mseHMlNzBSOFhiGghRU0iO/EhV7LPJuU=;
 b=GJJKZYxVHCH5bW6x56Yo74MnId1xrFUUc3UmH5g2M3qAivCM+RQe+swZImGjpdAVCq
 UFypP91Hgfqr6oZmZeyreJuS5DJt5K8rjKKFAlv/rrRBJMb2tUZSS2nWM3ruFje090JD
 yZpgK9TXj6kM0Zl+HLtz6/jSz7Q7zM8DrsqzMVWvAk2HUUddsjZcITd6urhR+GVyP+yT
 KorOBXnhTWxaR2V2gg68Qx97OwbvdCYe3WLoRirK2ajf/W3hhGQ2HEZ3tlPeTIfDm0Bw
 aPlvv0fE6k9ioEvtiA3h0Y8ArRTs8iiVJ1Ybw1Ki1BVhW3LrMegngwHZvS65+sp2Tjmm
 FBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2FRaDrc5qz+mseHMlNzBSOFhiGghRU0iO/EhV7LPJuU=;
 b=KYtM62lUitkT+uveD2aUVXgCyCP3ue80pqZSpzPVV+FXDbeTAAzBKeJ8LMXtS7VHOU
 EMaO4fQ5YuYNcjYXXTK/1QR4CtWItqOMovOGjMCc2iD1z0TrjCjgQWvI+ShJhNfsmBgc
 /ajVh2U0mJkKVOhzK5AwnUsd4M2KZPhnZsnmvRj4M3oj0vgb7TK/VO9mDWcmU/QLilIb
 9UbHnThqLocyln5la5HY8SSMX2FIQkUDwOKlXhSN7Gua55Cky8cGmud5253oMaIEZMhf
 S6qBPG+dtY5dsMvpHIWbIr2xNv8R4XP273WWsp1DHcS8At14y1UqIjey5wyauF/aVXfP
 B9RA==
X-Gm-Message-State: AOAM531+UR1XSpqa8yKK2RQOxjucPWveAoTkco+GfXS37xHG9/7ikTDA
 8fb283KnGKTnEU7Onz/ZM7NaLLGrX6GlU9YtoF3KhqBa
X-Google-Smtp-Source: ABdhPJwpLR9vQ2rVi/CapN4MpHNoVLQqwn3WAX5tBeoFVkwdP02qpFUGDn7gL7fN/jnoCUUHYsZqZrKhBwcWmJBctSA=
X-Received: by 2002:a05:6602:2c45:: with SMTP id
 x5mr5045727iov.80.1590729657804; 
 Thu, 28 May 2020 22:20:57 -0700 (PDT)
MIME-Version: 1.0
References: <0a50f0cf5593baeb628dc8606c523665e5e2ae6c.1589519600.git.viresh.kumar@linaro.org>
 <20200528192005.GA494874@bogus>
In-Reply-To: <20200528192005.GA494874@bogus>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 29 May 2020 00:20:46 -0500
Message-ID: <CABb+yY3KKpDHTsTBescW_rXmqmLzJh-Ogaotk2n=nYRkfHy2cg@mail.gmail.com>
Subject: Re: [RFC] dt-bindings: mailbox: add doorbell support to ARM MHU
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_222100_430348_8FF57128 
X-CRM114-Status: GOOD (  36.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jassisinghbrar[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Devicetree List <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 2:20 PM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, May 15, 2020 at 10:47:38AM +0530, Viresh Kumar wrote:
> > From: Sudeep Holla <sudeep.holla@arm.com>
> >
> > Hi Rob, Arnd and Jassi,
> >
> > This stuff has been doing rounds on the mailing list since several years
> > now with no agreed conclusion by all the parties. And here is another
> > attempt to get some feedback from everyone involved to close this once
> > and for ever. Your comments will very much be appreciated.
> >
> > The ARM MHU is defined here in the TRM [1] for your reference, which
> > states following:
> >
> >       "The MHU drives the signal using a 32-bit register, with all 32
> >       bits logically ORed together. The MHU provides a set of
> >       registers to enable software to set, clear, and check the status
> >       of each of the bits of this register independently.  The use of
> >       32 bits for each interrupt line enables software to provide more
> >       information about the source of the interrupt. For example, each
> >       bit of the register can be associated with a type of event that
> >       can contribute to raising the interrupt."
> >
> > On few other platforms, like qcom, similar doorbell mechanism is present
> > with separate interrupt for each of the bits (that's how I understood
> > it), while in case of ARM MHU, there is a single interrupt line for all
> > the 32 bits. Also in case of ARM MHU, these registers and interrupts
> > have 3 copies for different priority levels, i.e. low priority
> > non-secure, high priority non-secure and secure channels.
> >
> > For ARM MHU, both the dt bindings and the Linux driver support 3
> > channels for the different priorities right now and support sending a 32
> > bit data on every transfer in a locked fashion, i.e. only one transfer
> > can be done at once and the other have to wait for it to finish first.
> >
> > Here are the point of view of the parties involved on this subject:
> >
> > Jassi's viewpoint:
> >
> > - Virtualization of channels should be discouraged in software based on
> >   specific usecases of the application. This may invite other mailbox
> >   driver authors to ask for doing virtualization in their drivers.
> >
> > - In mailbox's terminology, every channel is equivalent to a signal,
> >   since there is only one signal generated here by the MHU, there should
> >   be only one channel per priority level.
> >
> > - The clients should send data (of just setting 1 bit or many in the 32
> >   bit word) using the existing mechanism as the delays due to
> >   serialization shouldn't be significant anyway.
> >
> > - The driver supports 90% of the users with the current implementation
> >   and it shouldn't be extended to support doorbell and implement two
> >   different modes by changing value of #mbox-cells field in bindings.
> >
> > Sudeep (ARM) and myself as well to some extent:
> >
> > - The hardware gives us the capability to write the register in
> >   parallel, i.e. we can write 0x800 and 0x400 together without any
> >   software locks, and so these 32 bits should be considered as separate
> >   channel even if only one interrupt is issued by the hardware finally.
> >   This shouldn't be called as virtualization of the channels, as the
> >   hardware supports this (as clearly mentioned in the TRM) and it takes
> >   care of handling the signal properly.
> >
> > - With serialization, if we use only one channel as today at every
> >   priority, if there are 5 requests to send signal to the receiver and
> >   the dvfs request is the last one in queue (which may be called from
> >   scheduler's hot path with fast switching), it unnecessarily needs to
> >   wait for the first four transfers to finish due to the software
> >   locking imposed by the mailbox framework. This adds additional delay,
> >   maybe of few ms only, which isn't required by the hardware but just by
> >   the software and few ms can be important in scheduler's hotpath.
> >
> > - With the current approach it isn't possible to assign different bits
> >   (or doorbell numbers) to clients from DT and the only way of doing
> >   that without adding new bindings is by extending #mbox-cells to accept
> >   a value of 2 as done in this patch.
> >
> > Jassi and Sudeep, I hope I was able to represent both the view points
> > properly here. Please correct me if I have made a mistake here.
> >
> > This is it. It would be nice to get the views of everyone now on this
> > and how should this be handled.
>
> I am perfectly fine with adding another cell which seems appropriate
> here. You can have 5 cells for all I care if that makes sense for
> the h/w. That has nothing to do with the Linux design. Whether Linux
> requires serializing mailbox accesses is a separate issue. On that side,
> it seems silly to not allow driving the h/w in the most efficient way
> possible.
>
The fact that all these bits are backed by one physical signal makes
the firmware implement its own mux-demux'ing scheme. So the choice was
between demux and single signal at a time. Had there been one signal
per bit, the implementation would have definitely been 'efficient'.

And the first platform the driver was developed on, required message
passing over the registers. So now my approach is to make do with what
we have...unless it shows in numbers.

Anyways, if it comes to that, I'd rather a separate "doorbell' driver
than a driver working in two s/w modes.

Thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
