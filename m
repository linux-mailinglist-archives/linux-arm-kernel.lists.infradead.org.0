Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1413BAD26B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 05:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/VSr/Eft4jxR4y6epa34/PDqlg7/SYu/hdpr0si5dk=; b=inT6zhDwYbSneq
	NNjWGJDsuorUHBLE1Xz7MJBTBYAFMCgAQ2w+UvrVVtpIGd+3+3MDCrcXq5EzPA1Xfmshu9noAgFbc
	yjr9hdc4RbbR8dbRgSnkILUlnx7OJ3DBJCJLw/KMfwPfRNG5Ml8lwDYB8g4uRRrBaocKmtB5BQrx0
	odygGvu/kdK+B5e7VAQ8cEA+UCNQN62kJWpXFHub2O8ezr4cYE2CEWZdqWm6Xh+HhFs/qTKJ0SJjC
	kwyDKNHpxQetNy4Do4cb6lATErqVVzhmme+WQo63b9KpXWVQ7bam0h2f56O7pWzeR9xvLsIeEjx2f
	xnEtOtnMPsGWeH1KvC4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Amp-0002ma-KY; Mon, 09 Sep 2019 03:56:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7AmY-0002lT-07; Mon, 09 Sep 2019 03:56:03 +0000
X-UUID: 464896fd223d475b938206c46b6ff8dc-20190908
X-UUID: 464896fd223d475b938206c46b6ff8dc-20190908
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1628789858; Sun, 08 Sep 2019 19:55:55 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Sep 2019 20:55:53 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 9 Sep 2019 11:55:48 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 9 Sep 2019 11:55:48 +0800
Message-ID: <1568001348.21623.173.camel@mhfsdcap03>
Subject: Re: [V1, 1/2] media: dt-bindings: media: i2c: Add bindings for ov8856
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Mon, 9 Sep 2019 11:55:48 +0800
In-Reply-To: <20190808165416.GA1845@kekkonen.localdomain>
References: <20190808092215.5608-1-dongchun.zhu@mediatek.com>
 <20190808092215.5608-2-dongchun.zhu@mediatek.com>
 <20190808165416.GA1845@kekkonen.localdomain>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 081F698E455D92653B89BAEE5D1532842DA0144527A369190CB26B39126B11652000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_205602_049014_85E39077 
X-CRM114-Status: GOOD (  18.34  )
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
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 Ben Kao <ben.kao@intel.com>, tfiga@chromium.org, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Thu, 2019-08-08 at 19:54 +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> (Cc'ing Ben, too.)
> 
> On Thu, Aug 08, 2019 at 05:22:14PM +0800, dongchun.zhu@mediatek.com wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > 
> > Add device tree binding documentation for the ov8856 camera sensor.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  .../devicetree/bindings/media/i2c/ov8856.txt       | 41 ++++++++++++++++++++++
> >  MAINTAINERS                                        |  1 +
> >  2 files changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.txt b/Documentation/devicetree/bindings/media/i2c/ov8856.txt
> > new file mode 100644
> > index 0000000..96b10e0
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.txt
> > @@ -0,0 +1,41 @@
> > +* Omnivision OV8856 MIPI CSI-2 sensor
> > +
> > +Required Properties:
> > +- compatible: shall be "ovti,ov8856"
> > +- clocks: reference to the xvclk input clock
> > +- clock-names: shall be "xvclk"
> 
> Could you add "clock-frequency" property here, please, and specify the
> upper and lower limits?
> 

Sorry, this frequency of the external clock to the sensor and
link-frequencies would be added in DT in next release.

> > +- avdd-supply: Analog voltage supply, 2.8 volts
> > +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> > +- dvdd-supply: Digital core voltage supply, 1.2 volts
> > +- reset-gpios: Low active reset gpio
> > +
> > +The device node shall contain one 'port' child node with an
> > +'endpoint' subnode for its digital output video port,
> > +in accordance with the video interface bindings defined in
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > +The endpoint optional property 'data-lanes' shall be "<0 1 3 4>".
> 
> If you don't support lane reordering, then monotonically incrementing lane
> numbers from 1 onwards are recommended.
> 
> Please also make the property mandatory.
> 

data-lanes would be required property on endpoint in next release.

> > +
> > +Example:
> > +&i2c7 {
> > +	ov8856: camera-sensor@10 {
> > +		compatible = "ovti,ov8856";
> > +		reg = <0x10>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&clk_24m_cam>;
> > +
> > +		clocks = <&cru SCLK_TESTCLKOUT1>;
> > +		clock-names = "xvclk";
> > +
> > +		avdd-supply = <&mt6358_vcama2_reg>;
> > +		dvdd-supply = <&mt6358_vcamd_reg>;
> > +		dovdd-supply = <&mt6358_vcamio_reg>;
> > +		reset-gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
> > +
> > +		port {
> > +			wcam_out: endpoint {
> > +				remote-endpoint = <&mipi_in_wcam>;
> > +				data-lanes = <0 1 3 4>;
> > +			};
> > +		};
> > +	};
> > +};
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index 783569e..7746c6b 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -11889,6 +11889,7 @@ L:	linux-media@vger.kernel.org
> >  T:	git git://linuxtv.org/media_tree.git
> >  S:	Maintained
> >  F:	drivers/media/i2c/ov8856.c
> > +F:	Documentation/devicetree/bindings/media/i2c/ov8856.txt
> >  
> >  OMNIVISION OV9650 SENSOR DRIVER
> >  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
