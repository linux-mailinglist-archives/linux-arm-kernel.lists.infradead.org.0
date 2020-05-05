Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD7A1C5FF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 20:20:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xf8zh57pt6SRlOW3RsB6igPtp2LqPvrFP1vyurD5BY8=; b=DwRwR+LKurYC+k
	3sB7u/+U6PeYb4C2ImIcjfEoYtlIhukKBEdapxfvLNjmvs48zZRXcFzTGVK5Hex5T2/TT4LayVlca
	uGeDZe+NJ5cwXvQmHp+9/PPDvnFDM2Y/AyeLM1RnKvRQzEgrKVlDc1pu1DrfUav3M/2E7AyQEgXP4
	s9qWw9PnmpwWpkUsSOt1AJ3oYTYiLRXTuAw7oOMgZKSZNbbyWyGSF+5cXgVWUAwYOIJOZnIjfv5qe
	+DUGOcGm/96b8GSPcmyDk6NqcefATgedYtf5iiyiNMp2lRgWUN49XJKqsIiwZreT9scrpMp86RN4G
	Zt4jHDZrOun5IQ+kz8lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2BX-0007Er-5w; Tue, 05 May 2020 18:20:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2BQ-0007DT-CN
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 18:20:45 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80BBF206CC;
 Tue,  5 May 2020 18:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588702844;
 bh=Osf2+bbLX5ojPeR3tQC6Sz7LiZfQOWyXMbHH9fy+sbg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JRHW7xtkpoTcKO2iDm5MYyyHAfBRd3zGZaOmmKJJUlbUO2LfDpD1RqJ+xQrPsPgfs
 OiW/t5pwpnasu3xt7bF4jSWSlH2a8LE2gQrkD66tWGWuaDnh7ZPZKzPjBqHM9k1jls
 EmoPIqVXs4scU3njKLlP5L+oDZhgSgy+JQGDAPic=
Date: Tue, 5 May 2020 20:20:41 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3 2/5] bus: stm32: Introduce firewall controller helpers
Message-ID: <20200505182041.GB1216826@kroah.com>
References: <20200505073308.22914-1-benjamin.gaignard@st.com>
 <20200505073308.22914-3-benjamin.gaignard@st.com>
 <20200505144013.GB838641@kroah.com>
 <3f15fefa-b70f-5d20-c19b-3c42140a104c@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f15fefa-b70f-5d20-c19b-3c42140a104c@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_112044_464150_F9A945F5 
