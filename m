Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224E470A70
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 22:13:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSI1AcV9dUxv+op3suHqqOkjfjqxu3Z07nxJbziUKFc=; b=QUeiaEZOO25Pd9
	c5L17h6DfSmDIG6Udi13PptmLAtxBPRMbB/gMNhHBog5w28QsmwJnQnm0wjmCV27YaFYZuFexc46K
	N9MuTNHOYh3rN5EWo3UggRVmJ80Hd8EJtbeDjP8GzljPDObDUtyOR/izD2KjbEkFLHQmkXs9mbK7p
	7oo8OK/2mbK0xNQbBIGCcEevJKVTs7E2LTlJw2q6bJSoxsvyK2g/Qj/UFv/P+kHUtzYGNwdaK8LFM
	Wh8h8s7mavuNzOe41XjkVAwKUmAvMmAafdVr1ZeKRwe/tNJw7pYXFwu+3X58uFZkhtVOIgtNc888Z
	bjbCumOp/pbSdikw4wdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpego-0005d1-Cx; Mon, 22 Jul 2019 20:13:42 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpegY-0005bu-MA
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 20:13:28 +0000
Received: by mail-io1-xd44.google.com with SMTP id s7so76710968iob.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 13:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7l2Wn+FJ2BG0j9D1JF5TbgHPijVR0AsIZvIp2BLcK5g=;
 b=Da2jcKUDozDPsXerQ0RRbZ0Kiy8fI8o4wDzBSauzAKL2ZDmDxnbuy57mb8AJZBI3Rj
 UdTbSFpfOT8v/ncvU5jBApagtN/BgoEM5N8WV5Yh2POwDGHjoYOSysWJEbDGyKGyfKkb
 BkpcRHyIo+/mU3nI8r658R5M3v18lRbVET3vE6PBKb/9usAwEp/IzE45DhfJJrip9uG1
 I+7rvOP/0gtgv/BYXgwc5GWRYDCtyKdZAASvnnLIgmAXtEw0zVwgGpxeKv1WVRXY73SG
 Opniqmwjov6YdZyINl32tlYFrbgGgCI4MX25cuAxXXnAkNaj/IoFJijL8IDSZxcC9KXl
 g65A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7l2Wn+FJ2BG0j9D1JF5TbgHPijVR0AsIZvIp2BLcK5g=;
 b=PexzUNUQ9bYa2Ro87oLIsZenuLVdZ/agKuwDaUTarz2guQuDEI6UiPSlrNYeACdjoV
 vNOM8n93i6j3aCqkz92bzsBLWw4gWqlcs7dIl/qdMgrUKtPE6uG/EWbWMXiLKSsqfsqn
 2QXyUbfmmPtZeRgUnmsDXtWJlTFBVC9v3mb0bmYUTAypvupoc6HcmBLSfmQkY+5+MmHA
 PD0NzseBbwknZPqPBQevOEsO3SyuhyJYr+9Hyz1099rfEp58c3Ublw6cNyNWSJFlz7Bo
 6Sgp6492zBm21tdFugPBY2G7CM9rBMBfpEKc4zKfMjxTzWSWhmchWagaRPcxRCG9gt6W
 LdvQ==
X-Gm-Message-State: APjAAAXcBuGTC7W/sFcROPYLKQEJCEmzUknlzXc5YoSP7jEtBGHloRqv
 XTm98ychx8JpmCX2jrkrE8pKC8dMCPc3OhqpCkc=
X-Google-Smtp-Source: APXvYqyiAVhxu4nXny5pvNFjsFJ+z38F8yOUB1vGVezA4DDforKOQu16+Eoz95HvdgDnQBbS1HWonhdzq+Y9/TyPPXs=
X-Received: by 2002:a02:6a22:: with SMTP id l34mr76706311jac.126.1563826405473; 
 Mon, 22 Jul 2019 13:13:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190415202501.941196-1-arnd@arndb.de>
 <2424c672-e3fb-4c32-4c24-fafc59d03a96@uclinux.org>
 <CACRpkdaJ+2bub_nDp9=5b4kyKjWDnOGKscWg3KsEVixDpk8rzA@mail.gmail.com>
 <20190503170613.GA1783@roeck-us.net>
 <d8d81aca-722d-8b5f-cd5f-30cc3e4e407b@kernel.org>
 <CAK8P3a0StV==jMq1L9k91qEsvRD1Cw2FB1V25wr1AQqzmjsTVw@mail.gmail.com>
In-Reply-To: <CAK8P3a0StV==jMq1L9k91qEsvRD1Cw2FB1V25wr1AQqzmjsTVw@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Mon, 22 Jul 2019 13:13:14 -0700
Message-ID: <CAOesGMjFgR3CWcVF__=nvhHzMsdBDriPJTLX6pqq4PHMDS_OxQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] ARM: ks8695: watchdog: stop using mach/*.h
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_131326_871192_FE21723D 
X-CRM114-Status: GOOD (  26.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: arm-soc <arm@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Ungerer <gerg@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 7:44 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Sat, May 4, 2019 at 4:27 PM Greg Ungerer <gerg@kernel.org> wrote:
> > On 4/5/19 3:06 am, Guenter Roeck wrote:
> > > On Fri, May 03, 2019 at 08:16:05AM +0100, Linus Walleij wrote:
> > >> On Fri, May 3, 2019 at 8:02 AM Greg Ungerer <gerg@uclinux.org> wrote:
> > >>> Ultimately though I am left wondering if the ks8695 support in the
> > >>> kernel is useful to anyone the way it is at the moment. With a minimal
> > >>> kernel configuration I can boot up to a shell - but the system is
> > >>> really unreliable if you try to interactively use it. I don't think
> > >>> it is the hardware - it seems to run reliably with the old code
> > >>> it has running from flash on it. I am only testing the new kernel,
> > >>> running with the existing user space root filesystem on it (which
> > >>> dates from 2004 :-)
> > >>
> > >> Personally I think it is a bad sign that this subarch and boards do
> > >> not have active OpenWrt support, they are routers after all (right?)
> > >> and any active use of networking equipment should use a recent
> > >> userspace as well, given all the security bugs that popped up over
> > >> the years.
>
> Looking around on the internet, I found that Micrel at some point
> had their own openwrt fork for ks8695, but I can't find a copy
> any more, as the micrel.com domain is no longer used after the
> acquisition by Microchip.
>
> https://wikidevi.com/wiki/Micrel has a list of devices based on
> ks8695, and it seems that most of these are rather memory
> limited, which is a problem for recent openwrt builds.
>
> Only two of the 17 listed devices have the absolute minimum of 4MB
> flash and 32MB RAM for openwrt, two more have 8/32 and one
> or two have 4/64, but all these configurations are too limited for the
> web U/I now.
>
> > >> With IXP4xx, Gemini and EP93xx we have found active users and
> > >> companies selling the chips and reference designs and even
> > >> recommending it for new products (!) at times.  If this is not the
> > >> case with KS8695 and no hobbyists are willing to submit it
> > >> to OpenWrt and modernize it to use device tree I think it should be
> > >> deleted from the kernel.
> > >>
> > >
> > > That may be the best approach if indeed no one is using it,
> > > much less maintaining it.
> >
> > Well, I for one don't really use it any more. So I don't have a lot
> > of motivation to maintain it any longer.
>
> I came across my patches while rebasing my backlog to 5.3-rc1.
>
> Should I save the (very small) trouble of sending them out again
> and just remove the platform then?

Given the lack of response/interest from users, I'm OK with removing it.

If someone shows up wanting support, we'll have a good opportunity to
discuss testing/modernization involving someone actively using the
hardware.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
