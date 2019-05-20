Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FD5229F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 04:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Qm2XAM1ku0AZ/cA0YqJdvoU83Vc5AcBfkjEIFHn1mE=; b=IvQF1dWNGLH9O8
	MEVVR9t/kkw24DjzoTOW/peEmUqZJKkQ44pvQ9JCI+bDWjbrrU338d/i018rW9JJ1yHqV+Ya7HMq2
	Pb4UWDAtB7Bqnvxao282HhZxLgZb52wQTPXdqYhuzt6buOuXI20eU4R/bpsRCpxBSLUWYhCYMvYrp
	PfbsBguAkvhE9Mg4/XtKte8Z3mjSIsBG77hNQ3Tqovbn4RP3YuTmRpoCv+1Q0ZlMvneJAXKNm1AiY
	8kE7a+3vdzsX8WF4ZJtJJHO3HDttX1KB5l/EjnfIvwrlRtwIj+8Sw8eznqXS2DykDd2iAaAcW6l2d
	6yNbtXoZf2yg+1u6aJqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSY44-0004eZ-QN; Mon, 20 May 2019 02:30:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSY3u-0003lQ-0y; Mon, 20 May 2019 02:30:03 +0000
X-UUID: 71c1147f71ea40f99a63e9cff57976f8-20190519
X-UUID: 71c1147f71ea40f99a63e9cff57976f8-20190519
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1545321235; Sun, 19 May 2019 18:29:54 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 19:29:52 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 20 May 2019 10:29:50 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 20 May 2019 10:29:49 +0800
Message-ID: <1558319389.10179.347.camel@mhfsdcap03>
Subject: Re: [v3 PATCH] dt-binding: usb: add usb-role-switch property
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Mon, 20 May 2019 10:29:49 +0800
In-Reply-To: <20190517132721.GB1887@kuha.fi.intel.com>
References: <c3596e996c9ab39c6b9bc14b93309244c4a55014.1557306151.git.chunfeng.yun@mediatek.com>
 <20190517132721.GB1887@kuha.fi.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_193002_076928_6DCB9E19 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Yu Chen <chenyu56@huawei.com>, linux-kernel@vger.kernel.org,
 Biju Das <biju.das@bp.renesas.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-05-17 at 16:27 +0300, Heikki Krogerus wrote:
> On Wed, May 08, 2019 at 05:17:44PM +0800, Chunfeng Yun wrote:
> > Add a property usb-role-switch to tell the driver that use
> > USB Role Switch framework to handle the role switch,
> > it's useful when the driver has already supported other ways,
> > such as extcon framework etc.
> > 
> > Cc: Biju Das <biju.das@bp.renesas.com>
> > Cc: Yu Chen <chenyu56@huawei.com>
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> 
> Who is meant to pick this? 

> Can you include this in your series where
> you introduce that USB Type-B GPIO connector driver?
> 
Ok, I'll do it if need

> FWIW:
> 
> Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> > ---
> > v3:
> >     add property type, modify description suggested by Heikki
> > 
> > v2:
> >     describe it in terms of h/w functionality suggested by Rob
> > 
> > v1:
> >     the property is discussed in:
> >     [v2,2/7] dt-bindings: usb: renesas_usb3: add usb-role-switch property
> >     https://patchwork.kernel.org/patch/10852497/
> > 
> >     Mediatek and Hisilicon also try to use it:
> >     [v4,3/6] dt-bindings: usb: mtu3: add properties about USB Role Switch
> >     https://patchwork.kernel.org/patch/10918385/
> >     [v4,6/6] usb: mtu3: register a USB Role Switch for dual role mode
> >     https://patchwork.kernel.org/patch/10918367/
> > 
> >     [v6,10/13] usb: dwc3: Registering a role switch in the DRD code
> >     https://patchwork.kernel.org/patch/10909981/
> > ---
> >  Documentation/devicetree/bindings/usb/generic.txt | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
> > index 0a74ab8dfdc2..cf5a1ad456e6 100644
> > --- a/Documentation/devicetree/bindings/usb/generic.txt
> > +++ b/Documentation/devicetree/bindings/usb/generic.txt
> > @@ -30,6 +30,10 @@ Optional properties:
> >  			optional for OTG device.
> >   - adp-disable: tells OTG controllers we want to disable OTG ADP, ADP is
> >  			optional for OTG device.
> > + - usb-role-switch: boolean, indicates that the device is capable of assigning
> > +			the USB data role (USB host or USB device) for a given
> > +			USB connector, such as Type-C, Type-B(micro).
> > +			see connector/usb-connector.txt.
> >  
> >  This is an attribute to a USB controller such as:
> >  
> > -- 
> > 2.21.0
> 
> thanks,
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
