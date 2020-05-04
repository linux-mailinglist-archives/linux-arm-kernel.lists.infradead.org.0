Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4355E1C46DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 21:11:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GliwK9ki9Zo6YCJTszm3zG3f1M/ZN/VwxkFUmuizKdU=; b=JpR0VBn9dAgwka
	HLNrsyVxSAI/DWiPD6ODCj+NcfxB9zUcJeWcNEd/Kbj/qI8jDQTy5ei4DfHhauy4HpV99e76dBqa5
	BJuAfh+nnuLOGWYfxFsh7Xy8f1MbpCN7xf9b80O5Ydg1CSgPjAMbMk9d6DoCT7rm/6Si00y7WRq/g
	BYQLOoXCJUioYkmIZSkFb/5/2g3OBqEyoMmjAiWIfp9sLNakAGNUPSzBJMcI9CKJZseCIXyWiYow2
	XeS+MLfzkKJcof3cJS2C112oVJeXQovJBQKuD6haSRHKV9KbeP7h80C3sOdMoXkDhjO3a03Kctp/V
	+eMN87caCa5xu0KVPnWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgV1-0007sf-UY; Mon, 04 May 2020 19:11:31 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgUm-0007kU-2p
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 19:11:18 +0000
Received: by mail-vs1-xe41.google.com with SMTP id e10so339813vsp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 12:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2CYtZtyspHzzB6rC1gwIR9mFgmNf8WC3VXzEao6abLk=;
 b=QGhtUzBLD8gQF7pHOsHXoZ/iIcDLvjUGOf0srvcjbwjfO6hUlu+SFHkf9kGBbURGts
 1/uzPkBenee80us7nXCNEKx3OK1dn+2sXEFed35d3gxt4c9OHx0s7eeVk8SpfS5R35Ec
 qps6aqXJjkU8ZZL70mUgyHtdz654yprMrQM/pCiE/A31UYPQMYnCDssrCWr5T+OUimiu
 FT2P8K3qQgSsWb69OuviW39noGyAgyIhyLAgoMtDsUeSXhV6yCb8erH/iM2eY/6Rl153
 WlaoGO8EzHR5kUaTHz9eZJLa0LL6YpzL9e0VhsKyjAx1NH4h+XIPQCgleaCZHmeP5YU4
 8o6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2CYtZtyspHzzB6rC1gwIR9mFgmNf8WC3VXzEao6abLk=;
 b=dfHEPKDIsrkb/g38l7O0QNKSaS6OeWAdoyNqt8aMxBoPgTxf57Zi5nAwFmergYbx+e
 2hhLccyWIWZQ9SMzKqS5cikAY3saKW4PRNvK8LHCfJSchvMcCdpADRn6ZTuyc77GeVmc
 QPR+f5wuMkGxyv+rOnDb5U/2jhinXOZL5Czomty2nn0kJ5OqzS8TvxZKYFtiZbO/cFOP
 Pq4bWlu/xl8p6yTDHv96V7dpsngwTCvsCHPYyFfJ9SDAO1QVMw6X6wa3DOROkvEETgSj
 nKHy23eP7a8gakPG9B8D5dQBLd2EfBrncRgBGQjAWJBt0MsA4IzS8d8m70SLa6sf0va6
 j/Gg==
X-Gm-Message-State: AGi0Pua4MoJms35QQA9G0LOBMkW+RnF+YWGvasUeL0bhr2VjdRBMtDe0
 fa8zQ0KBg/zmJ7i2UJ8N3Z0fA+LIQI3ag8zlyT/MzA==
X-Google-Smtp-Source: APiQypLlO5NLBKavb3l0MQ80q6QUwF/fYl1KLdFEuAizOHwqDRMk0f+bOe4vqBCdmws0gDoKkojQg8BhJsIopUhwJMk=
X-Received: by 2002:a67:8b46:: with SMTP id n67mr628058vsd.35.1588619474036;
 Mon, 04 May 2020 12:11:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200427212514.11219-1-robh@kernel.org>
 <CGME20200428203953eucas1p20561ca638be023be0fae9b613d4a1d4f@eucas1p2.samsung.com>
 <CACRpkdZSPb8FxTSt8F3F1VcsTM4qG=6gxz1pBPjTZ0Dk2iVfSQ@mail.gmail.com>
 <733e20b1-9592-6941-766b-9f321ad2ace5@samsung.com>
 <CAGETcx8Cn-b6L2y10LKb91S3n06b6+Be2z_A0402EyNy-8yECg@mail.gmail.com>
