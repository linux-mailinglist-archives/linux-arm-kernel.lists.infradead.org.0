Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A57EDAC9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:45:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEaElJzAUN2e0+bm+R/IW+jiItt0Z8YO2XDn2URbEDg=; b=uSnjFQLqOLr1MC
	RD+jZ65Ts1BOkS6IHEWW6Wy+8o6BfxZdrE/UDPSw2s8hTb89vHZVWSslsQWaFb98no2WHiw/aoQ1H
	cx81SAOALChJHPuf/Y/ODC54+CDUi1QZKiQAxBEz3QE0qMBmhsXFClIlObUy6ltIUEjiI26prHyAz
	M3UV0MEApLa7oc+rFUVcQrcpc3caW+vvSpoChHcj08FMZOsWw9EtUxhhsxQ/dymVIOEZmZQFeHUIb
	p6rXqe/F5okprIPV3sObDnNBThk8RaJH/iy8slwsHmHNSRz1HKsF4KWOF/4t6DXXeYmJ4DlWbkLwB
	JUnLkBjnBFEbgExBsiTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL59J-0002ZC-28; Thu, 17 Oct 2019 12:45:01 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL59A-0002Xj-RB
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:44:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 599511993;
 Thu, 17 Oct 2019 05:44:42 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 723A53F6C4;
 Thu, 17 Oct 2019 05:44:41 -0700 (PDT)
Date: Thu, 17 Oct 2019 13:44:39 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Grzegorz Jaszczyk <jaz@semihalf.com>
Subject: Re: [PATCH v2] PCI: pci-bridge-emul: fix big-endian support
Message-ID: <20191017124439.GB19340@e121166-lin.cambridge.arm.com>
References: <1563279226-30804-1-git-send-email-jaz@semihalf.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1563279226-30804-1-git-send-email-jaz@semihalf.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054452_966771_EDD9123A 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: bhelgaas@google.com, linux-pci@vger.kernel.org, mw@semihalf.com,
 linux-arm-kernel@lists.infradead.org, thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 02:13:46PM +0200, Grzegorz Jaszczyk wrote:
> Perform conversion to little-endian before every write to configuration
> space and converse back to cpu endianness during read. Additionally
> initialise every not-byte wide fields of config space with proper
> cpu_to_le* macro.
> 
> This is required since the structure describing config space of emulated
> bridge assumes little-endian convention.
> 
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> ---
> v1->v2
> - use __le32 and __le16 for config fields
> - add missing cpu_to_le16 for pcie_conf.cap assignment
> - use __le32 for cfgspace pointer
> Issues with endianness were detected by Sparse tool recommended by Russell King.
> 
>  drivers/pci/pci-bridge-emul.c | 25 +++++++-------
>  drivers/pci/pci-bridge-emul.h | 78 +++++++++++++++++++++----------------------
>  2 files changed, 52 insertions(+), 51 deletions(-)

Applied to pci/aardvark, thanks.

Lorenzo

