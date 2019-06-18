Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A91AB4AAFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 21:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3NZNzMSviaZDFKSJTsJUl6Ay7qfdstNEemFSIcaWAo=; b=GDYuEtuC3C5Hc/
	jf1OZ70zWKmf8hwcOvgAzf3GRT6KuUUmmweQPpODGsMc0MblXf+DefehbKXlJa+jAIDI0d2blOFWl
	plawQ9Dek8RYHrRqF67PCfG04XISNvlRETMnQnq2y9l8wlvlgiSUH4aRIwGGCH8qMBJ98M0yEtb/U
	lIostmlCKs6dNhU6E3nd4cfOyJUAUuskIA0xNRQR2K9JMu22seETrOvY2tco40jK8THNeHzf75HbR
	FyjI/6OacTkNRIWsp7X90QxCb+lyefdf1norrFSav7demtU+cL+/MvTSG4KKveWcRpckCtsxoJ7Aw
	c4glvLJFeXklIoy6bwPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdJkb-0005BF-IO; Tue, 18 Jun 2019 19:26:37 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdJkP-00059o-Hc
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 19:26:27 +0000
Received: by mail-io1-xd44.google.com with SMTP id j6so2876654ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 12:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NgJ90hORXS90Oe5ovB09aob9346MVDq59vZYNRLstVo=;
 b=IY3fLlgCOmjdGYo/1kqt4pEmlJhcXztX0U2I/cVyH+mAwxTZJPBjtiv5EKbNsrrW78
 X4Nx1JhxJy2EhIEZUn2hFabeuaZyeYScWifnoH9sRiLPI8SV59cKoyaOqaME4D7o2T5Q
 S33Qwr72c9IjuTRZx2hyijfNwhyfHd3kfKcdabxo6K0/qvZQ1yNEdMRei1610T7KAN4B
 d3oSwshTv7n/cDBdVpMRIUJkQtjnrAO54WcL8jflZrZpANVyuEg/M8urEyE5y5OK8qaD
 zdP8ltTTEUEpFaliofgdVq8E67V+BVNRJEB/eWvhEcA1fMCU0zchIpnAY5wBFXuPSO2J
 VRFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NgJ90hORXS90Oe5ovB09aob9346MVDq59vZYNRLstVo=;
 b=WZjx8dtufYf/pTmCQOIxpmf7Lndbe/fZVYcioeJ5abVVwNXMQJ+ZOSv18watB0C2Nr
 es+zwgCrzvjqPlrmUtSZ98jPFdWHQs7AwnAMVaz+iZ2xYmgyG5kOgqamGRMzYMDQizFI
 jKSnF8w1YEA445ucS9+xMj8LIdIcd1nxYC8sgt4dv9LtCoSrCUSSJiQX256lQUjcboAO
 ehWU4NvNjDzwgton4ySzCWKtUHgZf2Py1AwmKZhHnl/jDZkSmEfTZbJ6982Ss3t/c5gc
 FNE2X11Z7kF4MMaZGpL4aCmFXna9n3hFRnDyVVIohslbG0otuTGwI7BLF4PlMRUXfJHV
 WVqQ==
X-Gm-Message-State: APjAAAV+C4s4ILriFxuuulWeQzRaloh3cbbto+h+cfSPS8UjxDdtXtjZ
 OWLH9HEB6beJsyhBZDpdop6BNzUFDnIvXtu6fTsg9g==
X-Google-Smtp-Source: APXvYqzZawFX8eFurk1vXUKHB3+PLHWu8/39gvLj2J3ShevDkdgizoqUlSno6swbO/xmF6kFl96XLItg3s2KqvBZ3yg=
X-Received: by 2002:a05:6638:29a:: with SMTP id
 c26mr5211302jaq.98.1560885983992; 
 Tue, 18 Jun 2019 12:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190618155246.GA17788@kroah.com>
 <CANLsYkzTgwY=EAE8E98jpyO6uVQnKN3SAKhRwSUCRhQTO+rV0w@mail.gmail.com>
 <20190618174637.GC3649@kroah.com>
In-Reply-To: <20190618174637.GC3649@kroah.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 18 Jun 2019 13:26:12 -0600
Message-ID: <CANLsYkwjKDP2QOLgeTj=z90jXFjT9d3JXB0TxJU=v12MCi1PFA@mail.gmail.com>
Subject: Re: [PATCH] coresight: cpu-debug: no need to check return value of
 debugfs_create functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_122625_593619_FB8D3B83 
X-CRM114-Status: GOOD (  27.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Jun 2019 at 11:46, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Tue, Jun 18, 2019 at 11:23:25AM -0600, Mathieu Poirier wrote:
> > Hi Greg,
> >
> > On Tue, 18 Jun 2019 at 09:52, Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > When calling debugfs functions, there is no need to ever check the
> > > return value.  The function can work or not, but the code logic should
> > > never do something different based on this.
> >
> > Looking around in the kernel there is no shortage of instances where
> > the return value of debugfs functions are checked and the logic
> > altered based on these values.  But there are also just as many that
> > don't...  It also seems counter intuitive to ignore the return value
> > of any function, something that in most case is guaranteed to raise
> > admonition.
>
> In my tree, those instances are almost all gone.  I've also posted over
> 100+ patches in the past few weeks to clean this up.
>
> > That being said I am sure there is a good reason to support your
> > position - would you mind expanding a little so that I can follow?
>
> No kernel code should ever care if debugfs works or not.  No user code
> should ever require it for normal operation either.  debugfs was written
> to be simple and easy to use, no need to check any return values at all.
>
> Any return value of a debugfs call can be fed back into another call
> with no issues at all.
>
> Also, due to some debugfs core changes a few kernel releases ago, the
> checks:
>         if (!debug_debugfs_dir) {
> ...
>         if (!file) {
> can never trigger as debugfs_create_dir() or debugfs_create_file() can
> never return NULL (and in the past, it almost never would either).  So

That is the rational I was looking for.

> as it is, that code isn't correct anyway (my fault, I know, hey, I'm
> trying to fix it!)
>
> I'm trying to make things simple, and easy, and impossible to get wrong.
> I know it goes against the normal "robust" kernel development mentality,
> but there is no need to ever care about debugfs at all.
>
> The reason I started all of this is that we have found places where
> userspace, and the kernel, was depending on the proper operation of
> debugfs.  In one horrid example, a device would not display the batter
> level if debugfs was disabled.  In another case, the kernel was actually
> relying on a debugfs call to fail in order to handle some logic the
> subsystem should have been doing on its own.  All of that has now been
> cleaned up, and I am working on making debugfs just not return any
> values at all to prevent this type of mess happening again.
>
> And hey, I am removing code, here's my current tree as a diff from
> what is not already merged into linux-next:
>          301 files changed, 1394 insertions(+), 4637 deletions(-)
> that's always a good thing :)
>
> Hopefully this helps explain things better.

It does - thanks for taking the time to write all this.

Do you want me to take the patch through my tree (only to see it
coming back to you later this week) or you'll add it directly to
yours?  In the latter case:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Regards,
Mathieu

>
> thanks,
>
> greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
