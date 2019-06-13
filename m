Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E64B24326D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 05:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RL2ltrg5mtGnebY1Fbm+q4R1RAzzkcRcAE5Ly0yNsgo=; b=E3mhH5thKyFU1R
	WWdp6o+dSyvAOjoJGyr8rF4plnHhre9if2b65Nfnwz8Kldnm0lnG+dxGS1nx5tYSoGF6Jxp6b8dC2
	B3tANyMyLq1vhDNh4OQqqMs7NTmv5+gM+5w1QmZzcj1+uYrjqcpopM4mRWIfQlH1kpIDPdpP91sBx
	9u/fr1jlO3ZwHjiY3UdvAu3KK1ynheOLR5kwC2L3Bmxg6doGW1vHJ4s9F9bTwCslCI/ADF1tV7dzS
	KPjsiHgQkn4fFF/8SkPwNMxoSysGdWS0Dh5leIne13UJJVbmsCr9EaPZcY1aOKJfo6pUnaMHm3PMR
	Xx8mDAfbkcX3bjgISvfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbGnH-0000M6-GN; Thu, 13 Jun 2019 03:52:55 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbGn2-0000LY-LA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 03:52:42 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x5D3qYRm024120;
 Wed, 12 Jun 2019 22:52:35 -0500
Message-ID: <4e734c3aab8802b340e06b56803954b3e550157d.camel@kernel.crashing.org>
Subject: Why check for PCI_PROBE_ONLY in pci_common_init_dev()
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Date: Thu, 13 Jun 2019 13:52:34 +1000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_205240_840077_5B7D3A48 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi !

So while trying to sort out & cleanup the business with PCI resource
allocation (and do the ground work to be able to revive 
https://lore.kernel.org/linux-pci/20150916085850.GA17510@red-moon/) I
stumbled upon this one:

arch/arm/kernel/bios32.c:pci_common_init_dev() checks for
PCI_PROBE_ONLY to decide whether to claim existing resources or
reallocate.

However, I can't see any code path leading to that function that would
have set that flag.

IE. Afaik, PCI_PROBE_ONLY is only set in a limited number of places
(short of a grep failure on my part):

arch/alpha/kernel/sys_marvel.c:	pci_set_flags(PCI_PROBE_ONLY);
arch/alpha/kernel/sys_titan.c:	pci_set_flags(PCI_PROBE_ONLY);
arch/mips/pci/pci-bcm1480.c:	pci_set_flags(PCI_PROBE_ONLY);
arch/mips/pci/pci-sb1250.c:	pci_set_flags(PCI_PROBE_ONLY);
arch/mips/pci/pci-virtio-guest.c:	pci_set_flags(PCI_PROBE_ONLY);
arch/mips/pci/pci-xlp.c:	pci_set_flags(PCI_PROBE_ONLY);
arch/mips/pci/pci-xlr.c:	pci_set_flags(PCI_PROBE_ONLY);
arch/mips/pci/pci-xtalk-bridge.c:	pci_set_flags(PCI_PROBE_ONLY);
arch/powerpc/platforms/maple/pci.c:	pci_add_flags(PCI_PROBE_ONLY);
arch/powerpc/platforms/pseries/setup.c:	pci_add_flags(PCI_PROBE_ONLY);
drivers/pci/of.c:		pci_add_flags(PCI_PROBE_ONLY);

The only one being of interest to arm32 here being the last one in
of_pci_check_probe_only().

Now that function is only called in two places:

arch/powerpc/platforms/pseries/setup.c: of_pci_check_probe_only();
drivers/pci/controller/pci-host-common.c:       of_pci_check_probe_only();

The only interesting call site here being pci-host-common.c, which
corresponds to the "new style" platform device based PCI host bridge
probing. Now those use pci_host_probe() in drivers/pci/probe.c, not the 
(legacy ?) arch/arm/kernel/bios32.c variant.

So unless I missed something, should I take out the PCI_PROBE_ONLY
case completely in the arm32 code as part of my series ?

ie:

index ed46ca69813d..f969a1a56ace 100644
--- a/arch/arm/kernel/bios32.c
+++ b/arch/arm/kernel/bios32.c
@@ -536,23 +536,13 @@ void pci_common_init_dev(struct device *parent, struct hw_pci *hw)
 
 	list_for_each_entry(sys, &head, node) {
 		struct pci_bus *bus = sys->bus;
+		struct pci_bus *child;
 
-		/*
-		 * We insert PCI resources into the iomem_resource and
-		 * ioport_resource trees in either pci_bus_claim_resources()
-		 * or pci_bus_assign_resources().
-		 */
-		if (pci_has_flag(PCI_PROBE_ONLY)) {
-			pci_bus_claim_resources(bus);
-		} else {
-			struct pci_bus *child;
+		pci_bus_size_bridges(bus);
+		pci_bus_assign_resources(bus);
 
-			pci_bus_size_bridges(bus);
-			pci_bus_assign_resources(bus);
-
-			list_for_each_entry(child, &bus->children, node)
-				pcie_bus_configure_settings(child);
-		}
+		list_for_each_entry(child, &bus->children, node)
+			pcie_bus_configure_settings(child);
 
 		pci_bus_add_devices(bus);
 	}

Cheers,
Ben.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
