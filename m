Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B12EB12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 21:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=koI6p9DVbWTuFquNJ3ACucCbpioYtVWHY0rex0ztrtA=; b=CuLeGCDeV2nHii
	oDS6zsGRafYMAgSIMMj5YuqYwvZFxflj26u1BgBTYhKdiT9+Fjh6DFWX0sIvLWdmEX6MhGa8vL1l8
	AAJPYiMSNOyHvc3l8s8XGPIZ83WagCzawaQDZXiCf+g0BgsTClxIDTKulnvA8ZlBiY07lTnCJBbl/
	ikjRWx65B+J+E68CPCu4j76fAUDMtB3pPWqt8F806uHtcLYvzMXGo+vINxxujiRykJPISlH9V0pWg
	ziEYzwBoc2cC9yxNTAXMxA8sv4Q/bUZjf2tCdWjFG7Cw8uQ57kxNf9U24cgmC30vQEtFk9vVp2k5a
	wUXMtE47v/JvIHTScdhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLCDe-0000SJ-7J; Mon, 29 Apr 2019 19:45:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLCDW-0000Rx-Ja
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 19:45:36 +0000
Received: from localhost (odyssey.drury.edu [64.22.249.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83AE6215EA;
 Mon, 29 Apr 2019 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556567133;
 bh=XNP9JhRBLDjwH68Rjkm8wfgNEzDWvyM+dh5kBbVVeCE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UJnQz/1kvaxE+5/WsnK1FuRH7YQ0KYyua7HXP+PpMNAN009j6mavOeM9j+O1K7YE4
 FQJsZr7oByBnz0xkmnlx2NiAQDUoML2n2KwDw/gvvdt0UQ91SCVcqbTERlSuAExsQ/
 Jf1TJwkAF+PhogiyUjJlBNqoSZJGScNP6M8UPgwU=
Date: Mon, 29 Apr 2019 14:45:32 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Remi Pommarel <repk@triplefau.lt>
Subject: Re: [PATCH v2] PCI: aardvark: Use LTSSM state to build link training
 flag
Message-ID: <20190429194532.GA119268@google.com>
References: <20190316161243.29517-1-repk@triplefau.lt>
 <20190425210439.GG11428@google.com>
 <20190425222756.GR2754@voidbox.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425222756.GR2754@voidbox.localdomain>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_124534_679509_43312BF1 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ellie Reeves <ellierevves@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 12:27:57AM +0200, Remi Pommarel wrote:
> On Thu, Apr 25, 2019 at 04:04:39PM -0500, Bjorn Helgaas wrote:
> > On Sat, Mar 16, 2019 at 05:12:43PM +0100, Remi Pommarel wrote:

> > It sounds like reading and/or writing some registers during a retrain
> > causes some sort of EL1 error?  Is this a separate erratum?  Is there
> > a list of the registers and operations (read/write) that are affected?
> > The backtrace below suggests that it's actually a read of LNKCAP or
> > LNKCTL (not LNKSTA) that caused the error.
> 
> IIUC, the backtrace below produces an EL1 error when doing a PIO
> transfer while the link is still retraining. See my comment below for
> more about that. But accessing any root complex's register seems fine.
> > 
> > It sounds like there are really two problems:
> > 
> >   1) Reading PCI_EXP_LNKSTA (or the Aardvark equivalent) doesn't give
> >      valid data for PCI_EXP_LNKSTA_LT.
> 
> The 1) is correct.
> 
> >   2) Sometimes config reads cause EL1 errors.
> 
> Actually EL1 error happens when we try to access device's register with
> a PIO transfer, which is when we try to use the link while it is being
> retrained.
> 
> IMHO, 1) and 2) are linked. ASPM core tries to use the link too early
> because it has read invalid data for PCI_EXP_LNKSTA_LT.

From the software point of view, there is no such thing as "using the
link too early".  The pattern of:

  - Verify that link is up
  - Access device on other end of link

is always racy because the link can go down at any time due to hotplug
or other issues.  In particular, the link can go down after we verify
that the link is up, but before we access the device.

Software must be able to deal with that gracefully.  I don't know
whether that means catching and recovering from that EL1 error, or
masking it, or what.  This is architecture-specific stuff that's
outside the scope of PCIe itself.

But a link going down should never directly cause a kernel panic.

> > > This fixes boot hang or kernel panic with the following callstack due to
> > > ASPM setup doing a link re-train and polling for PCI_EXP_LNKSTA_LT flag
> > > to be cleared before using it.
> > > 
> > > -------------------- 8< -------------------
> > > 	[    0.915389]  dump_backtrace+0x0/0x140
> > > 	[    0.915391]  show_stack+0x14/0x20
> > > 	[    0.915393]  dump_stack+0x90/0xb4
> > > 	[    0.915394]  panic+0x134/0x2c0
> > > 	[    0.915396]  nmi_panic+0x6c/0x70
> > > 	[    0.915398]  arm64_serror_panic+0x74/0x80
> > > 	[    0.915400]  is_valid_bugaddr+0x0/0x8
> > > 	[    0.915402]  el1_error+0x7c/0xe4
> > > 	[    0.915404]  advk_pcie_rd_conf+0x4c/0x250
> > > 	[    0.915406]  pci_bus_read_config_word+0x7c/0xd0
> > > 	[    0.915408]  pcie_capability_read_word+0x90/0xc8
> > > 	[    0.915410]  pcie_get_aspm_reg+0x68/0x118
> > > 	[    0.915412]  pcie_aspm_init_link_state+0x460/0xa98

> > > +	case PCI_EXP_LNKCTL: {
> > 
> > Don't you mean PCI_EXP_LNKSTA here?
> 
> No, PCI_EXP_LNKSTA and PCI_EXP_LNKCTL are consecutive 16bit registers
> but bridge emulation accesses those registers by 32bit chunk. So when
> one wants to read PCI_EXP_LNKSTA register, pci bridge reads 32bit data
> from PCI_EXP_LNKCTL and 16 bit shift the result to the right.
> 
> This is why I use (PCI_EXP_LNKSTA_LT << 16) below.

Ah, that makes sense.  A comment along the lines of "u32 contains both
PCI_EXP_LNKCTL and PCI_EXP_LNKSTA" would be a nice hint.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
