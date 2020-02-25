Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8A716BC92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 09:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDB3zYxoHPdPKPLQl3QKReyzCFLVKr6AVAOUZ86KHHQ=; b=d5W+DAStJMzTE5
	yzqL5yHKD7mV1fA+7EjoYyEZeIy1OtI15auLUqMKZjFR5SZ3ig/4kTevtScR5QRsV+t3fM9ieSvjh
	lk6FzPLd/d048rkh2qv9kBXeqeOg5lyoc5Y9Lgc3Jtx8mVLZ3v/W9cGwPnYeDFmwXzBXrukpWu2Cd
	y32O78qRZdpWtj7L052VziNOmGLr/tXlVTRvBvJOEegBcBZSIFTswTyu9fEl+mnvF8IWfGL+sbeLq
	Fklt9jse1m1lS6WsmH3ex7cUCi42cytNrNCQtVy+rDFLNJSjayclvY+HGIYw72HxV003RZKJOE/hS
	3EUKQZFcW8ALrNEH/Eyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Vxh-0001gm-UO; Tue, 25 Feb 2020 08:53:05 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6VxS-0001eD-57
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 08:52:51 +0000
Received: by mail-oi1-f196.google.com with SMTP id a142so11814457oii.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 00:52:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NCcXPgvLR7piGFPRQkQUMaxV6B+dhlZh7qpZmokhosQ=;
 b=OR34D9syM8V9g51Zxdr13eXdfbquf8q/grxOTJSpCEOSzewXDQYgnXwU/YdN5EM/sq
 4eAU2NRoRewnDps4j/XOTLWMBV3BW8aoM/9uRvjfP70Uula6TOyx//9VtoyvQB5d9Iq4
 5JiwSTd9cKtYBqx4uWzfZNqGg4e/MLvPvAEEHFsHI4J5gQfbx0zCyIag8gaDT+LYh0Cs
 Rdmd2VqjAAajwN2RhhieKwbStRY3sP4R1MNL9YhdDF+U9Qbr9+6K7JczFF9hJt29T+IV
 p2SSgrSSqdzOfrq58zp6kV7XJDAOZMg+HTvFfPeAH7dMRPMkhXxzpFoO3Q2jw7mAt1nI
 kJYg==
X-Gm-Message-State: APjAAAX1wqejSLuFh9Bm6why/gc15Uo2+NDLQ43aU1t89qGfi3Fde+Kf
 GwZ+C6h5/2AZyU65Xn9/kyeJp3dP/wlFLsWO/I4=
X-Google-Smtp-Source: APXvYqz7lmhUeSfLmWKkIYk5sXq/O3b4LGrwEfCtT6NjjC+E5sVm0CRMbzawuf071lueIUP7GDqOPvgv08/U/Hcn99E=
X-Received: by 2002:aca:52d0:: with SMTP id g199mr2443241oib.153.1582620769070; 
 Tue, 25 Feb 2020 00:52:49 -0800 (PST)
MIME-Version: 1.0
References: <CGME20200220121333eucas1p26befa95831b44a793822b4f07b37d2cc@eucas1p2.samsung.com>
 <20200220102628.3371996-1-gregkh@linuxfoundation.org>
 <b04ad319-9986-c357-ad37-937bbb06bc02@samsung.com>
In-Reply-To: <b04ad319-9986-c357-ad37-937bbb06bc02@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 25 Feb 2020 09:52:38 +0100
Message-ID: <CAMuHMdXzPPNqQom82frY1B6LMre+VD9fPAf98BZ3eo2DhgwoYg@mail.gmail.com>
Subject: Re: [PATCH 1/2] tty: serial: samsung_tty: build it for any platform
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_005250_199237_7A5B369A 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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

On Thu, Feb 20, 2020 at 1:13 PM Bartlomiej Zolnierkiewicz
<b.zolnierkie@samsung.com> wrote:
> On 2/20/20 11:26 AM, Greg Kroah-Hartman wrote:
> > There is no need to tie this driver to only a specific SoC, or compile
> > test, so remove that dependancy from the Kconfig rules.
>
> samsung_tty driver is hardware specific driver so why should we
> build it for any platform?
>
> This change seems to defeat the whole purpose behind COMPILE_TEST
> config option (which allows us to build hardware-specific drivers
> without needlessly presenting the user with tons of non-relevant
> config options).
>
> Please explain this change some more, are you planing to remove
> COMPILE_TEST config option?

+1

I was just going to send a revert...

> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

> > --- a/drivers/tty/serial/Kconfig
> > +++ b/drivers/tty/serial/Kconfig
> > @@ -237,7 +237,6 @@ config SERIAL_CLPS711X_CONSOLE
> >
> >  config SERIAL_SAMSUNG
> >       tristate "Samsung SoC serial support"
> > -     depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST
> >       select SERIAL_CORE
> >       help
> >         Support for the on-chip UARTs on the Samsung S3C24XX series CPUs,
> >
> > base-commit: 11a48a5a18c63fd7621bb050228cebf13566e4d8

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
