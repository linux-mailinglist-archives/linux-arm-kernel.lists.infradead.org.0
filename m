Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38873F5F87
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 15:27:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3sYvf+55b+hrzlNHf0DZOMY6ErcSXrHwAyNtEQz9u0=; b=UndloynWy7N0GQ
	YCMi8580rNS1EvcpUWTv1ImiMzbbCMarF85o/9sVkf+7OIo6ptgWgXRHofPSPIoucXfDo7Q3VObk+
	fyuj9DcLdwmAZkabuj8RJ3SyjFWNEXKMtwXmIKWobijkWIMR2NVUk4G8YVEJJvE6zszPNTUK+CrxY
	CyGWV7sN6gc8QMH32QWvbsgex6hDcf+5gYoHB3DTMZpzWKvaR3HpWlu8p4FMSHygHl+Qo1BClC6VY
	sklXz8NwLsVb8/N4ENwSW9qBippdLRNS+c09ByygD33hmgUEbwnj8Ak325KknakABP37r6Zmohq7m
	x+o8IKSheeIoq7EXhl4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTRhW-0006Pe-R7; Sat, 09 Nov 2019 14:26:54 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTRhK-0006PA-MK; Sat, 09 Nov 2019 14:26:44 +0000
Received: by mail-ot1-f65.google.com with SMTP id d5so7714371otp.4;
 Sat, 09 Nov 2019 06:26:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fkse6mn+BlbyKaVzVIbzg4CVFkjF596d7A0VyrrgtRU=;
 b=LNHoBkSIOLft5iDsiPTxi92fM1lDa2KJtNtjmBDYzTmWNps4+gzrF1VDIdGNTWFfGP
 NO/kdjsrwWJyDiu45vEmBrv5q4b2qjEWhHN8RuTC60fusQ1Ygp69mQZzfw2mVAY5vVd0
 J/IohS+l/USLR+lwpLBOh9oWWvz1vC2zILaFU0smZpNddE2KiFUNVLAH+QcJUGI5bzR4
 SC1Ikikls8jGGHhx9wFE0yr/KgMXwkJqQ9IUlbTuoA2eVrquxbvtwBBfCewIebVLpgL3
 fp2jzbKwSGtSL9p/knrhjId66uvrxSdtsdCQGJLjiIk9SFGFARM424sP1sTIf1WTmP3B
 N+Gw==
X-Gm-Message-State: APjAAAWpAf2SxbN6sgDFHRSkubh/N7hRIlF4I54VUyj/zDZHBaQjtFUQ
 hPUTc1buixXk2ooTDrpf+MvVMX42VqU8tke4O7U=
X-Google-Smtp-Source: APXvYqwpjgCj+NHQWmmo7wlASzZaObwnisMuzQQ68HgJW5L0F4ZE2XkJ/WLy2vxRTaOAABifbqXLM9wt0RfHZ30Isk4=
X-Received: by 2002:a9d:422:: with SMTP id 31mr13203157otc.107.1573309600743; 
 Sat, 09 Nov 2019 06:26:40 -0800 (PST)
MIME-Version: 1.0
References: <1572938135-31886-1-git-send-email-rppt@kernel.org>
 <1572938135-31886-6-git-send-email-rppt@kernel.org>
 <20191108113917.a9c6ebb8373cc95fd684b734@linux-foundation.org>
In-Reply-To: <20191108113917.a9c6ebb8373cc95fd684b734@linux-foundation.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 9 Nov 2019 15:26:29 +0100
Message-ID: <CAMuHMdXdoFSVno4WT=F6Q1UwEaZ6AQJmhNUqPpYHJm6uh165iw@mail.gmail.com>
Subject: Re: [PATCH v4 05/13] m68k: mm: use pgtable-nopXd instead of
 4level-fixup
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_062642_727691_13D7E270 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Linux/m68k <linux-m68k@vger.kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
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
 linux-um@lists.infradead.org, Greentime Hu <green.hu@gmail.com>,
 "Kirill A. Shutemov" <kirill@shutemov.name>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Parisc List <linux-parisc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, alpha <linux-alpha@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrew,

On Fri, Nov 8, 2019 at 8:39 PM Andrew Morton <akpm@linux-foundation.org> wrote:
> On Tue,  5 Nov 2019 09:15:27 +0200 Mike Rapoport <rppt@kernel.org> wrote:
> > m68k has two or three levels of page tables and can use appropriate
> > pgtable-nopXd and folding of the upper layers.
> >
> > Replace usage of include/asm-generic/4level-fixup.h and explicit
> > definitions of __PAGETABLE_PxD_FOLDED in m68k with
> > include/asm-generic/pgtable-nopmd.h for two-level configurations and with
> > include/asm-generic/pgtable-nopud.h for three-lelve configurations and
> > adjust page table manipulation macros and functions accordingly.
>
> This one was messed up by linux-next changes in arch/m68k/mm/kmap.c.
> Can you please take a look?

You mean due to the rename and move of __iounmap() to __free_io_area()
in commit aa3a1664285d0bec ("m68k: rename __iounmap and mark it static")?

Commit 42d6c83d6180f800 ("m68k: mm: use pgtable-nopXd instead of
4level-fixup") in next-20191108 looks good to me.

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
