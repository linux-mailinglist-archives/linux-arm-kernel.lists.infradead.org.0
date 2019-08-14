Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F28F8D0C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sg3MQkqif4M5puQywBPvLfl2lovieD+8bQc9GnXXdkc=; b=p0v1Zh/HiM17Um
	H6DewwK+rwxY5O4ttFRiKZ1qdP40NhcZYILuikp1ceRydwybtzoPp6cAlRBpan9Exmx2JaynUo1o8
	pqIcyvx0EfYQ2aloJA1ErKNnRbTDkijpIXhik3/Gp0iiwpaR7DTeI2EoC02tRzQknpUp8zJthVohz
	qWbBRnEuT+bMbg/rLQosRAXjIvcI10yc6OjShei+BSOdk6YUszDrrLoy1OEZuoFDP+gLtEkFnCKAz
	8gEyRJLGcEqJLlbhnF4FhhiOlNVMSHeqqNkev5/xI9FtNp0m5yK6/WSWWFptSUN8+ehGrcbY2NA2n
	y4LwgtZZcANun7m/ni3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqeQ-0006nc-Ab; Wed, 14 Aug 2019 10:37:06 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqeI-0006mw-Ne
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:37:00 +0000
Received: by mail-qt1-f196.google.com with SMTP id j15so15963917qtl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 03:36:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LDEbTyIJnFa3pozet2GSZKuiwciqafTCxiRFUe/ZD/o=;
 b=saVfqu4LufB8S9wEuc9kTpJnCIC3jHu+2fPaMJO753MnPdllTMond2+52chWu/RKBs
 PTs0DPGI7KL2cF6b0qLR+LrAyh5CAFpdDSjuRdqCRmcFEXh3hLFEh+BHEz7E2b6tjYjq
 GvRZhvTpRP3iPEQHUIzhemqWR4izP7o29J9giESOJi/zqt/A5TEkb+NjPPVDGbp/EulG
 r0agjzn9CshMjXmbSB24LBf3HdCuR723hzzXlbfBVQPhNiWUhTloweu3wiW5PotwIPS2
 RJO9RqHCSkInr8JQ7Om3k/cOiiTFN/OMtJj3vzjF/sq91x6BcgsArgg0ZgmTjwSJev+v
 TzWA==
X-Gm-Message-State: APjAAAXuTWDm7TZEr0eTAmwTIh2QOCSwyLFYE/NlBczKnvE1W3WZeqJh
 KaJsB8d3b/A8hpniuESK+BSjVmhIiS9iyAFEBT4=
X-Google-Smtp-Source: APXvYqwV2TBabqJ9UAr2y8hQJw2m2az45KCTEx2a/C7amkL7cSDfPFgfYqeUqWRJZyqYCM2uSOekI8sS/0dFywJPLYg=
X-Received: by 2002:ac8:239d:: with SMTP id q29mr8646894qtq.304.1565779017271; 
 Wed, 14 Aug 2019 03:36:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-15-arnd@arndb.de>
 <20190813103605.GL52127@atomide.com>
 <CAK8P3a0E+QUn9wcP5Obv-FitWyXCFwcp+oPConeO2p-NV1rqsw@mail.gmail.com>
 <20190813181158.GA26798@darkstar.musicnaut.iki.fi>
 <CAK8P3a0LjKrc+7c5Ht9OL7LfYyLnG9=y7u+w24ujA1xAid_yCQ@mail.gmail.com>
 <20190814074918.GA52127@atomide.com>
In-Reply-To: <20190814074918.GA52127@atomide.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 14 Aug 2019 12:36:40 +0200
Message-ID: <CAK8P3a3k_HOGqzMGjtc+7NSaK0Bsa_vxxRFLzY8aP6ev4wa9iA@mail.gmail.com>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_033658_771960_81398BE4 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 9:49 AM Tony Lindgren <tony@atomide.com> wrote:
> * Arnd Bergmann <arnd@arndb.de> [190813 19:34]:
> > On Tue, Aug 13, 2019 at 8:12 PM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> > diff --git a/arch/arm/mach-omap1/hardware.h b/arch/arm/mach-omap1/hardware.h
> > index 232b8deef907..9fc76a3c9e57 100644
> > --- a/arch/arm/mach-omap1/hardware.h
> > +++ b/arch/arm/mach-omap1/hardware.h
> > @@ -61,7 +61,7 @@ static inline u32 omap_cs3_phys(void)
> >
> >  #endif /* ifndef __ASSEMBLER__ */
> >
> > -#define OMAP1_IO_OFFSET                0x01000000      /* Virtual IO
> > = 0xfefb0000 */
> > +#define OMAP1_IO_OFFSET                0x00fb0000      /* Virtual IO
> > = 0xff000000 */
> >  #define OMAP1_IO_ADDRESS(pa)   IOMEM((pa) - OMAP1_IO_OFFSET)
> >
> >  #include "serial.h"
>
> Oh OK yeah sounds like that's the issue.
>
> > There may be additional locations that hardcode the virtual address.
>
> Those should be in mach-omap1/io.c, and I recall innovator had some
> hardcoded fpga address that should also be checked.

I see four boards with hardcoded I/O addresses, but they are all below
the PCI I/O virtual address range, and are not affected by that change.

For the innovator FPGA access, this was ok, it uses the correct address
in the OMAP1_IO_OFFSET range.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
