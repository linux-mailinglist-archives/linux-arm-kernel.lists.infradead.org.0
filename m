Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B61AD0F95
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 15:06:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wr864Fd5fc9QUiIXtoTpBf9R1IolFsM9HOpY80/bI8o=; b=AI7SIrLT5GVG9q
	LlE1XXCGI/agcy54ycjxKB6n/tC0VIiWxSegH8rQV4PffrSoUoGliY1nFwT1LvErOO54HcRkj4zFt
	6xmMXwhK7/CAV0vVdu1Pn6s5Tsd/Y8w1G/GhjqVbnbyeCB5sRWyuAbaqUng31t9pGL0EG/mEe48fB
	uU1BC4iwqiFzdwDRy8Ep+grO5D3sHnsCxTP6s5O3PlKOn6R5axwERFobVVFRMtvIelN9jVK962wsy
	oZmQ+RhMIKIu3zTbALx6krTi9UtHbEsfNBMU/djf8EAcXvo0fPIUoxO0OPlatXO662TNWrZOpvQZf
	LUU7e9xpbLUmYzIKS8VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIBfv-0008HV-Ce; Wed, 09 Oct 2019 13:06:43 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIBfl-00089B-Iu
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 13:06:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id A4758424A2;
 Wed,  9 Oct 2019 15:06:27 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id oK_tU3QLwBoU; Wed,  9 Oct 2019 15:06:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 847F942544;
 Wed,  9 Oct 2019 15:06:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 3Ec-avPi5PqA; Wed,  9 Oct 2019 15:06:12 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 8FFE0424FE;
 Wed,  9 Oct 2019 15:06:12 +0200 (CEST)
Message-ID: <8929b453371e26428388f4f202e5cf4a0410433f.camel@v3.sk>
Subject: Re: [GIT PULL] ARM: soc: Marvell MMP changes for v5.5
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Date: Wed, 09 Oct 2019 15:06:11 +0200
In-Reply-To: <CAOesGMiJp9AN2vMsWnJ6PzniHdC-G+gOLbmqn-6KnMC=VbRA=Q@mail.gmail.com>
References: <5104777b69d711e8746f3c39dfac615f85d64b3f.camel@v3.sk>
 <CAOesGMiJp9AN2vMsWnJ6PzniHdC-G+gOLbmqn-6KnMC=VbRA=Q@mail.gmail.com>
User-Agent: Evolution 3.34.0 (3.34.0-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_060633_939057_E453CDC7 
X-CRM114-Status: GOOD (  32.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, 2019-10-02 at 13:11 -0700, Olof Johansson wrote:
> Hi,
> 
> Thanks for sending these in. A couple of items I think needs addressing:
> 
> 1) The MAINTAINERS update seems to have an erroneous entry for
> "linux/soc/mmp/" -- other platforms use "include/linux/soc/mmp/"
> format.

Thanks for catching this. Will fix.

> 2) I don't see any Acks from the subsystem maintainers for the code
> you've changed, in particular for phy-mmp3-usb. Ideally you should
> collect acks from said maintainers if you want to merge the patches
> yourself.

I'm in the process of getting them.

I'm wondering what's the usual way of getting the attention when the
maintainer won't respond to mails where they're Cc'd. Is it acceptable
to ping them-off list (that is what I've done this time)?

> 3) We prefer to see contents broken up a bit more. Normally we ask for
> these categories to be separate:
>  - Any branch contents that you need to share with patches going in
> through another tree (this is usually dt-binding include file changes
> these days)
>  - arch/arm/mach*  and drivers/soc/ changes (these go into our "arm/soc" branch)
>  - device-tree changes (these go into our "arm/dt" branch)
>  - driver subsystem changes if merged through our tree (these go into
> "arm/drivers"). If there's no good reason to merge them with other
> contents and they can go in through driver maintainer trees without
> regressing anybody, that's preferred.

That is not the case here (apart from the dt changes, which are sort of
independent due to their nature) the latter patches are dependent on
the earlier ones.

The independent patches related to MMP3 (basically the irqchip) went in
separately already.

>  - configuration changes (defconfig updates). Speaking of which,
> MACH_MMP3_DT should be enabled in multi_v7_defconfig I think.

Yes. The defconfig changes are independent and I intend to submit them
separately.

My previous attempt to get a defconfig change applied (that would be
CONFIG_MACH_MMP2_DT [1]) was not successful, which I was not sending
more, at least I verify that I send it in the correct direction.

[1] https://lore.kernel.org/lkml/20190828074204.287415-1-lkundrak@v3.sk/

> Maybe this seems like a lot of awkward sorting, and in some cases it's
> overkill to do it. But if you think you'll keep sending in more
> contributions over time, it's useful to get familiar with the
> workflow.

Yes. Thanks for taking time to explain this to me.

> For now, there's really two actions and a question:
>  1) Fixup the MAINTAINERS entry
>  2) Make sure you send the driver patches to the right places and
> collect acks (or get them to pick them up)
> 
> Then, beyond that I'll leave it up to you on what to do, whether you
> want to send a few pull requests, or -- if you don't have any
> downstream users to your tree -- we can also cherry-pick patches apart
> (or you can send us the series of patches and we can apply them).

I don't really have a preference and I have no idea about downstream
users. I sent a pull request because Arnd suggested I send one [1].

[1] https://lore.kernel.org/lkml/CAK8P3a0Jq93AVYau_7odZz73ZL22buVCveiHoC6oGf=Oy6KEKQ@mail.gmail.com/

