Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91238BB50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:20:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hmI2t8hfRA6xt1bHiJtS2pPkSqz4SNbqRqJkEci9cSU=; b=ne5Puq1690vu2S
	n35IkWnUeZnHVy2/qSnPawOSXBIdrpNirum7iYWbi6V3v5is1OSa/JGdqpBEgBZkl61OZIjCsuQCs
	Js7MGbsgZVQGMjkav1LiC1KbjOjzT2EbkpmwO+O0QzrezMDjSlvh/UE3803Q1brCYUDCWSxJVhtdB
	Ba0FZnSZds/BEDpYyLc5kNFHQe974stG2ruvfzCNp9j5J1Gh4GgeFHPTtW1jDLuyyoTOgYuM6ClVN
	gW7x6eqPVIMBRKEnTK219zJSccg3z6MXab3KaibsHfEYnUsq6Zohm6v2mzJKlpIefiuORPbifHH/n
	yJffNvN2BXUQEAg0yHcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXeq-0006ZV-LV; Tue, 13 Aug 2019 14:20:17 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXd0-0005hB-Mr
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:18:26 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 5863F634C88;
 Tue, 13 Aug 2019 17:18:09 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hxXcm-0000gO-Li; Tue, 13 Aug 2019 17:18:08 +0300
Date: Tue, 13 Aug 2019 17:18:08 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813141808.GF2527@valkosipuli.retiisi.org.uk>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
 <20190813094526.GG835@valkosipuli.retiisi.org.uk>
 <20190813113358.GA28877@Mani-XPS-13-9360>
 <20190813114643.GA2527@valkosipuli.retiisi.org.uk>
 <20190813121400.GA29378@Mani-XPS-13-9360>
 <20190813122212.GE2527@valkosipuli.retiisi.org.uk>
 <20190813135209.GA30945@Mani-XPS-13-9360>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813135209.GA30945@Mani-XPS-13-9360>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_071824_135329_6D1A2DDE 
X-CRM114-Status: GOOD (  34.77  )
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

Hi Mani,

On Tue, Aug 13, 2019 at 07:22:09PM +0530, Manivannan Sadhasivam wrote:
> Hi Sakari,
> 
> On Tue, Aug 13, 2019 at 03:22:12PM +0300, Sakari Ailus wrote:
> > Hi Manivannan,
> > 
> > On Tue, Aug 13, 2019 at 05:44:00PM +0530, Manivannan Sadhasivam wrote:
> > > Hi Sakari,
> > > 
> > > On Tue, Aug 13, 2019 at 02:46:43PM +0300, Sakari Ailus wrote:
> > > > Hi Manivannan,
> > > > 
> > > > On Tue, Aug 13, 2019 at 05:03:58PM +0530, Manivannan Sadhasivam wrote:
> > > > > Hi Sakari,
> > > > > 
> > > > > Thanks for the review!
> > > > > 
> > > > > On Tue, Aug 13, 2019 at 12:45:26PM +0300, Sakari Ailus wrote:
> > > > > > Hi Manivannan,
> > > > > > 
> > > > > > On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> > > > > > > Add devicetree binding for IMX290 CMOS image sensor.
> > > > > > > 
> > > > > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > > > ---
> > > > > > >  .../devicetree/bindings/media/i2c/imx290.txt  | 51 +++++++++++++++++++
> > > > > > >  1 file changed, 51 insertions(+)
> > > > > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > > > > > 
> > > > > > > diff --git a/Documentation/devicetree/bindings/media/i2c/imx290.txt b/Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > > > > > new file mode 100644
> > > > > > > index 000000000000..7535b5b5b24b
> > > > > > > --- /dev/null
> > > > > > > +++ b/Documentation/devicetree/bindings/media/i2c/imx290.txt
> > > > > > > @@ -0,0 +1,51 @@
> > > > > > > +* Sony IMX290 1/2.8-Inch CMOS Image Sensor
> > > > > > > +
> > > > > > > +The Sony IMX290 is a 1/2.8-Inch CMOS Solid-state image sensor with
> > > > > > > +Square Pixel for Color Cameras. It is programmable through I2C and 4-wire
> > > > > > > +interfaces. The sensor output is available via CMOS logic parallel SDR output,
> > > > > > > +Low voltage LVDS DDR output and CSI-2 serial data output.
> > > > > > 
> > > > > > If there are three to choose from, then you should specify which one is in
> > > > > > use. Given that I think chances remain slim we'd add support for the other
> > > > > > two (it's certainly not ruled out though), CSI-2 could be the default. But
> > > > > > this needs to be documented.
> > > > > > 
> > > > > 
> > > > > Hmm... I'm not sure here. Bindings should describe the hardware and not the
> > > > > limitations of the driver. Here as you said, the sensor can output frames
> > > > > in 3 different modes/formats but the driver only supports CSI2. I can add a
> > > > > note in the driver but not sure whether dt-binding is the right place or not!
> > > > 
> > > > I guess alternatively you could document the necessary bindings for the
> > > > other two busses.
> > > > 
> > > > But what I'm saying here is that it's highly unlikely they'll be ever
> > > > needed, and it'd be mostly a waste of time to implement that. (That said, I
> > > > have nothing against the use of these busses, but I've never seen anyone
> > > > using them.) Many other devices use defaults for more contentious settings.
> > > > 
> > > 
> > > Agree with you but my question was, whether I could document the supported
> > > mode in bindings or not! I have seen comments from Rob in the past that the
> > > binding should not document the limitations of the driver. But anyway, one
> > > can infer from the current binding that only CSI2 is supported for now, it's
> > > just stating it explicitly makes me doubtful!
> > 
> > I think it could be e.g.:
> > 
> > The CSI-2 bus is the default. No bindings have been defined for the other
> > busses.
> > 
> 
> Ack.
> 
> > ...
> > 
> > > > > > I suppose you can't change the lane order, so clock-lanes is redundant
> > > > > > (don't use it in the example) and data-lanes should be monotonically
> > > > > > incrementing series from 1 to 4.
> > > > > > 
> > > > > 
> > > > > We can change the order and the example here illustrates how it has been
> > > > > wired in FRAMOS module. If I change the lane order like you said, it won't
> > > > > work.
> > > > 
> > > > I highly doubt that. Neither the driver nor the sensor uses the lane
> > > > ordering information.
> > > > 
> > > 
> > > Agree but CSI2 host will need this informtion, right? Please correct me if
> > > I'm wrong!
> > 
> > The CSI-2 receiver may need that configuration, but it's not addressed by a
> > sensor's binding documentation (it's configured in the endpoint on the
> > receiver's side).
> > 
> 
> Yes but I thought that documenting the sensor lane configuration based on one
> example implementation might help interfacing w/ different hosts. Anyway, to be
> host agnostic, I can drop the clock lane and make data lane start from 1 as you
> suggested.

You could well have a different configuration from the default in an
example. But my point is that this is simply the wrong place for
configuring the lane mapping on the host.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
