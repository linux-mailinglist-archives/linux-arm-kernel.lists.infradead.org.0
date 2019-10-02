Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324C7C9354
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 23:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=moYxg5C0sPRVgT45RzXZY0qgY7hzOx9xeSSmkLD1eyU=; b=mLF4TDPw0QGsRz
	+ta5BjcuHEj0SUqtoaxTb5cE6D9lNgBgWk3EWWTNpgpVj2f3sfEJpI+jl0iKZwXmToeK50O9slHHn
	N5xoOvfgAaNuOXyBhd1n06uJcp+MrZ2e+tkAbr6DSjSuBdo20dxWNeo/8VYi8OdvcyhRuyhVEYHaH
	FtNCasQvPnzKqL6af2lbPwT1j25fZjuy4sGCW4nZbW7aArrnIEGTRZXL/JmLMFD6iumbB52gCuGpZ
	aO8oh1lztsxMd6tU1ZnZSJHgA/B/mXDjRxAo4XFFD82fHob7Jx3JZgpBoN2sy9Gfk9VqS/1DrHkqP
	NuF2QbuYeRYdvQB4J4uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFlxB-0004RO-PD; Wed, 02 Oct 2019 21:14:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFlx4-0004QH-7w
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 21:14:28 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D5F221848;
 Wed,  2 Oct 2019 21:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570050863;
 bh=ukk2NQEjN/OXL9KA2LEsDC+CCz/HBeIXkd0X0JHpF4Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ot2euRUiRA+UBPNO+FeMqkkAGJEj3I0YPtiR0oqyr2Va1nyAUhw/e2LMe+Z9ay1Jt
 JGTo5GuBLp8PO/AkYhI04z0Yu18kSqGRvgMSOqjFCOJwX7+guVnSxn1i45AyD/iutM
 WmF8xgOJpGORq2fIs8MCb7MvRMv2e/EaJu+wb0Fk=
Date: Wed, 2 Oct 2019 16:14:21 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH 0/6] Add the Mobiveil EP and Layerscape Gen4 EP driver
 support
Message-ID: <20191002211421.GA64972@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924155223.GX25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_141426_329303_7FFB1867 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 Xiaowei Bao <xiaowei.bao@nxp.com>, linux-pci@vger.kernel.org,
 Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 Minghuan.Lian@nxp.com, robh+dt@kernel.org, mingkai.hu@nxp.com,
 andrew.murray@arm.com, kishon@ti.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:52:23PM +0100, Russell King - ARM Linux admin wrote:
