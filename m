Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC2F16B7C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 03:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bh9mgpAu8zsMltc8669xZNPcScmzmlzA5KoAer/m0PU=; b=nHFDyILbCLlLFF
	ZVu2oFsYXy70Mu/fvcI66fIBUkRXifGOGJXcg665oRp5P1hitkSuTn/a5zQ3fx4mLYZN56Jy1oAN3
	R/+0nUsuVLsagmv2VL3vhohSS1b6faTrLnHiEeaQggjGQXTjdmOzzc2IdW/4b22ZabCuswAcHTeWw
	bYDYY74GkR8HU/QvjdPit081nKkWQsnL8Ns4GUsv8zGXrZS1ZQ+ADDq/GRh7OGH+s+gJInTgE9nFr
	WBTwqtRqUR2J6YgRXNAr9LOYiDZcybmeo9e1GCRhusOzaF61y2ft2D85vGsXaCjBae4M5GZ3PHPG5
	2wJJoUuIkrBHgfAFN06g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Q1R-000755-ID; Tue, 25 Feb 2020 02:32:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Q1G-0006zm-B3; Tue, 25 Feb 2020 02:32:24 +0000
X-UUID: 57fdab6c636b40d0b612a573da961e19-20200224
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=iHHSCqt2Ve6Wlru6dFhv7csNlUX+1jF8K/qFAY2+Qck=; 
 b=NulL5CmeH/hSXQawOSlx37ynvmTb4Jgx7Ow8edmR0ok081FhZmV8clN2R3HjTaY8ghS/HFsP9fCmPCDDNadYLpzQGYaTlayb/xZyFhO/pKN0r3qD9jhyyyYDl4sPayZXLsdL+cIbS/X+FO8b4eyD0aHx6UGKEwSTWOEhAVjxaFM=;
X-UUID: 57fdab6c636b40d0b612a573da961e19-20200224
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1796841802; Mon, 24 Feb 2020 18:32:20 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 24 Feb 2020 18:33:22 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 25 Feb 2020 10:32:52 +0800
Received: from [10.16.6.141] (10.16.6.141) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 25 Feb 2020 10:30:57 +0800
Message-ID: <1582597929.23913.0.camel@mszsdaap41>
Subject: Re: [PATCH v6 1/4] dt-bindings: display: mediatek: update dpi
 supported chips
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>
Date: Tue, 25 Feb 2020 10:32:09 +0800
In-Reply-To: <1582596836.31498.4.camel@mtksdaap41>
References: <20200221112828.55837-1-jitao.shi@mediatek.com>
 <20200221112828.55837-2-jitao.shi@mediatek.com>
 <1582533982.12922.5.camel@mtksdaap41> <1582596343.12484.6.camel@mszsdaap41>
 <1582596836.31498.4.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0664ACA98C3FA0C1CF3CDD890317E6E76F761B0C9ADCCD1C1860FC701643D4E82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_183222_560541_2ED2F61A 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-02-25 at 10:13 +0800, CK Hu wrote:
> Hi, Jitao:
> 
> On Tue, 2020-02-25 at 10:05 +0800, Jitao Shi wrote:
> > On Mon, 2020-02-24 at 16:46 +0800, CK Hu wrote:
> > > Hi, Jitao:
> > > 
> > > On Fri, 2020-02-21 at 19:28 +0800, Jitao Shi wrote:
> > > > Add decriptions about supported chips, including MT2701 & MT8173 &
> > > > mt8183
> > > > 
> > > > 1. Add more chips support. ex. MT2701 & MT8173 & MT8183
> > > > 2. Add property "dpi_pin_mode_swap" and "pinctrl-names" gpio mode dpi mode and
> > > >    gpio oupput-low to avoid leakage current.
> > > > 3. Add property "dpi_dual_edge" to config the dpi pin output mode dual edge or
> > > >    single edge sample data.
> > > > 
> > > > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > > > ---
> > > >  .../bindings/display/mediatek/mediatek,dpi.txt        | 11 +++++++++++
> > > >  1 file changed, 11 insertions(+)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> > > > index b6a7e7397b8b..cd6a1469c8b7 100644
> > > > --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> > > > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
> > > > @@ -7,6 +7,7 @@ output bus.
> > > >  
> > > >  Required properties:
> > > >  - compatible: "mediatek,<chip>-dpi"
> > > > +  the supported chips are mt2701 , mt8173 and mt8183.
> > > >  - reg: Physical base address and length of the controller's registers
> > > >  - interrupts: The interrupt signal from the function block.
> > > >  - clocks: device clocks
> > > > @@ -16,6 +17,11 @@ Required properties:
> > > >    Documentation/devicetree/bindings/graph.txt. This port should be connected
> > > >    to the input port of an attached HDMI or LVDS encoder chip.
> > > >  
> > > > +Optional properties:
> > > > +- dpi_pin_mode_swap: Swap the pin mode between dpi mode and gpio mode.
> > > > +- pinctrl-names: Contain "gpiomode" and "dpimode".
> > > > +- dpi_dual_edge: Control the RGB 24bit data on 12 pins or 24 pins.
> > > 
> > > I've find that in [1], there are already a property of "pclk-sample"
> > > which like this, but it only have rising (1) or falling (0) status. Does
> > > that property describe the same thing with this property? If they are
> > > the same, I think you should add new state, dual (2), for "pclk-sample".
> > > 
> > > [1]
> > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/media/video-interfaces.txt?h=v5.6-rc3
> > > 
> > > Regards,
> > > CK
> > > 
> > 
> > pclk-sample has two properties  rising or falling.
> > It means to sample on rising or falling edge.
> > 
> > But, dpi_dual_edge means to sample on both rising and falling edge.
> > 
> 
> It seems that both describe "When to sample data", so they are the same
> for me.
> 
> I think we should prevent to invent a new property if there is already a
> one. Even though pclk-sample just have two state (rising or falling
> edge), I think we could add a new state (dual edge) to pclk-sample. 
> 
> Regards,
> CK

Got it.
I'll fix them next verison.

Best Regards
Jitao
> 
> > Best Regards
> > Jitao
> > > > +
> > > >  Example:
> > > >  
> > > >  dpi0: dpi@1401d000 {
> > > > @@ -26,6 +32,11 @@ dpi0: dpi@1401d000 {
> > > >  		 <&mmsys CLK_MM_DPI_ENGINE>,
> > > >  		 <&apmixedsys CLK_APMIXED_TVDPLL>;
> > > >  	clock-names = "pixel", "engine", "pll";
> > > > +	dpi_dual_edge;
> > > > +	dpi_pin_mode_swap;
> > > > +	pinctrl-names = "gpiomode", "dpimode";
> > > > +	pinctrl-0 = <&dpi_pin_gpio>;
> > > > +	pinctrl-1 = <&dpi_pin_func>;
> > > >  
> > > >  	port {
> > > >  		dpi0_out: endpoint {
> > > 
> > > 
> > 
> > 
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
