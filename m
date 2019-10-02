Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27608C9112
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 20:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e2SO5NMLt5o2oKSQn2sHsjnuCLpM1tue/DaUmZoOWgk=; b=EZrlu9iRMBzycF
	D1lS5rgDPER92VKKutxLXm05PE11bveDu43m6COpQOIhQAVQM6eY5OxRMqI0Y4F0cKi83SgSyW9SM
	ry+1KNeHi/W6Ra25LrSkIF9mSUS3fTCFZOOZ3VidVrVbP75vN+9PvKCsfFtK4dQigFp2AQZi9At4I
	qcZX9tkteNO/EB4zDMSYvlPxoXZSURe2JCNSNxiEm3hL7hBlPsALRSNJBXaHM+8H0ypnrFfqUEa9q
	L+jNlG7UlUufU98KNxy6qMlwSqOq6MtN5c08YdOHtq8e8//n+iKqbmhtm4AAvl9aUlfaeTKTU/R18
	LimqCrvQdIn8p2Osq/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFjeT-0002PR-26; Wed, 02 Oct 2019 18:47:05 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFjeJ-0002Nk-95
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 18:46:57 +0000
Received: by mail-io1-xd41.google.com with SMTP id b136so59338707iof.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 11:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jN7537yHE8AyrGVbZgFAbNFF9cJRxz1O2uNKVNRqFeo=;
 b=DAhiCAp4aBGXYvBj2SGMv2yvmwYNwlh/EunVYKE6/b87eY7INBRNKuTFGYqJIg1o6Q
 ie0rZkl8pX0GHubd7QTH161xtRu0pG0pY32zeeWJTb49jwK/DyZuLCqQWIXQjYu637da
 ZgC9dGOcrMTRM5ogQaMWlro/EMmuYbtldxwCFGO2sgNhT0aAXwSYpr4h37rT8sqj1mXB
 UD1a/iNkV5hhk40Tczn74T/DL5mcjU79sPc/vJ9fsMP2gPRKxmWdlhKPMdd37uXvCYX1
 JkDfaCWITniu6i+eZ3cFAdIyTWfwjWimGCZuEb6DB6VUjgLkgxfwzbnNbheFXAlcBpbY
 zEjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jN7537yHE8AyrGVbZgFAbNFF9cJRxz1O2uNKVNRqFeo=;
 b=MA0/ha8uiGpn3L04v47VH0ySkRE5wEpumOQrjuF8LVxwvI3wWouct+VZ3DPs3VioI3
 rWCkK4cZq7YV7YZqPLDUHp+lMxLhvpLZalNxiaLzrL6+Ku9SqZSgVT5DA7/d+WySB+00
 XwkUZfweijQZSwbGvVvJKzQ5qy2fD/dq0WoRHlDXYSF6pui2UItEa3nJyvLtyxu413LX
 cox5BqQhWqUZwWJkJ1DSaGjDpVWlNf9wC0e45EyAPL3+WlwiYUlEVno1rUEc0Q1RWSv0
 J1ja8lNnn7m30EGcv1AbXlaO0BdtnpHLdKq2yyxCs+lDPtW9UVG8pLfms1iNmjDjemOo
 MQ0w==
X-Gm-Message-State: APjAAAXMOLAziMSiNLCymGNamoo6fuVeS9f6dowGcL9cdJ43uuh9e03w
 LKr9baKkTzNaXPe+Arp0G63i+h7/oLdhrHgfRVQKRQ==
X-Google-Smtp-Source: APXvYqwOhXjBU94zB9gbODxRLV/p/e/QxZAUMshVMK2uAgGylCl0oRR9HmD3fV7nlfLg9tWF5hbZU85meWfAhZc9nm4=
X-Received: by 2002:a92:180d:: with SMTP id 13mr5204147ily.277.1570042013600; 
 Wed, 02 Oct 2019 11:46:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191002131228.4085560-1-thierry.reding@gmail.com>
 <20191002160151.GS25745@shell.armlinux.org.uk>
In-Reply-To: <20191002160151.GS25745@shell.armlinux.org.uk>
From: Olof Johansson <olof@lixom.net>
Date: Wed, 2 Oct 2019 11:46:42 -0700
Message-ID: <CAOesGMg6aJ1Y+0fXkXCbOzCzxzZifx2m8YoPN=Y2pD==HPp2=Q@mail.gmail.com>
Subject: Re: [GIT PULL] ARM/arm64: arm_pm_restart removal
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_114655_470839_64FEF14A 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 ARM-SoC Maintainers <arm@kernel.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It looks like it's an old patchset that you were cc:d on at the time,
but I can't blame anyone for missing context here.

Thierry, a reference to the thread would have been useful:
https://lore.kernel.org/linux-arm-kernel/20170130110512.6943-1-thierry.reding@gmail.com/

Given that the code is 2.5 years old, posting it again for awareness
seems appropriate, even if it was acked by a few stakeholders
originally.


-Olof

On Wed, Oct 2, 2019 at 9:01 AM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> Why was I not copied on these changes (which clearly touch core ARM
> code) both the patch series and this pull request?
>
> On Wed, Oct 02, 2019 at 03:12:28PM +0200, Thierry Reding wrote:
> > Hi ARM SoC maintainers,
> >
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> >
> >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> >
> > are available in the Git repository at:
> >
> >   https://github.com/thierryreding/linux.git tags/for-5.5/arm-pm-restart-removal
> >
> > for you to fetch changes up to 81b3f28283e2f0b03cea2127e9ff78e7c505b3d3:
> >
> >   ARM: Remove arm_pm_restart() (2019-10-02 14:56:22 +0200)
> >
> > This is the set of changes that we recently discussed that remove all
> > uses of the arm_pm_restart symbol and replaces it by usages of the new
> > restart handler that Guenter had introduced.
> >
> > I've rebased these on top of v5.4-rc1.
> >
> > Thierry
> >
> > ----------------------------------------------------------------
> > ARM/arm64: arm_pm_restart removal
> >
> > This set of patches converts all remaining users of the arm_pm_restart
> > mechanism for installing reboot hooks to the restart handler mechanism
> > and finally removes the arm_pm_restart symbol.
> >
> > ----------------------------------------------------------------
> > Guenter Roeck (6):
> >       ARM: prima2: Register with kernel restart handler
> >       ARM: xen: Register with kernel restart handler
> >       drivers: firmware: psci: Register with kernel restart handler
> >       ARM: Register with kernel restart handler
> >       ARM64: Remove arm_pm_restart()
> >       ARM: Remove arm_pm_restart()
> >
> >  arch/arm/include/asm/system_misc.h   |  1 -
> >  arch/arm/kernel/reboot.c             |  6 +-----
> >  arch/arm/kernel/setup.c              | 20 ++++++++++++++++++--
> >  arch/arm/mach-prima2/rstc.c          | 11 +++++++++--
> >  arch/arm/xen/enlighten.c             | 12 ++++++++++--
> >  arch/arm64/include/asm/system_misc.h |  2 --
> >  arch/arm64/kernel/process.c          |  7 +------
> >  drivers/firmware/psci/psci.c         | 12 ++++++++++--
> >  8 files changed, 49 insertions(+), 22 deletions(-)
> >
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
