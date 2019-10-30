Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49BAE9B3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 13:01:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+7oCHQ+XtrvvfWzAhcZDy5AqvaylUjCBs7ZULdtAN0=; b=XXtkmfjmrjiJvn
	eSM1TW9P2y5NJMj3gZr77TGiivKUFkzIXcfBw389Q/EzTkqz6z5AOAKaP6WrYtZRceBEqxaxPh8Q7
	Hw0YdLjQs0GBRWix91fCwZxI/TNFDQ0zI+1CiUGIlF5Ew43SimmxFnD4CnZsia0COGLyZHJylN2LA
	h2mH7xfrnxJ8jVIyty+/iMNN0wRpKGm+vZSDQneip/6MsfWP2TI0HxGJZtzTm7wxpXdQdr6ky/Bk3
	ZuTTCENgyrlFTU7+gXIxPEvBe+CHdlClnWAUWk+msOX7y3jxLaIgy1SVKeSeFxuuL8FAkJ4o3QzyJ
	Q6NHB9H6lNlmzQ78wiwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPmfF-00085f-Pi; Wed, 30 Oct 2019 12:01:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPmf5-00085A-KL
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 12:01:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id u23so1364914pgo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 05:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pn2SBbNltYyaVGymDbdAPJdCwQZFHAgjh2Z52q+dj1A=;
 b=dwwFFn4mrIwtWIN6ANiIwElOwApzWsI7v1i7rx0h2QZ+LjebgtOSslaOAb91tjz2W8
 pW0K/CNndOdBdaBssesEraMc8rUJYFv03ToPABpl5WVro25hduRcjipHBqXNGX4dVFB5
 6OJD1IirtOdZ0wTeDIZdYrJE3V/tVC3xhJuGbMKwuBNtj22daYgkS/mUxtS8CXIHlTaL
 hR2QEzC4MJ4Ri0K/5yWJwe8j0kGK7ly9qbdAkY1GOyykhTuwLu002sLFVWSCDusWuJzi
 109l6LAYkFoxd5FDekLBmo5RpGpFLfPUxlMfkT0Dje7ryXziyzpZa08Y4nrRqquV8S99
 Duhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pn2SBbNltYyaVGymDbdAPJdCwQZFHAgjh2Z52q+dj1A=;
 b=TZh9uQtb5wgLiaefaZaC3tzjnHczLgFXu9/5RfcmDhfSn2mQHgAlVa6o1APnIS9JTr
 yuiLzYETvStCSGwOd0uq6u1hW5sShigaG7EI05gowqB6duPA23dC2s0RrdrkIfR+qnz9
 JI9AkxQOEeA2KH5e4Xvpp4HnJtzRmgD2oxogLYkb28hAbIlv1kFzXTZAI7vQRE58jILx
 GzmxpKv1BK1eg37YRmA03BraXURCTMkaHoz4jVr9idRj1K8hCNCH0K/PJk/9gzCb2l/M
 fAF+chqTDmaVUafWDLZ94WXIXuAociRWejRyxaiY4HxyHpZz/vUnm6r0hpeKeCV4EvhP
 pGPA==
X-Gm-Message-State: APjAAAVdWbA2NyCeZGv6aIMk7PeRWoB44VhWHP/ex2WBIQv0+w/sWMIU
 9sXEZNrVCmoy//pNkB+lk2oG
X-Google-Smtp-Source: APXvYqzZ4kqchrmVDuSmUbMpCOHr9OhgeLDhCral1RgOulvxlW5oUWV1FdBYh1NOIHktZhDyzxsfNw==
X-Received: by 2002:a17:90b:282:: with SMTP id
 az2mr13396510pjb.23.1572436874465; 
 Wed, 30 Oct 2019 05:01:14 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:618e:77d9:c9fa:423a:3851:8df4])
 by smtp.gmail.com with ESMTPSA id q185sm4328613pfc.153.2019.10.30.05.01.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 30 Oct 2019 05:01:13 -0700 (PDT)
Date: Wed, 30 Oct 2019 17:31:05 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v4 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191030120105.GA11432@Mani-XPS-13-9360>
References: <20191030094902.32582-1-manivannan.sadhasivam@linaro.org>
 <20191030094902.32582-2-manivannan.sadhasivam@linaro.org>
 <20191030115328.GA6253@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191030115328.GA6253@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_050115_730289_374CB742 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Wed, Oct 30, 2019 at 01:53:28PM +0200, Sakari Ailus wrote:
> Hi Nabuvannan,
> 
> On Wed, Oct 30, 2019 at 03:19:01PM +0530, Manivannan Sadhasivam wrote:
> > Add YAML devicetree binding for IMX296 CMOS image sensor. Let's also
> > add MAINTAINERS entry for the binding and driver.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../devicetree/bindings/media/i2c/imx296.yaml | 94 +++++++++++++++++++
> >  MAINTAINERS                                   |  8 ++
> >  2 files changed, 102 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.yaml b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > new file mode 100644
> > index 000000000000..c04ec2203268
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/imx296.yaml
> > @@ -0,0 +1,94 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/i2c/imx296.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Sony IMX296 1/2.8-Inch CMOS Image Sensor
> > +
> > +maintainers:
> > +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > +
> > +description: |-
> > +  The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> > +  sensor with square pixel array and 1.58 M effective pixels. This chip
> > +  features a global shutter with variable charge-integration time. It is
> > +  programmable through I2C and 4-wire interfaces. The sensor output is
> > +  available via CSI-2 serial data output (1 Lane).
> > +
> > +properties:
> > +  compatible:
> > +    const: sony,imx296
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    description:
> > +      Input clock for the sensor.
> > +    items:
> > +      - const: mclk
> > +
> > +  clock-frequency:
> > +    description:
> > +      Frequency of the mclk clock in Hertz.
> > +
> > +  vddo-supply:
> > +    description:
> > +      Definition of the regulator used as interface power supply.
> > +
> > +  vdda-supply:
> > +    description:
> > +      Definition of the regulator used as analog power supply.
> > +
> > +  vddd-supply:
> > +    description:
> > +      Definition of the regulator used as digital power supply.
> > +
> > +  reset-gpios:
> > +    description:
> > +      The phandle and specifier for the GPIO that controls sensor reset.
> > +    maxItems: 1
> > +
> > +  port: true
> 
> You're missing "type: object" under port.
> 

I did that intentionally, since there are other places where I can see the
"type" field not specified. So, I was not sure about that. Most of the
display bindings don't specify "type" and they are most available ones.
I don't think the "port" property differs between cameras and displays.
So I went with that.

Thanks,
Mani

> -- 
> Regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
