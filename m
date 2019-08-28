Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 111AB9F7D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 03:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6i5Xz8cpdLoCBBxUE79w2srrTAFUEmEiQQvKWVl3e3Q=; b=hcGqszb4XIsc8O
	PQYY5Rb0BnlxThPzZYF402X7adkK3cwsSVqm2tXtNSZ3+ckSBKMRdGvRFaGmMbcltuCWrdSjpg9+x
	VAdXFrylc7Y7kNF7H2kX3C6inTl6GUu/HFtC61sUMHF1qr8XlIa8q/lxTUKIN4vdzJBEBTsUpc3HH
	BVI5k0PFVJmD3dgxeYz108UiWpT1AVWDRDki7HjXgFAHxWfcnnOETOmAfHgyB1EvrQXBOeV97eR4X
	hGtKRzC48itAYPAMTF4yvgGPvbhIgPFRKJKUmwK4iU0IrVGfn1lNNrsSykdgAsGUsh2JQs5cHrxXR
	gdlzVCen+8xhrPcOkyXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2mll-0006BL-Pl; Wed, 28 Aug 2019 01:29:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2mlE-0006Au-OF; Wed, 28 Aug 2019 01:28:34 +0000
X-UUID: e4c7103cfdce4f87bcd3c47496ae02d3-20190827
X-UUID: e4c7103cfdce4f87bcd3c47496ae02d3-20190827
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1211277978; Tue, 27 Aug 2019 17:28:28 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 18:28:26 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 28 Aug 2019 09:28:24 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 09:28:23 +0800
Message-ID: <1566955695.7317.17.camel@mhfsdcap03>
Subject: Re: [PATCH next v10 03/11] dt-bindings: usb: add binding for USB
 GPIO based connection detection driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 28 Aug 2019 09:28:15 +0800
In-Reply-To: <20190827183154.GA10374@bogus>
References: <1566547041-20804-1-git-send-email-chunfeng.yun@mediatek.com>
 <1566547041-20804-4-git-send-email-chunfeng.yun@mediatek.com>
 <20190827183154.GA10374@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 259D35EFF30C0616C1A211BC45937CDECB94215148384FD745984477FEA65A402000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_182832_796198_D36696C3 
X-CRM114-Status: GOOD (  23.67  )
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, Nagarjuna Kristam <nkristam@nvidia.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 13:31 -0500, Rob Herring wrote:
> On Fri, Aug 23, 2019 at 03:57:13PM +0800, Chunfeng Yun wrote:
> > It's used to support dual role switch via GPIO when use Type-B
> > receptacle, typically the USB ID pin is connected to an input
> > GPIO, and also used to enable/disable device when the USB Vbus
> > pin is connected to an input GPIO.
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v9~v10 no changes
> > 
> > v8 changes:
> >  1. rename the title
> >  2. change the compatible as "linux,usb-conn-gpio" instead of
> >     "linux,typeb-conn-gpio"
> 
> I don't think that is an improvement. How about 'gpio-usb-b-connector' 
> to be consistent.
Ok

> 
> > 
> > v7 changes:
> >  1. add description for device only mode
> > 
> > v6 changes:
> >  1. remove status and port nodes in example
> >  2. make vbus-supply as optional property
> > 
> > v5 changes:
> >  1. treat type-B connector as child device of USB controller's, but not
> >     as a separate virtual device, suggested by Rob
> >  2. put connector's port node under connector node, suggested by Rob
> > 
> > v4 no changes
> > 
> > v3 changes:
> >  1. treat type-B connector as a virtual device, but not child device of
> >     USB controller's
> > 
> > v2 changes:
> >   1. new patch to make binding clear suggested by Hans
> > ---
> >  .../devicetree/bindings/usb/usb-conn-gpio.txt | 31 +++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> > new file mode 100644
> > index 000000000000..d4d107fedc22
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/usb-conn-gpio.txt
> > @@ -0,0 +1,31 @@
> > +USB GPIO Based Connection Detection
> > +
> > +This is typically used to switch dual role mode from the USB ID pin connected
> > +to an input GPIO, and also used to enable/disable device mode from the USB
> > +Vbus pin connected to an input GPIO.
> > +
> > +Required properties:
> > +- compatible : should include "linux,usb-conn-gpio" and "usb-b-connector".
> > +- id-gpios, vbus-gpios : input gpios, either one of them must be present,
> > +	and both can be present as well.
> > +	see connector/usb-connector.txt
> > +
> > +Optional properties:
> > +- vbus-supply : can be present if needed when supports dual role mode.
> > +	see connector/usb-connector.txt
> > +
> > +- Sub-nodes:
> > +	- port : can be present.
> > +		see graph.txt
> > +
> > +Example:
> > +
> > +&mtu3 {
> > +	connector {
> > +		compatible = "linux,usb-conn-gpio", "usb-b-connector";
> > +		label = "micro-USB";
> 
> 'label' is for a human identifying a particular connector when there are 
> multiple (of the same type). So not a great example here.
Got it, will remove it

Thanks a lot
> 
> > +		type = "micro";
> > +		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
> > +		vbus-supply = <&usb_p0_vbus>;
> > +	};
> > +};
> > -- 
> > 2.23.0
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
