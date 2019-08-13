Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E091F8B772
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jl4pvu33DZ49qQtURufZXSLs01bEsEUwu5HGW59hERM=; b=iUFRB6285L12wF
	t+LSI/8MbObPuvkMrCRDo28BexqybMsNWIEnnUDLA/0juoXM2MXavT3Sz2SyDG9u3+aCI0vZp2ET8
	BhrAFlXFOMHZvNx4sBbyGJZ4U20/9m/7j5Gh84T44A2agw1CL/Z0aB0zbaAIcx3QZJ/iMztZIfdnR
	+jP5NyXhumQxfYIvP/myGLZ3dXPAEr9vMOqYBItDz2cQgR33qiwWEMpJ+VlZGpof2vOGH9wdtyapY
	UVnXYL+BZ/x8rrgmlgffMPAXITt19dF13JV0Zk24dX4hF65A4Q7p2B+UJKU74v/DocVxzX4SczGB7
	/0a3arOBvq8LtiYhcrRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVGa-0007aO-NO; Tue, 13 Aug 2019 11:47:04 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVGO-0007ZT-HX
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:46:54 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id D8AB3634C88;
 Tue, 13 Aug 2019 14:46:43 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hxVGF-0000fC-7e; Tue, 13 Aug 2019 14:46:43 +0300
Date: Tue, 13 Aug 2019 14:46:43 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813114643.GA2527@valkosipuli.retiisi.org.uk>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
 <20190813094526.GG835@valkosipuli.retiisi.org.uk>
 <20190813113358.GA28877@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813113358.GA28877@Mani-XPS-13-9360>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_044652_945808_CA5FFEDE 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Tue, Aug 13, 2019 at 05:03:58PM +0530, Manivannan Sadhasivam wrote:
> Hi Sakari,
> 
> Thanks for the review!
> 
> On Tue, Aug 13, 2019 at 12:45:26PM +0300, Sakari Ailus wrote:
> > Hi Manivannan,
> > 
> > On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> > > Add devicetree binding for IMX290 CMOS image sensor.
> > > 
> > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > ---
> > >  .../devicetree/bindings/media/i2c/imx290.txt  | 51 +++++++++++++++++++
> > >  1 file changed, 51 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > 
> > > diff --git a/Documentation/devicetree/bindings/media/i2c/imx290.txt b/Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > new file mode 100644
> > > index 000000000000..7535b5b5b24b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > @@ -0,0 +1,51 @@
> > > +* Sony IMX290 1/2.8-Inch CMOS Image Sensor
> > > +
> > > +The Sony IMX290 is a 1/2.8-Inch CMOS Solid-state image sensor with
> > > +Square Pixel for Color Cameras. It is programmable through I2C and 4-wire
> > > +interfaces. The sensor output is available via CMOS logic parallel SDR output,
> > > +Low voltage LVDS DDR output and CSI-2 serial data output.
> > 
> > If there are three to choose from, then you should specify which one is in
> > use. Given that I think chances remain slim we'd add support for the other
> > two (it's certainly not ruled out though), CSI-2 could be the default. But
> > this needs to be documented.
> > 
> 
> Hmm... I'm not sure here. Bindings should describe the hardware and not the
> limitations of the driver. Here as you said, the sensor can output frames
> in 3 different modes/formats but the driver only supports CSI2. I can add a
> note in the driver but not sure whether dt-binding is the right place or not!

I guess alternatively you could document the necessary bindings for the
other two busses.

But what I'm saying here is that it's highly unlikely they'll be ever
needed, and it'd be mostly a waste of time to implement that. (That said, I
have nothing against the use of these busses, but I've never seen anyone
using them.) Many other devices use defaults for more contentious settings.

> 
> > > +
> > > +Required Properties:
> > > +- compatible: Should be "sony,imx290"
> > > +- reg: I2C bus address of the device
> > > +- clocks: Reference to the xclk clock.
> > > +- clock-names: Should be "xclk".
> > > +- clock-frequency: Frequency of the xclk clock.
> > 
> > ...in Hz.
> > 
> 
> Ack.
> 
> > > +- vdddo-supply: Sensor digital IO regulator.
> > > +- vdda-supply: Sensor analog regulator.
> > > +- vddd-supply: Sensor digital core regulator.
> > > +
> > > +Optional Properties:
> > > +- reset-gpios: Sensor reset GPIO
> > > +
> > > +The imx290 device node should contain one 'port' child node with
> > > +an 'endpoint' subnode. For further reading on port node refer to
> > > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > 
> > Which other properties are relevant for the device?
> 
> Not much other than, clock/data lanes.

Please document data-lanes, and which values it may have.

> 
> > I suppose you can't change the lane order, so clock-lanes is redundant
> > (don't use it in the example) and data-lanes should be monotonically
> > incrementing series from 1 to 4.
> > 
> 
> We can change the order and the example here illustrates how it has been
> wired in FRAMOS module. If I change the lane order like you said, it won't
> work.

I highly doubt that. Neither the driver nor the sensor uses the lane
ordering information.

And even if the driver only supported four lanes, then it should check the
number of lanes is actually four.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
