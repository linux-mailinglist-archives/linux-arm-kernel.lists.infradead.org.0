Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C0B8B704
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lSHT6ssCJZ5glfReCOfadTnjpgGkCfmuJA80T6dr4oI=; b=q37P0W3xbFK85u
	d5stR+0hXuf9fM2Np5Z4fVCOokjpS0IjhAYUzoGABMZm5r5bE8BRfzxCDdDvkzsmDg0AmFpW3MGA1
	Yk9fOQTjBXARenfZLh2ARrnaWe+dzZlCXGHyZpDfSBdrsctn1AdIGTbXPwMbKqXQiuOQcO8IOmMZA
	Sdd3x3DqsG3xLhjBNdb/e+IeFkd66WN+4o6cQzUO7wdllLQ++InmAHL4PGS6XbRFdo6yAkB9+HZeM
	u1LkKUtV3U9FAyTBe+PxMGJM4GeylCXK1RWUs2kSb1b6njVQdXNhdh4wZBwhOWuShoeTbjzHesIAS
	318FglNc2V/GfMJQS0pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxV4N-0006UI-Uf; Tue, 13 Aug 2019 11:34:28 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxV47-0006TD-4M
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:34:12 +0000
Received: by mail-pg1-x543.google.com with SMTP id i18so51122954pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 04:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aqKzsId2hKvcmQF7fGKO1YK1h2GnFRh9+uXig4ZlhlI=;
 b=qIM74CehEWqpruIVCMxZ1SU6H+bafjp4CnsZA1QUPeAuSeAXNz0eJuPF1cvKYzNPrB
 Urm06rTx/UJ10JMASVZP7ORYWict6oCGdi8OT1E2aX8Bmx2GqZsjr6TemvVAU+g1KHjr
 XJV88ycQnQ9nqtp2YkULT9jrRkG7Xb/QMehenAgC+HxOSsfOJ1pc5rEu5YgN3/c/dhuP
 0x4VToIoFdcK6KsaZKVf2eTz52vHeh3UDKxpe768xMZHZB88ySoKj4PV38tA7ZDTqfvV
 0q+76Tfv0+ULGbjk7PkKRYbaMNqCPrP4086Tq5UuMSccQGKdDl01hven962hEj4XK0JI
 5EHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aqKzsId2hKvcmQF7fGKO1YK1h2GnFRh9+uXig4ZlhlI=;
 b=OGC3FIbIv/php7ETV0wwrMqrbAVygh7A9xfgx2IOSTAKwEuMnVT7gNPTxA7FWmXwO0
 BO4MmR7Pb5Ke+WVNAQcFTMrkJJXPDVW2VhvySyg6zxe3PNpovRG5qiLCR1JmBvfVTnHV
 WJff7XFWwdD9lv7HrNhLAxvIGSHllBvm5/OcVyaUj6qrx0Dfvg5LHAM7rlMoMRyCeti9
 VpUWaiYMoI/bGK/2flqK79CxGjWWdJnkCVb4/3lIqYm4zE8DnBKxgDoxOAmWjAv66auW
 xBQIo+ntooPoS0nua7m00oV965Z2fNNH7tI6NCB9pC2jFJtvTSxpb1MR1wtcgNiyj0zP
 eDKA==
X-Gm-Message-State: APjAAAVIsEm+EnrFyl8Jbk6psF+ve5WCKKLh4Zq4mXVUfRGMurkalsfL
 PYC+UecggGh1x08BAN4OYJAL
X-Google-Smtp-Source: APXvYqxFqGvvALogO0qGnnxAWwPceWM61LYF6yJdHePWaHoUBIRZ6KPZx+AQ7CTcd9g3uFciYU6ehg==
X-Received: by 2002:a17:90a:bc42:: with SMTP id
 t2mr1777337pjv.121.1565696047695; 
 Tue, 13 Aug 2019 04:34:07 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:649c:6ce0:9d44:669c:5d6c:bc5f])
 by smtp.gmail.com with ESMTPSA id o24sm199536009pfp.135.2019.08.13.04.34.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 13 Aug 2019 04:34:07 -0700 (PDT)
Date: Tue, 13 Aug 2019 17:03:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add IMX290 CMOS sensor
 binding
