Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F34CDD83F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9m+XqTgYLvdLbCxuaWWWg2WF5oXgr8LVGT6HPhW4fS4=; b=UJxkCC8etKXoqg
	TyIEvAHnhcSCTQdbWp0vmaHKrnfFYgwDEPf0+897IRjkFhWvfzKmYzEAlGT5lX62lzDz5euMcWB7z
	6WiR6kLTIJxNprqsSpL0ycLbyTtR1e15pZo7AIOanDIkrInIYYXjsLRiV5s1vYXL0xL/gfnYdqOM/
	b7FMAaup7XsmjO/Z1SCtk94sbaNq7IXQoxL60l3OP1RERzg8Z1fYUKS+abUj4fVOxZTs7hhW8KGil
	eiwBmlLDlF+erDOjSg8xF24HXL2BPJX6yzbdCI1la8m10rpYPwFku6Uk+A9uV4pCY/b9eralxgQLv
	cn9a7xNbFNjEQP9ydJMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVaG-0003qz-1P; Tue, 15 Oct 2019 22:46:28 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVZo-0003fT-Gs
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:46:02 +0000
Received: by mail-ot1-f66.google.com with SMTP id 41so18438916oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:46:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MaWp6Jn60uj0bT6sKCogPI4dguf5DlDQ3ZrBSjZQ+hQ=;
 b=nJu5sBaXk3EQC3/ZT1SSQiyihBC+DqjRuXByLTkgg3vO9a/j3OIWCN2HQDSn8E9PT7
 +603zZemjB8cBziJZ4N2fh2MXmRRISADuaI/nr14zewUP7NBqcFLCw6FvJKhpblSGfne
 LgTt0Jd70PBZL1ES9oWRAdZjgH9a4l0uRUPXUwmCrDqmRh960Se6uvYC/BqrHM6uYtGk
 cP8DARPZh5OYi6foc3RfyfL/WoNUyfz6XAIEnIQ5RVFBEPaVw4Mu/3F4MZSNNAbcCViu
 0J8qAWB5ccBclul165/SFmSz1jiDUnWdZEoEyPYgAhSjjfJ0MOa3G1uEwdDD4vOexFVj
 gbZg==
X-Gm-Message-State: APjAAAW80WjjTOfR/ovDoSJQvx4LjzCGMS9bV5KyKjpLmi/u7DsjCkNy
 o1TAsg5YECVA8H43IBbN2Q==
X-Google-Smtp-Source: APXvYqx++w9zqh0aKrrTNQxwptQw2IBBKd30UczgzL9fYL5LBBi4ThJTdAd91a3CRCBWp8KOLN+6ww==
X-Received: by 2002:a9d:6b82:: with SMTP id b2mr7915218otq.56.1571179555334;
 Tue, 15 Oct 2019 15:45:55 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c19sm6786305oib.21.2019.10.15.15.45.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:45:54 -0700 (PDT)
Date: Tue, 15 Oct 2019 17:45:54 -0500
From: Rob Herring <robh@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 1/2] dt-bindings: media: i2c: Add IMX296 CMOS sensor
 binding
Message-ID: <20191015224554.GA5634@bogus>
References: <20191011035613.13598-1-manivannan.sadhasivam@linaro.org>
 <20191011035613.13598-2-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011035613.13598-2-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154600_580988_166BD1B8 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Fri, Oct 11, 2019 at 09:26:12AM +0530, Manivannan Sadhasivam wrote:
> Add devicetree binding for IMX296 CMOS image sensor.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../devicetree/bindings/media/i2c/imx296.txt  | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx296.txt

You should know by now, use DT schema format please.

> diff --git a/Documentation/devicetree/bindings/media/i2c/imx296.txt b/Documentation/devicetree/bindings/media/i2c/imx296.txt
> new file mode 100644
> index 000000000000..25d3b15162c1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/imx296.txt
> @@ -0,0 +1,55 @@
> +* Sony IMX296 1/2.8-Inch CMOS Image Sensor
> +
> +The Sony IMX296 is a 1/2.9-Inch active pixel type CMOS Solid-state image
> +sensor with square pixel array and 1.58 M effective pixels. This chip features
> +a global shutter with variable charge-integration time. It is programmable
> +through I2C and 4-wire interfaces. The sensor output is available via CSI-2
> +serial data output (1 Lane).
> +
> +Required Properties:
> +- compatible: Should be "sony,imx296"
> +- reg: I2C bus address of the device
> +- clocks: Reference to the mclk clock.
> +- clock-names: Should be "mclk".
> +- clock-frequency: Frequency of the mclk clock in Hz.
> +- vddo-supply: Interface power supply.
> +- vdda-supply: Analog power supply.
> +- vddd-supply: Digital power supply.
> +
> +Optional Properties:
> +- reset-gpios: Sensor reset GPIO
> +
> +The imx296 device node should contain one 'port' child node with
> +an 'endpoint' subnode. For further reading on port node refer to
> +Documentation/devicetree/bindings/media/video-interfaces.txt.
> +
> +Required Properties on endpoint:
> +- data-lanes: check ../video-interfaces.txt

This should only be required when not using all the lanes on the device.

> +- remote-endpoint: check ../video-interfaces.txt

Don't really need to document this.

> +
> +Example:
> +	&i2c1 {
> +		...
> +		imx296: camera-sensor@1a {
> +			compatible = "sony,imx296";
> +			reg = <0x1a>;
> +
> +			reset-gpios = <&msmgpio 35 GPIO_ACTIVE_LOW>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&camera_rear_default>;
> +
> +			clocks = <&gcc GCC_CAMSS_MCLK0_CLK>;
> +			clock-names = "mclk";
> +			clock-frequency = <37125000>;
> +
> +			vddo-supply = <&camera_vddo_1v8>;
> +			vdda-supply = <&camera_vdda_3v3>;
> +			vddd-supply = <&camera_vddd_1v2>;
> +
> +			port {
> +				imx296_ep: endpoint {
> +					data-lanes = <1>;
> +					remote-endpoint = <&csiphy0_ep>;
> +				};
> +			};
> +		};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
