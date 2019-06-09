Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB3F3ABF3
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 23:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnqJ0kLPaPbYqLIDHFHjkx7ChZ0eWmy3JyUD38Cpqog=; b=mWk7L73IQdHugs
	ypsMeycCHLEmriXns0JS/IyojUKusYAGT9wTBeRGR/HeW9W1rIhDbOZu6h3htYA/qxUro5ZvX1pnZ
	MSw+Xr4fd6mAGc/SEhVKuapzQ6MYnn0xs0U6ZL9N26TWdHC3WT238ONOsINveru1TMhqn3dhfpVWE
	f7zYqvBbeAIu2gugCox0cxfUL+MRntge15khVB8kSHBQac9eoQx1Egpy52mB+tPdDkuBw5F3BCmge
	R+k0+eF4oxVL6Csa3YXSfO2YkfJnCn0zsw9S2KVxN+Lgc14qqItQOiThZsuu9l61r+9fpP/qvkCgZ
	uW86brBcAgksoUApbQeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha55K-0001nW-Kq; Sun, 09 Jun 2019 21:10:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha55D-0001nC-8W
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 21:10:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCBC7206BB;
 Sun,  9 Jun 2019 21:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560114629;
 bh=lvVVeecCiI6euXZs7+7PX8ChQOT7VlQhyz/VR+3FK5k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yXim0t1zlSwmiV2eBumsQkrIYpbnDX5mYt/SgCDQxTcXOVHSPObkQQSyrlvXnjExG
 urv2S9tdXXyu4RWLWkAg01p6F3QuCTWI+H8mZjCAy906pZAt2GL+BONo3UfJmYkM6x
 9W9RYtchmg9C5LPxz6L3wh7KEGjcUqLC+GaV2Oys=
Date: Sun, 9 Jun 2019 23:10:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dragan Cvetic <draganc@xilinx.com>
Subject: Re: [PATCH V5 02/11] misc: xilinx-sdfec: add core driver
Message-ID: <20190609211026.GA9859@kroah.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
 <1560038656-380620-3-git-send-email-dragan.cvetic@xilinx.com>
 <20190609112235.GA16574@kroah.com>
 <CH2PR02MB6359778016A4BDCBD29EA275CB120@CH2PR02MB6359.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB6359778016A4BDCBD29EA275CB120@CH2PR02MB6359.namprd02.prod.outlook.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_141031_341811_4A9E557B 
X-CRM114-Status: GOOD (  27.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Michal Simek <michals@xilinx.com>,
 Derek Kiernan <dkiernan@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 09, 2019 at 06:48:31PM +0000, Dragan Cvetic wrote:
> 
> 
> > -----Original Message-----
> > From: Greg KH [mailto:gregkh@linuxfoundation.org]
> > Sent: Sunday 9 June 2019 12:23
> > To: Dragan Cvetic <draganc@xilinx.com>
> > Cc: arnd@arndb.de; Michal Simek <michals@xilinx.com>; linux-arm-kernel@lists.infradead.org; robh+dt@kernel.org;
> > mark.rutland@arm.com; devicetree@vger.kernel.org; linux-kernel@vger.kernel.org; Derek Kiernan <dkiernan@xilinx.com>
> > Subject: Re: [PATCH V5 02/11] misc: xilinx-sdfec: add core driver
> > 
> > On Sun, Jun 09, 2019 at 01:04:07AM +0100, Dragan Cvetic wrote:
> > > Implement a platform driver that matches with xlnx,
> > > sd-fec-1.1 device tree node and registers as a character
> > > device, including:
> > > - SD-FEC driver binds to sdfec DT node.
> > > - creates and initialise an initial driver dev structure.
> > > - add the driver in Linux build and Kconfig.
> > >
> > > Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > > Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
> > > Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
> > > ---
> > >  drivers/misc/Kconfig        |  12 +++++
> > >  drivers/misc/Makefile       |   1 +
> > >  drivers/misc/xilinx_sdfec.c | 118 ++++++++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 131 insertions(+)
> > >  create mode 100644 drivers/misc/xilinx_sdfec.c
> > >
> > > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > > index 6b0417b..319a6bf 100644
> > > --- a/drivers/misc/Kconfig
> > > +++ b/drivers/misc/Kconfig
> > > @@ -471,6 +471,18 @@ config PCI_ENDPOINT_TEST
> > >             Enable this configuration option to enable the host side test driver
> > >             for PCI Endpoint.
> > >
> > > +config XILINX_SDFEC
> > > +	tristate "Xilinx SDFEC 16"
> > > +	help
> > > +	  This option enables support for the Xilinx SDFEC (Soft Decision
> > > +	  Forward Error Correction) driver. This enables a char driver
> > > +	  for the SDFEC.
> > > +
> > > +	  You may select this driver if your design instantiates the
> > > +	  SDFEC(16nm) hardened block. To compile this as a module choose M.
> > > +
> > > +	  If unsure, say N.
> > > +
> > >  config MISC_RTSX
> > >  	tristate
> > >  	default MISC_RTSX_PCI || MISC_RTSX_USB
> > > diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
> > > index b9affcd..0cb3546 100644
> > > --- a/drivers/misc/Makefile
> > > +++ b/drivers/misc/Makefile
> > > @@ -59,3 +59,4 @@ obj-$(CONFIG_OCXL)		+= ocxl/
> > >  obj-y				+= cardreader/
> > >  obj-$(CONFIG_PVPANIC)   	+= pvpanic.o
> > >  obj-$(CONFIG_HABANA_AI)		+= habanalabs/
> > > +obj-$(CONFIG_XILINX_SDFEC)	+= xilinx_sdfec.o
> > > diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
> > > new file mode 100644
> > > index 0000000..75cc980
> > > --- /dev/null
> > > +++ b/drivers/misc/xilinx_sdfec.c
> > > @@ -0,0 +1,118 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Xilinx SDFEC
> > > + *
> > > + * Copyright (C) 2019 Xilinx, Inc.
> > > + *
> > > + * Description:
> > > + * This driver is developed for SDFEC16 (Soft Decision FEC 16nm)
> > > + * IP. It exposes a char device which supports file operations
> > > + * like  open(), close() and ioctl().
> > > + */
> > > +
> > > +#include <linux/miscdevice.h>
> > > +#include <linux/io.h>
> > > +#include <linux/interrupt.h>
> > > +#include <linux/kernel.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of_platform.h>
> > > +#include <linux/poll.h>
> > > +#include <linux/slab.h>
> > > +#include <linux/clk.h>
> > > +
> > > +static int xsdfec_ndevs;
> > 
> > You should use an idr for this, not just a number you bump up and down.
> > This will not work properly at all.
> > 
> > Think about this situation:
> > 	probe device 0
> > 	xsdfec_ndevs = 1
> > 	probe device 1
> > 	xsdfec_ndevs = 2
> > 	remove device 0
> > 	xsdfec_ndevs = 0
> > 	probe another device
> > 	misc device fails due to duplicate name.
> >
> 
> My bad.
> I can use idr, but couldn't be better optimized code if use simple mutex to protect the variable.

mutex does not protect from this at all, it's a logic bug.  Think about
adding 5 devices and then removing the 2nd one.  What is the number
assigned to the new device that is added afterward?

And you need a mutex for the idr anyway, if you are touching it in a non
probe/release callback way (those are already serialized by the bus
lock).

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
