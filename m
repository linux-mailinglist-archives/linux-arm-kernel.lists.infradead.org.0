Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D29616F132
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 22:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4z0N+L85KWVBAMc9S4xm38wvGevZpngsqoEv0d8hko=; b=gPGJ7TLo9bNal0
	mfbC7VHeWSQnsj2oSWh+Oh3QG4iaONBQwANdPwatJR661a49MTGdCmKRHI1JQI30lihafw8OjXgo5
	ZqCyuW0XefnIAHT6GrNC4KyupLz0WpyDleLdU7htxz5ZBXa9/o+s0LgdQA49t5ts2fpsww+I1WYuv
	4l2lQ61Kd1HDWbtQ52fjRtBqXgoJDph5TQ0umZ/FUA0R/AbAfkERwqZWtQUJy1xn57tQJHxRdZYAz
	lERC2AcqwNFmxecQPrFF4kIVioDblXSfs5pJpz6UNSyERYd5QYV2u3E4+v+AlWfZjqmLXwYZR77Fv
	D6cCQ+Qd/wCJ92ABxKEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6hqh-0001ca-Iu; Tue, 25 Feb 2020 21:34:39 +0000
Received: from mail-gateway-shared10.cyon.net ([194.126.200.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6hqX-0001bd-KK
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 21:34:31 +0000
Received: from s054.cyon.net ([149.126.4.63])
 by mail-gateway-shared10.cyon.net with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim)
 (envelope-from <takashi@yoshi.email>) id 1j6hqG-0005uV-UN
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 22:34:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=yoshi.email
 ; s=default;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References
 :In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bd08lAU9EPaR2C3HgVOGxelz02fzgVEw+80l6RjKaag=; b=YHrpnCxN9rxURR9v9fTQTSMsEl
 NTtNQ1lq/hrBxIXNB3E6ExLidrqSFbU5nI1LnqMfvR9nCdtnEibFDgdFkvOkDpiIy8vrqnqw4Ge4L
 v00H/lhyKcMnFoiPwakSZbgahLv4+q8bZszY11pN3Tx65LQee3E/+R4F0tJzQHWE4ZUiNLs/BFwCW
 6okJlP3e9N19Crpk00436h+wH3S6+q9mNnvLwsYQYD8BIWbPFrQe1PSfGKcTdjO7yunGyCGe9Hjvj
 ocijjbh6nlnPGsrFAatkRwYkOiDY+TNiv/Ddpz7VW7wyw8Qh2e1Fm3YGhNGHuAl6zpZ40q/nJOi2C
 yowxasLw==;
Received: from [10.20.10.233] (port=65206 helo=mail.cyon.ch)
 by s054.cyon.net with esmtpa (Exim 4.92)
 (envelope-from <takashi@yoshi.email>)
 id 1j6hqF-00DkIe-It; Tue, 25 Feb 2020 22:34:11 +0100
Date: Tue, 25 Feb 2020 22:34:09 +0100
From: Takashi Yoshi <takashi@yoshi.email>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/5] Removing support for 32bit KVM/arm host
Message-ID: <20200225223409.0fef2003.takashi@yoshi.email>
In-Reply-To: <CAK8P3a3iaDqU7RRpoL2XyempBiKN8k22rNAM7C23n8JNpPm4qw@mail.gmail.com>
References: <20200210141324.21090-1-maz@kernel.org>
 <20200222154030.5625fa5f.takashi@yoshi.email>
 <CAK8P3a3iaDqU7RRpoL2XyempBiKN8k22rNAM7C23n8JNpPm4qw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; armv7a-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - s054.cyon.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - yoshi.email
