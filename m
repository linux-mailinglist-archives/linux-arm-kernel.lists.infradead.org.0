Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682951A07F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 09:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WttygkGCTigZl3LPPLY+I/jsXzrfJlY+R2NnZK8TX4=; b=KeUWEFedzbsfMc
	PkLBtRzJXKmf+6jydHy3tY3lNy7blKl1ngoqZqAUSMrVV34PYP6+Nd2sXVGlkHjdEPafBzy6DxhJY
	JNWCAJllBa5q02EFB4LgQwz/p+jYLsM15d3CkWk5Xa2xMMnMLZCKLUa1rHDKI6My0N4cUuH9Nscut
	gA4eMr1p4rENdeAtxrap9JwVxsIQDF7KUD7oIpshiuVnkM2GOLEMs+Jieh76uBj0cajGX2dCfzeXM
	cVm1FFAkS9Hfd2/usY2wfrycU8OB9O2eATRykyaTqIk3An8C0/JTUuBuok/Wxd7HIopVBkQBen5MU
	P63twmDmFqlP+kvma64A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLiLL-0006lj-I9; Tue, 07 Apr 2020 07:08:19 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLiLF-0006kS-Cy
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 07:08:14 +0000
Received: by mail-oi1-f193.google.com with SMTP id m14so641048oic.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 00:08:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9KPwW6gv1QSgTyaBqvuvuccR22yt8OHERtZtZ45QV20=;
 b=gAGF8hgFZ5j0xQdgWiWIm2Ym9JT8jDzHFyUPydM1hWLBJn2I1CDqrP0WSyYrYnP2Ct
 3DY1yWPPzdTsMIQDC6DzMt/vh9julkgi0KNRUA5/LgyW0fpv2YelxvzYStpGTmY/AVeh
 ZvrziJ5RjAw4+LJ3UzL/0XT7jSwad8nS+WnBiof2gJILmwsCpwuD2qRHCooObEhB3POU
 UH60EEptd6S58D24MuKbOyoZ/0nMG6KzUI21MXtifAnt/9on+/cOOa51LMUM8d9n92Af
 BiR5iB9qEU8u/ZrAPevj01puEC0xqsICb+nkApfcsZYU3Q8d4ByKkAwhVfJzhoe5+od7
 GROg==
X-Gm-Message-State: AGi0PuatjcRSP2YjS3PB7pGJMWRBMQjvE8m2sC27m3szv+nw4tRuqULY
 smg8puIvEQgGq7bHcRiZzP/K6z4nl2m7ohzGYCE=
X-Google-Smtp-Source: APiQypJUPzMxv/4MrgNefdxeLOoU32bKKGVhjV9FcAL8pAgR+GgzTWByrZ8jvfBkCgjZ21+HvYrOL/5ps9Lu0L/nTBE=
X-Received: by 2002:aca:cdd1:: with SMTP id d200mr591205oig.153.1586243287374; 
 Tue, 07 Apr 2020 00:08:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200405025123.154688-1-sboyd@kernel.org>
 <20200405025123.154688-7-sboyd@kernel.org>
 <CAK8P3a2M54quhRNK4xvwjz9O9oZwgrobc_wtkGaeA2PMYwOUdg@mail.gmail.com>
 <158614207114.88454.6776609424163493475@swboyd.mtv.corp.google.com>
 <CAK8P3a3Yt2woG2LMcQ0jNPGuHdMtFbBmLvtBbrWFQ4J6x3v9aQ@mail.gmail.com>
 <8a2a142a-106a-4241-fca5-5ef12e66cd41@linux-m68k.org>
In-Reply-To: <8a2a142a-106a-4241-fca5-5ef12e66cd41@linux-m68k.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 7 Apr 2020 09:07:56 +0200
Message-ID: <CAMuHMdV=rqpfmxtS+_kFeSiPs7cg6h2nTw4YmBKb=4kn0PuGgg@mail.gmail.com>
Subject: Re: [PATCH 6/9] clk: Allow the common clk framework to be selectable
To: Greg Ungerer <gerg@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_000813_439040_BF374594 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Rich Felker <dalias@libc.org>, Yoshinori Sato <ysato@users.sourceforge.jp>,
 Arnd Bergmann <arnd@arndb.de>, Linux-sh list <linux-sh@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, Mark Brown <broonie@kernel.org>,
 Mark Salter <msalter@redhat.com>, Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-c6x-dev@linux-c6x.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Tue, Apr 7, 2020 at 6:57 AM Greg Ungerer <gerg@linux-m68k.org> wrote:
> On 6/4/20 5:35 pm, Arnd Bergmann wrote:
> > On Mon, Apr 6, 2020 at 5:01 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >> Quoting Arnd Bergmann (2020-04-05 05:45:20)
> >>> On Sun, Apr 5, 2020 at 4:51 AM Stephen Boyd <sboyd@kernel.org> wrote:
> >>>> There's one snag with doing this, and that's making sure that randconfig
> >>>> builds don't select this option when some architecture or platform
> >>>> implements 'struct clk' outside of the common clk framework. Introduce a
> >>>> new config option 'HAVE_LEGACY_CLK' to indicate those platforms that
> >>>> haven't migrated to the common clk framework and therefore shouldn't be
> >>>> allowed to select this new config option. Also add a note that we hope
> >>>> one day to remove this config entirely.

> >>>> --- a/arch/m68k/Kconfig.cpu
> >>>> +++ b/arch/m68k/Kconfig.cpu
> >>>
> >>>     text    data     bss     dec     hex filename
> >>> 1934726 263616   83284 2281626 22d09a obj/vmlinux-before
> >>> 1971989 266192   83308 2321489 236c51 obj/vmlinux-after
> >>>
> >>> The coldfire clock implementation looks rather simple compared
> >>> to chips from the 2010s: most chips have only fixed clocks,
> >>> and three of them have one of two registers of clock gates.
> >>>
> >>> It shouldn't be hard to convert, but enabling common-clk will
> >>> cause a noticeable kernel size increase on the fairly limited
> >>> hardware.
> >>>
> >>> Simply enabling COMMON_CLK in m5475evb_defconfig
> >>> results in a 1.7% or 40KB growth in kernel size, plus there
> >>> would be additional dynamic memory usage:
> >> There could certainly be some work done to reduce the code size of the
> >> CCF. I haven't looked but perhaps we could save some memory by making
> >> the basic types selectable too and then push a bunch of kconfig updates
> >> through for that.
> >
> > Right, that might help. Another possibility would be to support both
> > the common clk layer and the custom clk implementation on coldfire
> > until we remove the other custom implementations, by which point
> > even fewer people will care about coldfire.
> >
> > Let's see what Geert and Greg think would be the best path for coldfire,
> > maybe the added 40KB is less of a problem after all.
>
> Losing another 40k is not ideal, but not the end of the world.
> It would not stop me running it on any platforms I regularly
> run on. For sure some of the really old hardware just doesn't
> have the RAM to spare.
>
> Any way, I say we have to move forward and and move to using
> the common clock framework for ColdFire sooner than later.

Fine for me.

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
