Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846606A45F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7z87ia8wnGW9cCpBL/mnTuBIhOvX060idDcX883qWD4=; b=ugYlHoJoBlO1rK
	IpK1Na/o758F6CO2lDL5VMM8VIcCcAmYBMHYWMu/A4d2WJyHHNraA9P0yM0FbJYeQy7hBWOUw0JTG
	d/tWiM7Zj6Rx2lD3SaLG4S/mt2df0qNMKj4TVV3m4xbO8YtPdAekE/9NM3pZ0ieG+jUNdKy408fFF
	bxOA0mYPM45159i3vbt3Ncz5aq0CEBTSIJ6JssNwqPbRR0yvWbnEyBhGcmHGvUu601vtyItxDbGz/
	CLii8AuE9XGRCX9nS0eq9Dr9OR+Y17AOtFUsZVLHps/FDtIz95aUkJEPzsoJ40oYiGlechqYRn0b/
	Q/w4iQ83AqGn1WbuBw9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnJGn-00058b-Pr; Tue, 16 Jul 2019 08:57:10 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnJGP-00057e-4F
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:56:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dS/Tf+oGfMpOmpAoJQ5auE74uVqdveJHNfJTY3m/AjA=; b=WS+VlBKicQi5DpH0FN+SS/RXJ
 +M3eFbxMM36T3I4ArPAw58lfJmUGXGst0vrANBem92wphKbn+kVc7t3IW1tUSy6g4977MNw6m4VTx
 tvjqaibZ6ODbrgz8aULirzdAPl9BpYGNLYejTZQkwx5fh8g/IEskDRueDj/9OtHy+gMGmpq2Gxr2R
 LztQKPVcsGi4ggoGGTYi1c2OY1fNehE9WUvTkcJD2oKWxBolOvjKDl9vi++7P4glK9B7c13vUv96R
 HXDIaG7KCuTbjDAr0COVp8I3MQHFoVbEQaCvLPxLD6G+SF4Pf45GvWSu6F4+ttXylx/RaNO/392zs
 KhvRH4RZg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:59526)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hnJGF-0001Yk-3u; Tue, 16 Jul 2019 09:56:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hnJGB-0000e1-QM; Tue, 16 Jul 2019 09:56:31 +0100
Date: Tue, 16 Jul 2019 09:56:31 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH] PCI: aardvark: fix big endian support
Message-ID: <20190716085631.yst3kcrxtkh23xtq@shell.armlinux.org.uk>
References: <1563200122-8323-1-git-send-email-jaz@semihalf.com>
 <20190715170840.326acd73@windsurf>
 <20190715151016.6amymuikizmmmsph@shell.armlinux.org.uk>
 <20190716083204.375afc1e@windsurf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716083204.375afc1e@windsurf>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_015645_172645_C5F7E4B3 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Jul 16, 2019 at 08:32:04AM +0200, Thomas Petazzoni wrote:
> Hello,
> 
> On Mon, 15 Jul 2019 16:10:16 +0100
> Russell King - ARM Linux admin <linux@armlinux.org.uk> wrote:
> 
> > > Also, the advk_pci_bridge_emul_pcie_conf_read() and
> > > advk_pci_bridge_emul_pcie_conf_write() return values that are in the
> > > CPU endianness.
> > > 
> > > Am I missing something ?  
> > 
> > Getting the types correct and then using Sparse to validate the code
> > will help to identify issues exactly like this.
> 
> Yes, I absolutely agree with your recommendation on the other thread.
> 
> In fact, I am wondering if it really makes sense to store the "fake"
> config space in LE, since anyway the read/write accessors should return
> values in the CPU endianness.

Consider:

	u16 vendor;
	u16 device;

and how they are laid out in LE and BE.  Then consider what happens
when you read "vendor" using a u32 accessor.  This is where the
problem lies.

Using host endian means you'd have to read the members using an
appropriately sized host access (in other words, not using a dword
accessor) to end up with the correct result - but we don't want a
large switch() statement here...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
