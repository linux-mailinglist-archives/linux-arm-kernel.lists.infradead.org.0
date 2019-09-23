Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF563BAC97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 04:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1z47xsFL5LwQNzC8SzgIog2ifaWbU6reqVqW56qN9MY=; b=NdsIHu1/nHIITW
	TQPzcRGcr2Cm8DKPn6ZJxYCcYUXCQ6O2NUH9u/0D27s6p6o2LnyOJxdIgiBg/kejMnoxJ2jUgUhtn
	vcXC8GaNymPgvdMwhkJaax4UTNC6OyG5UeVunZHegoNX3lgA9SAlm/BimDnKLuo6zlhQ8g6gM4BUT
	bTNi3rzguykIw7Mg3Fqrdi9KNYql6gnU5ZD8+gQfvCA8qKP0CrIYAsH8WFLE7nBOH1Q2p0w5oG33T
	KDK3wY+53Hwv3gKUKXC9bh585Fh6ZAyPLKFAUKyufuj17Rn4d9Qu42epox6ew5JKQWPE1VjFgBqgX
	BldjS54D6EsQ4rLKy/JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCE4b-00074F-O0; Mon, 23 Sep 2019 02:27:33 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iCE4N-00073f-IY
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 02:27:21 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID x8N2Pj3o013232,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id x8N2Pj3o013232
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 23 Sep 2019 10:25:45 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCASV01.realtek.com.tw ([::1]) with mapi id 14.03.0468.000; Mon, 23 Sep
 2019 10:25:44 +0800
From: James Tai <james.tai@realtek.com>
To: "'Arnd Bergmann'" <arnd@arndb.de>
Subject: RE: [PATCH] ARM: Add support for Realtek SOC
Thread-Topic: [PATCH] ARM: Add support for Realtek SOC
Thread-Index: AQHVY67V+8blpY45FUyr2dN3mgK/RqccOwQAgAf67ACAAW8fgIASLtdg
Date: Mon, 23 Sep 2019 02:25:43 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF8E7CA5@RTITMBSVM04.realtek.com.tw>
References: <20190905054647.1235-1-james.tai@realtek.com>
 <CAK8P3a13=VBZnj6E=s7mZk0o7Q3XkMHgcsL12s-3psuOWsfOtQ@mail.gmail.com>
 <43B123F21A8CFE44A9641C099E4196FFCF8DA1D0@RTITMBSVM04.realtek.com.tw>
 <CAK8P3a39VrC1Xn+HZc5gvh1-nUYKywDGjTfO9WPCqim89WtGAg@mail.gmail.com>
In-Reply-To: <CAK8P3a39VrC1Xn+HZc5gvh1-nUYKywDGjTfO9WPCqim89WtGAg@mail.gmail.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_192719_875855_2672753F 
X-CRM114-Status: GOOD (  29.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 =?utf-8?B?Q1lfSHVhbmdb6buD6Ymm5pmPXQ==?= <cy.huang@realtek.com>, Linus
 Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Phinex Hung <phinex@realtek.com>, Rob
 Herring <robh@kernel.org>, Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Thierry
 Reding <treding@nvidia.com>, "jamestai.sky@gmail.com" <jamestai.sky@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>,
 =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> <james.tai@realtek.com> wrote:
> > > Subject: Re: [PATCH] ARM: Add support for Realtek SOC
> 
> > > > @@ -148,6 +148,7 @@ endif
> > > >  textofs-$(CONFIG_ARCH_MSM8X60) := 0x00208000
> > > >  textofs-$(CONFIG_ARCH_MSM8960) := 0x00208000
> > > >  textofs-$(CONFIG_ARCH_MESON) := 0x00208000
> > > > +textofs-$(CONFIG_ARCH_REALTEK) := 0x00208000
> > > >  textofs-$(CONFIG_ARCH_AXXIA) := 0x00308000
> > >
> > > Can you explain why this is needed for your platform?
> > >
> > We need to reserve memory (0x00000000 ~ 0x001B0000) for rom and boot
> code.
> 
> Ok.
> 
> > > > +config ARCH_RTD16XX
> > > > +       bool "Enable support for RTD1619"
> > > > +       depends on ARCH_REALTEK
> > > > +       select ARM_GIC_V3
> > > > +       select ARM_PSCI
> > >
> > > As I understand, this chip uses a Cortex-A55. What is the reason for
> > > adding support only to the 32-bit ARM architecture rather than 64-bit?
> >
> > The RTD16XX platform also support the 64-bit ARM architecture.
> > I will add the 64-bit ARM architecture in new version patch.
> >
> > > Most 64-bit SoCs are only supported with arch/arm64, but generally
> > > speaking that is not a requirement. My rule of thumb is that on
> > > systems with 1GB of RAM or more, one would want to run a 64-bit
> > > kernel, while systems with less than that are better off with a
> > > 32-bit one, but that is clearly not the only reason for picking one over the
> other.
> > >
> > Support 32-bit ARM architecture is for application compatibility.
> 
> Generally speaking, a 64-bit kernel should work better on 64-bit hardware
> even when you are running mostly 32-bit applications. However, you may have
> device drivers that do not correctly set compat_ioctl handlers.
> 
> As I said, it's no problem to allow both, just explain this in the changelog text
> for the driver, along with the need for the textofs setting.
> 
OK.

> > > It's very unusual to see custom smp operations on an ARMv8 system,
> > > as we normally use PSCI here. Can you explain what is going on here?
> > > Are you able to use a boot wrapper that implements these in psci instead?
> > >
> > The smp operations is porting form other Realtek platform.
> >
> > Currently, The RTD16XX platform can use the PSCI method.
> > I will add PSCI method in new version patch.
> 
> Ok, perfect!
> 
> > > > +       timer_probe();
> > > > +       tick_setup_hrtimer_broadcast(); }
> > >
> > > What do you need tick_setup_hrtimer_broadcast() for? I don't see any
> > > other platform calling this.
> > >
> > I want to initialize the HR timer.
> 
> I'm still unsure about this one. My feeling is that it should not be in the
> platform code, but I don't quite understand which hardware needs it. I see that
> Lorenzo Pieralisi added the same code to arm64 in commit 9358d755bd5c
> ("arm64: kernel: initialize broadcast hrtimer based clock event device"), but
> nothing ever calls it on 32-bit arch/arm even though the code does get built in
> to the kernel.

I will add the 'hrtimer' initialization flow in related devices drivers.

> My feeling is that either you don't really need it, or this is something that other
> platforms should really do as well, and it should be called from the generic
> time_init() function in arch/arm/kernel/time.c instead.
> 
OK. I understand.

> Can you try to find out more of the background here, and then move the call to
> time_init() assuming it is indeed useful?

I agree with you. It is not necessary to call 'time_init()' function in platform code.

>        Arnd
> 
> ------Please consider the environment before printing this e-mail.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
