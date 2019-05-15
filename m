Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7721EB14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYiKJFJwlDcgcVtSO/Ef+X8hU64FfitfnYdEMF+KFaE=; b=qj/g/Owohy0QJz
	LY4tebA+d18JNvA8smLc1fTFi2Qyt+YOOibFxyMg195xJWKShDp1f27NlWakxDVnD8c+i3upg4aUW
	1fC4X+Qeg00StoM2VaVFxVgJhhyO5sM2zHNNXRKmYF1g+YSRQtg/HPx6QT/3+upJW6eff2KKFriER
	BKtX6SxYB/pJkNRg654KmXs6R2jdxLR5aK7ujfvrB733XVtIAa6R3n6JtGuojr7p+ETFTWxvjLold
	ZXw/79rnEWFN3Ua7kgeurKw020R+t1CI9kSb9jV+U67zcdrVZe/tmTtLEtTzuqWRlE/eH7DkX34Gx
	IUL5PFdHtStzyEWDfUyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqLj-00064C-FF; Wed, 15 May 2019 09:37:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqLA-0005Uv-El; Wed, 15 May 2019 09:36:49 +0000
X-UUID: 352b765b1b3d4c88b4ce7b91ee37f126-20190515
X-UUID: 352b765b1b3d4c88b4ce7b91ee37f126-20190515
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2146501918; Wed, 15 May 2019 01:36:38 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 02:36:36 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 15 May 2019 17:36:34 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 May 2019 17:36:33 +0800
Message-ID: <1557912993.10179.306.camel@mhfsdcap03>
Subject: Re: [PATCH v5 2/6] dt-bindings: usb: add binding for Type-B GPIO
 connector driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 15 May 2019 17:36:33 +0800
In-Reply-To: <20190514181204.GA13949@bogus>
References: <1557823643-8616-1-git-send-email-chunfeng.yun@mediatek.com>
 <1557823643-8616-3-git-send-email-chunfeng.yun@mediatek.com>
 <20190514181204.GA13949@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_023648_492009_3D8AF540 
X-CRM114-Status: GOOD (  27.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-05-14 at 13:12 -0500, Rob Herring wrote:
> On Tue, May 14, 2019 at 04:47:19PM +0800, Chunfeng Yun wrote:
> > It's used to support dual role switch via GPIO when use Type-B
> > receptacle, typically the USB ID pin is connected to an input
> > GPIO pin
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
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
> >  .../bindings/usb/typeb-conn-gpio.txt          | 42 +++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt b/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> > new file mode 100644
> > index 000000000000..20dd3499a348
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/usb/typeb-conn-gpio.txt
> > @@ -0,0 +1,42 @@
> > +USB Type-B GPIO Connector
> > +
> > +This is used to switch dual role mode from the USB ID pin connected to
> > +an input GPIO pin.
> > +
> > +Required properties:
> > +- compatible : should include "linux,typeb-conn-gpio" and "usb-b-connector".
> 
> I don't think we need "linux,typeb-conn-gpio". 
Not all usb-b-connector child node need bind this driver, by adding the
new compatible can avoid unnecessary binding.

> A driver can decide to 
> handle GPIO lines if they present
Yes, the driver, e.g. USB controller driver can do it, but here I want
to provide a common driver to handle this special case, like
extcon-usb-gpio driver does, and try to keep transparency from USB
controller driver. 

>  or we assume the parent device handles 
> ID and/or Vbus if they are not present.
Yes, it will
> 
> > +- id-gpios, vbus-gpios : either one of them must be present, and both
> > +	can be present as well.
> 
> Please clarify that vbus-gpios is an input to sense Vbus presence as an 
> output it should be modelled as a regulator only.
Ok, will add more description.
> 
> These should be added to usb-connector.txt.
Already add them in [1/6].
> 
> The result of all this is you don't need this file. Just additions to 
> usb-connector.txt.
Here add more constrains for id-gpios and vbus-gpios, at least one
should be present, although they are both optional, this is not true for
some cases, so not suitable to add into usb-connector.txt.
> 
> > +- vbus-supply : can be present if needed when supports dual role mode or
> > +	host mode.
> > +	see connector/usb-connector.txt
> > +
> > +Sub-nodes:
> > +- port : should be present.
> > +	see graph.txt
> > +
> > +Example:
> > +
> > +&mtu3 {
> > +	status = "okay";
> 
> Don't show status in examples.
Ok, will drop it.
> 
> > +
> > +	connector {
> > +		compatible = "linux,typeb-conn-gpio", "usb-b-connector";
> > +		label = "micro-USB";
> > +		type = "micro";
> > +		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
> > +		vbus-supply = <&usb_p0_vbus>;
> > +
> > +		port {
> > +			bconn_ep: endpoint@0 {
> > +				remote-endpoint = <&usb_role_sw>;
> > +			};
> > +		};
> > +	};
> > +
> > +	port {
> > +		usb_role_sw: endpoint@0 {
> > +			remote-endpoint = <&bconn_ep>;
> > +		};
> > +	};
> 
> When the host controller is the parent of the connector, you don't need 
> the graph unless you're describing the alternate modes in Type-C.
Ok, got it.

Thanks a lot.

> 
> > +};
> > -- 
> > 2.21.0
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
