Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1175BADF26
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfobiFHLZxaza9Tkt5dKB7h3NhvVR6h9E1TG9F+B9cI=; b=iUoqmrXbkPomqx
	5Jm5O/C4ceudc/vDWLNinIcYLnnH9XPo8whjcGK72UhmL7dj3SDc6XZNpDbhJhmnLsxbcA7OED/6I
	V4Vbj3MiW4gAdJmNAKvPHnubYxrHXA1rg9rGaECVenfaJl1LWM8jvAc6Ng4cnuw93BU483s0f1MnQ
	BfxjeIt0ElFaXmMJu1jRr87k7qwXMN4Cloq0OxJDP5NHA3f+u0rDElmd4fEQHUOLkjoE3NZGUFgY7
	ACiGHXhHJL2kXVufUQieyNl+oxg3qNzZ42FEhvxELmdEARzz34mQSrjuQd702/9/ZKxB4fkW2cePD
	h8ys2HRmug3tAktoUYyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Ole-0001gL-Bb; Mon, 09 Sep 2019 18:52:02 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7OlV-0001fx-Ha
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:51:55 +0000
Received: by mail-wr1-f67.google.com with SMTP id a11so5480582wrx.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 11:51:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZYH37n4KCQat8+rOHr4mHbzSSgCsymuaE13qGjQsEac=;
 b=mGbOhj00TsyQEBct+/u2vtWI+5L8IWb3DkOBlf/lkU/5d8d3u713r7Tv/3CfLix4Qy
 iLpVm4DnogQ39MOgaUyv0/hqGZDM24/4y29oNHI3R4NeeG2iAtm4Sq6+SyEjixi0eRRq
 hLR3fwAu8WgSTnqJTcf8GvIh87hJ0olGnVitA24Rgou8JGUdo9r85B8Q8HLhqzhH1W/t
 xB8V7aoeAQmkIbkFhrkxBPUIXZwhVMNsVTxzBcSHqE57+6X56JpaaLWn7qRIpzlwgXC4
 +Dj7z171L+7pXQAXqYwGz5HObRzH379sfy83WpDwqatXtYhwDt3TigPkJo88SNzsXtJv
 Oybw==
X-Gm-Message-State: APjAAAUb2HQFa7wkmCa6iXOMBK/r3zRxflZrqu3eobqLDdL9atUNCV6p
 UuHj8c/oZYiKw81Mv4Jr0AA=
X-Google-Smtp-Source: APXvYqwYMqz2af4crnEoBQdZXpEqSD7+ogPWiSCOglcSJ7wKL9pf2sB+DDogsMocto2+xeieOMnxYw==
X-Received: by 2002:adf:f48e:: with SMTP id l14mr19309946wro.234.1568055111497; 
 Mon, 09 Sep 2019 11:51:51 -0700 (PDT)
Received: from kozik-lap ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id h125sm690613wmf.31.2019.09.09.11.51.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Sep 2019 11:51:50 -0700 (PDT)
Date: Mon, 9 Sep 2019 20:51:48 +0200
From: "krzk@kernel.org" <krzk@kernel.org>
To: Yao Lihua <ylhuajnu@outlook.com>
Subject: Re: [PATCH 1/2] ARM: dts: s3c64xx: factor out external fixed clocks
Message-ID: <20190909185148.GA10163@kozik-lap>
References: <20190907024719.16974-1-ylhuajnu@outlook.com>
 <BY5PR12MB36996A79D9B1EEC5162B00F4C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR12MB36996A79D9B1EEC5162B00F4C4B50@BY5PR12MB3699.namprd12.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_115153_587588_632565D4 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 02:48:08AM +0000, Yao Lihua wrote:
> From: Lihua Yao <ylhuajnu@outlook.com>
> 
> As per arch/arm/mach-s3c64xx/common.c, the external oscillators
> of S3C6400 and S3C6410 are identical. Move them to s3c64xx.dtsi
> and place under root node directly.

Hi,

Thanks for patches!

These are external oscillators so they are not a SoC property. They
should be external.

They could be moved to their own shared DTSI but I am not sure how much
benefit it will bring - it is rather small code duplication.

You need to fix the error in different way. However I do not quite
understand why moving them to the end of DTS fixed the error - they
should be now registered at the end...

Best regards,
Krzysztof

