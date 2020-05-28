Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6CD1E67C2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 18:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=XLnn4jgksLpzvz/4S++vzpnlFWlw0ZHMbDCg7OgBW1c=; b=iUTmEHsTeYPxL6
	LDf2XA7ZnmK8voDbNgqiIjEpWvKwh1AFyKSpPmmElV9Ik4irm9gtPYS7M+iwHVJAopOzmTyWHkrZn
	qlIHosCKMcw+KFFx9zzdzKA8HrFkXBb51CnWUXbEhCJxMJHpBQOALDFTIpcFTNuXUIy/um/OJwHsp
	1PJyHqKAwJ4wa+nerH9/d/+eeIr1K39i34wqPAOvCLFyopgSCepV1dlEAJZaftS/SMa9ND5EmWx/D
	HI9aujluq7IYkdIzPv3VLODhXpaDQ0Q2+MXsK1boh6y/uf8AdToOMTXcJUZkjtKKDk00oFB4f5OTX
	YfH80LhLcNeu1Kg+vOfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeLj3-0004MN-KM; Thu, 28 May 2020 16:49:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeLiu-0004Lv-HK
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 16:49:41 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6F0D2075A;
 Thu, 28 May 2020 16:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590684580;
 bh=ZvL1zlVb0aD8FKJBrJFoJZtl2vsqUfSH5YS12c2w2SM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=sYevLuoNVsyrmYY7rW9ivvtRaYn2l5/dFD1SMhThUEUwgqBgx2xM4JoAwMmw4YZWx
 Dzr1IMGNmQgl34snFo+oKIZ/ITX3HRABJ3tIplUBnyQwrZh9dOib2KXIhkt229uyWJ
 3AXVQZOyeR0LWXJLEqlaQiw+AJ+d/BvhdrXnXQeM=
Date: Thu, 28 May 2020 11:49:38 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Subject: Re: [PATCH] PCI: aardvark: Don't touch PCIe registers if no card
 connected
Message-ID: <20200528164938.GA325239@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528163809.54f5ldvphrjg3zg3@pali>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_094940_614909_517E1EC4 
X-CRM114-Status: GOOD (  26.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Xogium <contact@xogium.me>, linux-kernel@vger.kernel.org,
 Marek =?iso-8859-1?Q?Beh=FAn?= <marek.behun@nic.cz>,
 Remi Pommarel <repk@triplefau.lt>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 06:38:09PM +0200, Pali Roh=E1r wrote:
> On Thursday 28 May 2020 11:26:04 Bjorn Helgaas wrote:
> > On Thu, May 28, 2020 at 04:31:41PM +0200, Pali Roh=E1r wrote:
> > > When there is no PCIe card connected and advk_pcie_rd_conf() or
> > > advk_pcie_wr_conf() is called for PCI bus which doesn't belong to emu=
lated
> > > root bridge, the aardvark driver throws the following error message:
> > > =

> > >   advk-pcie d0070000.pcie: config read/write timed out
> > > =

> > > Obviously accessing PCIe registers of disconnected card is not possib=
le.
> > > =

> > > Extend check in advk_pcie_valid_device() function for validating
> > > availability of PCIe bus. If PCIe link is down, then the device is ma=
rked
> > > as Not Found and the driver does not try to access these registers.
> > > =

> > > Signed-off-by: Pali Roh=E1r <pali@kernel.org>
> > > ---
> > >  drivers/pci/controller/pci-aardvark.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > =

> > > diff --git a/drivers/pci/controller/pci-aardvark.c b/drivers/pci/cont=
roller/pci-aardvark.c
> > > index 90ff291c24f0..53a4cfd7d377 100644
> > > --- a/drivers/pci/controller/pci-aardvark.c
> > > +++ b/drivers/pci/controller/pci-aardvark.c
> > > @@ -644,6 +644,9 @@ static bool advk_pcie_valid_device(struct advk_pc=
ie *pcie, struct pci_bus *bus,
> > >  	if ((bus->number =3D=3D pcie->root_bus_nr) && PCI_SLOT(devfn) !=3D =
0)
> > >  		return false;
> > >  =

> > > +	if (bus->number !=3D pcie->root_bus_nr && !advk_pcie_link_up(pcie))
> > > +		return false;
> > =

> > I don't think this is the right fix.  This makes it racy because the
> > link may go down after we call advk_pcie_valid_device() but before we
> > perform the config read.
> =

> Yes, it is racy, but I do not think it cause problems. Trying to read
> PCIe registers when device is not connected cause just those timeouts,
> printing error message and increased delay in advk_pcie_wait_pio() due
> to polling loop. This patch reduce unnecessary access to PCIe registers
> when advk_pcie_wait_pio() polling just fail.
> =

> I think it is a good idea to not call blocking advk_pcie_wait_pio() when
> it is not needed. We could have faster enumeration of PCIe buses when
> card is not connected.

Maybe advk_pcie_check_pio_status() and advk_pcie_wait_pio() could be
combined so we could get the correct error status as soon as it's
available, without waiting for a timeout?

In any event, the "return PCIBIOS_SET_FAILED" needs to be fixed.  Most
callers of config read do not check for failure, but most of the ones
that do, check for "val =3D=3D ~0".  Only a few check for a status of
other than PCIBIOS_SUCCESSFUL.

> > I have no objection to removing the "config read/write timed out"
> > message.  The "return PCIBIOS_SET_FAILED" in the read case probably
> > should be augmented by setting "*val =3D 0xffffffff".
> > =

> > >  	return true;
> > >  }
> > >  =

> > > -- =

> > > 2.20.1
> > > =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
