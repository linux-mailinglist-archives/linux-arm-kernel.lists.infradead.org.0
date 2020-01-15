Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2B613BCFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:01:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wshriJO7EfvTTVh8jVrkYLiUU/o/6W4ARmTytcddwJA=; b=Nq1mdY8g/OQ59e
	3p+mTfnn2eMNhj2pfUYzKMb3zdPHwmbz/fqj5CyGaFdpkUUjSSLYGI5NsUCfmr7fmddHr6WlYpC9g
	JZAVSEuw194PVeieQOUxgxQV2KC7YgFEzCAV49ywwThKH7lIHE1wckCQgwOtfmiSHOYxzrhusEabZ
	f2mesurxpG5FiKRBPEqKEAwSgbQ5h4A97LFxnenodYQ9sVBdZ8X/JP4pTIOgtD650e73Eo9jhYs3i
	o1/ea4A4VSrXbhMJGjnUfTIjclg5uuAamsLkY149+bh7zssNshaGKtkHZ4bBrmM5cMcB5bB8oElfz
	g5JvRWuw53NdU1eY9ZTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfU9-00043l-Kb; Wed, 15 Jan 2020 10:01:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfTy-00042j-VQ; Wed, 15 Jan 2020 10:01:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E91F31B;
 Wed, 15 Jan 2020 02:01:02 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 268343F6C4;
 Wed, 15 Jan 2020 02:01:00 -0800 (PST)
Date: Wed, 15 Jan 2020 10:00:54 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v5 3/6] PCI: brcmstb: Add Broadcom STB PCIe host
 controller driver
Message-ID: <20200115100054.GA2174@e121166-lin.cambridge.arm.com>
References: <20191216110113.30436-1-nsaenzjulienne@suse.de>
 <20191216110113.30436-4-nsaenzjulienne@suse.de>
 <20200114171101.GA11177@e121166-lin.cambridge.arm.com>
 <8a7057fe1aaf415272d28f4e690313984c3a148d.camel@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a7057fe1aaf415272d28f4e690313984c3a148d.camel@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_020103_059948_5BFDBBB4 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 mbrugger@suse.com, bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 14, 2020 at 07:18:46PM +0100, Nicolas Saenz Julienne wrote:
> Hi Lorenzo,
> 
> On Tue, 2020-01-14 at 17:11 +0000, Lorenzo Pieralisi wrote:
> > On Mon, Dec 16, 2019 at 12:01:09PM +0100, Nicolas Saenz Julienne wrote:
> > > From: Jim Quinlan <james.quinlan@broadcom.com>
> > > 
> > > This adds a basic driver for Broadcom's STB PCIe controller, for now
> > > aimed at Raspberry Pi 4's SoC, bcm2711.
> > > 
> > > Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> > > Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > Reviewed-by: Andrew Murray <andrew.murray@arm.com>
> > > Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>
> > > 
> > > ---
> > > 
> > > Changes since v3:
> > >   - Update commit message
> > >   - rollback roundup_pow_two usage, it'll be updated later down the line
> > >   - Remove comment in register definition
> > > 
> > > Changes since v2:
> > >   - Correct rc_bar2_offset sign
> > 
> > In relation to this change.
> > 
> > [...]
> > 
> > > +static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie
> > > *pcie,
> > > +							u64 *rc_bar2_size,
> > > +							u64 *rc_bar2_offset)
> > > +{
> > > +	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
> > > +	struct device *dev = pcie->dev;
> > > +	struct resource_entry *entry;
> > > +
> > > +	entry = resource_list_first_type(&bridge->dma_ranges, IORESOURCE_MEM);
> > > +	if (!entry)
> > > +		return -ENODEV;
> > > +
> > > +	*rc_bar2_offset = -entry->offset;
> > 
> > I think this deserves a comment - I guess it has to do with how the
> > controller expects CPU<->PCI offsets to be expressed compared to how it
> > is computed in dma_ranges entries.
> 
> You're right, OF code calculates it by doing:
> 
> 	offset = cpu_start_addr - pci_start_addr (see
> devm_of_pci_get_host_bridge_resources())
> 
> While the RC_BAR2_CONFIG register expects the opposite subtraction.
> I'll add a comment on the next revision.

There is no need for a new posting, either write that comment here
and I update the code or inline the patch or just resend *this* updated
patch to the list.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