> diff --git a/drivers/pci/pci-bridge-emul.c b/drivers/pci/pci-bridge-emul.c
> index 83fb077..cfae566 100644
> --- a/drivers/pci/pci-bridge-emul.c
> +++ b/drivers/pci/pci-bridge-emul.c
> @@ -270,10 +270,10 @@ const static struct pci_bridge_reg_behavior pcie_cap_regs_behavior[] = {
>  int pci_bridge_emul_init(struct pci_bridge_emul *bridge,
>  			 unsigned int flags)
>  {
> -	bridge->conf.class_revision |= PCI_CLASS_BRIDGE_PCI << 16;
> +	bridge->conf.class_revision |= cpu_to_le32(PCI_CLASS_BRIDGE_PCI << 16);
>  	bridge->conf.header_type = PCI_HEADER_TYPE_BRIDGE;
>  	bridge->conf.cache_line_size = 0x10;
> -	bridge->conf.status = PCI_STATUS_CAP_LIST;
> +	bridge->conf.status = cpu_to_le16(PCI_STATUS_CAP_LIST);
>  	bridge->pci_regs_behavior = kmemdup(pci_regs_behavior,
>  					    sizeof(pci_regs_behavior),
>  					    GFP_KERNEL);
> @@ -284,8 +284,9 @@ int pci_bridge_emul_init(struct pci_bridge_emul *bridge,
>  		bridge->conf.capabilities_pointer = PCI_CAP_PCIE_START;
>  		bridge->pcie_conf.cap_id = PCI_CAP_ID_EXP;
>  		/* Set PCIe v2, root port, slot support */
> -		bridge->pcie_conf.cap = PCI_EXP_TYPE_ROOT_PORT << 4 | 2 |
> -			PCI_EXP_FLAGS_SLOT;
> +		bridge->pcie_conf.cap =
> +			cpu_to_le16(PCI_EXP_TYPE_ROOT_PORT << 4 | 2 |
> +				    PCI_EXP_FLAGS_SLOT);
>  		bridge->pcie_cap_regs_behavior =
>  			kmemdup(pcie_cap_regs_behavior,
>  				sizeof(pcie_cap_regs_behavior),
> @@ -327,7 +328,7 @@ int pci_bridge_emul_conf_read(struct pci_bridge_emul *bridge, int where,
>  	int reg = where & ~3;
>  	pci_bridge_emul_read_status_t (*read_op)(struct pci_bridge_emul *bridge,
>  						 int reg, u32 *value);
> -	u32 *cfgspace;
> +	__le32 *cfgspace;
>  	const struct pci_bridge_reg_behavior *behavior;
>  
>  	if (bridge->has_pcie && reg >= PCI_CAP_PCIE_END) {
> @@ -343,11 +344,11 @@ int pci_bridge_emul_conf_read(struct pci_bridge_emul *bridge, int where,
>  	if (bridge->has_pcie && reg >= PCI_CAP_PCIE_START) {
>  		reg -= PCI_CAP_PCIE_START;
>  		read_op = bridge->ops->read_pcie;
> -		cfgspace = (u32 *) &bridge->pcie_conf;
> +		cfgspace = (__le32 *) &bridge->pcie_conf;
>  		behavior = bridge->pcie_cap_regs_behavior;
>  	} else {
>  		read_op = bridge->ops->read_base;
> -		cfgspace = (u32 *) &bridge->conf;
> +		cfgspace = (__le32 *) &bridge->conf;
>  		behavior = bridge->pci_regs_behavior;
>  	}
>  
> @@ -357,7 +358,7 @@ int pci_bridge_emul_conf_read(struct pci_bridge_emul *bridge, int where,
>  		ret = PCI_BRIDGE_EMUL_NOT_HANDLED;
>  
>  	if (ret == PCI_BRIDGE_EMUL_NOT_HANDLED)
> -		*value = cfgspace[reg / 4];
> +		*value = le32_to_cpu(cfgspace[reg / 4]);
>  
>  	/*
>  	 * Make sure we never return any reserved bit with a value
> @@ -387,7 +388,7 @@ int pci_bridge_emul_conf_write(struct pci_bridge_emul *bridge, int where,
>  	int mask, ret, old, new, shift;
>  	void (*write_op)(struct pci_bridge_emul *bridge, int reg,
>  			 u32 old, u32 new, u32 mask);
> -	u32 *cfgspace;
> +	__le32 *cfgspace;
>  	const struct pci_bridge_reg_behavior *behavior;
>  
>  	if (bridge->has_pcie && reg >= PCI_CAP_PCIE_END)
> @@ -414,11 +415,11 @@ int pci_bridge_emul_conf_write(struct pci_bridge_emul *bridge, int where,
>  	if (bridge->has_pcie && reg >= PCI_CAP_PCIE_START) {
>  		reg -= PCI_CAP_PCIE_START;
>  		write_op = bridge->ops->write_pcie;
> -		cfgspace = (u32 *) &bridge->pcie_conf;
> +		cfgspace = (__le32 *) &bridge->pcie_conf;
>  		behavior = bridge->pcie_cap_regs_behavior;
>  	} else {
>  		write_op = bridge->ops->write_base;
> -		cfgspace = (u32 *) &bridge->conf;
> +		cfgspace = (__le32 *) &bridge->conf;
>  		behavior = bridge->pci_regs_behavior;
>  	}
>  
> @@ -431,7 +432,7 @@ int pci_bridge_emul_conf_write(struct pci_bridge_emul *bridge, int where,
>  	/* Clear the W1C bits */
>  	new &= ~((value << shift) & (behavior[reg / 4].w1c & mask));
>  
> -	cfgspace[reg / 4] = new;
> +	cfgspace[reg / 4] = cpu_to_le32(new);
>  
>  	if (write_op)
>  		write_op(bridge, reg, old, new, mask);
> diff --git a/drivers/pci/pci-bridge-emul.h b/drivers/pci/pci-bridge-emul.h
> index e65b1b7..b318830 100644
> --- a/drivers/pci/pci-bridge-emul.h
> +++ b/drivers/pci/pci-bridge-emul.h
> @@ -6,65 +6,65 @@
>  
>  /* PCI configuration space of a PCI-to-PCI bridge. */
>  struct pci_bridge_emul_conf {
> -	u16 vendor;
> -	u16 device;
> -	u16 command;
> -	u16 status;
> -	u32 class_revision;
> +	__le16 vendor;
> +	__le16 device;
> +	__le16 command;
> +	__le16 status;
> +	__le32 class_revision;
>  	u8 cache_line_size;
>  	u8 latency_timer;
>  	u8 header_type;
>  	u8 bist;
> -	u32 bar[2];
> +	__le32 bar[2];
>  	u8 primary_bus;
>  	u8 secondary_bus;
>  	u8 subordinate_bus;
>  	u8 secondary_latency_timer;
>  	u8 iobase;
>  	u8 iolimit;
> -	u16 secondary_status;
> -	u16 membase;
> -	u16 memlimit;
> -	u16 pref_mem_base;
> -	u16 pref_mem_limit;
> -	u32 prefbaseupper;
> -	u32 preflimitupper;
> -	u16 iobaseupper;
> -	u16 iolimitupper;
> +	__le16 secondary_status;
> +	__le16 membase;
> +	__le16 memlimit;
> +	__le16 pref_mem_base;
> +	__le16 pref_mem_limit;
> +	__le32 prefbaseupper;
> +	__le32 preflimitupper;
> +	__le16 iobaseupper;
> +	__le16 iolimitupper;
>  	u8 capabilities_pointer;
>  	u8 reserve[3];
> -	u32 romaddr;
> +	__le32 romaddr;
>  	u8 intline;
>  	u8 intpin;
> -	u16 bridgectrl;
> +	__le16 bridgectrl;
>  };
>  
>  /* PCI configuration space of the PCIe capabilities */
>  struct pci_bridge_emul_pcie_conf {
>  	u8 cap_id;
>  	u8 next;
> -	u16 cap;
> -	u32 devcap;
> -	u16 devctl;
> -	u16 devsta;
> -	u32 lnkcap;
> -	u16 lnkctl;
> -	u16 lnksta;
> -	u32 slotcap;
> -	u16 slotctl;
> -	u16 slotsta;
> -	u16 rootctl;
> -	u16 rsvd;
> -	u32 rootsta;
> -	u32 devcap2;
> -	u16 devctl2;
> -	u16 devsta2;
> -	u32 lnkcap2;
> -	u16 lnkctl2;
> -	u16 lnksta2;
> -	u32 slotcap2;
> -	u16 slotctl2;
> -	u16 slotsta2;
> +	__le16 cap;
> +	__le32 devcap;
> +	__le16 devctl;
> +	__le16 devsta;
> +	__le32 lnkcap;
> +	__le16 lnkctl;
> +	__le16 lnksta;
> +	__le32 slotcap;
> +	__le16 slotctl;
> +	__le16 slotsta;
> +	__le16 rootctl;
> +	__le16 rsvd;
> +	__le32 rootsta;
> +	__le32 devcap2;
> +	__le16 devctl2;
> +	__le16 devsta2;
> +	__le32 lnkcap2;
> +	__le16 lnkctl2;
> +	__le16 lnksta2;
> +	__le32 slotcap2;
> +	__le16 slotctl2;
> +	__le16 slotsta2;
>  };
>  
>  struct pci_bridge_emul;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
