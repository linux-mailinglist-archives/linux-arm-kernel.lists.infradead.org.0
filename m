Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA3AFB124
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:15:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+17Fqh8kEVwMj+U6UCJfXtB0sH5MdiWg7wYYaycyVo8=; b=JmdXezkGYxQA0k
	iTQvwCUw43TzC5O7f8ZShzL8UjReeVCmXxJ5K/WPvbUd/cmTiluFDunaZLiRCU3vmL8mYQ/1DBonO
	1zlpDBnbgZb3HIIjw0dwXuhs7UBpTnxC64PrLAb50WuVSrIKzP7SZkgTVl9dhGj128eRGE9AqrXHs
	J6BpchKJaPhMCCq+bvS8il2DRUVb4P7LKMt1Wbe4TrSOS0SmzgQSmao0esw/F/QS4VMgNB3Fe/gy1
	UXgT8UuWYQhTee5rNyRKe6M0T8MbyKWubIKad+M8GfTCM1FfXnr83XYgP4Fmm7ze8hlk66yg90bgS
	OxQG++nmyPMhn/OV/FEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsUV-0007TJ-Ow; Wed, 13 Nov 2019 13:15:23 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsUN-0007SZ-NS
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:15:17 +0000
Received: by mail-oi1-f195.google.com with SMTP id n16so1729214oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:15:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/LsJtr1PNcSnBPGBMynNzdA/gHMuqYJl/SBPbEL/69o=;
 b=bQ6djPnBqNkQuaiD+luyqw6kVqyq753n8mQHZxlHOEeg/dYUO0bsbe5PI2Fh1fA2bC
 p24y6M9AsxA73VI6JE6EvllgknRXMDbcROpWZtXgAPbh0rdbsC/rgxUGmAwk1KrtaCBd
 ux7eUs4JqKxNO3LuR2SkTlv+ScpJvnQbm5CUMi3eqNmhkD29uPaSG6qMixlhYYaryvuk
 GuvS/J1PAhOXK99nvE8aXpC476qr4WfikUpBR0dVLpLHD4J6cNsHYd34sj20YSn26dDd
 8yxoaPVlBbfUhLXSwStfpcHKtvJR6eOArjGbUaliaLUwnlvbxOjEp/9MblqgATMJuwVc
 X7sQ==
X-Gm-Message-State: APjAAAXwSur0J7TbxoLniwodBo8bwKz753MSvzl8p2vIP1O3tdYwZ69p
 YTh3kOhLM1FwJp5ZOXkd5l7kWCD2sTLsC7ft4v8=
X-Google-Smtp-Source: APXvYqyM/oA6MPvFbvIg5Isimq4Sz0kXH4KEF+ORf/pR9QFBmMOSRbP5mK01Ix5qXwoymFBUpHe2p4U8Hu2RwHD37Rc=
X-Received: by 2002:aca:fc92:: with SMTP id a140mr2968696oii.153.1573650911540; 
 Wed, 13 Nov 2019 05:15:11 -0800 (PST)
MIME-Version: 1.0
References: <20190906154706.2449696-1-arnd@arndb.de>
 <CAMuHMdUMgDBo1gkvQ_Bd8mjMiPjdWWY=9AU6K1S7NcJy5jhvGQ@mail.gmail.com>
 <CAK7LNASNp4jPYHmh3e4QYwenYbVrK69tvB_LLyK_ew1eqBNrEw@mail.gmail.com>
 <20191113114517.GO25745@shell.armlinux.org.uk>
In-Reply-To: <20191113114517.GO25745@shell.armlinux.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 13 Nov 2019 14:15:00 +0100
Message-ID: <CAMuHMdXk9sWBpYWC-X6V3rp2e0+f5ebdRFFXn8Heuy0qkLq0GQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: don't export unused return_address()
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_051515_764804_0C521F7C 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Wed, Nov 13, 2019 at 12:45 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Wed, Nov 13, 2019 at 08:40:39PM +0900, Masahiro Yamada wrote:
> > On Tue, Oct 1, 2019 at 11:31 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > On Fri, Sep 6, 2019 at 5:47 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > Without the frame pointer enabled, return_address() is an inline
> > > > function and does not need to be exported, as shown by this warning:
> > > >
> > > > WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL
> > > >
> > > > Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.
> > > >
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Thanks for your patch!
> > >
> > > Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > >
> > > > --- a/arch/arm/kernel/return_address.c
> > > > +++ b/arch/arm/kernel/return_address.c
> > > > @@ -53,6 +53,7 @@ void *return_address(unsigned int level)
> > > >                 return NULL;
> > > >  }
> > > >
> > >
> > > Checkpatch doesn't like the empty line above:
> > >
> > > WARNING: EXPORT_SYMBOL(foo); should immediately follow its function/variable
> > >
> > > > +EXPORT_SYMBOL_GPL(return_address);
> > > > +
> > > >  #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
> > > >
> > > > -EXPORT_SYMBOL_GPL(return_address);

> > What has happened to this patch?
> >
> > I still see this warning.
>
> Simple - it got merged, it caused build regressions, it got dropped.
> A new version is pending me doing another round of patch merging.

I believe that was not Arnd's patch, but Ben Dooks' alternative solution[*]?

[*] Commit 0b0617e5a610fe12 ("ARM: 8918/1: only build return_address() if
    needed"), which I discovered in next-20191031 when checking if Arnd's
    patch was applied....


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
