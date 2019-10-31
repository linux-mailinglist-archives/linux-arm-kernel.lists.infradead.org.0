Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16ECDEB581
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 17:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRtTC8m1ocXUrOTBnHqs9UEp2XDt6CKOencUkWWeppw=; b=NF/fCNHqTDOKjU
	g92WhSdvhyWHMkw3CBriwU5DRjJlb+xSdZsO+RSCsW+wqRbQubGCtdAYp+piXp0ZjIoSy82R2kE6Y
	/dvooWyhonoLwY8SAxSOWx20diM98xo/mmPnsET3Db0Kwu5va0LAPKfurqV68I8dfJmDTF6XkSnAJ
	QocRwPxrCAV5hTOeA75Tj9b8LQO92sRGgjIyae3ZChMbz134gCl5TUnn+sTyOhq0obEM836LdCWXp
	ogGIQ5bBem+6UR1F6Gf4zGPNyyu3tECEmiFEz9d6yg3Oki27Ub27XmjdPYJSsglA2WPZs6UJd52i+
	NcY8O4WpRHxexOu8/x6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQDk8-0007Xv-Dj; Thu, 31 Oct 2019 16:56:16 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQDiu-0005Nr-5w
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 16:55:02 +0000
Received: from pendragon.ideasonboard.com
 (lns-bzn-54-82-251-103-167.adsl.proxad.net [82.251.103.167])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 53149320;
 Thu, 31 Oct 2019 17:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1572540892;
 bh=I0lsKlRo8h8+ZQ76HwSLs3FK8PL5qPzYqQsGyswPjrQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PVK30HORF1u/zgODSSTgbbsJBIHX/VA6zXrPDte4F/kTgR/MFFATBCBH00THDBx12
 MUxE1wrz6ZuhyCCrMcjsnqz+7H25LEtqW5WF2PF2z2ZK68XsFTluV49bMoIaaY3eEI
 GUdPbA0afhnRk+5nRdJMyIX+yzFDMClZIdYGIMYU=
Date: Thu, 31 Oct 2019 18:54:44 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v4 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191031165444.GE5018@pendragon.ideasonboard.com>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191030094902.32582-2-manivannan.sadhasivam@linaro.org>
 <20191031131538.GA9170@pendragon.ideasonboard.com>
 <20191031134512.GB24273@mani>
 <20191031141141.GD5018@pendragon.ideasonboard.com>
 <20191031142817.GK6253@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031142817.GK6253@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_095500_559058_A8FC0E80 
X-CRM114-Status: GOOD (  19.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Oct 31, 2019 at 04:28:17PM +0200, Sakari Ailus wrote:
> On Thu, Oct 31, 2019 at 04:11:41PM +0200, Laurent Pinchart wrote:
> > On Thu, Oct 31, 2019 at 07:15:12PM +0530, Manivannan Sadhasivam wrote:
> >> On Thu, Oct 31, 2019 at 03:15:38PM +0200, Laurent Pinchart wrote:
> >>> On Wed, Oct 30, 2019 at 03:19:01PM +0530, Manivannan Sadhasivam wrote:
> >>>> Add YAML devicetree binding for IMX296 CMOS image sensor. Let's also
> >>>> add MAINTAINERS entry for the binding and driver.
> >>>> 
> >>>> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>>> ---
> >>>>  .../devicetree/bindings/media/i2c/imx296.yaml | 94 +++++++++++++++++++
> >>>>  MAINTAINERS                                   |  8 ++
> >>>>  2 files changed, 102 insertions(+)
> >>>>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>> 
> >>>> diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>> new file mode 100644
> >>>> index 000000000000..c04ec2203268
> >>>> --- /dev/null
> >>>> +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> >>>> @@ -0,0 +1,94 @@
> >>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>>> +%YAML 1.2
> >>>> +---
> >>>> +$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
> >>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>> +
> >>>> +title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
> >>>> +
> >>>> +maintainers:
> >>>> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>>> +
> >>>> +description: |-
> >>>> +  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> >>>> +  sensor with square pixel array and 1.58 M effective pixels. This chip
> >>>> +  features a global shutter with variable charge-integration time. It is
> >>>> +  programmable through I2C and 4-wire interfaces. The sensor output is
> >>>> +  available via CSI-2 serial data output (1 Lane).
> >>>> +
> >>>> +properties:
> >>>> +  compatible:
> >>>> +    const: sony,imx296
> >>>> +
> >>>> +  reg:
> >>>> +    maxItems: 1
> >>>> +
> >>>> +  clocks:
> >>>> +    maxItems: 1
> >>>> +
> >>>> +  clock-names:
> >>>> +    description:
> >>>> +      Input clock for the sensor.
> >>>> +    items:
> >>>> +      - const: mclk
> >>> 
> >>> The pin is named INCK, let's name the clock accordingly.
> >> 
> >> Okay, I thought generic names are preferred here!
> >>  
> >>>> +  clock-frequency:
> >>>> +    description:
> >>>> +      Frequency of the mclk clock in Hertz.
> >>> 
> >>> This shouldn't be needed, you can retrieve the clock frequency at
> >>> runtime from the clock source.
> >> 
> >> Unless the clock source is a fixed one! What if the clock source comes from
> >> SoC? We need to set the rate, right?
> > 
> > In that case, if you want to hardcode the clock in DT, the preferred way
> > is to use the assigned-clock-rates property. Otherwise, if the driver
> > requires a specific clock frequency, it's better to hardcode it in the
> > driver itself. In this specific case, I think assigned-clock-rates is
> > best as the device can support three different clock frequencies.
> 
> Just note that if ACPI support is added to the sensor driver, you'll need
> the clock-frequency property again, for that's the only way how the driver
> will get the clock frequency.

Why is so ? Why can't we implement of assigned-clock-rates for ACPI ?

> This is certainly not something that has to be taken into account in DT
> bindings, but in any case it'll add some lines of code in the driver which
> are not very useful.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
