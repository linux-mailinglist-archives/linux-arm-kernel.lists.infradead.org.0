Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEC38D51F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jagRs8cKm4cVqqQcDHxxx8+/TNwGU0Y4Z+LtJ8FHsLk=; b=T4/vBRm668ONWk
	3t6W4Wv1g0ZHp8HL0A4x+bbrA07LhQI+bPSKTpFbtYqycN8WVGPBgKFsAPK9UhLXKo6ZTLh88rP3V
	1KqxAPqplEFYU1xs3ppuQbwTyBPC/DlnXMldYIzvEDU4wxgxrhx71qdtUz7wU5PoXEThP0f/ZEUmN
	uH6n7hOiL8MogQncToSfCkBOFblAaMQC8Xo0y8auWW3OqsgWN3pWarkyAXV+ZaudzGo7riuHzTAZA
	RqRj+a1bAMnsLsygxKNMibMFpKEVAQZSuT8W2VFYU1HmwPvKojckuimmp1QCY+BgWA9+CSUTG/yc9
	lf89RNsvdXm49WmWQGdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtVo-0001tj-Sb; Wed, 14 Aug 2019 13:40:24 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtVb-0001tI-5F
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:40:12 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id D37C680C8;
 Wed, 14 Aug 2019 13:40:36 +0000 (UTC)
Date: Wed, 14 Aug 2019 06:40:06 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
Message-ID: <20190814134006.GE52127@atomide.com>
References: <20190808212234.2213262-1-arnd@arndb.de>
 <20190808212234.2213262-15-arnd@arndb.de>
 <20190813103605.GL52127@atomide.com>
 <CAK8P3a0E+QUn9wcP5Obv-FitWyXCFwcp+oPConeO2p-NV1rqsw@mail.gmail.com>
 <20190813181158.GA26798@darkstar.musicnaut.iki.fi>
 <CAK8P3a0LjKrc+7c5Ht9OL7LfYyLnG9=y7u+w24ujA1xAid_yCQ@mail.gmail.com>
 <20190814074918.GA52127@atomide.com>
 <CAK8P3a3k_HOGqzMGjtc+7NSaK0Bsa_vxxRFLzY8aP6ev4wa9iA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3k_HOGqzMGjtc+7NSaK0Bsa_vxxRFLzY8aP6ev4wa9iA@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_064011_243816_26BD287D 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

* Arnd Bergmann <arnd@arndb.de> [190814 10:37]:
> On Wed, Aug 14, 2019 at 9:49 AM Tony Lindgren <tony@atomide.com> wrote:
> > * Arnd Bergmann <arnd@arndb.de> [190813 19:34]:
> > > On Tue, Aug 13, 2019 at 8:12 PM Aaro Koskinen <aaro.koskinen@iki.fi> wrote:
> > > diff --git a/arch/arm/mach-omap1/hardware.h b/arch/arm/mach-omap1/hardware.h
> > > index 232b8deef907..9fc76a3c9e57 100644
> > > --- a/arch/arm/mach-omap1/hardware.h
> > > +++ b/arch/arm/mach-omap1/hardware.h
> > > @@ -61,7 +61,7 @@ static inline u32 omap_cs3_phys(void)
> > >
> > >  #endif /* ifndef __ASSEMBLER__ */
> > >
> > > -#define OMAP1_IO_OFFSET                0x01000000      /* Virtual IO
> > > = 0xfefb0000 */
> > > +#define OMAP1_IO_OFFSET                0x00fb0000      /* Virtual IO
> > > = 0xff000000 */
> > >  #define OMAP1_IO_ADDRESS(pa)   IOMEM((pa) - OMAP1_IO_OFFSET)
> > >
> > >  #include "serial.h"
> >
> > Oh OK yeah sounds like that's the issue.
> >
> > > There may be additional locations that hardcode the virtual address.
> >
> > Those should be in mach-omap1/io.c, and I recall innovator had some
> > hardcoded fpga address that should also be checked.
> 
> I see four boards with hardcoded I/O addresses, but they are all below
> the PCI I/O virtual address range, and are not affected by that change.
> 
> For the innovator FPGA access, this was ok, it uses the correct address
> in the OMAP1_IO_OFFSET range.

OK thanks for checking. I tried to apply your virtual address patch to
test boot it, but could not get it to apply. What tree is it against?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
