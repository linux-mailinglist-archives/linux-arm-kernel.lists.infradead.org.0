Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 096E2B5F1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 14:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pCkelv9gmFeYMyWZA4yAqlP4me5ng8hCsP1T7VXxb7A=; b=k0+qgg+mKyvq6e
	VC5QgK46Ni2dPJ4tFQpslhIlcAeNtVNwRbskpj/YQnqnWZq0O+JX54ffRL4TKmB2YjHSEOuHDl/Bf
	pMY10ZJEayZ71gTQubZvpNmgw9y5fT/6/O2YoaywkrWp0NPKMyGp6CnqZ+HW4e9jsrRwZHgMS2sP2
	LWlDCdZfb1S/fs6pZ9KSKCRXGdqiO3xzmJ/rC11GUm+rf/xipUzcuIvuz0iOEK5/1lmfDN7g6aa7n
	E+slcTW13VqY0vyRb5GL1MDzV4radsu/zh9HQ3VpZAca/NldI59zFQVaG7cQoUIgXYZ9iIo0kMxY+
	Zo8suRuVtJA4bY/HQvAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKijf-0007lu-TJ; Sun, 28 Apr 2019 12:16:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKijY-0007lK-8p; Sun, 28 Apr 2019 12:16:42 +0000
X-UUID: 1365c26b1f17430cbfdf6a906d9253da-20190428
X-UUID: 1365c26b1f17430cbfdf6a906d9253da-20190428
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 13568862; Sun, 28 Apr 2019 04:16:33 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 05:16:32 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 28 Apr 2019 20:16:29 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 28 Apr 2019 20:16:28 +0800
Message-ID: <1556453788.10179.224.camel@mhfsdcap03>
Subject: Re: [PATCH v4 3/6] dt-bindings: usb: mtu3: add properties about USB
 Role Switch
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Sun, 28 Apr 2019 20:16:28 +0800
In-Reply-To: <20190426204906.GB15074@bogus>
References: <1556261237-13823-1-git-send-email-chunfeng.yun@mediatek.com>
 <1556261237-13823-4-git-send-email-chunfeng.yun@mediatek.com>
 <20190426204906.GB15074@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_051640_321406_015B8067 
X-CRM114-Status: GOOD (  24.16  )
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

On Fri, 2019-04-26 at 15:49 -0500, Rob Herring wrote:
> On Fri, Apr 26, 2019 at 02:47:14PM +0800, Chunfeng Yun wrote:
> > Now the USB Role Switch is supported, so add properties about it
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v4: no changes
> > v3: no changes
> > 
> > v2 changes:
> >   1. fix typo
> >   2. refer new binding about connector property
> > ---
> >  .../devicetree/bindings/usb/mediatek,mtu3.txt          | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
> > index 3382b5cb471d..6e004c4a89af 100644
> > --- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
> > +++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.txt
> > @@ -27,7 +27,9 @@ Optional properties:
> >   - ranges : allows valid 1:1 translation between child's address space and
> >  	parent's address space
> >   - extcon : external connector for vbus and idpin changes detection, needed
> > -	when supports dual-role mode.
> > +	when supports dual-role mode; it's consiedered valid for compatibility
> > +	reasons, and not allowed for new bindings, use the property
> > +	usb-role-switch instead.
> >   - vbus-supply : reference to the VBUS regulator, needed when supports
> >  	dual-role mode.
> >   - pinctrl-names : a pinctrl state named "default" is optional, and need be
> > @@ -36,7 +38,8 @@ Optional properties:
> >  	is not set.
> >   - pinctrl-0 : pin control group
> >  	See: Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
> > -
> > + - usb-role-switch : use USB Role Switch to support dual-role switch, but
> > +	not extcon
> 
> Coordinate with the Renesas and HiSilicon folks implementing the same 
> thing and put this in a common spot. 
I'll prepare a patch for it, and CC Biju and Yu

> However, I think this should not 
> even be needed as knowing the controller capabilities (based on the 
> compatible) and knowing the type of connector should be enough 
> information to tell you if dual role is supported or not.
Some Dual-Role controller drivers already used extcon framework to
handle role switch, if try to support the new USB Role Switch framework,
the driver may want to know which way will be used.

Sometimes users also want to use dual-role even use the type-A, such as
use sys interface to handle role switch, so only knowing the connector
type can't tell driver which way to use
> 
> >   - maximum-speed : valid arguments are "super-speed", "high-speed" and
> >  	"full-speed"; refer to usb/generic.txt
> >   - enable-manual-drd : supports manual dual-role switch via debugfs; usually
> > @@ -61,6 +64,9 @@ The xhci should be added as subnode to mtu3 as shown in the following example
> >  if host mode is enabled. The DT binding details of xhci can be found in:
> >  Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.txt
> >  
> > +The port would be added as subnode if use usb-role-switch property
> > +	see graph.txt
> > +
> >  Example:
> >  ssusb: usb@11271000 {
> >  	compatible = "mediatek,mt8173-mtu3";
> > -- 
> > 2.21.0
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
