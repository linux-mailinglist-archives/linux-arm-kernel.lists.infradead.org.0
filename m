Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 495E2EE7DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 20:02:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/cBGcU82XDFb00zvt2aU9XUnxmAZclUg8zKx2U9pYI=; b=ThhT/zKju2sJHA
	dEcj1R8iJRcE8Ss13QQP8MHHGjgAclRe2trv0EPdl6LeSJ0EO26Ydpv09LMbR06uUZqTHt1aGiCAa
	JSdM3Nrb3tMMBBFpwOUYPYX8bGmC4iy46igcgnIvqiM5/i4v1wodJPhwzCkYYYWxs5MRXY+P9PDxZ
	3QTJ3JXNMiqqqN3/jy0RgCnVcqAr0cD6W7qw7tY30dEduWAOtN4RcDBcnrZyenDtbuCS3dy2S6H9c
	2/j7d2IzHIuWks0ibD9mXAmX4r61UrDTJhCmGOwAbsv5lXaX709gcg4424Cd/BUL6/rZisq0aqlo4
	ViM9mM7KrbZ5EZsxlGAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhcW-00066S-5O; Mon, 04 Nov 2019 19:02:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhcO-00064v-JD
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 19:02:26 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2257752C;
 Mon,  4 Nov 2019 20:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1572894129;
 bh=kvR1ciF/jrbAVq1q5F7pP9qO8GkfA6eHj67avqWv0NA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tBXMnl5Gr+CbG5Gux5GYBO40MA0CKG6md1kU/uj7NCZB9A8mD5/3WF2OQDT1e5RKB
 I2/ea+yCwoMy/5l6CO9/Qu5HWEYAPtbikz3JnWq9Jahru6r/zuc8gc9qWVozpr9Jq6
 ThFIZuX3jjf7Ut32TdgwLts4//hgObWR1BDwvYhs=
Date: Mon, 4 Nov 2019 21:02:01 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v4 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191104190201.GF4913@pendragon.ideasonboard.com>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191030094902.32582-2-manivannan.sadhasivam@linaro.org>
 <20191031131538.GA9170@pendragon.ideasonboard.com>
 <20191031134512.GB24273@mani>
 <20191031141141.GD5018@pendragon.ideasonboard.com>
 <20191031142817.GK6253@valkosipuli.retiisi.org.uk>
 <20191031165444.GE5018@pendragon.ideasonboard.com>
 <20191031170837.GN6253@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031170837.GN6253@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_110224_925424_AEF45322 
X-CRM114-Status: GOOD (  19.81  )
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

On Thu, Oct 31, 2019 at 07:08:37PM +0200, Sakari Ailus wrote:
> On Thu, Oct 31, 2019 at 06:54:44PM +0200, Laurent Pinchart wrote:
> > On Thu, Oct 31, 2019 at 04:28:17PM +0200, Sakari Ailus wrote:
> >> On Thu, Oct 31, 2019 at 04:11:41PM +0200, Laurent Pinchart wrote:
> >>> On Thu, Oct 31, 2019 at 07:15:12PM +0530, Manivannan Sadhasivam wrote:
> >>>> On Thu, Oct 31, 2019 at 03:15:38PM +0200, Laurent Pinchart wrote:
> >>>>> On Wed, Oct 30, 2019 at 03:19:01PM +0530, Manivannan Sadhasivam wrote:
> >>>>>> Add YAML devicetree binding for IMX296 CMOS image sensor. Let's also
> >>>>>> add MAINTAINERS entry for the binding and driver.
> >>>>>> 
> >>>>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>>>>> ---
> >>>>>>  .../devicetree/bindings/media/i2c/imx296.yaml | 94 +++++++++++++++++++
> >>>>>>  MAINTAINERS                                   |  8 ++
> >>>>>>  2 files changed, 102 insertions(+)
> >>>>>>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>>>> 
> >>>>>> diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>>>> new file mode 100644
> >>>>>> index 000000000000..c04ec2203268
> >>>>>> --- /dev/null
> >>>>>> +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>>>> @@ -0,0 +1,94 @@
> >>>>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>>>>> +%YAML 1.2
> >>>>>> +---
> >>>>>> +$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
> >>>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>>>> +
> >>>>>> +title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
> >>>>>> +
> >>>>>> +maintainers:
> >>>>>> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>>>>> +
> >>>>>> +description: |-
> >>>>>> +  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> >>>>>> +  sensor with square pixel array and 1.58 M effective pixels. This chip
> >>>>>> +  features a global shutter with variable charge-integration time. It is
> >>>>>> +  programmable through I2C and 4-wire interfaces. The sensor output is
> >>>>>> +  available via CSI-2 serial data output (1 Lane).
> >>>>>> +
> >>>>>> +properties:
> >>>>>> +  compatible:
> >>>>>> +    const: sony,imx296
> >>>>>> +
> >>>>>> +  reg:
> >>>>>> +    maxItems: 1
> >>>>>> +
> >>>>>> +  clocks:
> >>>>>> +    maxItems: 1
> >>>>>> +
> >>>>>> +  clock-names:
> >>>>>> +    description:
> >>>>>> +      Input clock for the sensor.
> >>>>>> +    items:
> >>>>>> +      - const: mclk
> >>>>> 
> >>>>> The pin is named INCK, let's name the clock accordingly.
> >>>> 
> >>>> Okay, I thought generic names are preferred here!
> >>>>  
> >>>>>> +  clock-frequency:
> >>>>>> +    description:
> >>>>>> +      Frequency of the mclk clock in Hertz.
> >>>>> 
> >>>>> This shouldn't be needed, you can retrieve the clock frequency at
> >>>>> runtime from the clock source.
> >>>> 
> >>>> Unless the clock source is a fixed one! What if the clock source comes from
> >>>> SoC? We need to set the rate, right?
> >>> 
> >>> In that case, if you want to hardcode the clock in DT, the preferred way
> >>> is to use the assigned-clock-rates property. Otherwise, if the driver
> >>> requires a specific clock frequency, it's better to hardcode it in the
> >>> driver itself. In this specific case, I think assigned-clock-rates is
> >>> best as the device can support three different clock frequencies.
> >> 
> >> Just note that if ACPI support is added to the sensor driver, you'll need
> >> the clock-frequency property again, for that's the only way how the driver
> >> will get the clock frequency.
> > 
> > Why is so ? Why can't we implement of assigned-clock-rates for ACPI ?
> 
> ACPI doesn't deal with clocks as such. So there's also no ACPI defined way
> to access clocks specifically, including the frequency --- instead the
> clock is controlled by an AML methods which implement power on and off
> sequences for the device.

It's a shortcoming of ACPI, which should be addressed at the ACPI level.
We shouldn't polute the DT bindings with a clock-frequency property for
this reason.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
