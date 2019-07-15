Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5034E69749
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 17:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FGNsKEcRXKaZMgV+KhxfJap52F20ng5oIEI2MwH5J+M=; b=TCiHF2/KRgyh8h
	CCUlHL0GvhfNc1bsGqaOl2PnW/pqWjJRrnNEiH3ODam08e6lUr9aG7No1OEHPcIolQXV6dXtHNzma
	e/oDTkWHTj1LFr6slUNXnUqMAHWLRiGgrcS/B4Zj/ufRMAPuiJrS3BzaT/QnBlVMUYZln3pGvxO5U
	j9ajZmKLdMHALtUqdECJNRFk6J/HsWem0WM1mK/weTxnI2Eoi4fGGYWOpkf3LbZA53DC+YKNdJv77
	hro00GSrmMwIujnIM7XXGC4s1iItf0aT9xGF1W8eroukyrfzKcP0qbJJAUZgDLJArZKaY1+BGTqPw
	0PPvoJjIHQh8bYSHWN2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn2cg-0005GV-CY; Mon, 15 Jul 2019 15:10:38 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2cW-0005FU-OT
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 15:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7d9E/+uS/LbEKMv/pk7fdGoaJqxaCi45qzlBCe6X+y4=; b=lHtyRcscbEO/YUttpfQ+8XJXr
 SgvcFo5dej0fLuJGCyAUQXfY8b7qYZk7MA6Ry/NOsaCVP3Seq9QZlTyxUxFNY2xCJisicRvGtqVrB
 i1H/ucs5/MDbD49uoiiQZJ/nYSi4yQ37Kq1Pp5EQLu9WpbxAsJ1FfywnHKzJQ+Qg5kWZay77jQM+l
 kwTdjJRNzEzwarQKzBLxMa/1Xocfi88NjsQEQXFGnvis2ZfUkrgKMB40yIxya+AmzwX2WgTo0S/4W
 bSRDMckeCH7L3Y7eAR0R0y/WKu90pE3bnZj935+9oie6ejVn80D1rLQOTUFamgZsdHw30JnP7sqag
 wKfX3hLwg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59426)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hn2cO-0005fa-A5; Mon, 15 Jul 2019 16:10:20 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hn2cK-0008SY-Ik; Mon, 15 Jul 2019 16:10:16 +0100
Date: Mon, 15 Jul 2019 16:10:16 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH] PCI: aardvark: fix big endian support
Message-ID: <20190715151016.6amymuikizmmmsph@shell.armlinux.org.uk>
References: <1563200122-8323-1-git-send-email-jaz@semihalf.com>
 <20190715170840.326acd73@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715170840.326acd73@windsurf>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_081028_807231_DC375C8F 
X-CRM114-Status: GOOD (  19.86  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: lorenzo.pieralisi@arm.com, Grzegorz Jaszczyk <jaz@semihalf.com>,
 linux-pci@vger.kernel.org, bhelgaas@google.com, mw@semihalf.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 05:08:40PM +0200, Thomas Petazzoni wrote:
> Hello Grzegorz,
> 
> Thanks for this work. I indeed never tested this code on BE platforms,
> and it is very possible that I overlooked endianness issues, so thanks
> for having a look at this and proposing some patches. See some
> questions/comments below.
> 
> On Mon, 15 Jul 2019 16:15:22 +0200
> Grzegorz Jaszczyk <jaz@semihalf.com> wrote:
> 
> > Initialise every not-byte wide fields of emulated pci bridge config
> > space with proper cpu_to_le* macro. This is required since the structure
> > describing config space of emulated bridge assumes little-endian
> > convention.
> > 
> > Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> > ---
> >  drivers/pci/controller/pci-aardvark.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/controller/pci-aardvark.c
> > index 134e030..06a12749 100644
> > --- a/drivers/pci/controller/pci-aardvark.c
> > +++ b/drivers/pci/controller/pci-aardvark.c
> > @@ -479,8 +479,10 @@ static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
> >  {
> >  	struct pci_bridge_emul *bridge = &pcie->bridge;
> >  
> > -	bridge->conf.vendor = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff;
> > -	bridge->conf.device = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16;
> > +	bridge->conf.vendor =
> > +		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff);
> > +	bridge->conf.device =
> > +		cpu_to_le16(advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16);
> >  	bridge->conf.class_revision =
> >  		advk_readl(pcie, PCIE_CORE_DEV_REV_REG) & 0xff;
> 
> So conf.vendor and conf.device and stored as little-endian in the
> emulated config address space, but conf.class_revision is stored in the
> CPU endianness ?
> 
> >  
> > @@ -489,8 +491,8 @@ static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
> >  	bridge->conf.iolimit = PCI_IO_RANGE_TYPE_32;
> 
> >  
> >  	/* Support 64 bits memory pref */
> > -	bridge->conf.pref_mem_base = PCI_PREF_RANGE_TYPE_64;
> > -	bridge->conf.pref_mem_limit = PCI_PREF_RANGE_TYPE_64;
> > +	bridge->conf.pref_mem_base = cpu_to_le16(PCI_PREF_RANGE_TYPE_64);
> > +	bridge->conf.pref_mem_limit = cpu_to_le16(PCI_PREF_RANGE_TYPE_64);
> 
> Same here: why are conf.pref_mem_{base,limit} converted to LE, but not
> conf.iolimit ?
> 
> Also, the advk_pci_bridge_emul_pcie_conf_read() and
> advk_pci_bridge_emul_pcie_conf_write() return values that are in the
> CPU endianness.
> 
> Am I missing something ?

Getting the types correct and then using Sparse to validate the code
will help to identify issues exactly like this.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
