Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E1AE898
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUonC5HrONa9vcxVgXd66x/W8Z2cECeTBtIoP4bCXSM=; b=ZgTp1POI2tVHJR
	0KsFhlb8P+yPdx5Ms4vubsnB6uD3HHavF/zzda1qd6iBQ8JuuwyMz+wbffDj6Q4FtukAX5eKaypNZ
	eHbUmWaRsylf1enN/5GKPl5CBUN/ZV6FeL4A4TUq3gD4DNAk+H9tFvqs2gXo5BiTdK0yVpOZDweHm
	oSiZKsD1nqts4OcoLtJamA3dcXW/U6YmcEXbPV+q1nypegR9UvW9PTtWCY+vPKk1BkxzSHC1cljxM
	czIWZ9C7BmsjneVEFnkmmon4U/21GPzSuy/oYwI2Cn5g/1qsI+nYg+5YXrjPjF8yWq/IWwXNFYZtG
	cj1369vorXjQgTTdaxTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9tK-0002sA-EV; Mon, 29 Apr 2019 17:16:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9tD-0002re-9M
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:16:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id x15so5374224pln.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 10:16:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yrQv2na9LmyqY09k2tODdC7kNnteQ3ci4lABBeEBPE4=;
 b=iybmumtskaFi13rXf1HJRNM75LC2gfNuVub4KnqHpyiL1nlJvVY3GB8TV+dD9oOuZ/
 Td7MWHJw+K+QcGrg31mzACAPWwL4QK9TNjJ/ke111sr1d6+dXa8wfFcmqkVEQ6DMpUyq
 UDIdWqryCSjDq1vJx3c4OPWD5jKhI6QNy+NbuuddJiWkbWQfziJkYKWaWQk9eRmu5BGL
 tA6a2KN3eeEtZIrlb/5HLrHkP34M29XvN9uPMLtrhrrvUWhIloFTve17Vd4coUsZuKJ/
 l7fFWpeSldhasZPzT8tsU8zGgA2c2eUqXxBeZAbDkI/I02SU6AHbOF1tONzMazP3TBHe
 qLeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yrQv2na9LmyqY09k2tODdC7kNnteQ3ci4lABBeEBPE4=;
 b=Ff5OvKlDymr91EZRZYgFJMoeo7PtzsKB0/+XfIqROOf2dRIvCcvV9XPDbkgUr9NRqm
 sezbKgzUs4HRAdwf8nBuVFWjjKqLEKyxFsIdD2cwlwGCFeCpqX2VS3kFrtzASfak3Mx8
 jgpyOJJ6+qbikD7ENssjGBF56S3+p6ni6Nd8WMj1Lj+daJgGMuQGuzYw3vjLQZjH91Tq
 C6ZmFRtlBD75qWyfd5SMGYvMDXMEGRelOY7ipIN+dhxLoVMfcuTsZZy9V/Uokw6yyMZY
 nX1n+UQ9NGkEmTc+44vcJFkEJvRmet54vsUDb6hQv/uge8FZS05Dsm09dmmlkX2aufUN
 nhYA==
X-Gm-Message-State: APjAAAW2nS6cg8zXQft2Fs8OT+8cSSxDN5fkQfXd14+a2c5wMHHZIQtA
 jctkcWKR9Or2pLLskYKs0qbWdxZRjUUhZkAF2xCm1A==
X-Google-Smtp-Source: APXvYqymDIPfBTHbfoLNX9Aw7ZzXqqRyg7AuW+O8cV1ErDsGXn5m1e6K5s0jN81AsooOh/W/UWJLePjyEP9rPiD6dPU=
X-Received: by 2002:a17:902:e183:: with SMTP id
 cd3mr23254341plb.233.1556558186240; 
 Mon, 29 Apr 2019 10:16:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190423142629.120717-1-venture@google.com>
 <CAO=notzjzpt0WHfJEWXMGgkoJU8UiLnqZnrGrPs-dRH5GNdJyQ@mail.gmail.com>
 <CAO=notz9QVoqKLrhJ3kx9FHja5+Mh68f36O36+1ewLG+SanmOA@mail.gmail.com>
 <20190425172549.GA12376@kroah.com> <20190429165137.mwj4ehhwerunbef4@localhost>
 <CAOesGMg49z4Gip-bLK-h7+LSLa4Fu68r11gT2EV8E8xMCPGDxg@mail.gmail.com>
