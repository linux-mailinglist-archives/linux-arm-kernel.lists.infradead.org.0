Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD955C2641
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 21:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToRQ5awDn5CDwGqBOIEyQj2D9aoacwf3KxT7WlE3ra4=; b=SUQL7O4XCGHskc
	4ylWup5t5F1k8jq+CBQBU0a1XTC5uRLuj2fSdJ10VrLmgBXdl04nhNSDXvLvhELAqSkQjaHGPjwvv
	UnhFTEM2KikrLspo+EFExmQG+X5VE/lxh3T5D/Oq9hG4lolnhH5TCDc7VTUCQ+iV/pjq1aFvy0TzG
	rnBJwxkbEoWDJ3t/SA1TdTWm+OwLpg+TVQYPySHcDFUDlRerzoOsgtEQZEHFXGkbxXwp2x0l4WRNa
	kra2v/z6cdhcqORL7T2Zo40lICK9VaQiD7AjauR8/GjB/9skfQf4WzDW/zg+M60/M58yzPlqcLUaE
	pbqnoBQXU+o0Gm+g50FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF1Tr-0001Ir-DQ; Mon, 30 Sep 2019 19:37:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF1Ti-0001IM-Lc
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 19:37:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68DD828;
 Mon, 30 Sep 2019 12:36:59 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D50BB3F534;
 Mon, 30 Sep 2019 12:36:58 -0700 (PDT)
Date: Mon, 30 Sep 2019 20:36:57 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Peter Maydell <peter.maydell@linaro.org>
Subject: Re: [PATCH 05/11] PCI: versatile: Use
 pci_parse_request_of_pci_ranges()
Message-ID: <20190930193655.GH42880@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-6-robh@kernel.org>
 <20190925103752.GS9720@e119886-lin.cambridge.arm.com>
 <CAL_JsqJW2t3F6HdKqcHguYLLiYQ6XWOsQbY-TFsDXhrDjjszew@mail.gmail.com>
 <CAFEAcA_Lu73n9z-fyWNLvnxXyk-JcUbONHE5x06Uh9Upk4MVbw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFEAcA_Lu73n9z-fyWNLvnxXyk-JcUbONHE5x06Uh9Upk4MVbw@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_123702_795273_1155A64C 
X-CRM114-Status: GOOD (  26.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Robin.Murphy@arm.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 05:56:51PM +0100, Peter Maydell wrote:
> On Thu, 26 Sep 2019 at 22:45, Rob Herring <robh@kernel.org> wrote:
> >
> > On Wed, Sep 25, 2019 at 5:37 AM Andrew Murray <andrew.murray@arm.com> wrote:
> > >
> > > On Tue, Sep 24, 2019 at 04:46:24PM -0500, Rob Herring wrote:
> > > > Convert ARM Versatile host bridge to use the common
> > > > pci_parse_request_of_pci_ranges().
> > > >
> > > > Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > > Cc: Bjorn Helgaas <bhelgaas@google.com>
> > > > Signed-off-by: Rob Herring <robh@kernel.org>
> > > > ---
> 
> > > >  static int versatile_pci_probe(struct platform_device *pdev)
> > > >  {
> > > >       struct device *dev = &pdev->dev;
> > > >       struct resource *res;
> > > > -     int ret, i, myslot = -1;
> > > > +     struct resource_entry *entry;
> > > > +     int ret, i, myslot = -1, mem = 0;
> > >
> > > I think 'mem' should be initialised to 1, at least that's what the original
> > > code did. However I'm not sure why it should start from 1.
> >
> > The original code I moved from arch/arm had 32MB @ 0x0c000000 called
> > "PCI unused" which was requested with request_resource(), but never
> > provided to the PCI core. Otherwise, I kept the setup the same. No one
> > has complained in 4 years, though I'm not sure anyone would have
> > noticed if I just deleted PCI support...
> 
> Yes, QEMU users will notice if you drop or break PCI support :-)
> I don't think anybody is using real hardware PCI though.
> 
> Anyway, the 'mem' indexes here matter because you're passing
> them to PCI_IMAP() and PCI_SMAP(), which are writing to
> hardware registers. If you write to PCI_IMAP0 when we
> were previously writing to PCI_IMAP1 then suddenly you're
> not configuring the behaviour for accesses to the PCI
> window that's at CPU physaddr 0x50000000, you're configuring
> the window that's at CPU physaddr 0x44000000, which is
> entirely different (and notably is smaller, being only
> 0x0c000000 in size rather than 0x10000000).
> 
> If this is supposed to be a no-behaviour-change refactor
> then it would probably be a good test to check that we're
> writing exactly the same values to the hardware registers
> on the device as we were before the change.

As far as I understand...

According to the device tree arch/arm/boot/dts/versatile-pb.dts we describe
a 1:1 mapping between CPU and PCI addresses for the IORESOURCE_MEM resources:

 ranges = <0x01000000 0 0x00000000 0x43000000 0 0x00010000   /* downstream I/O */
           0x02000000 0 0x50000000 0x50000000 0 0x10000000   /* non-prefetchable memory */
           0x42000000 0 0x60000000 0x60000000 0 0x10000000>; /* prefetchable memory */

The existing code achieves this by shifting the CPU address and writing 0x5 to
PCI_IMAP(1) and 0x6 >> 28 to PCI_IMAP(2). This value represents the top 4 bits of
the outgoing PCI address, with the remainder of the bits as written to the AHB
window. The hardware has three windows at 0x44000000, 0x50000000 and 0x60000000
which relate to PCI_IMAP0, 1 and 2 respectively.

Therefore the existing code creates an effective 1:1 mapping as follows:

CPU 0x50000000 => PCI 0x50000000
CPU 0x60000000 => PCI 0x60000000

If we were to instead write 0x5 to PCI_IMAP(0) and 0x6 to PCI_IMAP(1), as per
this patch - then we end up with an effective broken mapping of:

CPU 0x50000000 => PCI 0x60000000
CPU 0x60000000 => PCI unset

Therefore I'd suggest we preserve the existing numbering and change mem back to
1.

More information about the hardware can be foud here:

http://arminfo.emea.arm.com/help/index.jsp?topic=/com.arm.doc.dui0224i/Bbajjbce.html

Thanks,

Andrew Murray

> 
> thanks
> -- PMM

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
