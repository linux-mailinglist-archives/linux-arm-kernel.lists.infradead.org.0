Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E7DD8B2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:38:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oN1OngSBdSBT+pFF1CS0Axt1H8x9gExjN2H3/o2AHU=; b=AAm+ZgmYZdClrg
	TF7wd6GuE3K4VrfJvF250w6quHcF0pimr7T1qzgFnI8dlLmeQqL2AeX9BOf2WPSi12Ukx5HtNT/Dm
	7XEEC4SSmu9zVATQyRWe4jworZdN+ekUH5ikvoopfH3RnaxnlWxsNuZTIay27cvims3Ab1yJInLc6
	rEAXmbNkA1Cq39wwpX4ZRApHGTVd7lfLuzZY/cPKwtd2ioNXFZqUiXYxizfE1VVWy/eRISIykIJH4
	Nqjatv8IS/lzlF3Zphi7C58UC+eMN/4lucIMZ1Bzmb8KuOfFzvI1c5HlJGy3D+ALDsdo18mis+Qlq
	6PG7eiv0dIZGIaV3CzXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKeoq-0005kh-5Y; Wed, 16 Oct 2019 08:38:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKeof-0005jK-TF
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:37:59 +0000
Received: by mail-pg1-x541.google.com with SMTP id 23so13871056pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 01:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WWx1FFGKOuJRMtTkmthoLwPW2Kzf5U2CvR5+YTbodjA=;
 b=xAo6znHjl9Ltmw0vFumuJohwKsXKRXzV5r7dKsvyLhx07WH33ymhlFmV5JYx4A6Q/P
 dwNiGyzV4LQPENRdjWLcE+KhysJS+FpDi7o7o1LqTO89hSS/57UbHIwL9OkUrBtm9d9Z
 seJvCEGO6N7Z5WbVVOV4j1xbr+cxt2cddiTtV825tcj+vOPJuzATkOhvRzXgOIOYOkEO
 j2iZyGrgrp5+fE48Ue6kUdwTtf+itGbLbuv1nBwIjSmnDorusk8z1dCLe8vzNLvzqh9A
 yk9JYyZhinPISSSBTv7ZRuQzRp9Oan1cEIyciN76kcIEluvWjdvQo/Lb+u7966xVJ8PC
 oBHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WWx1FFGKOuJRMtTkmthoLwPW2Kzf5U2CvR5+YTbodjA=;
 b=kHddGpkEUL8zPCYLKHQfxRG4bwiuCu4X1+wKKD9HH1e9Rm0nwIv/60v1aOdrY9QwjX
 5ANNJyafxEqHDqMoFpZmhVZEVU9wxnQNF271uO36sa/PF5h89kOKl4/sxcD4ANrGc7J7
 waKZhxASAUnht8rXZoCx1bSNvIV+rr79/ycH5B1mQtFh8KE6NET8/Kv2C5hRvEkYRMmW
 DrfLUemGswNR9NdHt9GautWihq/v3Gamr6XhIlHweoWKZKwhQ1at5wk23Pr+JBsOd78s
 t5p2XKGhYFsRSMf0MNhDSNpwG+CcCoEM4fAKKyZWUmDdotu4UKa25nYD5/1R6lHKEeuO
 OhSg==
X-Gm-Message-State: APjAAAXasKcSfMA3Th978mjiDXWvV7QirhZZFR7i8E0btr0vQaMi7TbP
 oAoLYKWHrn7bTu++9lFgF7id
X-Google-Smtp-Source: APXvYqywjX6EG0Vqzgqg0Uy+SXn8Ybru/4U99k3x4yloIPg3KKmXpn26QBKc4s/l+yy1i0k3CZZVSw==
X-Received: by 2002:a17:90a:246e:: with SMTP id
 h101mr3523435pje.133.1571215076312; 
 Wed, 16 Oct 2019 01:37:56 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6099:7d36:58bc:3eb9:a64a:7942])
 by smtp.gmail.com with ESMTPSA id v8sm4594520pje.6.2019.10.16.01.37.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 16 Oct 2019 01:37:55 -0700 (PDT)