X-CRM114-Status: GOOD (  25.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 Loic PALLARDY <loic.pallardy@st.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 03:00:53PM +0000, Benjamin GAIGNARD wrote:
> 
> 
> On 5/5/20 4:40 PM, Greg KH wrote:
> > On Tue, May 05, 2020 at 09:33:05AM +0200, Benjamin Gaignard wrote:
> >> The goal of these helpers are to offer an interface for the
> >> hardware blocks controlling bus accesses rights.
> >>
> >> Bus firewall controllers are typically used to control if a
> >> hardware block can perform read or write operations on bus.
> >>
> >> Smarter firewall controllers could be able to define accesses
> >> rights per hardware blocks to control where they can read
> >> or write.
> >>
> >> Firewall controller configurations are provided in device node,
> >> parsed by the helpers and send to the driver to apply them.
> >> Each controller may need different number and type of inputs
> >> to configure the firewall so device-tree properties size have to
> >> be define by using "#firewall-cells".
> >> Firewall configurations properties have to be named "firewall-X"
> >> on device node.
> >> "firewall-names" keyword can also be used to give a name to
> >> a specific configuration.
> >>
> >> Example of device-tree:
> >> ctrl0: firewall@0 {
> >> 	#firewall-cells = <2>;
> >>        };
> >>
> >> foo: foo@0 {
> >> 	firewall-names = "default", "setting1";
> >> 	firewall-0 = <&ctrl0 1 2>;
> >> 	firewall-1 = <&ctrl0 3 4>;
> >> };
> >>
> >> Configurations could be applied with functions like
> >> firewall_set_config_by_index() or firewall_set_config_by_name().
> >>
> >> firewall_set_default_config() function will apply the
> >> configuration named "default" (if existing) or the configuration
> >> with index 0 (i.e. firewall-0).
> >>
> >> Drivers could register/unregister themselves be calling
> >> firewall_register/firewall_unregister functions.
> >>
> >> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> >> ---
> >>   drivers/bus/Kconfig          |   2 +
> >>   drivers/bus/Makefile         |   2 +
> >>   drivers/bus/stm32/Kconfig    |   3 +
> >>   drivers/bus/stm32/Makefile   |   1 +
> >>   drivers/bus/stm32/firewall.c | 266 +++++++++++++++++++++++++++++++++++++++++++
> >>   drivers/bus/stm32/firewall.h |  75 ++++++++++++
> >>   6 files changed, 349 insertions(+)
> >>   create mode 100644 drivers/bus/stm32/Kconfig
> >>   create mode 100644 drivers/bus/stm32/Makefile
> >>   create mode 100644 drivers/bus/stm32/firewall.c
> >>   create mode 100644 drivers/bus/stm32/firewall.h
> >>
> >> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> >> index 6d4e4497b59b..843b356322d9 100644
> >> --- a/drivers/bus/Kconfig
> >> +++ b/drivers/bus/Kconfig
> >> @@ -203,4 +203,6 @@ config DA8XX_MSTPRI
> >>   source "drivers/bus/fsl-mc/Kconfig"
> >>   source "drivers/bus/mhi/Kconfig"
> >>   
> >> +source "drivers/bus/stm32/Kconfig"
> >> +
> >>   endmenu
> >> diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
> >> index 05f32cd694a4..5e0e34b10235 100644
> >> --- a/drivers/bus/Makefile
> >> +++ b/drivers/bus/Makefile
> >> @@ -37,3 +37,5 @@ obj-$(CONFIG_DA8XX_MSTPRI)	+= da8xx-mstpri.o
> >>   
> >>   # MHI
> >>   obj-$(CONFIG_MHI_BUS)		+= mhi/
> >> +
> >> +obj-$(CONFIG_MACH_STM32MP157) 	+= stm32/
> >> \ No newline at end of file
> >> diff --git a/drivers/bus/stm32/Kconfig b/drivers/bus/stm32/Kconfig
> >> new file mode 100644
> >> index 000000000000..57221e833e2d
> >> --- /dev/null
> >> +++ b/drivers/bus/stm32/Kconfig
> >> @@ -0,0 +1,3 @@
> >> +config FIREWALL_CONTROLLERS
> >> +	bool "Support of bus firewall controllers"
> >> +	depends on OF
> >> diff --git a/drivers/bus/stm32/Makefile b/drivers/bus/stm32/Makefile
> >> new file mode 100644
> >> index 000000000000..eb6b978d6450
> >> --- /dev/null
> >> +++ b/drivers/bus/stm32/Makefile
> >> @@ -0,0 +1 @@
> >> +obj-$(CONFIG_FIREWALL_CONTROLLERS) += firewall.o
> >> diff --git a/drivers/bus/stm32/firewall.c b/drivers/bus/stm32/firewall.c
> >> new file mode 100644
> >> index 000000000000..95f716cf926f
> >> --- /dev/null
> >> +++ b/drivers/bus/stm32/firewall.c
> >> @@ -0,0 +1,266 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/*
> >> + * Copyright (C) STMicroelectronics 2020 - All Rights Reserved
> >> + * Author: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
> >> + */
> >> +
> >> +#include <linux/device.h>
> >> +#include <linux/err.h>
> >> +#include <linux/init.h>
> >> +#include <linux/kernel.h>
> >> +#include <linux/list.h>
> >> +#include <linux/of.h>
> >> +#include <linux/slab.h>
> >> +
> >> +#include "firewall.h"
> >> +
> >> +/* Mutex taken to protect firewall_list */
> >> +static DEFINE_MUTEX(firewall_list_mutex);
> >> +
> >> +/* Global list of firewall control devices */
> >> +static LIST_HEAD(firewall_list);
> > Why is that needed?  Why can't you just walk the list of devices on this
> > "bus/class" if you really wanted to?
> >
> > Along those lines, why is this going around the driver model and
> > ignoring it?  Shouldn't this be a bus and you have devices attached to
> > it of the specific type?
> This part of the series is only a a set of common functions and bindings
> that I plan to reuse for futur STM32 SoCs.
> The 'real' bus implementation is in patch 4.

Then you don't need a "fake" list of devices in this patch, do you?  Why
not just create the real bus and then have people use it, otherwise this
sequence of review is really complicated as you must be deleting this
code.  Right?  :)

Do it correct the first time please.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