> -Olof
> 
> 
> On Tue, Oct 1, 2019 at 3:51 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
> > Hi,
> > 
> > I'd be very thankful if you pulled the tree with Marvell MMP SoC changes into
> > the Arm SoC branch targetting v5.5.
> > 
> > The contents of the tree is essentially just the v3 of "Initial support
> > for Marvell MMP3 SoC" patch set. There are three changes:
> > 
> > - Fix for a kbuild test bot error on x86_64
> > - Removed the aliases from the DTS tree
> > - Added reference the Git tree I'm asking you to pull from to the
> >   MAINTAINERS file
> > 
> > The tree has been tested on a Dell Wyse 3020 thin client, and also tested not
> > to ruin the existing MMP support on an OLPC XO-1.75 laptop.
> > 
> > Thank you
> > Lubo
> > 
> > The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> > 
> >   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git tags/mmp-soc-for-v5.5
> > 
> > for you to fetch changes up to de7d5a2bfcaa1cb5f62d5bb4dfbbb066ff7dd06e:
> > 
> >   MAINTAINERS: mmp: add Git repository (2019-10-01 11:20:50 +0200)
> > 
> > ----------------------------------------------------------------
> > ARM: Marvell MMP patches for v5.5
> > 
> > This tag includes initial support for the Marvell MMP3 processor.
> > 
> > MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad FZ-A1 tablet
> > and Dell Wyse 3020/Tx0D thin clients.
> > 
> > ----------------------------------------------------------------
> > Lubomir Rintel (17):
> >       dt-bindings: arm: cpu: Add Marvell MMP3 SMP enable method
> >       dt-bindings: arm: Convert Marvell MMP board/soc bindings to json-schema
> >       dt-bindings: arm: mrvl: Document MMP3 compatible string
> >       dt-bindings: mrvl,intc: Add a MMP3 interrupt controller
> >       dt-bindings: phy-mmp3-usb: Add bindings
> >       ARM: l2c: add definition for FWA in PL310 aux register
> >       ARM: mmp: don't select CACHE_TAUROS2 on all ARCH_MMP
> >       ARM: mmp: map the PGU as well
> >       ARM: mmp: DT: convert timer driver to use TIMER_OF_DECLARE
> >       ARM: mmp: define MMP_CHIPID by the means of CIU_REG()
> >       ARM: mmp: add support for MMP3 SoC
> >       ARM: mmp: add SMP support
> >       ARM: mmp: move cputype.h to include/linux/soc/
> >       ARM: mmp: remove MMP3 USB PHY registers from regs-usb.h
> >       phy: phy-mmp3-usb: add a new driver
> >       ARM: dts: mmp3: Add MMP3 SoC dts file
> >       MAINTAINERS: mmp: add Git repository
> > 
> >  Documentation/devicetree/bindings/arm/cpus.yaml    |   1 +
> >  .../devicetree/bindings/arm/mrvl/mrvl.txt          |  14 -
> >  .../devicetree/bindings/arm/mrvl/mrvl.yaml         |  35 ++
> >  .../bindings/interrupt-controller/mrvl,intc.txt    |  14 +-
> >  .../devicetree/bindings/phy/phy-mmp3-usb.txt       |  13 +
> >  MAINTAINERS                                        |   9 +
> >  arch/arm/boot/dts/mmp3.dtsi                        | 527 +++++++++++++++++++++
> >  arch/arm/include/asm/hardware/cache-l2x0.h         |   2 +
> >  arch/arm/mach-mmp/Kconfig                          |  22 +-
> >  arch/arm/mach-mmp/Makefile                         |   4 +
> >  arch/arm/mach-mmp/addr-map.h                       |   7 +
> >  arch/arm/mach-mmp/common.c                         |  19 +-
> >  arch/arm/mach-mmp/common.h                         |   1 +
> >  arch/arm/mach-mmp/devices.c                        |   2 +-
> >  arch/arm/mach-mmp/mmp-dt.c                         |   5 +-
> >  arch/arm/mach-mmp/mmp2-dt.c                        |   7 +-
> >  arch/arm/mach-mmp/mmp2.c                           |   2 +-
> >  arch/arm/mach-mmp/mmp3.c                           |  29 ++
> >  arch/arm/mach-mmp/platsmp.c                        |  32 ++
> >  arch/arm/mach-mmp/pm-mmp2.c                        |   2 +-
> >  arch/arm/mach-mmp/pm-pxa910.c                      |   2 +-
> >  arch/arm/mach-mmp/pxa168.c                         |   2 +-
> >  arch/arm/mach-mmp/pxa910.c                         |   2 +-
> >  arch/arm/mach-mmp/regs-usb.h                       |  94 ----
> >  arch/arm/mach-mmp/time.c                           |  43 +-
> >  arch/arm/mm/Kconfig                                |   2 +-
> >  drivers/clk/Kconfig                                |   5 +
> >  drivers/clk/mmp/Makefile                           |   2 +-
> >  drivers/phy/marvell/Kconfig                        |  11 +
> >  drivers/phy/marvell/Makefile                       |   1 +
> >  drivers/phy/marvell/phy-mmp3-usb.c                 | 291 ++++++++++++
> >  include/Kbuild                                     |   1 +
> >  .../mach-mmp => include/linux/soc/mmp}/cputype.h   |  27 ++
> >  33 files changed, 1069 insertions(+), 161 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> >  create mode 100644 Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
> >  create mode 100644 arch/arm/boot/dts/mmp3.dtsi
> >  create mode 100644 arch/arm/mach-mmp/mmp3.c
> >  create mode 100644 arch/arm/mach-mmp/platsmp.c
> >  create mode 100644 drivers/phy/marvell/phy-mmp3-usb.c
> >  rename {arch/arm/mach-mmp => include/linux/soc/mmp}/cputype.h (71%)
> > 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