In-Reply-To: <CAGETcx8Cn-b6L2y10LKb91S3n06b6+Be2z_A0402EyNy-8yECg@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 4 May 2020 21:10:37 +0200
Message-ID: <CAPDyKFrt01tDrCgdf7hjLDTqzOYWJ=m7fNMo-2PB-uHEOzZkmw@mail.gmail.com>
Subject: Re: [PATCH] amba: Retry adding deferred devices at late_initcall
To: Saravana Kannan <saravanak@google.com>, Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_121116_162198_8540CD64 
X-CRM114-Status: GOOD (  31.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
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

On Wed, 29 Apr 2020 at 09:33, Saravana Kannan <saravanak@google.com> wrote:
>
> On Tue, Apr 28, 2020 at 11:06 PM Marek Szyprowski
> <m.szyprowski@samsung.com> wrote:
> >
> > Hi Linus,
> >
> > On 28.04.2020 22:39, Linus Walleij wrote:
> > > On Mon, Apr 27, 2020 at 11:25 PM Rob Herring <robh@kernel.org> wrote:
> > >> If amba bus devices defer when adding, the amba bus code simply retries
> > >> adding the devices every 5 seconds. This doesn't work well as it
> > >> completely unsynchronized with starting the init process which can
> > >> happen in less than 5 secs. Add a retry during late_initcall. If the
> > >> amba devices are added, then deferred probe takes over. If the
> > >> dependencies have not probed at this point, then there's no improvement
> > >> over previous behavior. To completely solve this, we'd need to retry
> > >> after every successful probe as deferred probe does.
> > >>
> > >> The list_empty() check now happens outside the mutex, but the mutex
> > >> wasn't necessary in the first place.
> > >>
> > >> This needed to use deferred probe instead of fragile initcall ordering
> > >> on 32-bit VExpress systems where the apb_pclk has a number of probe
> > >> dependencies (vexpress-sysregs, vexpress-config).
> > >>
> > >> Cc: John Stultz <john.stultz@linaro.org>
> > >> Cc: Saravana Kannan <saravanak@google.com>
> > >> Cc: Linus Walleij <linus.walleij@linaro.org>
> > >> Cc: Sudeep Holla <sudeep.holla@arm.com>
> > >> Cc: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > >> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> > >> Cc: Russell King <linux@armlinux.org.uk>
> > >> Signed-off-by: Rob Herring <robh@kernel.org>
> > > Makes sense to me, and the same approach is found
> > > in the generic code in drivers/base/dd.c so
> > > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > >
> > > The timer-based re-probe was added by Marek Szyprowski
> > > in commit a41980f2a3eb33ed7a2636e83498b47e95ceb05b
> > > do deal with power domains. I guess it mimics dd.c
> > > deferred probe at this point?
> > >
> > > There are a bit of other differences that have piled up,
> > > should we take a quick look at dd.c so there is not something
> > > else we're missing? I see some PM code for example.
> >
> > Well, late initcall based approach is what earlier version of my patch did:
> >
> > https://lkml.org/lkml/2016/4/12/414
> >
> > but then it has been requested to solve the issue 'properly':
> >
> > https://lkml.org/lkml/2016/4/12/455
> >
> > https://lkml.org/lkml/2016/4/14/875
> >
> > For me it is fine to get back to late initcall based solution, though.
> >
>
> I haven't really dealt with a platform with AMBA devices and am not
> too familiar with it, so apologies in advance if any of my suggestions
> are silly.
>
> This whole "don't add a device before the clocks/resources needed to
> read the PID/CID" seems like something that can be solved by having a
> dummy device that "probes" when those resources are available. And
> during its probe, it adds the real amba device. That should avoid all
> the reinvention of deferred probing that amba/bus.c seems to be
> attempting.

Sounds like a clever idea.

In principle we should then be able to rely on the regular defered
probe mechanism, just that it's the dummy device that is being defered
probed (if we fail to read PID/CID).

>
> Any reason to not do something like that? I'd think that should clean
> up a whole lot of this code. Also, if we are primarily dealing with
> AMBA devices created from DT, then we might even be able to massage
> the fw_devlink feature to optimize this even more when fw_devlink=on.
>
> Just my 2 cents.

Someone should try to implement this to see if it fits well.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