X-Get-Message-Sender-Via: s054.cyon.net: authenticated_id: takashi@yoshi.email
X-Authenticated-Sender: s054.cyon.net: takashi@yoshi.email
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-OutGoing-Spam-Status: No, score=-1.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_133429_828423_51D26E7A 
X-CRM114-Status: GOOD (  37.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.126.200.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, kvm list <kvm@vger.kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Arnd

Please excuse my late response.

On Sat, 22 Feb 2020 22:31:40 +0100 Arnd Bergmann <arnd@arndb.de> wrote:

> On Sat, Feb 22, 2020 at 3:40 PM Takashi Yoshi <takashi@yoshi.email>
> wrote:
> > On Monday, 10.02.2020, 14:13 +0000 Marc Zyngier wrote:
> > > KVM/arm was merged just over 7 years ago, and has lived a very
> > > quiet life so far. It mostly works if you're prepared to deal
> > > with its limitations, it has been a good prototype for the arm64
> > > version, but it suffers a few problems:
> > >
> > > - It is incomplete (no debug support, no PMU)
> > > - It hasn't followed any of the architectural evolutions
> > > - It has zero users (I don't count myself here)
> >
> > I might not be an important user, but I have been for multiple years
> > and still am a regular user of KVM/arm32 on different devices.
> >
> > I use KVM on my Tegra K1 Chromebook for app development and have
> > multiple SBCs at home on which I run VMs on using KVM+libvirt.
> >
> > Sure, neither of these devices has many resources available, but
> > they are working fine. I would love to keep them in service since I
> > haven't found arm64-based replacements that don't require hours
> > upon hours of tinkering to just get a basic OS installation running
> > with a mainline kernel.
> >
> > As an example that they can still be of use in 2020 I'd like to
> > point out that one of the SBCs is running my DNS resolver, LDAP
> > server, RSS reader, IRC bouncer, and shared todo list just fine,
> > each in their separate VM.
> 
> Thank you for providing an important data point to this question.
> 
> > > - It is more and more getting in the way of new arm64 developments
> > >
> > > So here it is: unless someone screams and shows that they rely on
> > > KVM/arm to be maintained upsteam, I'll remove 32bit host support
> > > form the tree.
> >
> > *scream*
> >
> > > One of the reasons that makes me confident nobody is
> > > using it is that I never receive *any* bug report. Yes, it is
> > > perfect.
> >
> > This assumption is deeply flawed. Most users (including me) are not
> > subscribed to this mailing list and will never find this thread at
> > all. I myself stumbled upon this discussion just by chance while I
> > was browsing the web trying to find something completely unrelated.
> >
> > I've been using KVM on x86, ppc and arm for many years, yet I never
> > felt the need to report a bug on the mailing list.
> > (This is to be interpreted as a compliment to the great work the
> > devs of KVM have done!)
> >
> > Just going by the number of bugs reported on a developers mailing
> > list is not going to paint an accurate picture.
> >
> > I am convinced that I'm not the only one relying on KVM/arm32 in the
> > mainline kernel and would ask you to please reconsider keeping
> > arm32 in the mainline kernel for a few more years until adequate
> > arm64 replacements are available on the market and have gained
> > proper support in the mainline kernel.
> 
> Can you provide some more information about how you use KVM on 32-bit
> machines, to make it possible to better estimate how many others might
> do the same,

Sure.
First of all I own different ARM boards. Currently I virtualise on
Banana Pi M1 (1GB), cubox-i (2GB) and my Acer Chromebook (4GB).

The Chromebook is my travel laptop on which I have three VMs on (LAMP,
PostgreSQL, kernel testing) which I primarily use to develop against.

The others are "home servers", they run all kinds of things for my home
(incl. DNS, LDAP, RSS-Reader, Wiki, Music-Database, RDBMS,
Task-Management).

> and how long you will need to upgrade to newer kernels for?

I don't really have a strict policy regarding when to upgrade kernels.
I just run whatever gets patched and works.

Sometimes this is the latest stable release, most of the time this is
the last longterm release.

> In particular:
> 
> - What is the smallest amount of physical RAM that you have to found
> to make a usable ARM/KVM host? 

Not sure if I can answer this question adequately as the smallest of my
ARM32 boards have at least 1GB of RAM, which works for sure.

Since you're asking about the smallest amount I did some experiments.
I spun up the testing VM on my Chromebook. It consists of a basic
Gentoo userland currently running on a "reduced" 4.19 kernel (I'm sure
it could be stripped further if one was determined enough).

When I boot it up and log in the qemu-system process on the host uses
100MB. The memory usage (incl. cache) inside the VM is only 50 MB,
though.

Adding a few MB for the actual application one would want to run to
these 100MB, I calculate with 160MB for a "lightweight" VM.

This would mean that one could run 2-3 such VMs in just 512MB which I
would count as "usable".

If you were conservative with memory and used a lightweight distro, like
Alpine, OpenWrt or built your own using Buildroot, I could imagine that
you can make a nice little home router with virtualized DHCP server,
DNS server (for home network) + resolver, TFTP and possibly VPN in
512MB.
(Sounds like a cool experiment for the next time im bored :P)


A very different use case could be to host unikernels using e.g.
Solo5 (https://github.com/Solo5/solo5) whose hvt backend also uses KVM.
I, unfortunately, don't have any experience with unikernels, but I
assume that they consume a lot less memory than a full Linux VM.


> Note that the 4GB configuration of the Tegra K1 (an rk3288)
> Chromebooks seems to be extremely rare in other devices, while most
> new 32-bit SBCs come with 1GB or less these days.

I agree that 4GB seems to be really rare in 32-bit land outside of
laptops like Chromebooks or Novena, but I don't agree that most 32-bit
SBCs are so low specced.

There are quite a few 2GB boards out there:
ODROID U2/U3/X2/XU/XU3/XU4/HC1/HC2, Cubieboard 3/4/5, HummingBoard,
CuBox i4/Pulse, ASUS TinkerBoard (S), Lenovo G66 TV-Box, Radxa ROCK PRO
/ Rock2, Nvidia Jetson TK1, Banana Pi M2U/M3, Firefly RK3288,
BeagleBoard X15, OrangePi Plus 2E, Utilite, Wandboard, ClearFog,
NetGate SC3100, and probably a lot more can be had with 2GB RAM.

(If I were to buy an SBC for virtualization, I'd get one of these :-))

Also lets not forget all the powerful smartphones out there which could
be used as virtualizers using postmarketos.org.

> - How often do you update the host kernels on those 32-bit machines
> that you still use to newer releases? 

I usually track the latest longterm branch (but I wait a bit before
jumping to a new longterm). So at the moment the majority is running
4.19.x, but I'm in the process of upgrading to 5.4.x now that most of
the annoying bugs should be fixed ;-)

> What is the oldest/newest you run at the moment?

Oldest: 4.15.18 (because of an annoying regression that's likely never
going to get fixed)
Newest: 5.4.20

> - Are you able to move the host installation to a distribution with a
> long-term stable release cycle such as Debian, Ubuntu that gives you
> a ~five year support after a kernel release?

I could do that, but I would like to avoid being dependent on an old
kernel as from personal experience even on so-called "longterm"
releases regressions do slip in and tend not to get fixed if they're
not too severe, especially in old distro kernels.

Kind regards,

- Yoshi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
