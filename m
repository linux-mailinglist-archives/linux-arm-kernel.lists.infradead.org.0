Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DC916BFC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 12:40:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/84vLneTVP7vOmB/9Wl2WZNYj/pvXScOcuz/RZVqWlI=; b=gfnZs5fo19mEEg
	KWjXD4PQaQOZwYKIcL6bP2VgJki4eAZLLqExNgzc98bjuOg/n9JyVcP20sd3FY+mT4D+kjwOkMieA
	AEcduuId2cRVpyxGy/OEFNonzrFWKbV8SnT/H1NBuOQwqZGNkckmx56wanRUHQkfVxSMS0gvLjEyd
	K2Sp1g+EYE5ZQGB9e16XhWbANiNdR7nzO0XOoGeu6VAK2tgbGcThdqCC3J0o2j70jx+ln53BS8+rm
	lPwWJ1ZmeCYwZ+ACDIn6oA5Bokeqp4XG2IT/oXCbseGz2oakOe/490HccN+Jn0nYo7mFKyUC8EHTw
	Lnm6UlNwIOpkyHwLfB5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6YZr-0005Y4-Kl; Tue, 25 Feb 2020 11:40:39 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6YZh-0005XX-NX
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 11:40:31 +0000
Received: by mail-ot1-f67.google.com with SMTP id r27so11749923otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 03:40:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FtSL6blyPAZze6ZCRbjWDN2YMeEHTgiACm2C0IipfCg=;
 b=kyT3lvP0SyfLtAbFxm5W6rDVNuND+fhLLbtc4F1h6CjrA5+VRzlLfzuVlJRPWM4xaw
 A1beoFkKe2xOIB0SSrdCtJoGinH6QepJBcHE/6awcN7La5XeFQlVoYECWGEv7a8L/llz
 nwNxRQ0+3fx0GG2vSQ6rptjq8Fzh4rHIEV3/RSV55CEoOhfemo74vc8tkN8EWqIb+Nu7
 +PoI/cDT3apudks1rrFin7ONKyl8vYRC2Xx+pwR0LdmyzQAFtGyxNNIeHA0V6ja35id+
 SS+0OTAe9h+rWIvtjaSwYfdCE5J374uBNDmNjsdu/ZlQ5W1/hVYC/BLaTgpunTXXwZeQ
 IX0Q==
X-Gm-Message-State: APjAAAX450LHJ7SKmnxkdDqUlLUWw4SC4xiBvX58Fu3FCxrZGDI18nMA
 cn/qycl9kXg6myS7VBjvRGjK8hRrO1IEjUB3m8g=
X-Google-Smtp-Source: APXvYqyouWOxx7o+qGH6491cT0Mqwp/wv4rPE9H5nXnqyr95TiZnfee0zlwsraP4qZaWJtjNPpueTtXCFgXu01sucFg=
X-Received: by 2002:a05:6830:10e:: with SMTP id
 i14mr1608612otp.39.1582630828617; 
 Tue, 25 Feb 2020 03:40:28 -0800 (PST)
MIME-Version: 1.0
References: <CGME20200225112354eucas1p1300749b32c6809b6a22194c1a952a68c@eucas1p1.samsung.com>
 <20200127140716.15673-1-geert+renesas@glider.be>
 <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
In-Reply-To: <d1b12473-5199-1cf6-25d1-a6ce79450e8e@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 25 Feb 2020 12:40:17 +0100
Message-ID: <CAMuHMdUGu4eStpYp5W0SKJd8yrLLDTgF4__Jq_n+Z7SWtPM+Cg@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_034029_767798_9D1FDB42 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>, Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Tue, Feb 25, 2020 at 12:24 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
> On 27.01.2020 15:07, Geert Uytterhoeven wrote:
> > Currently, the start address of physical memory is obtained by masking
> > the program counter with a fixed mask of 0xf8000000.  This mask value
> > was chosen as a balance between the requirements of different platforms.
> > However, this does require that the start address of physical memory is
> > a multiple of 128 MiB, precluding booting Linux on platforms where this
> > requirement is not fulfilled.
> >
> > Fix this limitation by obtaining the start address from the DTB instead,
> > if available (either explicitly passed, or appended to the kernel).
> > Fall back to the traditional method when needed.
> >
> > This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> > on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> > i.e. not at a multiple of 128 MiB.
> >
> > Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > Reviewed-by: Nicolas Pitre <nico@fluxnic.net>
> > ---
> > Against arm/for-next.
>
> This patch landed recently in linux-next. It breaks legacy booting from
> the zImage + appended DT + cmdline/memory info provided via ATAGs. I
> will debug it further once I find some spare time. What I noticed so
> far, the cmdline/memory info is not read from the ATAGs, only the values
> provided via appended DT are used.

Oops, something happening like this was one of my biggest worries when
posting this patch... Sorry for the breakage.

IIUIC, the kernel still boots, but just doesn't use the info passed by ATAGs?

I'll have a closer look later today.
In the mean time, I've sent some debug code I used when developing
this patch, which may be useful, hopefully.

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
