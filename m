Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14E5DD22F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 00:10:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1fB0XTWAFwxVW00ZIvMRNuD87Yiq7bX1f/7U9wRiTA=; b=KmKldpKf+pwBxe
	pYfr7BaOlMG4ac/p6dgzeP5qRkFnShSaYJBoo5L5xOhLKD8I/NKBQMxi6r6u+zx0geXDrbAljsHiT
	//zdAkJVH1Xl9D1IW9TR2VcypkFfxoIA5yu5DJHirhBCZ83pMoZG4ZcORHrO1DNz7el2K7ksbA55X
	InZBQqtrwgO8VPd755iIWlBe3ZyM54EWJEZv9cNHpfgDNFRdLHQd1bGq9QBsNYE67FpCqmov3OZWt
	8M09s7pYE7PTfQxhRxiY/y5AnPvXbfPOaGa/42+kbbUwQxFuULOHmB2MxWKQ3c61Qa5tZJmM/VqkK
	AA8RRaG1uaS6Wexh8xUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLaRV-0003W3-7v; Fri, 18 Oct 2019 22:09:53 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLaRM-0003Um-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 22:09:46 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 103D1634C8A;
 Sat, 19 Oct 2019 01:06:57 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iLaOf-0001ge-N7; Sat, 19 Oct 2019 01:06:57 +0300
Date: Sat, 19 Oct 2019 01:06:57 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191018220657.GI4735@valkosipuli.retiisi.org.uk>
References: <20191011035613.13598-1-manivannan.sadhasivam@linaro.org>
 <20191011035613.13598-2-manivannan.sadhasivam@linaro.org>
 <20191015224554.GA5634@bogus>
 <20191016083748.GA2288@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016083748.GA2288@Mani-XPS-13-9360>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_150944_606988_B4258F9E 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, c.barrett@framos.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, a.brela@framos.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan, Rob,

On Wed, Oct 16, 2019 at 02:07:48PM +0530, Manivannan Sadhasivam wrote:
> Hi Rob,
> 
> On Tue, Oct 15, 2019 at 05:45:54PM -0500, Rob Herring wrote:
> > On Fri, Oct 11, 2019 at 09:26:12AM +0530, Manivannan Sadhasivam wrote:
> > > Add devicetree binding for IMX296 CMOS image sensor.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > ---
> > >  .../devicetree/bindings/media/i2c/imx296.txt  | 55 +++++++++++++++++++
> > >  1 file changed, 55 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.txt
> > 
> > You should know by now, use DT schema format please.
> > 
> 
> I know for other subsystems but by having a vague look at the existing bindings
> I thought media subsystem is still using .txt. But I now see few yaml bindings
> in linux-next and will switch over this.
> 
> Btw, is it mandatory now to use YAML bindings for all subsystems? I don't
> see any issue (instead I prefer) but I remember that you defer to the preference
> of the subsystem maintainers before!
> 
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.txt b/Documentation/devicetree/bindings/media/i2c/imx296.txt
> > > new file mode 100644
> > > index 000000000000..25d3b15162c1
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/imx296.txt
> > > @@ -0,0 +1,55 @@
> > > +* Sony IMX296 1/2.8-Inch CMOS Image Sensor
> > > +
> > > +The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> > > +sensor with square pixel array and 1.58 M effective pixels. This chip features
> > > +a global shutter with variable charge-integration time. It is programmable
> > > +through I2C and 4-wire interfaces. The sensor output is available via CSI-2
> > > +serial data output (1 Lane).
> > > +
> > > +Required Properties:
> > > +- compatible: Should be "sony,imx296"
> > > +- reg: I2C bus address of the device
> > > +- clocks: Reference to the mclk clock.
> > > +- clock-names: Should be "mclk".
> > > +- clock-frequency: Frequency of the mclk clock in Hz.
> > > +- vddo-supply: Interface power supply.
> > > +- vdda-supply: Analog power supply.
> > > +- vddd-supply: Digital power supply.
> > > +
> > > +Optional Properties:
> > > +- reset-gpios: Sensor reset GPIO
> > > +
> > > +The imx296 device node should contain one 'port' child node with
> > > +an 'endpoint' subnode. For further reading on port node refer to
> > > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > > +
> > > +Required Properties on endpoint:
> > > +- data-lanes: check ../video-interfaces.txt
> > 
> > This should only be required when not using all the lanes on the device.
> > 
> 
> This is a bit weird! How will someone know how many lanes the device is using
> by looking at the binding? He can anyway refer the datasheet but still...

Many current bindings document data-lanes as mandatory. Nothing prevents
making all lanes are connected the default though, thus making data-lanes
optional.

The V4L2 fwnode framework supports easy parsing of that, too, by driver
providing that default value before letting V4L2 fwnode framework to parse
the endpoint properties.

Looking at this particular sensor --- doesn't it only have a single lane,
and thus nothing to configure here?

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
