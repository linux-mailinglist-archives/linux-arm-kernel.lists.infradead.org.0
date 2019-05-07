Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B664815796
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 04:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgAW0wPIkk6nrCDD7hbLvf0M/KAQ/aePrKVYgYswads=; b=hrimdqm3r70kCn
	4Qu8KHCdx6E4G+2fCWqPJqehM30uDsasTkOCXrbYGzJZMUFm/2Wyw925R2vrgrP2cTaO0oyseU5Cm
	HIB4XlgVaP/zepSd/PkyoiLHJ0O67Xo7qK2rhh9TH7GaiVFXip/K6UDb6tyE7vpGOziq5fi4Nkwms
	thpYwSfFBa5Msra9kqcf9RzvSoCoiPCAxlSvvSGIX6opJd202gDMkkYWQNlEp8n3QXFEGVDyJaYhw
	ZaAgxO4zHAydZrNJP8pdUqdbBShg5g9UMlymlsDbNL2jiEzA5ANkcP9DMgJ2sL2j1vXrXfJbbmZMB
	VI45DbkV1biLJqU5DrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNpoh-0002lZ-NQ; Tue, 07 May 2019 02:26:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNpoY-0002kM-Cy; Tue, 07 May 2019 02:26:43 +0000
X-UUID: 3f625d89d71643928994652b1dc1c8a1-20190506
X-UUID: 3f625d89d71643928994652b1dc1c8a1-20190506
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 435537119; Mon, 06 May 2019 18:26:41 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 May 2019 19:26:40 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 7 May 2019 10:26:36 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 May 2019 10:26:34 +0800
Message-ID: <1557195994.10179.263.camel@mhfsdcap03>
Subject: Re: [PATCH] dt-binding: usb: add usb-role-switch property
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Tue, 7 May 2019 10:26:34 +0800
In-Reply-To: <20190502194905.GA22144@bogus>
References: <5756e05930f5e6a3940ad9d019399c8e63d24f18.1556454324.git.chunfeng.yun@mediatek.com>
 <20190502194905.GA22144@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_192642_446427_4DFC58D8 
X-CRM114-Status: GOOD (  18.37  )
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
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Felipe
 Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org, Yu
 Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-05-02 at 14:49 -0500, Rob Herring wrote:
> On Sun, Apr 28, 2019 at 08:27:46PM +0800, Chunfeng Yun wrote:
> > Add a property usb-role-switch to tell Dual-Role controller driver
> > that use USB Role Switch framework to handle the role switch between
> > host mode and device mode, it's useful when the driver has already
> > supported other ways, such as extcon framework etc.
> > 
> > Cc: Biju Das <biju.das@bp.renesas.com>
> > Cc: Yu Chen <chenyu56@huawei.com>
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v1:
> > the property is discussed in:
> > [v2,2/7] dt-bindings: usb: renesas_usb3: add usb-role-switch property
> > https://patchwork.kernel.org/patch/10852497/
> > 
> > Mediatek and Hisilicon also try to use it:
> > [v4,3/6] dt-bindings: usb: mtu3: add properties about USB Role Switch
> > https://patchwork.kernel.org/patch/10918385/
> > [v4,6/6] usb: mtu3: register a USB Role Switch for dual role mode
> > https://patchwork.kernel.org/patch/10918367/
> > 
> > [v6,10/13] usb: dwc3: Registering a role switch in the DRD code
> > https://patchwork.kernel.org/patch/10909981/
> > ---
> >  Documentation/devicetree/bindings/usb/generic.txt | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
> > index 0a74ab8dfdc2..c73950b72513 100644
> > --- a/Documentation/devicetree/bindings/usb/generic.txt
> > +++ b/Documentation/devicetree/bindings/usb/generic.txt
> > @@ -30,6 +30,9 @@ Optional properties:
> >  			optional for OTG device.
> >   - adp-disable: tells OTG controllers we want to disable OTG ADP, ADP is
> >  			optional for OTG device.
> > + - usb-role-switch: tells Dual-Role USB controller driver that we want to use
> > +			USB Role Switch framework to handle the role switch
> > +			between host mode and device mode.
> 
> Please describe this in terms of h/w functionality, not drivers and 
> Linux things.
Sorry for the late reply, v2 is posted

> 
> Rob



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
