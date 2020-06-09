Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C0A21F3A49
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ooV27VWFDQeMaFZvlCCuEXPpkZWJ3Dcsls+NeFTNMfY=; b=aystHxU+zie6Nm
	a0etQeR/L/gOBWOvOJ8l15aI1P7ydEwQlrXkbAcO2PhItjv20flmwwiSj33ASlud4vMWcr/CL1ZA6
	PDkOndF82l61ypJm+V/KjUvUkIPNno7CsgHv0bkv7jBp6D08c8V/eB4ciddMDfX3fNi8PWBSY9pSy
	Yp22P/lFOT45gnhD9fmPSnSTwd4/j2CB9iuQ+3GRXHt1CBIoR7ItUXVcmFkSgkq5j6xr0QHH7ju65
	ndWlJ37xQ67pusaKao3yZ3ljWk5pgJnfLLyv2dE0ZiAQIEovEJeixF/p8K5IC/VXCmiphaRao42/V
	RoLlft8E9t8EiWBZsY0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicvV-0007MK-Dq; Tue, 09 Jun 2020 12:00:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicvM-0006go-Aa
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 12:00:14 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jicvD-0006J2-Ev; Tue, 09 Jun 2020 14:00:03 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jicv9-00033i-Mm; Tue, 09 Jun 2020 13:59:59 +0200
Message-ID: <73fdeca7b651252f7907635e97f9f9b31e702868.camel@pengutronix.de>
Subject: Re: [PATCH 5/9] usb: xhci-pci: Add support for reset controllers
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Florian Fainelli
 <f.fainelli@gmail.com>, gregkh@linuxfoundation.org, wahrenst@gmx.net, 
 robh@kernel.org, mathias.nyman@linux.intel.com, Eric Anholt
 <eric@anholt.net>,  bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org, Mathias Nyman
 <mathias.nyman@intel.com>
Date: Tue, 09 Jun 2020 13:59:59 +0200
In-Reply-To: <382b81937757de570a83ba4ff9276221c0bba547.camel@suse.de>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
 <20200608192701.18355-6-nsaenzjulienne@suse.de>
 <5d3200cc-17cc-026f-1dfe-c10ec949f9ad@gmail.com>
 <382b81937757de570a83ba4ff9276221c0bba547.camel@suse.de>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_050012_394056_B2880A19 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: lorenzo.pieralisi@arm.com, helgaas@kernel.org, linux-kernel@vger.kernel.org,
 tim.gover@raspberrypi.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On Tue, 2020-06-09 at 13:18 +0200, Nicolas Saenz Julienne wrote:
> Hi Florian, thanks for the reviews!
> 
> On Mon, 2020-06-08 at 12:43 -0700, Florian Fainelli wrote:
> > On 6/8/2020 12:26 PM, Nicolas Saenz Julienne wrote:
> > > Some atypical users of xhci-pci might need to manually reset their xHCI
> > > controller before starting the HCD setup. Check if a reset controller
> > > device is available to the PCI bus and trigger a reset.
> > > 
> > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > ---
> > >  drivers/usb/host/xhci-pci.c | 9 +++++++++
> > >  1 file changed, 9 insertions(+)
> > > 
> > > diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
> > > index ef513c2fb843..45f70facdfcd 100644
> > > --- a/drivers/usb/host/xhci-pci.c
> > > +++ b/drivers/usb/host/xhci-pci.c
[...]
> > > @@ -347,6 +349,13 @@ static int xhci_pci_probe(struct pci_dev *dev, const
> > > struct pci_device_id *id)
> > >  			return retval;
> > >  	}
> > >  
> > > +	reset = devm_reset_control_get(&dev->bus->dev, NULL);
> > 
> > Should not this be devm_reset_control_get_optional()?
> 
> Yes, you're right.

Please use devm_reset_control_get_optional_exclusive() while you're at
it.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
