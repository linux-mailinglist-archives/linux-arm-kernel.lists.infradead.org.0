Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A457C90D08
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 07:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+BLGy9SgQasJIlfwyKul+bCXaZINVhOkwOApb04vKk=; b=WyIGvnvhaIFUEc
	ER1li1Lr3enTXadguAbKHv7o3XjSQXfo70LXIjvX22lk47Ks/FAQ3emTV0O0on9E7/KjLJRtOquQl
	vZxwNiSZ707Uuk+f0rsEuYRpezInzrptTv05pGJhuUvcJBDOKMxFCrk/Ccv69gNYGeb9j4mniDg5E
	IVcpg/LGfqnr3MMq8KzsgnH8MQwZg/6G9FOFAPBX/E03IMixJVGRcmeK+FHjZp5UxawOIQwWNYBiC
	9rGwb5aXZIdC6vTJ5QYWisToi0B6cOdT2BNDId5mpkd8gtt77sF7kNwW+gYCzgrd9+43VPPZmiofa
	EMI/TpMtlqhePM1P+GHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyqt4-0004Ec-Pz; Sat, 17 Aug 2019 05:04:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyqsu-0004EE-Oa; Sat, 17 Aug 2019 05:04:14 +0000
X-UUID: d0abf9edb8f84ceca00df4ceb2f9ef9d-20190816
X-UUID: d0abf9edb8f84ceca00df4ceb2f9ef9d-20190816
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 554451670; Fri, 16 Aug 2019 21:04:06 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 22:04:05 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 17 Aug 2019 13:03:41 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 17 Aug 2019 13:03:40 +0800
Message-ID: <1566018219.21623.18.camel@mhfsdcap03>
Subject: Re: [RFC,V2,1/2] media: dt-bindings: media: i2c: Add bindings for
 OV02A10
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>
Date: Sat, 17 Aug 2019 13:03:39 +0800
In-Reply-To: <5d5d644af9334609bb7c3ff745b2e754@mtkmbs02n1.mediatek.inc>
References: <20190704084651.3105-1-dongchun.zhu@mediatek.com>
 <20190704084651.3105-2-dongchun.zhu@mediatek.com>
 <20190722234924.GA22604@bogus>
 <5d5d644af9334609bb7c3ff745b2e754@mtkmbs02n1.mediatek.inc>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 99049D467F5009BFBF475616B3B2A033809B34DAE95E200D350CC41481287DB52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_220412_808356_6873683A 
X-CRM114-Status: GOOD (  15.81  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, menghui.lin@mediatek.com,
 Sakari Ailus <sakari.ailus@iki.fi>, tfiga@google.com,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 bingbu.cao@intel.com, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Rob,

On Mon, 2019-07-22 at 18:49 -0500, Rob Herring wrote:
> 
> On Thu, Jul 04, 2019 at 04:46:50PM +0800, dongchun.zhu@mediatek.com wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> >
> > Add device tree binding documentation for the OV02A10 camera sensor.
> >
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ov02a10.txt      | 43 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  7 ++++
> >  2 files changed, 50 insertions(+)
> >  create mode 100644
> > Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> >
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > new file mode 100644
> > index 0000000..d40aa87
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > @@ -0,0 +1,43 @@
> > +* Omnivision OV02A10 MIPI CSI-2 sensor
> > +
> > +Required Properties:
> > +- compatible: shall be "ovti,ov02a10"
> > +- clocks: reference to the xvclk input clock
> > +- clock-names: shall be "xvclk"
> > +- avdd-supply: Analog voltage supply, 2.8 volts
> > +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> > +- dvdd-supply: Digital core voltage supply, 1.8 volts
> > +- reset-gpios: Low active reset gpio
> > +
> > +The device node shall contain one 'port' child node with an
> > +'endpoint' subnode for its digital output video port, in accordance
> > +with the video interface bindings defined in
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > +The endpoint optional property 'data-lanes' shall be "<1>".
> > +
> > +Example:
> > +&i2c4 {
> > +ov02a10: camera-sensor@3d {
> > +compatible = "ovti,ov02a10";
> > +reg = <0x3d>;
> > +pinctrl-names = "default";
> > +pinctrl-0 = <&camera_pins_cam1_mclk_on>;
> > +
> > +clocks = <&topckgen CLK_TOP_MUX_CAMTG2>,
> > +<&topckgen CLK_TOP_UNIVP_192M_D8>;
> > +clock-names = "xvclk", "freq_mux";
> > +
> > +avdd-supply = <&mt6358_vcama1_reg>;
> > +dvdd-supply = <&mt6358_vcn18_reg>;
> > +dovdd-supply = <&mt6358_vcamio_reg>;
> > +pwdn-gpios = <&pio 107 1>;
> 
> Not documented. If you need this, use 'powerdown-gpios' instead.
> 

Fixed in next release.

> > +reset-gpios = <&pio 109 1>;
> > +
> > +port {
> > +   ov02a10_core: endpoint {
> > +       remote-endpoint = <&ov02a10_0>;
> > +   data-lanes = <1>;
> > +};
> > +};
> > +};
> > +};
> > diff --git a/MAINTAINERS b/MAINTAINERS index 5cfbea4..62b81ff 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -11571,6 +11571,13 @@ T:git git://linuxtv.org/media_tree.git
> >  S:Maintained
> >  F:drivers/media/i2c/ov13858.c
> >
> > +OMNIVISION OV02A10 SENSOR DRIVER
> > +M:Dongchun Zhu <dongchun.zhu@mediatek.com>
> > +L:linux-media@vger.kernel.org
> > +T:git git://linuxtv.org/media_tree.git
> > +S:Maintained
> > +F:Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> > +
> >  OMNIVISION OV2680 SENSOR DRIVER
> >  M:Rui Miguel Silva <rmfrfs@gmail.com>
> >  L:linux-media@vger.kernel.org
> > --
> > 2.9.2
> >
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
> *********************MEDIATEK Confidential/Internal Use*********************



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
