Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BEBF4225
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:32:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZhVnHd/0lX47bsmFBoBWpymZ8TIM9GaM5+m6ryegto=; b=uKasOoRYNf7Jx7
	Ut2e9YHUuj9G4DLh2Pihi5Ti6p+e0lJxW3lR3qaDF9fGzN7xKBZ+vizgMILevCqEJnFVz75CIok3S
	hkcTwlf8TSHK8PECtf7Ek5gxS2NFQD5Y6cbxIM+78FdXGX5EsQUOstUIaUyW6rmgHtnZz7jUNzZQk
	Uft47mCKbTVswt38MIDr6zF+HIuD+3CdL83j/Ytkc5hpVcEmvc+Re0R4xMzwCDkbYPN4wTzV9Gn2x
	OXL3x90Gh+AhBu6eHZqudTQDA9l9z2LqsZmya/p3UM5AagFgMs/l/5Ur4m7tvu8aPE6hZMqHQPmrb
	SwiZngd71fysuGVfVQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzhL-0007Ci-KX; Fri, 08 Nov 2019 08:32:51 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzhA-0007Bg-Om; Fri, 08 Nov 2019 08:32:42 +0000
Received: by mail-ot1-f66.google.com with SMTP id b16so4522522otk.9;
 Fri, 08 Nov 2019 00:32:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mb8MvPT80CBr0Al9ctm+EN0Y96m3kmKlyXiJXBeWesc=;
 b=jyHm/up2Sfe0c1LE6wk2NNG6v2qS+LHXTRVFs1/RhIYc/yqU5KnLKCV63XHBmAqj/c
 FP6ziVQeKRpiQD1XRwLBHkCoaDL3c/+hKnG20u9y3gJJ84Tp9ulJk9B9QZNFM7xkV2Sw
 e5mVcYN4OWEjeNSixwQJ/hKiLFSr7VQcEUUQ09LsAWkDxCR5MkNsvR9XrKioOO5SWPUM
 0GJlnV/JXKpEtw1oyxtTTTaB1ix8Yvq0r4DEZU+6eW28Q0tpozpYuFNQi986dZG/5l2r
 38A+f8kPuO7/PJk5ygs2s1qmCs8ttEHpyxIcKHivsi6wjnxeDtzvXX0Ca8Cx95n9IDG0
 jCZQ==
X-Gm-Message-State: APjAAAV44w4SSfa/WQ1i/A07wYo/GqvjqqNx35xyCGx8i4CWC5Io0+uy
 L4KKxWysk74M1T4yXFjpXKvI2HGitc0FYGN/Iz8=
X-Google-Smtp-Source: APXvYqw+43SGPSED0AJZnzsx4nEcpKNktTl/12Rw+DSczrLXTnm64tHUPqVN8uYM7eIOKZWrtAAa7/8vyyyqFua3Kw4=
X-Received: by 2002:a05:6830:2363:: with SMTP id
 r3mr7709762oth.39.1573201958505; 
 Fri, 08 Nov 2019 00:32:38 -0800 (PST)
MIME-Version: 1.0
References: <1572850587-20314-1-git-send-email-rppt@kernel.org>
 <1572850587-20314-6-git-send-email-rppt@kernel.org>
 <CAMuHMdUG3V7uxzhbetw75vVeobeP0-bQySb3r=0V5XujUF123g@mail.gmail.com>
 <20191104094748.GB23288@rapoport-lnx>
 <CAMuHMdVHsNyLxhaxZcVdLvQ1PUnb=2_+ECPWVD0234V+qu+kOw@mail.gmail.com>
 <3d908bbf-0469-c53b-dd86-87df98f40ee7@gmail.com>
In-Reply-To: <3d908bbf-0469-c53b-dd86-87df98f40ee7@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 8 Nov 2019 09:32:27 +0100
Message-ID: <CAMuHMdVe-7=587nMWK_FcHzsm1TLckwTY9JxKHM_Gg8+ogZsgA@mail.gmail.com>
Subject: Re: [PATCH v3 05/13] m68k: mm: use pgtable-nopXd instead of
 4level-fixup
To: Michael Schmitz <schmitzmic@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_003240_808720_E7574F34 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Linux MM <linux-mm@kvack.org>, sparclinux <sparclinux@vger.kernel.org>,
 Rolf Eike Beer <eike-kernel@sf-tec.de>, Vincent Chen <deanbo422@gmail.com>,
 Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Linux-Arch <linux-arch@vger.kernel.org>, linux-c6x-dev@linux-c6x.org,
 Richard Weinberger <richard@nod.at>, Helge Deller <deller@gmx.de>,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Vineet Gupta <Vineet.Gupta1@synopsys.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Jeff Dike <jdike@addtoit.com>,
 linux-um@lists.infradead.org, linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, alpha <linux-alpha@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

On Fri, Nov 8, 2019 at 5:30 AM Michael Schmitz <schmitzmic@gmail.com> wrote:
> Am 04.11.2019 um 22:53 schrieb Geert Uytterhoeven:
> >>> This indeed boots fine on ARAnyM, which emulates on 68040.
> >>> It would be good to have some boot testing on '020/030, too.
> >>
> >> To be honest, I have no idea how to to that :)
> >
> > Sure. This was more a request for the fellow m68k users.
> > But don't worry too much about it.  If it breaks '020/'030, we can fix
> > that later.
>
> Boots fine on 030, too.

Thanks a lot for testing!

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