In-Reply-To: <CAOesGMg49z4Gip-bLK-h7+LSLa4Fu68r11gT2EV8E8xMCPGDxg@mail.gmail.com>
From: Patrick Venture <venture@google.com>
Date: Mon, 29 Apr 2019 10:16:14 -0700
Message-ID: <CAO=notwVyTqvxfYRU1XJTwzSNCUAMgYCVpXVvqaN62uSiWyYCQ@mail.gmail.com>
Subject: Re: [PATCH v2] soc: add aspeed folder and misc drivers
To: Olof Johansson <olof@lixom.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_101627_446361_6FB9E12D 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-aspeed@lists.ozlabs.org, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, soc@kernel.org,
 arm-soc <arm@kernel.org>, Joel Stanley <joel@jms.id.au>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:13 AM Olof Johansson <olof@lixom.net> wrote:
>
> On Mon, Apr 29, 2019 at 10:08 AM Olof Johansson <olof@lixom.net> wrote:
> >
> > On Thu, Apr 25, 2019 at 07:25:49PM +0200, Greg KH wrote:
> > > On Tue, Apr 23, 2019 at 08:28:14AM -0700, Patrick Venture wrote:
> > > > On Tue, Apr 23, 2019 at 8:22 AM Patrick Venture <venture@google.com> wrote:
> > > > >
> > > > > On Tue, Apr 23, 2019 at 7:26 AM Patrick Venture <venture@google.com> wrote:
> > > > > >
> > > > > > Create a SoC folder for the ASPEED parts and place the misc drivers
> > > > > > currently present into this folder.  These drivers are not generic part
> > > > > > drivers, but rather only apply to the ASPEED SoCs.
> > > > > >
> > > > > > Signed-off-by: Patrick Venture <venture@google.com>
> > > > >
> > > > > Accidentally lost the Acked-by when re-sending this patchset as I
> > > > > didn't see it on v1 before re-sending v2 to the larger audience.
> > > >
> > > > Since there was a change between v1 and v2, Arnd, I'd appreciate you
> > > > Ack this version of the patchset since it changes when the soc/aspeed
> > > > Makefile is followed.
> > >
> > > I have no objection for moving stuff out of drivers/misc/ so the SOC
> > > maintainers are free to take this.
> > >
> > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >
> > I'm totally confused. This is the second "PATCH v2" of this patch that I came
> > across, I already applied the first.
> >
> > Patrick: Follow up with incremental patch in case there's any difference.
> > Meanwhile, please keep in mind that you're adding a lot of work for people when
> > you respin patches without following up on the previous version. Thanks!
>
> Not only that, but subthreads were cc:d to arm@kernel.org and some
> were not, so I missed the overnight conversation on the topic.
>
> If this email thread is any indication of how the code will be
> flowing, there's definitely need for more structure. Joel, I'm hoping
> you'll coordinate.

To be honest, this patchset thread was a bit less clear than anyone
prefers.  I use get_maintainers to get the initial list, and so adding
arm@ or soc@ per a request tells me that perhaps those should be
output via that script.

>
> I'm with Arnd on whether the code should be in drivers/soc or not --
> most of it likely should not.

I think the misc drivers for a SoC that are a single user interface
that is focused on the use-case that belongs to that SoC only belong
in soc/, while if there is something we can do in common -- different
story.  If it makes sense to just have misc/aspeed/ instead of
soc/aspeed -- would that align more?

>
>
> -Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
