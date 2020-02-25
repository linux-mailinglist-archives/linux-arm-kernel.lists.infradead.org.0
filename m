Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5505716F112
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 22:22:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qd8pX64EmFS3h/nJULO55Gf8+6+Yfe7ga3+M2qZcX/Q=; b=joJCaoFE4mdpHA
	HB2HbcQw1Dlh9erCE1e94Bnw5IPG+cy23amAGFY4NUW5G9LvexaWqCcIeIJHFwNr/zOQTs9urjQAE
	MRkYQJN1gkP3+Z8FdkEN706Bp8Kp3EXiuCYeu7S94uJPqoIbhknX4dyJivjrAG415f1MMfZAe/Knn
	eLkB8sSWwzI6xnZz6nOUH9EZlgM8R0YBPO+EG0vq2FVVaj+hTJmwATZFPdiZEK55sbLKhQch4g+A8
	rZK4K37g0BRIgj17kwEcl0yDUgtlqOQNPxcpf7k5GwR78zLyxQcroW9YlcSTCmpLHAntu7NTfftbY
	9J8LGCZGUvKETrQZeP6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6hf2-0006F2-9A; Tue, 25 Feb 2020 21:22:36 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6hep-0006EL-VV
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 21:22:25 +0000
Received: by mail-ot1-f68.google.com with SMTP id b3so928237otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 13:22:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cWg7LhjnlzN8qbXzmL1qgYcPfVtZZxDcF8WgDS4BNis=;
 b=POef5KLlvQOHJncpRex4NRneLydViYTLy9JL25OyTnc8WmzJaq+dbdF8yIx58I1St3
 SidbLpM2GiN/NYvNT+bs2tEWbbPwsrZQtC+O02h4wxYecmsQxQRGIfArR5fH4V4PFUq3
 4UFqgHG64p2SYRFwJWaLy1a4OFwqQsnv6LMe9KYrLzJFo1QzbR4HM3SqqLSLHdLuGijX
 AvrplfhXZDSEpnBc31BZEtDGd2RRsEiGGiSVzJjEpp2U1/tUlOaJm0DaKwRm+3lJApiY
 VAIAjsxtShrru0OptqrhBByAaePYGyNRa83q9iBGism6jtNvMmB5MsBqwajFDdmE6Wyu
 utXg==
X-Gm-Message-State: APjAAAVGRHFXyPLV04ejnZcOzM45joyohleJsUfv583kyfm1srI5LT9O
 kkCs6cS16wQWn5ClJQaUfTVV1WHYzmDvwgIYcWU=
X-Google-Smtp-Source: APXvYqxe+316UT/SCWiuy4sLEY7XWxPrYWUERMzqJz9VPqMqTetdKn7vGBnMQS3GJcbzUtVO/pJmDbNDP3BO9m3K+Bg=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr428811otk.145.1582665742600; 
 Tue, 25 Feb 2020 13:22:22 -0800 (PST)
MIME-Version: 1.0
References: <CGME20200220121333eucas1p26befa95831b44a793822b4f07b37d2cc@eucas1p2.samsung.com>
 <20200220102628.3371996-1-gregkh@linuxfoundation.org>
 <b04ad319-9986-c357-ad37-937bbb06bc02@samsung.com>
 <CAMuHMdXzPPNqQom82frY1B6LMre+VD9fPAf98BZ3eo2DhgwoYg@mail.gmail.com>
 <20200225204151.GA13254@kroah.com>
In-Reply-To: <20200225204151.GA13254@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 25 Feb 2020 22:22:11 +0100
Message-ID: <CAMuHMdVrVe37JyUNFSf9KRZTcndrvDaZvrVoBxzm_7J2nhg1kg@mail.gmail.com>
Subject: Re: [PATCH 1/2] tty: serial: samsung_tty: build it for any platform
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_132224_015083_441E3ADB 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Donghoon Yu <hoony.yu@samsung.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Tue, Feb 25, 2020 at 9:41 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Tue, Feb 25, 2020 at 09:52:38AM +0100, Geert Uytterhoeven wrote:
> > On Thu, Feb 20, 2020 at 1:13 PM Bartlomiej Zolnierkiewicz
> > <b.zolnierkie@samsung.com> wrote:
> > > On 2/20/20 11:26 AM, Greg Kroah-Hartman wrote:
> > > > There is no need to tie this driver to only a specific SoC, or compile
> > > > test, so remove that dependancy from the Kconfig rules.
> > >
> > > samsung_tty driver is hardware specific driver so why should we
> > > build it for any platform?
>
> Why not?

Because this driver won't bind to a device anyway, when the kernel is
configured without Samsung SoC support.  It will just bloat the kernel,
and asking this question is a silly waste of time for anyone building a
(non-generic) kernel for a non-Samsung SoC.

> Seriously, this "only this one specific SoC is allowed to build this
> driver" is crazy.  It prevents anyone from building a generic kernel
> with drivers as a module which are loaded as needed.

A generic kernel will include Samsung SoC support, hence PLAT_SAMSUNG
or ARCH_EXYNOS will be enabled.

> That needs to be fixed, and removing this unneeded dependancy on this
> driver allows it to be build for any system and then only loaded when
> needed.

It can only be loaded on a Samsung system, which requires PLAT_SAMSUNG
or ARCH_EXYNOS anyway.
It's not like a Samsung serial device can be plugged into your PC's PCI
bus or so, it only exists on Samsung SoCs.

> > > This change seems to defeat the whole purpose behind COMPILE_TEST
> > > config option (which allows us to build hardware-specific drivers
> > > without needlessly presenting the user with tons of non-relevant
> > > config options).
> > >
> > > Please explain this change some more, are you planing to remove
> > > COMPILE_TEST config option?
>
> I want to get rid of this:

IMHO we need _more_ of these dependencies, to avoid all these silly questions
when they don't make sense.

> > > > -     depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
>
> We should not need PLAT_SAMSUNG or ARCH_EXYNOS at all, we should be able
> to build an arm64 kernel for all platforms.

An arm64 kernel for all platforms will have ARCH_EXYNOS enabled.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
