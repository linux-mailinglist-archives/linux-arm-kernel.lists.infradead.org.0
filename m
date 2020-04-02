Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9293319CA62
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 21:43:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=MxLMocEuAIMJRqUpfyLvtLYjSoQFfSTYPpc93hjhfvw=; b=bsUJcyiicUSNrJ
	JFDXe0A8TnikeEzO93SRnPEDmDM8iFIQluhZa4i/STpUNP+elf7kEehdUVllNYEn2Og9Es6LVHZBr
	cZer6skNrEasg9n4D78bXkssmQuiBwHBLPNNT79z6xYnKYNcyJVXAS4FDXsWsxMACNx27wLujVzUg
	wH3HUgpBNo0sG1+UQOLQNlRlKsD7NVnD8GkUwERU9eU8X2oUN6Sq6B3PF4FFGF45aKbCN/bzdpQL5
	4puZ4mKNUFUaM3Z3vjGYQ5mgKwyOcMPVxmMnOjEv9DgmBQbpK8zYLpGwVSx69ktXmHllFQuAlcvId
	Rk56aZLrl3ENZm1SkLjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK5kC-0002fE-A1; Thu, 02 Apr 2020 19:43:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK5hB-0007Ds-Nx; Thu, 02 Apr 2020 19:40:16 +0000
Received: from localhost (mobile-166-170-223-166.mycingular.net
 [166.170.223.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E83F0206F8;
 Thu,  2 Apr 2020 19:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585856408;
 bh=pverSPU32ehzvi/6uILs11ZGZuyU/iubPLzeloiCKC0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=s8H6rbB+0cPjjF5RR95Zz0MFmgQ/FSphxeIxljYSsXH5VvAYsqo0yX2qnPYhqXbui
 JwdQvYu/tBhNTZYcqXPlyY1s4LxRkbNqjq4SM+omvnmst0p29AD9e3zm1pmDacaTK5
 A14Caex2L5sCS6AcEIbHuuLcn2lVDwteMVY0adsc=
Date: Thu, 2 Apr 2020 14:40:05 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 2/4] firmware: raspberrypi: Introduce vl805 init routine
Message-ID: <20200402194005.GA35725@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88456b80396331814fca9c929c2129861aaa35bd.camel@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_124009_995480_4FCDC91A 
X-CRM114-Status: GOOD (  19.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, sergei.shtylyov@cogentembedded.com,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-usb@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 01:32:35PM +0200, Nicolas Saenz Julienne wrote:
> On Wed, 2020-04-01 at 15:37 -0500, Bjorn Helgaas wrote:
> > On Tue, Mar 24, 2020 at 07:28:10PM +0100, Nicolas Saenz Julienne wrote:
> > > On the Raspberry Pi 4, after a PCI reset, VL805's firmware may
> > > either be loaded directly from an EEPROM or, if not present, by
> > > the SoC's VideCore. The function informs VideCore that VL805 was
> > > just reset, or requests for a probe defer.

Is VL805 the XHCI USB device?  A hint here would help non-RPi experts
know how this fits into the topology.

> > > Based on Tim Gover's downstream implementation.
> >
> > Maybe a URL?
> 
> I was under the impression that adding links in the commit log that
> are likely to be short-lived was frowned upon. That said I could've
> added it into the cover letter. For reference here it is:
> 
> https://github.com/raspberrypi/linux/commit/9935b4c7e360b4494b4cb6e3ce797238a1ab78bd

I think your impression is correct.  If this was posted to a mailing
list archived on lore.kernel.org, a link to the cover letter would be
ideal.

> To pass messages down the mailbox, you call rpi_firmware_property(),
> which takes care of contention, formating and DMA issues, before
> passing it into the actual mailbox interface and beyond.

OK.  The "rpi_firmware_property" name doesn't give much of a hint that
it is sending messages.  It sounds like it might be a lookup function.
But that's an existing thing, not something you're changing here.

> > > + */
> > > +int rpi_firmware_init_vl805(struct pci_dev *pdev)
> > > +{
> > > +	struct device_node *fw_np;
> > > +	struct rpi_firmware *fw;
> > > +	u32 dev_addr;
> > > +	int ret;
> > > +
> > > +	fw_np = of_find_compatible_node(NULL, NULL,
> > > +					"raspberrypi,bcm2835-firmware");
> > > +	if (!fw_np)
> > > +		return 0;
> > > +
> > > +	fw = rpi_firmware_get(fw_np);
> > > +	of_node_put(fw_np);
> > > +	if (!fw)
> > > +		return -EPROBE_DEFER;
> > > +
> > > +	dev_addr = pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
> > > +		   PCI_FUNC(pdev->devfn) << 12;
> > > +
> > > +	ret = rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
> > > +				    &dev_addr, sizeof(dev_addr));
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	dev_dbg(&pdev->dev, "loaded Raspberry Pi's VL805 firmware\n");
> > > +
> > > +	return 0;
> > > +}
> > > +EXPORT_SYMBOL_GPL(rpi_firmware_init_vl805);
> > > +
> > >  static const struct of_device_id rpi_firmware_of_match[] = {
> > >  	{ .compatible = "raspberrypi,bcm2835-firmware", },
> > >  	{},
> 
> [...]
> 
> Regards,
> Nicolas
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
