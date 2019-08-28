Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4E6A09DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGekIo6wnF1fHmHO/UyhBkc7B/q02oBojG7od0rqk4E=; b=lQwpswSOrdv/vD
	4lQx/4o+jmnvXRgJgtYenq/HJZiqDS+VQlRdqc22hgqg7IS1p1wyIEyRWXdJ5YhM/LCSXic0EjZ2P
	bA4vmBhcoDULIAc+5xbVfSRtrt3xzEwla6HqNb/LofDNpJK7HybQR+U/HEUjMt7m8+DiAJK/flXz+
	5ziO6yZ6JjVqHAsSgiBW8+KsyStO+BvL1Ev3sqJBB3ND/bPq54iZ5PgahO18YBohOoTuFPQBXfG46
	3nwr9E4dpPOkgn7PVbVpQCOqnMD32DZeUsaMzFv4PIb6i+ReX3C5/husLUWFsIgcoHfMdEnt8YL1h
	RqY3omfMkFNlaQWvV1YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32we-0002mm-FQ; Wed, 28 Aug 2019 18:45:24 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i32wV-0002m2-8C
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:45:16 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 77A1A80C5;
 Wed, 28 Aug 2019 18:45:43 +0000 (UTC)
Date: Wed, 28 Aug 2019 11:45:11 -0700
From: Tony Lindgren <tony@atomide.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>
Subject: Re: [PATCH 14/22] ARM: omap1: use pci_ioremap_io() for omap_cf
Message-ID: <20190828184511.GF52127@atomide.com>
References: <CAK8P3a0E+QUn9wcP5Obv-FitWyXCFwcp+oPConeO2p-NV1rqsw@mail.gmail.com>
 <20190813181158.GA26798@darkstar.musicnaut.iki.fi>
 <CAK8P3a0LjKrc+7c5Ht9OL7LfYyLnG9=y7u+w24ujA1xAid_yCQ@mail.gmail.com>
 <20190814074918.GA52127@atomide.com>
 <CAK8P3a3k_HOGqzMGjtc+7NSaK0Bsa_vxxRFLzY8aP6ev4wa9iA@mail.gmail.com>
 <20190816083403.GB1952@darkstar.musicnaut.iki.fi>
 <CAK8P3a3jqNxoihQ+UFvOZMg=AcF2yzHXs5ay6X1TZX8L3zQ3rg@mail.gmail.com>
 <20190827190453.GJ30291@darkstar.musicnaut.iki.fi>
 <CAK8P3a1PeBMRuweAmzrTQC85CmwdZPirG3HPg9aJ99p2U7zknQ@mail.gmail.com>
 <20190828182318.GL30291@darkstar.musicnaut.iki.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828182318.GL30291@darkstar.musicnaut.iki.fi>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_114515_336029_62FC5A44 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
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

* Aaro Koskinen <aaro.koskinen@iki.fi> [190828 18:23]:
> On Wed, Aug 28, 2019 at 03:02:36PM +0200, Arnd Bergmann wrote:
> > I assume you checked that the uart output wasn't already broken
> > by one of the earlier patches, right?
> 
> Correct, it's only with the mapping change patch it hangs.
> 
> > Also, looking at arch/arm/mach-omap1/include/mach/uncompress.h
> > it seems that SX1 normally uses UART3, not UART1.
> > Is that different in qemu?
> 
> In QEMU all uarts can be used, trying with UART3 as early console
> hangs as well. (It prints Uncompressing... done. but I guess that's
> done with the physical address.)

Hmm maybe we now need to get rid of the machine based
detection code for DEBUGLL like we did for mach-omap2.

Just get rid of arch_decomp_setup() in mach-omap1
uncompress.h file and make sure the assembly code
only relies on the the Kconfig options only.

That needs to be done at least for device tree based
support since we use a generic machine ID. But maybe
with multiarch support we need to rely on generic
uncompress.h and assembly.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