Date: Wed, 16 Oct 2019 14:07:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191016083748.GA2288@Mani-XPS-13-9360>
References: <20191011035613.13598-1-manivannan.sadhasivam@linaro.org>
 <20191011035613.13598-2-manivannan.sadhasivam@linaro.org>
 <20191015224554.GA5634@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015224554.GA5634@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_013757_945470_8A8809B8 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel@vger.kernel.org, a.brela@framos.com, sakari.ailus@iki.fi,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Tue, Oct 15, 2019 at 05:45:54PM -0500, Rob Herring wrote:
> On Fri, Oct 11, 2019 at 09:26:12AM +0530, Manivannan Sadhasivam wrote:
> > Add devicetree binding for IMX296 CMOS image sensor.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  .../devicetree/bindings/media/i2c/imx296.txt  | 55 +++++++++++++++++++
> >  1 file changed, 55 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.txt
> 
> You should know by now, use DT schema format please.
> 

I know for other subsystems but by having a vague look at the existing bindings
I thought media subsystem is still using .txt. But I now see few yaml bindings
in linux-next and will switch over this.

Btw, is it mandatory now to use YAML bindings for all subsystems? I don't
see any issue (instead I prefer) but I remember that you defer to the preference
of the subsystem maintainers before!

> > diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.txt b/Documentation/devicetree/bindings/media/i2c/imx296.txt
> > new file mode 100644
> > index 000000000000..25d3b15162c1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/i2c/imx296.txt
> > @@ -0,0 +1,55 @@
> > +* Sony IMX296 1/2.8-Inch CMOS Image Sensor
> > +
> > +The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> > +sensor with square pixel array and 1.58 M effective pixels. This chip features
> > +a global shutter with variable charge-integration time. It is programmable
> > +through I2C and 4-wire interfaces. The sensor output is available via CSI-2
> > +serial data output (1 Lane).
> > +
> > +Required Properties:
> > +- compatible: Should be "sony,imx296"
> > +- reg: I2C bus address of the device
> > +- clocks: Reference to the mclk clock.
> > +- clock-names: Should be "mclk".
> > +- clock-frequency: Frequency of the mclk clock in Hz.
> > +- vddo-supply: Interface power supply.
> > +- vdda-supply: Analog power supply.
> > +- vddd-supply: Digital power supply.
> > +
> > +Optional Properties:
> > +- reset-gpios: Sensor reset GPIO
> > +
> > +The imx296 device node should contain one 'port' child node with
> > +an 'endpoint' subnode. For further reading on port node refer to
> > +Documentation/devicetree/bindings/media/video-interfaces.txt.
> > +
> > +Required Properties on endpoint:
> > +- data-lanes: check ../video-interfaces.txt
> 
> This should only be required when not using all the lanes on the device.
> 

This is a bit weird! How will someone know how many lanes the device is using
by looking at the binding? He can anyway refer the datasheet but still...

> > +- remote-endpoint: check ../video-interfaces.txt
> 
> Don't really need to document this.
> 

okay.

Thanks,
Mani

> > +
> > +Example:
> > +	&i2c1 {
> > +		...
> > +		imx296: camera-sensor@1a {
> > +			compatible = "sony,imx296";
> > +			reg = <0x1a>;
> > +
> > +			reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
> > +			pinctrl-names = "default";
> > +			pinctrl-0 = <&camera_rear_default>;
> > +
> > +			clocks = <&gcc GCC_CAMSS_MCLK0_CLK>;
> > +			clock-names = "mclk";
> > +			clock-frequency = <37125000>;
> > +
> > +			vddo-supply = <&camera_vddo_1v8>;
> > +			vdda-supply = <&camera_vdda_3v3>;
> > +			vddd-supply = <&camera_vddd_1v2>;
> > +
> > +			port {
> > +				imx296_ep: endpoint {
> > +					data-lanes = <1>;
> > +					remote-endpoint = <&csiphy0_ep>;
> > +				};
> > +			};
> > +		};
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
