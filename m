Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 920A8EECCD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 23:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MioWxw3CidNp9ZZWLgt01ZEYDem16jnfCUM/G8RKHmo=; b=YEviq2JZ+Jd5P5
	bnyNwQZ9p4U1jzkcDoblkWfX2wTukqkOj9Gs9rIu7GoU73YvDiP1u3bVoTWGXvLzhT4a9tEwXM5BG
	DnUWSOtGF3Gfr82vI0ezEXJ/zX5rupnbNrPUu0jOjdSRWHPfse0NUrUhU7Zln/zRng/5ZzaPAhNuR
	9iz7l5DU+vdkXlXpTxh2QSdgWEA4RinvGa6R+pEucdmwOz7mNnNh3IHjxPYvI/aWz7XBYG8Mg55ge
	8EdlPzdRJ+oJ26LqxnT2cooOIG4ZBOte10fNFbxyUjRHfHpt9DAnex5nyXhslW6B4J31su8NYLwQe
	+3KyGmQtqsP57m0xtXJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkP1-0001iU-4M; Mon, 04 Nov 2019 22:00:47 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkOu-0001h5-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 22:00:42 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3D50E2D1;
 Mon,  4 Nov 2019 23:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1572904834;
 bh=U7dc9nsQPKj1QZiCGWXXVJuwGqsni7BqpYcYhcA6cnw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L3k5oPOcoS11AhVjBWhfs8etQATrw9dPiF6/5nWFBKt3H7eCsMUsTArKLZOXRrtwZ
 VSOv/+m32oxlN/GXdp6h3c+rKhSzXcqMBbH9CGZwRyBqF9jV0e/PUVZQou9lsvEoBk
 DhptT89wPTL1FqF4XOpyUlJe6x48Jn/gQR02g8YU=
Date: Tue, 5 Nov 2019 00:00:26 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v4 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191104220026.GG4913@pendragon.ideasonboard.com>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191030094902.32582-2-manivannan.sadhasivam@linaro.org>
 <20191031131538.GA9170@pendragon.ideasonboard.com>
 <20191031134512.GB24273@mani>
 <20191031141141.GD5018@pendragon.ideasonboard.com>
 <20191031142817.GK6253@valkosipuli.retiisi.org.uk>
 <20191031165444.GE5018@pendragon.ideasonboard.com>
 <20191031170837.GN6253@valkosipuli.retiisi.org.uk>
 <20191104190201.GF4913@pendragon.ideasonboard.com>
 <20191104213032.GT6253@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104213032.GT6253@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_140040_842324_F5A1A989 
