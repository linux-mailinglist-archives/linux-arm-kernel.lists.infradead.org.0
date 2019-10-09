Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6B9D17D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 20:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IGjhmLbE/dJ5NSNG3TE4XpQ0tuI8JPnNHjg/eLBTK8=; b=P3CSztWWqtLEj5
	I81F7IhZ6CdmCZuNYV/f+FZ4DrgiO9+XnWpjJQrJXxd4RpOx9bhYPqWA2AIpn2pdBvAAs0UEQDsnb
	1yKgcTLiXXkGqvtVuZ2kQHqh7pX8A7RlOn6St6BwEnk/RsLrxYk8FwR+WZZyVDwiKaoIU71+PwiPA
	dWM6qC2GyKyO1TmBE08glrPo0PlDKFDmlK7m+vAR8UCWVZ0nHK0H8jmVG8u6ZZtYYTAeyDqCUMYg/
	AO1GDbxiEzCr/8rd0Vb4Ae3zsjH2I106ZEYiYi5oVKdiX6zuGtbtzJ+1H6wnLdwiRhCSsUw0L8xgP
	wkHSjVNSJJK+Q4DdT9tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIH6T-0004vO-5I; Wed, 09 Oct 2019 18:54:29 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIH6J-0004uN-6M
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 18:54:20 +0000
Received: by mail-oi1-f193.google.com with SMTP id t84so2673135oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 11:54:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g4TKfxF3gSMTnw+PLh+f5IO7ohcFZfJBiF2mQGYqIL4=;
 b=TQDh6sDZoVGrVnQk7v6t7F9KYoCuIlokJ/DG+M3C+KmHEpN0Uqkz15lneCrzcWxR4T
 giFj5k8OhMmg8HIZZOhKlrTE6UQWrtGb6qyLtOcpK51Gj8JpKXhlEAZmUMeIM0M/rc0M
 bpmSss7e5B8kw2sXdaxS8CBg5DYgldYgym8WBjEPVHy9bXDoxNA15lk4axCrj1r00JUL
 2riFl5pcUW+qzFEBO8WHEZXINh1+P8mCviBMC66rVO6Rq4/OucUV5dYuIWBNd1DI0EiK
 c8X2kX70BEudMi+zsReSfzUTI8ejHJQ4mlTnzYgshymeu6jfmjPZGXvsM3FEwRB14Dn/
 s5LQ==
X-Gm-Message-State: APjAAAX0FnSUJHN00mN0H3lx47aRPxgzS73W7ubyWNi4aePUv+xuHpNY
 T3G51DcrqtdYR4noejdJDBC6g2pQQ1fROgGjchQ=
X-Google-Smtp-Source: APXvYqw1BKM4Cuxi1XA4HvctbF2Di+fHjDb86RAW85kLS3qGwPX1DixF1UEOVf5VBTH09sOtqCksZO8jSoTChcOkEKs=
X-Received: by 2002:a05:6808:3b4:: with SMTP id
 n20mr3648987oie.131.1570647255651; 
 Wed, 09 Oct 2019 11:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1570633189.git.vilhelm.gray@gmail.com>
 <893c3b4f03266c9496137cc98ac2b1bd27f92c73.1570633189.git.vilhelm.gray@gmail.com>
 <CAK7LNATgW7bXUmqV=3QAaJ0Qu73Kox-TgDCQJb=s0=mwewSCUg@mail.gmail.com>
 <20191009170917.GG32742@smile.fi.intel.com>
In-Reply-To: <20191009170917.GG32742@smile.fi.intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 9 Oct 2019 20:54:04 +0200
Message-ID: <CAMuHMdXyyrL4ibKvjMV6r8TuxpmK73=JxsWNEfcRk1NjwsnOjA@mail.gmail.com>
Subject: Re: [PATCH v17 01/14] bitops: Introduce the for_each_set_clump8 macro
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_115419_236119_E95BC844 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arch <linux-arch@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux PM mailing list <linux-pm@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 William Breathitt Gray <vilhelm.gray@gmail.com>, morten.tiljeset@prevas.dk,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Lukas Wunner <lukas@wunner.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Morton <akpm@linux-foundation.org>, Phil Reid <preid@electromag.com.au>,
 sean.nyekjaer@prevas.dk,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On Wed, Oct 9, 2019 at 7:09 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
> On Thu, Oct 10, 2019 at 01:28:08AM +0900, Masahiro Yamada wrote:
> > On Thu, Oct 10, 2019 at 12:27 AM William Breathitt Gray
> > <vilhelm.gray@gmail.com> wrote:
> > >
> > > This macro iterates for each 8-bit group of bits (clump) with set bits,
> > > within a bitmap memory region. For each iteration, "start" is set to the
> > > bit offset of the found clump, while the respective clump value is
> > > stored to the location pointed by "clump". Additionally, the
> > > bitmap_get_value8 and bitmap_set_value8 functions are introduced to
> > > respectively get and set an 8-bit value in a bitmap memory region.
>
> > Why is the return type "unsigned long" where you know
> > it return the 8-bit value ?
>
> Because bitmap API operates on unsigned long type. This is not only
> consistency, but for sake of flexibility in case we would like to introduce
> more calls like clump16 or so.

TBH, that doesn't convince me: those functions explicitly take/return an
8-bit value, and have "8" in their name.  The 8-bit value is never
really related to, retrieved from, or stored in a full "unsigned long"
element of a bitmap, only to/from/in a part (byte) of it.

Following your rationale, all of iowrite{8,16,32,64}*() should take an
"unsigned long" value, too.

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
