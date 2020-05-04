Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0201C4707
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ego2Jk28njolaVuMDPa9OvGcYTYYronZdSKm8Nolg8k=; b=Wm+BQom91GrbAR
	e7R9hlUqgMNFf+b8qXITBeF/CoanNyzTT6GB5b0ANDJ3gWvsitgpOylWe8QQDQOfnwLRL9qciMUEb
	lwv+Z8I3FFGY0fXFbto1Sndk//HHIdX2eCfqzVQD7lJFt9ICG6Gpj6OW7QQeP1tBp5L1zAt3dZLgC
	kfaN1gp9dkhEWX6GsiH/yzoUsQe4j0Q8GX4WjA9MvV/LFHrlBSNtkk5ryyaOsXkfuZMmxs+IEJL9p
	P1vftA8TYLBihHYphLMlGLwTLfRQ/hNVpKOlHFFN328h5a4B/ecZZWLkHr83Sj582ezlQHW7A4+jQ
	DSg30fTtCacPGNxM4CvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVglq-0003I5-Fj; Mon, 04 May 2020 19:28:54 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVglj-0003Gc-Tc
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 19:28:49 +0000
Received: by mail-oi1-x243.google.com with SMTP id r66so7713291oie.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 12:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=65ayVsqDJjnjdKZdEBc4q9fksAu1k7B3hVdHXf6w4xA=;
 b=Ray7E97U6IyHegSOG4Ruo/s0VBkPr2xpmwYB1NPsl0+AD6p9kV8obryVwWSXC6LbaE
 gz5Tc1tuIzTw+HzG9scdSre9jzpDqVve7CzBYC39Q6u9Cnt4uEAKsW6Pkz3sMbA9PTCf
 IY9t5pkC4P8NxSmiLSWBdj2jvDVFcfU++zfnlKEHfLyVGB8cX3ZHyD52QFrF9bMX4/9t
 ns5ba1JiS9acZYSwvnnQ5kQxm9Nhb/wAwOkqRi3cF9EA6tI/DmMERPM7DycYETPDlQxI
 LvxzPQ8A+rLGHP+w2zNHWHZ4qfc5R+tyZuyP6tP7w3vpfjluYoSzzsM/muoxDWcc2D+w
 +ACg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=65ayVsqDJjnjdKZdEBc4q9fksAu1k7B3hVdHXf6w4xA=;
 b=s8ch+PJiDb9dle9IydriUV3Lt5k+JZceebjkdgOsli2gq/+2q/JETrNg81H7Zuhyxk
 xVPdtLBxfeffBwQ7yz+14eWfizNVYmdwh3lD9GXRZRwHRPF2F6YgaeLZeP18iuaEz6jH
 vNdbBfc/DTFGXlxf9LcHVkIve8nHXcFvXWLW7D2jjuxhMwN9UaKWuqAH/bMR+A0txChm
 TmF71gH177MvkUGhreaqdUhBYPpgY5I7xeaDyLoui8hfnP+i0P20wwzceUxKW1rzmS9k
 08rEuBqG0NA0ZIHQHl1nIJbsNq1lUKZZNZMkhGqxKuGf9F07f006Zk0au6timSnM/sZf
 zggw==
X-Gm-Message-State: AGi0PubB63e9tJR9JK+JMwahzSoslOK3EfgUCu4DgiKhkhp1X6wkTmTF
 QZ12p3FekwHbEMx9HUmJncUdannQct8AvxOZnbDr0g==
X-Google-Smtp-Source: APiQypKx3Qry2LjUu+fZi00kuR8hErUpI+9R0/ofS/RvTKF780ixKpsNEJsNh3MMF9B4MtPo1A0aD+/VehAx0TW3DS4=
X-Received: by 2002:aca:abc6:: with SMTP id u189mr5566oie.30.1588620524038;
 Mon, 04 May 2020 12:28:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
 <CAGETcx8Cn-b6L2y10LKb91S3n06b6+Be2z_A0402EyNy-8yECg@mail.gmail.com>
 <CAPDyKFrt01tDrCgdf7hjLDTqzOYWJ=m7fNMo-2PB-uHEOzZkmw@mail.gmail.com>