> This introduces side effect of changing the initialization order of
> fin_pll and clock-controller@7e00f000. As of commit 3f6d439f2022
> ("clk: reverse default clk provider initialization order in of_clk_init()"),
> clock providers are initialized in the orders they are present in the
> device tree unless the clocks' dependencies are specified explicitly.
> 
> without this patch:
>   [    0.000000] S3C6410 clocks: apll = 0, mpll = 0
>   [    0.000000]  epll = 0, arm_clk = 0
> 
> with this patch:
>   [    0.000000] S3C6410 clocks: apll = 532000000, mpll = 532000000
>   [    0.000000]  epll = 24000000, arm_clk = 532000000
> 
> Fixes: 3f6d439f2022 ("clk: reverse default clk provider initialization order in of_clk_init()")
> Signed-off-by: Lihua Yao <ylhuajnu@outlook.com>
> ---
>  arch/arm/boot/dts/s3c6410-mini6410.dts | 22 ----------------------
>  arch/arm/boot/dts/s3c6410-smdk6410.dts | 22 ----------------------
>  arch/arm/boot/dts/s3c64xx.dtsi         | 14 ++++++++++++++
>  3 files changed, 14 insertions(+), 44 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/s3c6410-mini6410.dts b/arch/arm/boot/dts/s3c6410-mini6410.dts
> index 5201512054c4..7028507b7076 100644
> --- a/arch/arm/boot/dts/s3c6410-mini6410.dts
> +++ b/arch/arm/boot/dts/s3c6410-mini6410.dts
> @@ -28,28 +28,6 @@
>  		bootargs = "console=ttySAC0,115200n8 earlyprintk root=/dev/nfs rw nfsroot=192.168.31.2:/srv/nfs/tiny6410,nfsvers=3 ip=dhcp";
>  	};
>  
> -	clocks {
> -		compatible = "simple-bus";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		fin_pll: oscillator@0 {
> -			compatible = "fixed-clock";
> -			reg = <0>;
> -			clock-frequency = <12000000>;
> -			clock-output-names = "fin_pll";
> -			#clock-cells = <0>;
> -		};
> -
> -		xusbxti: oscillator@1 {
> -			compatible = "fixed-clock";
> -			reg = <1>;
> -			clock-output-names = "xusbxti";
> -			clock-frequency = <48000000>;
> -			#clock-cells = <0>;
> -		};
> -	};
> -
>  	srom-cs1@18000000 {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
> diff --git a/arch/arm/boot/dts/s3c6410-smdk6410.dts b/arch/arm/boot/dts/s3c6410-smdk6410.dts
> index a9a5689dc462..10a854b488a8 100644
> --- a/arch/arm/boot/dts/s3c6410-smdk6410.dts
> +++ b/arch/arm/boot/dts/s3c6410-smdk6410.dts
> @@ -28,28 +28,6 @@
>  		bootargs = "console=ttySAC0,115200n8 earlyprintk rootwait root=/dev/mmcblk0p1";
>  	};
>  
> -	clocks {
> -		compatible = "simple-bus";
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		fin_pll: oscillator@0 {
> -			compatible = "fixed-clock";
> -			reg = <0>;
> -			clock-frequency = <12000000>;
> -			clock-output-names = "fin_pll";
> -			#clock-cells = <0>;
> -		};
> -
> -		xusbxti: oscillator@1 {
> -			compatible = "fixed-clock";
> -			reg = <1>;
> -			clock-output-names = "xusbxti";
> -			clock-frequency = <48000000>;
> -			#clock-cells = <0>;
> -		};
> -	};
> -
>  	srom-cs1@18000000 {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
> diff --git a/arch/arm/boot/dts/s3c64xx.dtsi b/arch/arm/boot/dts/s3c64xx.dtsi
> index 2e611df37911..672764133cea 100644
> --- a/arch/arm/boot/dts/s3c64xx.dtsi
> +++ b/arch/arm/boot/dts/s3c64xx.dtsi
> @@ -39,6 +39,20 @@
>  		};
>  	};
>  
> +	fin_pll: oscillator-0 {
> +		compatible = "fixed-clock";
> +		clock-frequency = <12000000>;
> +		clock-output-names = "fin_pll";
> +		#clock-cells = <0>;
> +	};
> +
> +	xusbxti: oscillator-1 {
> +		compatible = "fixed-clock";
> +		clock-frequency = <48000000>;
> +		clock-output-names = "xusbxti";
> +		#clock-cells = <0>;
> +	};
> +
>  	soc: soc {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