> On Tue, Sep 24, 2019 at 03:18:47PM +0100, Russell King - ARM Linux admin wrote:
> > On Mon, Sep 16, 2019 at 10:17:36AM +0800, Xiaowei Bao wrote:
> > > This patch set are for adding Mobiveil EP driver and adding PCIe Gen4
> > > EP driver of NXP Layerscape platform.
> > > 
> > > This patch set depends on:
> > > https://patchwork.kernel.org/project/linux-pci/list/?series=159139
> > > 
> > > Xiaowei Bao (6):
> > >   PCI: mobiveil: Add the EP driver support
> > >   dt-bindings: Add DT binding for PCIE GEN4 EP of the layerscape
> > >   PCI: mobiveil: Add PCIe Gen4 EP driver for NXP Layerscape SoCs
> > >   PCI: mobiveil: Add workaround for unsupported request error
> > >   arm64: dts: lx2160a: Add PCIe EP node
> > >   misc: pci_endpoint_test: Add the layerscape PCIe GEN4 EP device
> > >     support
> > > 
> > >  .../bindings/pci/layerscape-pcie-gen4.txt          |  28 +-
> > >  MAINTAINERS                                        |   3 +
> > >  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |  56 ++
> > >  drivers/misc/pci_endpoint_test.c                   |   2 +
> > >  drivers/pci/controller/mobiveil/Kconfig            |  22 +-
> > >  drivers/pci/controller/mobiveil/Makefile           |   2 +
> > >  .../controller/mobiveil/pcie-layerscape-gen4-ep.c  | 169 ++++++
> > >  drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c | 568 +++++++++++++++++++++
> > >  drivers/pci/controller/mobiveil/pcie-mobiveil.c    |  99 +++-
> > >  drivers/pci/controller/mobiveil/pcie-mobiveil.h    |  72 +++
> > >  10 files changed, 1009 insertions(+), 12 deletions(-)
> > >  create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
> > >  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c
> > 
> > Hi,
> > 
> > I've applied "PCI: mobiveil: Fix the CPU base address setup in inbound
> > window" and your patch set to 5.3, which seems to be able to detect the
> > PCIe card I have plugged in:
> > 
> > layerscape-pcie-gen4 3800000.pcie: host bridge /soc/pcie@3800000 ranges:
> > layerscape-pcie-gen4 3800000.pcie:   MEM 0xa040000000..0xa07fffffff -> 0x40000000
> > layerscape-pcie-gen4 3800000.pcie: PCI host bridge to bus 0000:00
> > pci_bus 0000:00: root bus resource [bus 00-ff]
> > pci_bus 0000:00: root bus resource [mem 0xa040000000-0xa07fffffff] (bus address
> > [0x40000000-0x7fffffff])
> > pci 0000:00:00.0: [1957:8d90] type 01 class 0x060400
> > pci 0000:00:00.0: enabling Extended Tags
> > pci 0000:00:00.0: supports D1 D2
> > pci 0000:00:00.0: PME# supported from D0 D1 D2 D3hot D3cold
> > pci 0000:01:00.0: [15b3:6750] type 00 class 0x020000
> > pci 0000:01:00.0: reg 0x10: [mem 0xa040000000-0xa0400fffff 64bit]
> > pci 0000:01:00.0: reg 0x18: [mem 0xa040800000-0xa040ffffff 64bit pref]
> > pci 0000:01:00.0: reg 0x30: [mem 0xa041000000-0xa0410fffff pref]
> > pci 0000:00:00.0: up support 3 enabled 0
> > pci 0000:00:00.0: dn support 1 enabled 0
> > pci 0000:00:00.0: BAR 9: assigned [mem 0xa040000000-0xa0407fffff 64bit pref]
> > pci 0000:00:00.0: BAR 8: assigned [mem 0xa040800000-0xa0409fffff]
> > pci 0000:01:00.0: BAR 2: assigned [mem 0xa040000000-0xa0407fffff 64bit pref]
> > pci 0000:01:00.0: BAR 0: assigned [mem 0xa040800000-0xa0408fffff 64bit]
> > pci 0000:01:00.0: BAR 6: assigned [mem 0xa040900000-0xa0409fffff pref]
> > pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > pci 0000:00:00.0:   bridge window [mem 0xa040800000-0xa0409fffff]
> > pci 0000:00:00.0:   bridge window [mem 0xa040000000-0xa0407fffff 64bit pref]
> > pci 0000:00:00.0: Max Payload Size set to  256/ 256 (was  128), Max Read Rq  256pci 0000:01:00.0: Max Payload Size set to  256/ 256 (was  128), Max Read Rq  256pcieport 0000:00:00.0: PCIe capabilities: 0x13
> > pcieport 0000:00:00.0: init_service_irqs: -19
> > 
> > However, a bit later in the kernel boot, I get:
> > 
> > SError Interrupt on CPU1, code 0xbf000002 -- SError
> > CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.3.0+ #392
> > Hardware name: SolidRun LX2160A COM express type 7 module (DT)
> > pstate: 60400085 (nZCv daIf +PAN -UAO)
> > pc : pci_generic_config_read+0xb0/0xc0
> > lr : pci_generic_config_read+0x1c/0xc0
> > sp : ffffff8010f9baf0
> > x29: ffffff8010f9baf0 x28: ffffff8010d620a0
> > x27: ffffff8010d79000 x26: ffffff8010d62000
> > x25: ffffff8010cb06d4 x24: 0000000000000000
> > x23: ffffff8010e499b8 x22: ffffff8010f9bbaf
> > x21: 0000000000000000 x20: ffffffe2eda11800
> > x19: ffffff8010f62158 x18: ffffff8010bdede0
> > x17: ffffff8010bdede8 x16: ffffff8010b96970
> > x15: ffffffffffffffff x14: ffffffffff000000
> > x13: ffffffffffffffff x12: 0000000000000030
> > x11: 0101010101010101 x10: 7f7f7f7f7f7f7f7f
> > x9 : 2dff716475687163 x8 : ffffffffffffffff
> > x7 : fefefefefefefefe x6 : 0000000000000000
> > x5 : 0000000000000000 x4 : ffffff8010f9bb6c
> > x3 : 0000000000000001 x2 : 0000000000000003
> > x1 : 0000000000000000 x0 : 0000000000000000
> > Kernel panic - not syncing: Asynchronous SError Interrupt
> > CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.3.0+ #392
> > Hardware name: SolidRun LX2160A COM express type 7 module (DT)
> > Call trace:
> >  dump_backtrace+0x0/0x120
> >  show_stack+0x14/0x1c
> >  dump_stack+0x9c/0xc0
> >  panic+0x148/0x34c
> >  print_tainted+0x0/0xa8
> >  arm64_serror_panic+0x74/0x80
> >  do_serror+0x8c/0x13c
> >  el1_error+0xbc/0x160
> >  pci_generic_config_read+0xb0/0xc0
> >  pci_bus_read_config_byte+0x64/0x90
> >  pci_read_config_byte+0x40/0x48
> >  pci_assign_irq+0x34/0xc8
> >  pci_device_probe+0x28/0x148
> >  really_probe+0x1c4/0x2d0
> >  driver_probe_device+0x58/0xfc
> >  device_driver_attach+0x68/0x70
> >  __driver_attach+0x94/0xdc
> >  bus_for_each_dev+0x50/0xa0
> >  driver_attach+0x20/0x28
> >  bus_add_driver+0x14c/0x200
> >  driver_register+0x6c/0x124
> >  __pci_register_driver+0x48/0x50
> >  mlx4_init+0x154/0x180
> >  do_one_initcall+0x30/0x250
> >  kernel_init_freeable+0x23c/0x32c
> >  kernel_init+0x10/0xfc
> >  ret_from_fork+0x10/0x18
> > SMP: stopping secondary CPUs
> > Kernel Offset: disabled
> > CPU features: 0x0002,21006008
> > Memory Limit: none
> > 
> > and there it dies.  Any ideas?
> 
> The failing access seems to be:
> 
>         pci_read_config_byte(dev, PCI_INTERRUPT_PIN, &pin);
> 
> for the Mellanox Ethernet card.  Presumably, being a PCIe ethernet
> card, it doesn't implement this register (just a guess), and aborts
> the PCI transaction, which is presumably triggering the above SError.

PCIe r5.0, sec 7.5.1.1.13, says Interrupt Pin is a read-only register,
so there shouldn't be an issue with reading it.

mobiveil_pcie_ops uses the generic pci_generic_config_read(), which
will perform a readb() in this case.  Could mobiveil be a bridge that
only supports 32-bit config accesses?

> Note that I've used this card with the Macchiatobin (Armada 8040)
> without issue.
> 
> -- 
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
