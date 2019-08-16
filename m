Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF978FDE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 10:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2S6TzORqND7qB0fV0pn7zcIen11ph8nN83EIg7anydk=; b=HYsRKA8wgQCkVO
	frsVY1J03Zhlrwss367XAQk5xcdqk4+Dtx9RLf5YNoruXEk6u1R4VgylwVM0AU9q7OJNyozh8q1dS
	R2pud/uFy3lbRb0hQvaD6NpLWv61X7M6HtP6yjYfIYRD7j9gUbHD5Jg3p1l0+d+c8sp+yU01vHP/K
	WcXT6PXb+HelUrwTLuab4xNP5iKc9bfjoA7F4qnvtYEDfCheBidnoM0FRGuPzDr5mGXWbhSpOg8zR
	xJJnhvIo1rTKMLkTuXmgUscd2OB2jA55IEQcYN5J1/n9I4F5TbrfTo1j5ZkymdUy6rFEiVC9Z2kOi
	y67JQ8IWrpxSQMlc7kCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXgu-0006Wz-Qp; Fri, 16 Aug 2019 08:34:33 +0000
Received: from emh01.mail.saunalahti.fi ([62.142.5.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXgc-0006VU-6w
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 08:34:16 +0000
Received: from darkstar.musicnaut.iki.fi (85-76-65-201-nat.elisa-mobile.fi
 [85.76.65.201])
 by emh01.mail.saunalahti.fi (Postfix) with ESMTP id 4776820418;
 Fri, 16 Aug 2019 11:34:04 +0300 (EEST)
Date: Fri, 16 Aug 2019 11:34:03 +0300
From: Aaro Koskinen <aaro.koskinen@iki.fi>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
Message-ID: <20190816083403.GB1952@darkstar.musicnaut.iki.fi>
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
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_013414_423746_CED2BDE6 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.142.5.107 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Tony Lindgren <tony@atomide.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Aug 14, 2019 at 12:36:40PM +0200, Arnd Bergmann wrote:
> On Wed, Aug 14, 2019 at 9:49 AM Tony Lindgren <tony@atomide.com> wrote:
> > * Arnd Bergmann <arnd@arndb.de> [190813 19:34]:
> > > -#define OMAP1_IO_OFFSET                0x01000000      /* Virtual IO
> > > = 0xfefb0000 */
> > > +#define OMAP1_IO_OFFSET                0x00fb0000      /* Virtual IO
> > > = 0xff000000 */
> > >  #define OMAP1_IO_ADDRESS(pa)   IOMEM((pa) - OMAP1_IO_OFFSET)
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

I tried testing this on OSK board. If I boot with earlyprintk disabled,
it boots OK and everything works (also CF card) with your playground
commit 5723b6686943.

However with earlyprintk it seems to hang as soon as kernel tries to print
something. So something goes wrong with early DEBUG_LL mapping code when
CONFIG_DEBUG_UART_VIRT=0xff000000 is used?

A.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