Message-ID: <20190813113358.GA28877@Mani-XPS-13-9360>
References: <20190806130938.19916-1-manivannan.sadhasivam@linaro.org>
 <20190806130938.19916-2-manivannan.sadhasivam@linaro.org>
 <20190813094526.GG835@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813094526.GG835@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_043411_176864_B7E7C7D9 
X-CRM114-Status: GOOD (  28.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Sakari,

Thanks for the review!

On Tue, Aug 13, 2019 at 12:45:26PM +0300, Sakari Ailus wrote:
> Hi Manivannan,
> 
> On Tue, Aug 06, 2019 at 06:39:36PM +0530, Manivannan Sadhasivam wrote:
> > Add devicetree binding for IMX290 CMOS image sensor.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../devicetree/bindings/media/i2c/imx290.txt  | 51 +++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx290.txt
> > 
> > diff --git a/Documentation/devicetree/bindings/media/i2c/imx290.txt b/Documentation/devicetree/bindings/media/i2c/imx290.txt
> > new file mode 100644
> > index 000000000000..7535b5b5b24b
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/imx290.txt
> > @@ -0,0 +1,51 @@
> > +* Sony IMX290 1/2.8-Inch CMOS Image Sensor
> > +
> > +The Sony IMX290 is a 1/2.8-Inch CMOS Solid-state image sensor with
> > +Square Pixel for Color Cameras. It is programmable through I2C and 4-wire
> > +interfaces. The sensor output is available via CMOS logic parallel SDR output,
> > +Low voltage LVDS DDR output and CSI-2 serial data output.
> 
> If there are three to choose from, then you should specify which one is in
> use. Given that I think chances remain slim we'd add support for the other
> two (it's certainly not ruled out though), CSI-2 could be the default. But
> this needs to be documented.
> 

Hmm... I'm not sure here. Bindings should describe the hardware and not the
limitations of the driver. Here as you said, the sensor can output frames
in 3 different modes/formats but the driver only supports CSI2. I can add a
note in the driver but not sure whether dt-binding is the right place or not!

> > +
> > +Required Properties:
> > +- compatible: Should be "sony,imx290"
> > +- reg: I2C bus address of the device
> > +- clocks: Reference to the xclk clock.
> > +- clock-names: Should be "xclk".
> > +- clock-frequency: Frequency of the xclk clock.
> 
> ...in Hz.
> 

Ack.

> > +- vdddo-supply: Sensor digital IO regulator.
> > +- vdda-supply: Sensor analog regulator.
> > +- vddd-supply: Sensor digital core regulator.
> > +
> > +Optional Properties:
> > +- reset-gpios: Sensor reset GPIO
> > +
> > +The imx290 device node should contain one 'port' child node with
> > +an 'endpoint' subnode. For further reading on port node refer to
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> 
> Which other properties are relevant for the device?

Not much other than, clock/data lanes.

> I suppose you can't change the lane order, so clock-lanes is redundant
> (don't use it in the example) and data-lanes should be monotonically
> incrementing series from 1 to 4.
> 

We can change the order and the example here illustrates how it has been
wired in FRAMOS module. If I change the lane order like you said, it won't
work.

> > +
> > +Example:
> > +	&i2c1 {
> > +		...
> > +		imx290: imx290@1a {
> 
> imx290: camera-sensor@1a {

Ack.

Thanks,
Mani

> 
> > +			compatible = "sony,imx290";
> > +			reg = <0x1a>;
> > +
> > +			reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
> > +			pinctrl-names = "default";
> > +			pinctrl-0 = <&camera_rear_default>;
> > +
> > +			clocks = <&gcc GCC_CAMSS_MCLK0_CLK>;
> > +			clock-names = "xclk";
> > +			clock-frequency = <37125000>;
> > +
> > +			vdddo-supply = <&camera_vdddo_1v8>;
> > +			vdda-supply = <&camera_vdda_2v8>;
> > +			vddd-supply = <&camera_vddd_1v5>;
> > +
> > +			port {
> > +				imx290_ep: endpoint {
> > +					clock-lanes = <1>;
> > +					data-lanes = <0 2 3 4>;
> > +					remote-endpoint = <&csiphy0_ep>;
> > +				};
> > +			};
> > +		};
> 
> -- 
> Regards,
> 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
