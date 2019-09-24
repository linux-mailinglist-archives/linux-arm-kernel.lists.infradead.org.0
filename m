Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F1FBCBE9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 17:53:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5zVWt66oxb2g+yXiUL3VKZgMejHNRkgUMJZqFmNDs4=; b=MGZgOM01zE52WG
	ytsKPgGTQsOubfCEhSXsrk7MHHqvomGmWjJ2qvz4xD5vC0AeigLU/sJ4m11fcnHaiuqcpoLwg9A8F
	HvqYOJ/bPv0vnPgLExkxxiHracE6hB4+nq1SOBeiAU76puY9Gaq8Lftduyc6Dc5G9Oah60MJggwE1
	FJdMC8fr+Dr88awKcrAJu0JER9G71AYa4Lt0rOOwtSL+Q+inq/hJ269u5I+eqnowJnbdCfrsfp3kp
	j+k/Li6VN3718dqlqhL7LhU4MEGsXHEA2BVYuQp7QU8p6fGZVRJeMQ5J/50OcLCzUzvo7GqcUIrd0
	lBUw6CLFwO/tAqrKIkbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCn7j-0000ub-7A; Tue, 24 Sep 2019 15:53:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCn7N-0000sm-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 15:52:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uMRpyMWNwJKJpnxqT6YsZkEtepZFeyzBpvTiDie8B1U=; b=SL7nl0vhym8w2ntt4lOTF8EIZ
 7lXGyEXmwwuTutRwU+thNstMMLoWA90wZo+Et5Mz2dSjtpkrDvK2CcsOLH/EOFIT9wy7HXPjtfBds
 ZQQAm8ndFpuCDNj2iLUswNzCtWOHL4QuSvq2AI7v74FNirop5a34IC5A0NfukWcyp+2fApJNwDDbv
 8VFdiDElJqOeX9NxVWrggo0iHrOObLDqIt+ZtUoPwhq+FaKCOu+s0R6ULK8ilvAhCZVUfh39xdJjZ
 R5fgbY+tEid44gduh7Xk710exO9IVilCgknT99AufgYMaBzjUGd2POCtUV+o335BbVFNR/CBXAGM4
 f1e2pq69w==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:47694)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iCn74-0002kh-Vk; Tue, 24 Sep 2019 16:52:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iCn71-0001Np-Pk; Tue, 24 Sep 2019 16:52:23 +0100
Date: Tue, 24 Sep 2019 16:52:23 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 0/6] Add the Mobiveil EP and Layerscape Gen4 EP driver
 support
Message-ID: <20190924155223.GX25745@shell.armlinux.org.uk>
References: <20190916021742.22844-1-xiaowei.bao@nxp.com>
 <20190924141847.GW25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924141847.GW25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_085245_846113_E7EA19E0 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-pci@vger.kernel.org, Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, Minghuan.Lian@nxp.com, robh+dt@kernel.org,
 mingkai.hu@nxp.com, bhelgaas@google.com, andrew.murray@arm.com, kishon@ti.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 03:18:47PM +0100, Russell King - ARM Linux admin wrote:
