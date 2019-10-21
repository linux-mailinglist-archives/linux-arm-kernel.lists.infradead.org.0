Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132CDDF0B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 17:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=olRwi101hgR80RfumL3HjTDACV3+155j/S7lnY2BQHk=; b=UttHcxJCjpZPRZ
	MOnElDqjZKLgDdSGZzNadz0obWqkn9rs+g47iaGkBsJKg/Gp2vESlcgRXEXsh3+KUzyldkztfb2V0
	vqqNywfWyDtUpvFbwA1mENdc095shGTmnEYMc4Yna8/SF0YdCZT3rvWL1m37G3u1JhRj6dxlYVSOo
	Y4xg7M2zAFwqvywgy6v7gqeVARzM76r6yylzTvbLAtAFrQxqMcWWfNyiCIxb+dlh3U/i4tSYZJzcD
	brVGJ2Gah8a6hTmCC0WvL2PMkv2PfsGYsPleSzcCxGOObeI3MjTx1Rtosx/R7VYHv88NN4WDPm0PL
	5DWLkWP7Nn+mDYFHSqig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZA7-0007w1-GG; Mon, 21 Oct 2019 14:59:59 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZ9y-0007uz-Hn
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:59:52 +0000
Received: by mail-ot1-f67.google.com with SMTP id 41so11229998oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 07:59:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oQ9Hhq6j199wCYON733LhiZ9S9XG9VAo1ttmANYkXWA=;
 b=YAHPRZxAov0WOjaGYmH2qj4bPENyLcVIz1MRLv3tF8bprKt6thsMIeNcC0GqJnHwjb
 JSj9d+s62wPUe5J6vE+OqnPcNQPFbIt42eyGOxnVyoYTGNOYj/Jea8Bc/MgRCi3H5cyi
 +3FaAhIr6bnLT93XvKQg8aQxn1Cdm5Nz3Cirb5zIt6UNRYwZavsPT4Zw4ZgbDx/vprYA
 slyA3cEkBgmWDckwV36vmTcEjjcxXpqx5Aw7eTOpuZwfEwbsfab4bAp0UIsNimij8es0
 QJQrYg8vlugMlyxUsHbMB1hVB3AnFcxRlGTdIWio0g1exoiSIT6cgddHvXOu4S0a5Boh
 YBSg==
X-Gm-Message-State: APjAAAVq07FOyoMvJa1wEqV+A3TM7InA/dsbERyOl51AkLX3N9mbdLQd
 IdBSgDjQaym5Ag9CvAU53dOnYFpvIQlzD08iMug=
X-Google-Smtp-Source: APXvYqzCov0X1UPjRitvXQeN6gJblYG138w3wiV1o43RbRbpx0942OOlVOzwt/sTEVsk+ESIGxOVEJBjKOJtFYVhrqo=
X-Received: by 2002:a05:6830:1544:: with SMTP id
 l4mr19010917otp.297.1571669989079; 
 Mon, 21 Oct 2019 07:59:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191021143742.14487-1-geert+renesas@glider.be>
 <20191021143742.14487-2-geert+renesas@glider.be>
 <20191021144548.GA41107@kroah.com>
In-Reply-To: <20191021144548.GA41107@kroah.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 21 Oct 2019 16:59:37 +0200
Message-ID: <CAMuHMdXdd87FwcHs0iQrjmLaAJPRC7P7ZByUhw+DkzZ6J+eGqw@mail.gmail.com>
Subject: Re: [PATCH 1/7] debugfs: Add debugfs_create_xul() for hexadecimal
 unsigned long
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_075950_588734_7B9164F4 
X-CRM114-Status: GOOD (  21.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
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
Cc: linux-wireless <linux-wireless@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "Rafael J . Wysocki" <rafael@kernel.org>, netdev <netdev@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Jaehoon Chung <jh80.chung@samsung.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,

On Mon, Oct 21, 2019 at 4:45 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Mon, Oct 21, 2019 at 04:37:36PM +0200, Geert Uytterhoeven wrote:
> > The existing debugfs_create_ulong() function supports objects of
> > type "unsigned long", which are 32-bit or 64-bit depending on the
> > platform, in decimal form.  To format objects in hexadecimal, various
> > debugfs_create_x*() functions exist, but all of them take fixed-size
> > types.
> >
> > Add a debugfs helper for "unsigned long" objects in hexadecimal format.
> > This avoids the need for users to open-code the same, or introduce
> > bugs when casting the value pointer to "u32 *" or "u64 *" to call
> > debugfs_create_x{32,64}().
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > ---
> >  include/linux/debugfs.h | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/include/linux/debugfs.h b/include/linux/debugfs.h
> > index 33690949b45d6904..d7b2aebcc277d65e 100644
> > --- a/include/linux/debugfs.h
> > +++ b/include/linux/debugfs.h
> > @@ -356,4 +356,14 @@ static inline ssize_t debugfs_write_file_bool(struct file *file,
> >
> >  #endif
> >
> > +static inline void debugfs_create_xul(const char *name, umode_t mode,
> > +                                   struct dentry *parent,
> > +                                   unsigned long *value)
> > +{
> > +     if (sizeof(*value) == sizeof(u32))
> > +             debugfs_create_x32(name, mode, parent, (u32 *)value);
> > +     else
> > +             debugfs_create_x64(name, mode, parent, (u64 *)value);
> > +}
>
> Looks sane, but can you add some kernel-doc comments here so that we can
> pull it into the debugfs documentation?  Also there is debugfs

Sure, will do.

> documentation in Documentation/filesystems/ so maybe also add this
> there?  I am going to be overhauling the debugfs documentation "soon"
> but it's at the lower part of my todo list, so it will take a while,
> might as well keep it up to date with new stuff added like this so that
> people don't get lost.

Right. Currently it already lacks debugfs_create_ulong(). Will add both
debugfs_create_ulong() and debugfs_create_xul().

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
