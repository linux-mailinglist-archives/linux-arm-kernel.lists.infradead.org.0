Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606B452748
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FM4q6k1Z+1VNXlGMoBs2E4XakcbkMC6IKI6fPnT41UY=; b=cqJukzzpdebq7W
	hiKXUauedF4MskwPp3UHgiAbgbmPHffc4ye4WbINotUBvSHH4gfWNfdW/ez3gt+OKQVSnnsoMxior
	eaQL4Q1LBdHapjeBkmp+0XyPj8EYzbySJ+dR1b+mFjVV8kJvvfo1CcGmdmEXuJGayMWabJ+EGW99E
	C6/xwqmCgYuYXtVuRgGp872taNqT4jduLyVMJdeZOinVC8AhNGSDFtjkMXOiS+6AUm3tUlHb14MTJ
	qP496CVrrjjMEdH9Q4t5m6XDqZtbMtJ5rluATeQ3NDH8EmfMo14m3hT1aGGNdR1v0Ed7WWzHaNQv8
	ZeaD+EfQEkxKWvsp3iQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhGG-00019j-NO; Tue, 25 Jun 2019 08:57:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhFP-0000jQ-0K; Tue, 25 Jun 2019 08:56:16 +0000
X-UUID: 5da05a3a0cc0402983e13d456144f85e-20190625
X-UUID: 5da05a3a0cc0402983e13d456144f85e-20190625
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 281697124; Tue, 25 Jun 2019 00:55:55 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Jun 2019 01:55:52 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 25 Jun 2019 16:55:48 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 25 Jun 2019 16:55:47 +0800
Message-ID: <1561452947.32589.25.camel@mhfsdcap03>
Subject: Re: [PATCH v7 09/10] usb: roles: add USB Type-B GPIO connector driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Tue, 25 Jun 2019 16:55:47 +0800
In-Reply-To: <20190624095827.GA6501@kuha.fi.intel.com>
References: <1560242680-23844-1-git-send-email-chunfeng.yun@mediatek.com>
 <1560242680-23844-10-git-send-email-chunfeng.yun@mediatek.com>
 <20190624095827.GA6501@kuha.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_015615_106107_FBE832FF 
X-CRM114-Status: GOOD (  29.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, Nagarjuna Kristam <nkristam@nvidia.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Heikki,

On Mon, 2019-06-24 at 12:58 +0300, Heikki Krogerus wrote:
> Hi Chunfeng,
> 
> On Tue, Jun 11, 2019 at 04:44:39PM +0800, Chunfeng Yun wrote:
> > Due to the requirement of usb-connector.txt binding, the old way
> > using extcon to support USB Dual-Role switch is now deprecated
> > when use Type-B connector.
> > This patch introduces a driver of Type-B connector which typically
> > uses an input GPIO to detect USB ID pin, and try to replace the
> > function provided by extcon-usb-gpio driver
> 
> I'm sorry for asking this so late, but why is this driver a Type-B
> specific driver (I really thought somebody had already asked this
> question)?
It's mainly used for Type-B connector with ID pin. 

> 
> I don't see anything Type-B specific in the driver. 
It's need add another compatible "usb-b-connector" except the driver
provided.

> Basically it looks
> to me like just a gpio based connection detection driver that would
> work fine with for example uAB connectors..
Yes, it is.
> 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > Tested-by: Nagarjuna Kristam <nkristam@nvidia.com>
> > ---
> > v7 changes:
> >   1. remove macro DEV_PMS_OPS suggested by Andy
> >   2. add tested-by Nagarjuna
> > 
> > v6 changes:
> >   1. get usb-role-swtich by usb_role_switch_get()
> > 
> > v5 changes:
> >   1. put usb_role_switch when error happens suggested by Biju
> >   2. don't treat bype-B connector as a virtual device suggested by Rob
> > 
> > v4 changes:
> >   1. remove linux/gpio.h suggested by Linus
> >   2. put node when error happens
> > 
> > v3 changes:
> >   1. treat bype-B connector as a virtual device;
> >   2. change file name again
> > 
> > v2 changes:
> >   1. file name is changed
> >   2. use new compatible
> > ---
> >  drivers/usb/roles/Kconfig           |  11 ++
> >  drivers/usb/roles/Makefile          |   1 +
> >  drivers/usb/roles/typeb-conn-gpio.c | 284 ++++++++++++++++++++++++++++
> 
> ..It also drives me crazy that you've put this driver under this
> folder. It does not create a role switch so ideally it should not go
> under driver/usb/roles/. 
agree:)

> I think a better place for it would be
> drivers/usb/misc/, or actually, maybe it should go under
> drivers/usb/common/?
I'm not sure, but prefer misc/ folder.

Hi Greg, 

would you please give me some suggestions about this?  which folder I
should put the driver into?

> 
> Could you still rename the driver to something like "usb-gpio.c" or
> conn-gpio.c,
I think about the name for a long time before, and have some doubt
whether it's suitable to add typeb into the name.
How about using usb-conn-gpio.c or conn-usb-gpio.c?

Thanks a lot

>  or something else, and also move it under
> drivers/usb/misc/ or drivers/usb/common/?
> 
> >  3 files changed, 296 insertions(+)
> >  create mode 100644 drivers/usb/roles/typeb-conn-gpio.c
> > 
> > diff --git a/drivers/usb/roles/Kconfig b/drivers/usb/roles/Kconfig
> > index f8b31aa67526..d1156e18a81a 100644
> > --- a/drivers/usb/roles/Kconfig
> > +++ b/drivers/usb/roles/Kconfig
> > @@ -26,4 +26,15 @@ config USB_ROLES_INTEL_XHCI
> >  	  To compile the driver as a module, choose M here: the module will
> >  	  be called intel-xhci-usb-role-switch.
> >  
> > +config TYPEB_CONN_GPIO
> > +	tristate "USB Type-B GPIO Connector"
> 
> USB GPIO connection detection driver?
> 
> > +	depends on GPIOLIB
> > +	help
> > +	  The driver supports USB role switch between host and device via GPIO
> > +	  based USB cable detection, used typically if an input GPIO is used
> > +	  to detect USB ID pin.
> > +
> > +	  To compile the driver as a module, choose M here: the module will
> > +	  be called typeb-conn-gpio.ko
> > +
> >  endif # USB_ROLE_SWITCH
> > diff --git a/drivers/usb/roles/Makefile b/drivers/usb/roles/Makefile
> > index 757a7d2797eb..5d5620d9d113 100644
> > --- a/drivers/usb/roles/Makefile
> > +++ b/drivers/usb/roles/Makefile
> > @@ -3,3 +3,4 @@
> >  obj-$(CONFIG_USB_ROLE_SWITCH)		+= roles.o
> >  roles-y					:= class.o
> >  obj-$(CONFIG_USB_ROLES_INTEL_XHCI)	+= intel-xhci-usb-role-switch.o
> > +obj-$(CONFIG_TYPEB_CONN_GPIO)		+= typeb-conn-gpio.o
> > diff --git a/drivers/usb/roles/typeb-conn-gpio.c b/drivers/usb/roles/typeb-conn-gpio.c
> > new file mode 100644
> > index 000000000000..e3fba1656069
> > --- /dev/null
> > +++ b/drivers/usb/roles/typeb-conn-gpio.c
> > @@ -0,0 +1,284 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