> On Mon, Sep 16, 2019 at 10:17:36AM +0800, Xiaowei Bao wrote:
> > This patch set are for adding Mobiveil EP driver and adding PCIe Gen4
> > EP driver of NXP Layerscape platform.
> > 
> > This patch set depends on:
> > https://patchwork.kernel.org/project/linux-pci/list/?series=159139
> > 
> > Xiaowei Bao (6):
> >   PCI: mobiveil: Add the EP driver support
> >   dt-bindings: Add DT binding for PCIE GEN4 EP of the layerscape
> >   PCI: mobiveil: Add PCIe Gen4 EP driver for NXP Layerscape SoCs
> >   PCI: mobiveil: Add workaround for unsupported request error
> >   arm64: dts: lx2160a: Add PCIe EP node
> >   misc: pci_endpoint_test: Add the layerscape PCIe GEN4 EP device
> >     support
> > 
> >  .../bindings/pci/layerscape-pcie-gen4.txt          |  28 +-
> >  MAINTAINERS                                        |   3 +
> >  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |  56 ++
> >  drivers/misc/pci_endpoint_test.c                   |   2 +
> >  drivers/pci/controller/mobiveil/Kconfig            |  22 +-
> >  drivers/pci/controller/mobiveil/Makefile           |   2 +
> >  .../controller/mobiveil/pcie-layerscape-gen4-ep.c  | 169 ++++++
> >  drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c | 568 +++++++++++++++++++++
> >  drivers/pci/controller/mobiveil/pcie-mobiveil.c    |  99 +++-
> >  drivers/pci/controller/mobiveil/pcie-mobiveil.h    |  72 +++
> >  10 files changed, 1009 insertions(+), 12 deletions(-)
> >  create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
> >  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c
> 
> Hi,
> 
> I've applied "PCI: mobiveil: Fix the CPU base address setup in inbound
> window" and your patch set to 5.3, which seems to be able to detect the
> PCIe card I have plugged in:
> 
> layerscape-pcie-gen4 3800000.pcie: host bridge /soc/pcie@3800000 ranges:
> layerscape-pcie-gen4 3800000.pcie:   MEM 0xa040000000..0xa07fffffff -> 0x40000000
> layerscape-pcie-gen4 3800000.pcie: PCI host bridge to bus 0000:00
> pci_bus 0000:00: root bus resource [bus 00-ff]
> pci_bus 0000:00: root bus resource [mem 0xa040000000-0xa07fffffff] (bus address
> [0x40000000-0x7fffffff])
> pci 0000:00:00.0: [1957:8d90] type 01 class 0x060400
> pci 0000:00:00.0: enabling Extended Tags
> pci 0000:00:00.0: supports D1 D2
> pci 0000:00:00.0: PME# supported from D0 D1 D2 D3hot D3cold
> pci 0000:01:00.0: [15b3:6750] type 00 class 0x020000
> pci 0000:01:00.0: reg 0x10: [mem 0xa040000000-0xa0400fffff 64bit]
> pci 0000:01:00.0: reg 0x18: [mem 0xa040800000-0xa040ffffff 64bit pref]
> pci 0000:01:00.0: reg 0x30: [mem 0xa041000000-0xa0410fffff pref]
> pci 0000:00:00.0: up support 3 enabled 0
> pci 0000:00:00.0: dn support 1 enabled 0
> pci 0000:00:00.0: BAR 9: assigned [mem 0xa040000000-0xa0407fffff 64bit pref]
> pci 0000:00:00.0: BAR 8: assigned [mem 0xa040800000-0xa0409fffff]
> pci 0000:01:00.0: BAR 2: assigned [mem 0xa040000000-0xa0407fffff 64bit pref]
> pci 0000:01:00.0: BAR 0: assigned [mem 0xa040800000-0xa0408fffff 64bit]
> pci 0000:01:00.0: BAR 6: assigned [mem 0xa040900000-0xa0409fffff pref]
> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> pci 0000:00:00.0:   bridge window [mem 0xa040800000-0xa0409fffff]
> pci 0000:00:00.0:   bridge window [mem 0xa040000000-0xa0407fffff 64bit pref]
> pci 0000:00:00.0: Max Payload Size set to  256/ 256 (was  128), Max Read Rq  256pci 0000:01:00.0: Max Payload Size set to  256/ 256 (was  128), Max Read Rq  256pcieport 0000:00:00.0: PCIe capabilities: 0x13
> pcieport 0000:00:00.0: init_service_irqs: -19
> 
> However, a bit later in the kernel boot, I get:
> 
> SError Interrupt on CPU1, code 0xbf000002 -- SError
> CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.3.0+ #392
> Hardware name: SolidRun LX2160A COM express type 7 module (DT)
> pstate: 60400085 (nZCv daIf +PAN -UAO)
> pc : pci_generic_config_read+0xb0/0xc0
> lr : pci_generic_config_read+0x1c/0xc0
> sp : ffffff8010f9baf0
> x29: ffffff8010f9baf0 x28: ffffff8010d620a0
> x27: ffffff8010d79000 x26: ffffff8010d62000
> x25: ffffff8010cb06d4 x24: 0000000000000000
> x23: ffffff8010e499b8 x22: ffffff8010f9bbaf
> x21: 0000000000000000 x20: ffffffe2eda11800
> x19: ffffff8010f62158 x18: ffffff8010bdede0
> x17: ffffff8010bdede8 x16: ffffff8010b96970
> x15: ffffffffffffffff x14: ffffffffff000000
> x13: ffffffffffffffff x12: 0000000000000030
> x11: 0101010101010101 x10: 7f7f7f7f7f7f7f7f
> x9 : 2dff716475687163 x8 : ffffffffffffffff
> x7 : fefefefefefefefe x6 : 0000000000000000
> x5 : 0000000000000000 x4 : ffffff8010f9bb6c
> x3 : 0000000000000001 x2 : 0000000000000003
> x1 : 0000000000000000 x0 : 0000000000000000
> Kernel panic - not syncing: Asynchronous SError Interrupt
> CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.3.0+ #392
> Hardware name: SolidRun LX2160A COM express type 7 module (DT)
> Call trace:
>  dump_backtrace+0x0/0x120
>  show_stack+0x14/0x1c
>  dump_stack+0x9c/0xc0
>  panic+0x148/0x34c
>  print_tainted+0x0/0xa8
>  arm64_serror_panic+0x74/0x80
>  do_serror+0x8c/0x13c
>  el1_error+0xbc/0x160
>  pci_generic_config_read+0xb0/0xc0
>  pci_bus_read_config_byte+0x64/0x90
>  pci_read_config_byte+0x40/0x48
>  pci_assign_irq+0x34/0xc8
>  pci_device_probe+0x28/0x148
>  really_probe+0x1c4/0x2d0
>  driver_probe_device+0x58/0xfc
>  device_driver_attach+0x68/0x70
>  __driver_attach+0x94/0xdc
>  bus_for_each_dev+0x50/0xa0
>  driver_attach+0x20/0x28
>  bus_add_driver+0x14c/0x200
>  driver_register+0x6c/0x124
>  __pci_register_driver+0x48/0x50
>  mlx4_init+0x154/0x180
>  do_one_initcall+0x30/0x250
>  kernel_init_freeable+0x23c/0x32c
>  kernel_init+0x10/0xfc
>  ret_from_fork+0x10/0x18
> SMP: stopping secondary CPUs
> Kernel Offset: disabled
> CPU features: 0x0002,21006008
> Memory Limit: none
> 
> and there it dies.  Any ideas?

The failing access seems to be:

        pci_read_config_byte(dev, PCI_INTERRUPT_PIN, &pin);

for the Mellanox Ethernet card.  Presumably, being a PCIe ethernet
card, it doesn't implement this register (just a guess), and aborts
the PCI transaction, which is presumably triggering the above SError.

Note that I've used this card with the Macchiatobin (Armada 8040)
without issue.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
