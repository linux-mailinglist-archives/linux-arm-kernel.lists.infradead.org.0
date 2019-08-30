Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DFFA2F5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:04:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSlE1SvW9s6c2jKKNixLAQ15IeXTJ+3sqGduVgfrs1s=; b=ccHuOvHZdJ0mSD
	3DLNACyRQg3hYQGFkGY+VDaYmaCr/AGzhkTHW9M1W9RvZ6yO8nFuWKBrcXNgL4R0G5GIr6Q98g69A
	IX4fQ8RI5nOjgCHGxY6uiapcD+OVC5cjn+k/PfzaXs3mHG6vHiOPkMMvMieAsVDZ5w6hw1pDSssFd
	yt2rxi9MPCkCQ/BsbdA9obYa/uKZJNtjRWBnk1M0tU0cN6iDH2C8SMVJnhqXrekEwU4WjGEbbeiSp
	TCjQpGXZoD0zkxkhHjin7bFiRKt4LM6OZYao0xJkhdUudmcJgsSIwyZi+AC9i/J7xUHsP6avvXJFO
	v2QiFlcPTCy/Q+zXy+1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3a0u-0000XG-Hf; Fri, 30 Aug 2019 06:04:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3a0c-0000WA-Cc; Fri, 30 Aug 2019 06:03:43 +0000
X-UUID: 747448c832304b76800c9ce79de98209-20190829
X-UUID: 747448c832304b76800c9ce79de98209-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 291143060; Thu, 29 Aug 2019 22:03:45 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 23:03:44 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 30 Aug 2019 14:03:41 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 14:03:40 +0800
Message-ID: <1567145015.7317.25.camel@mhfsdcap03>
Subject: Re: [PATCH 01/11] dt-bindings: phy-mtk-tphy: add two optional
 properties for u2phy
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 30 Aug 2019 14:03:35 +0800
In-Reply-To: <20190829192341.GA26293@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
 <20190829192341.GA26293@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5AA85C5E3F8AB8BAF30077AD6CA7DC8A8920C263640F601AAF4EB182F919651B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_230342_433993_6D6B785A 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2019-08-29 at 14:23 -0500, Rob Herring wrote:
> On Fri, Aug 23, 2019 at 03:00:08PM +0800, Chunfeng Yun wrote:
> > Add two optional properties, one for J-K test, another for disconnect
> > threshold, both of them can be used to debug disconnection issues.
> 
> Testing and debug properties aren't really things that belong in DT.
They are not only for test and debug, but also used to tune default
value for some platforms, I'll modify the description

> 
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > index a5f7a4f0dbc1..d5b327f85fa2 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > @@ -52,6 +52,8 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
> >  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
> >  - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
> >  - mediatek,bc12	: bool, enable BC12 of u2phy if support it
> > +- mediatek,discth	: u32, the voltage of disconnect threshold
> > +- mediatek,intr	: u32, the value of internal R (resistance)
> 
> These need units as defined in property-units.txt.
They are in fact the choice index of different level, will modify it

Thank you

> 
> >  
> >  Example:
> >  
> > -- 
> > 2.23.0
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
