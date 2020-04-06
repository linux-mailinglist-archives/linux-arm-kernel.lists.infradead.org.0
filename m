Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B2919F0B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 09:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=khFI1PZB86WGIB22HTcC87L9fIg3zRTsArRIYSQN5QQ=; b=lODsyZcudbH0gB
	uR9B8//LjmfbVkQBVKY7nRmgcpPX69/CoSTq/wmkGe73rk64QHordYVT4QUdw4jqK4YDiPeuwPWD/
	fQxghw5coL4FGqbYgcCK+9I+S98N1Lp4X7l/qvvxqxdD0+eUEEjTe9eX3R7a5fE/LzPSOwrM9edyw
	vbgbu7/at41/ZsAkoroN/geFOEC2Sjvgrqskr7HtP9a8bYEgyhEPZfISY9KLaaD4V6tkwmAOTAwHh
	uovEqlYYB2vFgpaqkTrggRhbPZPHqAPOolX1aP/B4AqedUilm34C/48tHarmB46yYNlDZOHGTEbkr
	REIPm+ECInkjMf+0ZF3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLM5y-0003oe-08; Mon, 06 Apr 2020 07:22:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLM5r-0003o4-NK
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 07:22:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id v23so5557753ply.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 00:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/3mgukCJPVclytiBycxVoZY3c0drdjNGA56Om2cy7nQ=;
 b=u55nKoHrnz1Z62lbfqqc09adL0yYk+m2FjS8nCvuD78nBnV/+96MsJ6vM5neSefx8B
 H/2QjVbVLEwtvygPghD98xOTSjMrdgMqa9dzlBnwdgLntnA9l6XqNqsnSGw7r8f0P6QP
 HW3QbJ9GqBOsMd/r6h8T/syYsBIFde7te26TzB6w/i/K6A/c+l1lXSrEzQ2SqYVtofbl
 DtZmO2QQLcFVhE+11Bj9EumdI6bpIpj92lYN/OuLBSdRByvadAWDG4kKPivZt3+LxBDh
 7k3PQeVLKKckZnesaL8Qwco+bmmOPcYZCDkYplIcoRLpYVHYae8u8N7/0z2g2hsASOop
 zwOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/3mgukCJPVclytiBycxVoZY3c0drdjNGA56Om2cy7nQ=;
 b=mGzelQ3ir2PN1oEUlnaywZzy4DM+w+vLNg95CuO8ZtcM3aj3vRXSYhLKJsrfKvIZhe
 PIBNGOtn8rFKAse2HrC3gqHxzxHX5Uj+udM5nsK0SnrsApm9TG2E0jxtyhoKaX4U46RR
 clLHONkg6JdbpTFi2TPZu4wKli3GE5KERQnW3HqxhVRbdl1fSfoW/jp2YRsJgjFVbqsq
 Jstl1fOpGn763cRWSFuRfw/q0j10xjSoXxbB10hQpDymTYUbYcOtIFZAUQx8yGX9mf3q
 3PMqVMxt1GNu+4klyMuvQvi3pkva5q4CsILcZqmtvTcWO+agJz2yh/cNei1yTEXAitKp
 Eb7Q==
X-Gm-Message-State: AGi0PuY+oBefBCLOmhm5RMvO9J+wMfg3wsc2lCuoPsQRvzwPOMBu+Rb1
 nUbX+I1g2CKWiJ/Ktwn9bHIxGu5Kxmve
X-Google-Smtp-Source: APiQypIJb8R3WLBu2lHBPBtV3glHu5GcUccn1AdlbpVTRzwbduTKcUpR7FhEfkGxZwu211KNeew9Aw==
X-Received: by 2002:a17:902:720a:: with SMTP id
 ba10mr20272477plb.323.1586157769685; 
 Mon, 06 Apr 2020 00:22:49 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e80:687d:9124:eff9:55e8:1727])
 by smtp.gmail.com with ESMTPSA id f69sm10725457pfa.124.2020.04.06.00.22.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 Apr 2020 00:22:48 -0700 (PDT)
Date: Mon, 6 Apr 2020 12:52:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH V4 21/22] ARM: dts: stm32: Add bindings for USB on AV96
Message-ID: <20200406072242.GG2937@Mani-XPS-13-9360>
References: <20200401132237.60880-1-marex@denx.de>
 <20200401132237.60880-22-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401132237.60880-22-marex@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_002251_932128_A49A69FB 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 03:22:36PM +0200, Marek Vasut wrote:
> Fill in the bindings for USB host and gadget on AV96.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

I can't get the USB B-Micro OTG port to work with this patch. Do I need to
enable any configs other than PHY and USB DWC2 drivers?

Thanks,
Mani

> Cc: Alexandre Torgue <alexandre.torgue@st.com>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Patrice Chotard <patrice.chotard@st.com>
> Cc: Patrick Delaunay <patrick.delaunay@st.com>
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
> V2: No change
> V3: No change
> ---
>  arch/arm/boot/dts/stm32mp157a-avenger96.dts | 31 +++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> index 2f5a53e1b50d..31f23e60629f 100644
> --- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> +++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
> @@ -544,3 +544,34 @@ bluetooth {
>  		shutdown-gpios = <&gpioz 6 GPIO_ACTIVE_HIGH>;
>  	};
>  };
> +
> +&usbh_ehci {
> +	phys = <&usbphyc_port0>;
> +	phy-names = "usb";
> +	status = "okay";
> +};
> +
> +&usbotg_hs {
> +	pinctrl-0 = <&usbotg_hs_pins_a>;
> +	pinctrl-names = "default";
> +	phy-names = "usb2-phy";
> +	phys = <&usbphyc_port1 0>;
> +	status = "okay";
> +	vbus-supply = <&vbus_otg>;
> +};
> +
> +&usbphyc {
> +	status = "okay";
> +};
> +
> +&usbphyc_port0 {
> +	phy-supply = <&vdd_usb>;
> +	vdda1v1-supply = <&reg11>;
> +	vdda1v8-supply = <&reg18>;
> +};
> +
> +&usbphyc_port1 {
> +	phy-supply = <&vdd_usb>;
> +	vdda1v1-supply = <&reg11>;
> +	vdda1v8-supply = <&reg18>;
> +};
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
