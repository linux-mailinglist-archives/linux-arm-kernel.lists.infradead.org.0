Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0478EC7B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 15:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2QEM079xNlpRcNnKfwjoVg8ggHoTHjR3xY3/RdP3Iio=; b=RH4YRZnSzfXRMz
	IyNDWIiY2BOpTG5+sGctOD70IJOUi9tlwut38Lh7oAntWOq7YktPbZDIPZM4BAUyWZbdfPS7ngvvw
	0QyyythMWWRZgiTZe5JeVRgeUBMzfopyi4FC5x+L31Lih4HG81MjIgNd1xCY0mtQfsQ6IeCx+2EqA
	bW/ceVBg0hltzR1WCzyky2PzdIHYSelYX6xaVb9vua6naZgLQ/8V0FaEL4kiqOEPYTycHqIaN8x0L
	AXrS1mR/MG8lKSvD9bB/Xt2ksItcH2k8UuqoUttx3iJKkxnksEVSTGedeaOr8qcag+whlb7Rd8NK0
	BIaTeCdY6SumlJzFZ4qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyFXu-0003wi-1E; Thu, 15 Aug 2019 13:12:02 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyFXa-0003wF-KR
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 13:11:45 +0000
Received: by mail-qt1-f193.google.com with SMTP id k13so2196653qtm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 06:11:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Oj5UE2LGVcMS9SysCoBFopHSBvRpgrX1g7nT1W4Cv9s=;
 b=Nf/1WSVgikwoO+fltzPrkBy4JtjGK9N6reiArPaHZ945WJ7tc88FxHPGhFTY4uzmSm
 3faOQis33wHVuE4bZDmZnTEeKWJD3+Q2sKagRLYhanhX/srCKw++/PNPNakVkceBphho
 P84Clm7+ogBVoJdTRA2KeOr/R0pfqCpOpevMWz/8D1tfsKErRy3C+9wyZYZbD8cnpSaU
 2byjMlcvxJLS0ZlcDiF4fweZlBEeAEHr2ay8+cOdNHSxNUbtuZhv37WdUS3fBEbq36A3
 uAAtzvaU8dUYCUXb0GKspykeffvGN8VmFVCuBcynBheQHQnnC5BcSDrmhuDsQHuSudfU
 ertA==
X-Gm-Message-State: APjAAAVSUrscAzspGnVcU1mCj/W1Nrl1PxmaRYuUQomHozCYeSptGdQH
 eo1mlwFM/AaK6Nv1yo0/4Q9IltlxyAnYFeEn3r9YGuGC
X-Google-Smtp-Source: APXvYqxABsAyr+BlU4FYBzPP5E1lu5hNr5RQd0ASTCcdU5s/TSRX7ngTvmZ5zwiRax3ZP5e4wh7pQOi1eFXPhhKeyw0=
X-Received: by 2002:ad4:53cb:: with SMTP id k11mr3085440qvv.93.1565874701634; 
 Thu, 15 Aug 2019 06:11:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731225303.GC1330@shell.armlinux.org.uk>
 <CAK8P3a1Lgbz9RwVaOgNq=--gwvEG70tUi67XwsswjgnXAX6EhA@mail.gmail.com>
In-Reply-To: <CAK8P3a1Lgbz9RwVaOgNq=--gwvEG70tUi67XwsswjgnXAX6EhA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 15 Aug 2019 15:11:25 +0200
Message-ID: <CAK8P3a0=GrjM_HOBgqy5V3pOsA6w1EDOtEQO9dZG2Cw+-2niaw@mail.gmail.com>
Subject: Re: [PATCH 00/14] ARM: move lpc32xx and dove to multiplatform
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_061142_667325_96E83F6F 
X-CRM114-Status: GOOD (  23.46  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB list <linux-usb@vger.kernel.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Networking <netdev@vger.kernel.org>,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 9:33 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Thu, Aug 1, 2019 at 12:53 AM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > On Wed, Jul 31, 2019 at 09:56:42PM +0200, Arnd Bergmann wrote:
> > > For dove, the patches are basically what I had proposed back in
> > > 2015 when all other ARMv6/ARMv7 machines became part of a single
> > > kernel build. I don't know what the state is mach-dove support is,
> > > compared to the DT based support in mach-mvebu for the same
> > > hardware. If they are functionally the same, we could also just
> > > remove mach-dove rather than applying my patches.
> >
> > Well, the good news is that I'm down to a small board support file
> > for the Dove Cubox now - but the bad news is, that there's still a
> > board support file necessary to support everything the Dove SoC has
> > to offer.
> >
> > Even for a DT based Dove Cubox, I'm still using mach-dove, but it
> > may be possible to drop most of mach-dove now.  Without spending a
> > lot of time digging through it, it's impossible to really know.
>
> Ok, so we won't remove it then, but I'd like to merge my patches to
> at least get away from the special case of requiring a separate kernel
> image for it.
>
> Can you try if applying patches 12 and 14 from my series causes
> problems for you? (it may be easier to apply the entire set
> or pull from [1] to avoid rebase conflicts).

I applied patches 12 and 13 into the soc tree now. There are some
other pending multiplatform conversions (iop32x, ep93xx, lpc32xx,
omap1), but it looks like none of those will be complete for 5.4.

I now expect that we can get most of the preparation into 5.4,
and maybe move them all over together in 5.5 after some more
testing. If someone finds a problem with the one of the
preparation steps, that we can revert the individual patches
more easily.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
