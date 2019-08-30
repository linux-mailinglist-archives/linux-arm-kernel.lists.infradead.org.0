Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D4EA2FC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xLHUzYl4uz/e+Vi/E6ATNsQTfFl6zCBoNb/TOIkXDIQ=; b=huKc5wg55zjH16
	eseGclcat1YNlPuUN/EYFW9SbuS6GDltDpE61vCSc/CrKPfgVtBvFJI5rup6kyEum2fnFEGNvsZ/m
	yKXLQMYRugCNkkCUOEDruJCe8RVo6KGtdRaU4d2EtKwGr2sEuKoiLtx/o5HhYOJcFVJ1H2VOAmW81
	BuyezPd6HczQUsjJLde8Z1GI1SrPfzXcJWWTGgeMqUbQwEiOD7F9J1H4FpnAr6Rs43grBf4K3yYPO
	esiIuygizwgi++gOoC6Gmxt0HmvJymp6TjBY9inCA9+Gh2MnU/Qm5xCXuidFvLg5PuWWzFrgSY3ON
	vZAE7Jd6XuC1J7jbQ6PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aKg-000887-SH; Fri, 30 Aug 2019 06:24:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aKH-000835-Am; Fri, 30 Aug 2019 06:24:03 +0000
X-UUID: bacfb79122ad47e1a385b5481aee6351-20190829
X-UUID: bacfb79122ad47e1a385b5481aee6351-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 703893492; Thu, 29 Aug 2019 22:24:02 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 23:24:00 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 30 Aug 2019 14:23:56 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 14:23:56 +0800
Message-ID: <1567146231.7317.41.camel@mhfsdcap03>
Subject: Re: [PATCH 04/11] dt-bindings: phy-mtk-tphy: add a new reference clock
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 30 Aug 2019 14:23:51 +0800
In-Reply-To: <20190829200503.GA2542@bogus>
References: <e99c0d7a55869a4425250c601b80a3331c9d0976.1566542696.git.chunfeng.yun@mediatek.com>
 <f6ee7d33103b43b2f1e1331c23c36057ef20b20d.1566542697.git.chunfeng.yun@mediatek.com>
 <20190829200503.GA2542@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9D29D17FAA54D1AE255DE995E26BF8FEA1AEFE9EE094F78B2839206ECE2E9EEE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_232401_738680_2E2917CD 
X-CRM114-Status: GOOD (  18.53  )
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

On Thu, 2019-08-29 at 15:05 -0500, Rob Herring wrote:
> On Fri, Aug 23, 2019 at 03:00:11PM +0800, Chunfeng Yun wrote:
> > Usually the digital and anolog phys use the same reference clock,
> > but on some platforms, they are separated, so add another optional
> > clock to support it.
> > In order to keep the clock names consistent with PHY IP's, use
> > the da_ref for anolog phy and ref clock for digital phy.
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > index dbc143ed5999..ed9a2641f204 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > @@ -41,9 +41,12 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
> >  - clocks	: a list of phandle + clock-specifier pairs, one for each
> >  		  entry in clock-names
> >  - clock-names	: may contain
> > -		  "ref": 48M reference clock for HighSpeed anolog phy; and 26M
> > -			reference clock for SuperSpeed anolog phy, sometimes is
> > +		  "ref": 48M reference clock for HighSpeed (digital) phy; and 26M
> > +			reference clock for SuperSpeed (digital) phy, sometimes is
> >  			24M, 25M or 27M, depended on platform.
> > +		  "da_ref": the reference clock of anolog phy, used if the clocks
> > +			of anolog and digital phys are separated, otherwise uses
> 
> s/amolog/analog/
will fix it
> 
> > +			"ref" clock only if need.
> 
> needed.
also here

Thanks a lot

> 
> >  
> >  - mediatek,eye-src	: u32, the value of slew rate calibrate
> >  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
> > -- 
> > 2.23.0
> > 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