X-CRM114-Status: GOOD (  29.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 robh+dt@kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Mon, Nov 04, 2019 at 11:30:32PM +0200, Sakari Ailus wrote:
> On Mon, Nov 04, 2019 at 09:02:01PM +0200, Laurent Pinchart wrote:
> > On Thu, Oct 31, 2019 at 07:08:37PM +0200, Sakari Ailus wrote:
> >> On Thu, Oct 31, 2019 at 06:54:44PM +0200, Laurent Pinchart wrote:
> >>> On Thu, Oct 31, 2019 at 04:28:17PM +0200, Sakari Ailus wrote:
> >>>> On Thu, Oct 31, 2019 at 04:11:41PM +0200, Laurent Pinchart wrote:
> >>>>> On Thu, Oct 31, 2019 at 07:15:12PM +0530, Manivannan Sadhasivam wrote:
> >>>>>> On Thu, Oct 31, 2019 at 03:15:38PM +0200, Laurent Pinchart wrote:
> >>>>>>> On Wed, Oct 30, 2019 at 03:19:01PM +0530, Manivannan Sadhasivam wrote:
> >>>>>>>> Add YAML devicetree binding for IMX296 CMOS image sensor. Let's also
> >>>>>>>> add MAINTAINERS entry for the binding and driver.
> >>>>>>>> 
> >>>>>>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>>>>>>> ---
> >>>>>>>>  .../devicetree/bindings/media/i2c/imx296.yaml | 94 +++++++++++++++++++
> >>>>>>>>  MAINTAINERS                                   |  8 ++
> >>>>>>>>  2 files changed, 102 insertions(+)
> >>>>>>>>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>>>>>> 
> >>>>>>>> diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>>>>>> new file mode 100644
> >>>>>>>> index 000000000000..c04ec2203268
> >>>>>>>> --- /dev/null
> >>>>>>>> +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>>>>>> @@ -0,0 +1,94 @@
> >>>>>>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>>>>>>> +%YAML 1.2
> >>>>>>>> +---
> >>>>>>>> +$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
> >>>>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>>>>> +
> >>>>>>>> +title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
> >>>>>>>> +
> >>>>>>>> +maintainers:
> >>>>>>>> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>>>>>>> +
> >>>>>>>> +description: |-
> >>>>>>>> +  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> >>>>>>>> +  sensor with square pixel array and 1.58 M effective pixels. This chip
> >>>>>>>> +  features a global shutter with variable charge-integration time. It is
> >>>>>>>> +  programmable through I2C and 4-wire interfaces. The sensor output is
> >>>>>>>> +  available via CSI-2 serial data output (1 Lane).
> >>>>>>>> +
> >>>>>>>> +properties:
> >>>>>>>> +  compatible:
> >>>>>>>> +    const: sony,imx296
> >>>>>>>> +
> >>>>>>>> +  reg:
> >>>>>>>> +    maxItems: 1
> >>>>>>>> +
> >>>>>>>> +  clocks:
> >>>>>>>> +    maxItems: 1
> >>>>>>>> +
> >>>>>>>> +  clock-names:
> >>>>>>>> +    description:
> >>>>>>>> +      Input clock for the sensor.
> >>>>>>>> +    items:
> >>>>>>>> +      - const: mclk
> >>>>>>> 
> >>>>>>> The pin is named INCK, let's name the clock accordingly.
> >>>>>> 
> >>>>>> Okay, I thought generic names are preferred here!
> >>>>>>  
> >>>>>>>> +  clock-frequency:
> >>>>>>>> +    description:
> >>>>>>>> +      Frequency of the mclk clock in Hertz.
> >>>>>>> 
> >>>>>>> This shouldn't be needed, you can retrieve the clock frequency at
> >>>>>>> runtime from the clock source.
> >>>>>> 
> >>>>>> Unless the clock source is a fixed one! What if the clock source comes from
> >>>>>> SoC? We need to set the rate, right?
> >>>>> 
> >>>>> In that case, if you want to hardcode the clock in DT, the preferred way
> >>>>> is to use the assigned-clock-rates property. Otherwise, if the driver
> >>>>> requires a specific clock frequency, it's better to hardcode it in the
> >>>>> driver itself. In this specific case, I think assigned-clock-rates is
> >>>>> best as the device can support three different clock frequencies.
> >>>> 
> >>>> Just note that if ACPI support is added to the sensor driver, you'll need
> >>>> the clock-frequency property again, for that's the only way how the driver
> >>>> will get the clock frequency.
> >>> 
> >>> Why is so ? Why can't we implement of assigned-clock-rates for ACPI ?
> >> 
> >> ACPI doesn't deal with clocks as such. So there's also no ACPI defined way
> >> to access clocks specifically, including the frequency --- instead the
> >> clock is controlled by an AML methods which implement power on and off
> >> sequences for the device.
> > 
> > It's a shortcoming of ACPI, which should be addressed at the ACPI level.
> > We shouldn't polute the DT bindings with a clock-frequency property for
> > this reason.
> 
> It's really not a shortcoming but a design decision: what belongs to the
> scope of the firmware? And in this case system and device power management
> implementation is included. I do not believe this will be revisited in any
> foreseeable future, i.e. there will be no clock control interface for ACPI.

I'm not saying there's a need to control clocks, but if the driver of
the camera sensor needs to know the frequency of an externally supplied
clock, the firmware should give a way for the operating system to
retrieve the clock frequency. Doing so with a clock-frequency in the
sensor node is a hack to work around a limitation of ACPI, as the Linux
model to retrieve clock frequencies it to interogate the clock provider.

> Explicitly stating the frequency also has an added benefit: the driver
> can be certain that the given frequency is intended to be used on the
> board. Otherwise the frequency could have been changed by e.g. another
> driver. This does matter, as the frequency determines which link
> frequencies can be achieved, and as the two effectively have to be
> compliant, an unintended external clock frequency also means there will be
> no match between possible link frequencies and configured link frequencies.

This doesn't solve anything, quite the contrary. With
assigned-clock-rates the frequency is set once in the firmware, the
operating system configures the clock provider to set the frequency, and
the sensor driver then queries the provider. There's a single source of
clock frequency information. With clock-frequency, you have two sources
of information, the value of the property and the value set when
programming the clock provider in the firmware (either in the BIOS/UEFI,
or in the ACPI DSDT AML). That's a chance to get it wrong, and we both
know how reliable firmware is.

Furthermore, the clock-frequency property requires drivers to be
informed of firmware details. On DT-based systems they should use
clk_get_rate(), while on ACPI-based systems they should read the
clock-frequency property. If you want to support ACPI, this should be
hidden by the firmware, with retrieval of clock frequency from the
firmware handled in core code.

One option would be to create fixed clocks automatically for ACPI
devices that report clock frequency through an ACPI-specific (as in
defined outside of the ACPI standard, through DSD for instance) mean.
Drivers would then be able to call clk_get() and clk_get_rate().

> I.e. no images to capture either.
> 
> That said, I don't know if this has been a practical issue in the past.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
