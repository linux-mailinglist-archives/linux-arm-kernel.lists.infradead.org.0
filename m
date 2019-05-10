Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E345419722
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 05:31:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sy+0QebSz05nF0MgcMMpe09mTYzOdkFXEirECt8jgrA=; b=qBz9+e0STAK/N8
	EHOwSJoFAgvUL3eJS/Rom+T3T6X+34w27k7YRN3XSLbPSCoYb+wTp1cSXpfv5CR9+aGnd4/3sVwLb
	tHCFIlbKhCcMPQp6zRSAVos1cDg5pVzZes7bvGHvnbQsLjtbDfyt1xIpuWVsGOh+0VJxy1+Pn2l+m
	dKaD2lhsDGtv08k9wNeSYVOlKqzC50eGobw43MN9Uk7LV9ng2xOsxp43aoVGN296AKyzAly4zhn9O
	R4rSotWjGqzVLDbbp+xiXndBY+nWtZuiBGHQKpg09Zwe/mPlP+e8l8R6ALXh4lyoofiq/u6hTmrap
	W2Tu18xJzQEwweDob3xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOwG4-00056f-Kf; Fri, 10 May 2019 03:31:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOwFw-00055L-4L; Fri, 10 May 2019 03:31:33 +0000
X-UUID: 4659345febfb49c1a195b59bf684c97a-20190509
X-UUID: 4659345febfb49c1a195b59bf684c97a-20190509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1727774247; Thu, 09 May 2019 19:31:30 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 20:31:28 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 11:31:21 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 10 May 2019 11:31:21 +0800
Message-ID: <1557459081.29102.4.camel@mtksdaap41>
Subject: Re: [PATCH v5 03/12] dt-binding: gce: add binding for gce subsys
 property
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Fri, 10 May 2019 11:31:21 +0800
In-Reply-To: <20190507174110.GA6767@bogus>
References: <20190507081355.52630-1-bibby.hsieh@mediatek.com>
 <20190507081355.52630-4-bibby.hsieh@mediatek.com>
 <20190507174110.GA6767@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2CE4E89CBFF18FFD220CA801469A51525C75B7E68B1C0A4BF46A2CE75B1E01422000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_203132_178833_553A5E25 
X-CRM114-Status: GOOD (  20.56  )
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 kendrick.hsu@mediatek.com, Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>, YT
 Shen <yt.shen@mediatek.com>, CK HU <ck.hu@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Frederic Chen <Frederic.Chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Rob,

On Tue, 2019-05-07 at 12:41 -0500, Rob Herring wrote:
> On Tue, May 07, 2019 at 04:13:46PM +0800, Bibby Hsieh wrote:
> > tcmdq driver provide a function that get the relationship
> > of sub system number from device node for client.
> > add specification for #subsys-cells, mediatek,gce-subsys.
> > 
> > Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> > ---
> >  .../devicetree/bindings/mailbox/mtk-gce.txt       | 15 ++++++++++++---
> >  1 file changed, 12 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> > index 1f7f8f2a3f49..8fd9479bc9f6 100644
> > --- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> > +++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> > @@ -21,11 +21,19 @@ Required properties:
> >  	priority: Priority of GCE thread.
> >  	atomic_exec: GCE processing continuous packets of commands in atomic
> >  		way.
> > +- #subsys-cells: Should be 3.
> > +	<&phandle subsys_number start_offset size>
> > +	phandle: Label name of a gce node.
> > +	subsys_number: specify the sub-system id which is corresponding
> > +		       to the register address.
> > +	start_offset: the start offset of register address that GCE can access.
> > +	size: the total size of register address that GCE can access.
> 
> Like the #event-cells, do you need this if it isn't variable?
> 

Yes, we need. Because the start_offset and size will be a fix number
when the chip was designed out.
Those two informations will help us to check if the same register
address was wrote by different user.
The checking mechanism is designing...

> >  
> >  Required properties for a client device:
> >  - mboxes: Client use mailbox to communicate with GCE, it should have this
> >    property and list of phandle, mailbox specifiers.
> > -- mediatek,gce-subsys: u32, specify the sub-system id which is corresponding
> > +Optional propertier for a client device:
> > +- mediatek,gce-client-reg: u32, specify the sub-system id which is corresponding
> >    to the register address.
> 
> This isn't a u32, but a phandle + 3 cells (or a list of those). How many 
> entries can there be?

Ok, I will fix it.
> 
> >  
> >  Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
> > @@ -40,6 +48,7 @@ Example:
> >  		clocks = <&infracfg CLK_INFRA_GCE>;
> >  		clock-names = "gce";
> >  		#mbox-cells = <3>;
> > +		#subsys-cells = <3>;
> >  	};
> >  
> >  Example for a client device:
> > @@ -48,9 +57,9 @@ Example for a client device:
> >  		compatible = "mediatek,mt8173-mmsys";
> >  		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
> >  			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
> > -		mediatek,gce-subsys = <SUBSYS_1400XXXX>;
> >  		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
> >  				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
> > -
> > +		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
> > +					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
> >  		...
> >  	};
> > -- 
> > 2.18.0
> > 

-- 
Bibby


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