In-Reply-To: <CAPDyKFrt01tDrCgdf7hjLDTqzOYWJ=m7fNMo-2PB-uHEOzZkmw@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 4 May 2020 12:28:07 -0700
Message-ID: <CAGETcx-kC18pwF7uDYE4XwVOWBJN8Lx48LD74LECgDts+VB0gA@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_122847_978873_7E9BAAEF 
X-CRM114-Status: GOOD (  33.23  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Rob Herring <robh@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 John Stultz <john.stultz@linaro.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 4, 2020 at 12:11 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Wed, 29 Apr 2020 at 09:33, Saravana Kannan <saravanak@google.com> wrote:
> >
> > On Tue, Apr 28, 2020 at 11:06 PM Marek Szyprowski
> > <m.szyprowski@samsung.com> wrote:
> > >
> > > Hi Linus,
> > >
> > > On 28.04.2020 22:39, Linus Walleij wrote:
> > > > On Mon, Apr 27, 2020 at 11:25 PM Rob Herring <robh@kernel.org> wrote:
> > > >> If amba bus devices defer when adding, the amba bus code simply retries
> > > >> adding the devices every 5 seconds. This doesn't work well as it
> > > >> completely unsynchronized with starting the init process which can
> > > >> happen in less than 5 secs. Add a retry during late_initcall. If the
> > > >> amba devices are added, then deferred probe takes over. If the
> > > >> dependencies have not probed at this point, then there's no improvement
> > > >> over previous behavior. To completely solve this, we'd need to retry
> > > >> after every successful probe as deferred probe does.
> > > >>
> > > >> The list_empty() check now happens outside the mutex, but the mutex
> > > >> wasn't necessary in the first place.
> > > >>
> > > >> This needed to use deferred probe instead of fragile initcall ordering
> > > >> on 32-bit VExpress systems where the apb_pclk has a number of probe
> > > >> dependencies (vexpress-sysregs, vexpress-config).
> > > >>
> > > >> Cc: John Stultz <john.stultz@linaro.org>
> > > >> Cc: Saravana Kannan <saravanak@google.com>
> > > >> Cc: Linus Walleij <linus.walleij@linaro.org>
> > > >> Cc: Sudeep Holla <sudeep.holla@arm.com>
> > > >> Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > >> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> > > >> Cc: Russell King <linux@armlinux.org.uk>
> > > >> Signed-off-by: Rob Herring <robh@kernel.org>
> > > > Makes sense to me, and the same approach is found
> > > > in the generic code in drivers/base/dd.c so
> > > > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > > >
> > > > The timer-based re-probe was added by Marek Szyprowski
> > > > in commit a41980f2a3eb33ed7a2636e83498b47e95ceb05b
> > > > do deal with power domains. I guess it mimics dd.c
> > > > deferred probe at this point?
> > > >
> > > > There are a bit of other differences that have piled up,
> > > > should we take a quick look at dd.c so there is not something
> > > > else we're missing? I see some PM code for example.
> > >
> > > Well, late initcall based approach is what earlier version of my patch did:
> > >
> > > https://lkml.org/lkml/2016/4/12/414
> > >
> > > but then it has been requested to solve the issue 'properly':
> > >
> > > https://lkml.org/lkml/2016/4/12/455
> > >
> > > https://lkml.org/lkml/2016/4/14/875
> > >
> > > For me it is fine to get back to late initcall based solution, though.
> > >
> >
> > I haven't really dealt with a platform with AMBA devices and am not
> > too familiar with it, so apologies in advance if any of my suggestions
> > are silly.
> >
> > This whole "don't add a device before the clocks/resources needed to
> > read the PID/CID" seems like something that can be solved by having a
> > dummy device that "probes" when those resources are available. And
> > during its probe, it adds the real amba device. That should avoid all
> > the reinvention of deferred probing that amba/bus.c seems to be
> > attempting.
>
> Sounds like a clever idea.

Thanks

> In principle we should then be able to rely on the regular defered
> probe mechanism, just that it's the dummy device that is being defered
> probed (if we fail to read PID/CID).
>
> >
> > Any reason to not do something like that? I'd think that should clean
> > up a whole lot of this code. Also, if we are primarily dealing with
> > AMBA devices created from DT, then we might even be able to massage
> > the fw_devlink feature to optimize this even more when fw_devlink=on.
> >
> > Just my 2 cents.
>
> Someone should try to implement this to see if it fits well.

I don't mind taking a stab at this if people are actually okay with
this approach and will test and merge it if it works. I have no
platform to test this. I'll wait to hear what others think before I
jump on this.

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
