Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BAA9C26F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 09:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7GwGxOo1rsl3t4QgCpoIJVdbyLJUhf4ZyLDRypMk86k=; b=mDkKzzcH9i2aSp
	DLeZIUrRwPi3VZsCHLZNwe6UtlS7WCCLoAuI2Mv6W8XgRNPyYri58BTfkSjZiiJElS1r4gL7Vo0VO
	8vacYNlFkgc5jnPLJZYTqiyuYXOpTXVBewAy3YjGL/Is1Nr1MKSg7V28OYkxpRa9LB1nYx4+sQ85J
	R1oWi9fdgWdN5ihHd/qijsgTMjpb7Pm8ttiv+H959n/pVaMe5FunoKc6YM0m7Uhqwf1dFRyEfLK2i
	fN1bMvKob5FdrcnqDsZ7DqnICkFhERTM+TRS1hWYMBrvcioRiRiTmZQ4FqfVrSp2KAdYS/0IR7F9U
	s/H1DGv8h8XyuYDtFeLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1mnq-0002xx-P9; Sun, 25 Aug 2019 07:19:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1mnc-0002xY-Nu
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 07:18:54 +0000
Received: from X250.getinternet.no (98.142.130.235.16clouds.com
 [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEE5320850;
 Sun, 25 Aug 2019 07:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566717532;
 bh=u6TLqqJcw4RRZYE1Dwc3608YvdXfn/16/oY6owKULKk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KpqiCHhhQVcAodn5otYYU6uJQEXGEs0kEj6qlIrotDBfSjTrMiBtOTakQxQ4suz34
 7CHm6q3dDdR681aQ+qCZQxH7idgCMqIkQTKd2fuLLpkZf+PBv6VB+KR9xLX880OmrO
 k7W7bL4zTYZlwkQSeVDToLuJdqx0+t/qGkjrFm1Y=
Date: Sun, 25 Aug 2019 09:18:40 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-scu4-aib: Use generic names for DT
 nodes
Message-ID: <20190825071839.GC5292@X250.getinternet.no>
References: <20190824002747.14610-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824002747.14610-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_001852_821942_0A863DBB 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Cory Tusar <cory.tusar@zii.aero>, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 05:27:47PM -0700, Andrey Smirnov wrote:
> The devicetree specification recommends using generic node names.
> 
> Some ZII dts files already follow such recommendation, but some don't,
> so use generic node names for consistency among the ZII dts files.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Cory Tusar <cory.tusar@zii.aero>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

It doesn't apply to my branch.

Shawn

> ---
>  arch/arm/boot/dts/vf610-zii-scu4-aib.dts | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> index 45a978defbdc..6edd682dbd29 100644
> --- a/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> +++ b/arch/arm/boot/dts/vf610-zii-scu4-aib.dts
> @@ -417,7 +417,7 @@
>  	pinctrl-0 = <&pinctrl_dspi1>;
>  	status = "okay";
>  
> -	spi-flash@0 {
> +	flash@0 {
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		compatible = "jedec,spi-nor";
> @@ -430,7 +430,7 @@
>  		};
>  	};
>  
> -	spi-flash@1 {
> +	flash@1 {
>  		#address-cells = <1>;
>  		#size-cells = <1>;
>  		compatible = "jedec,spi-nor";
> @@ -519,7 +519,7 @@
>  		#gpio-cells = <2>;
>  	};
>  
> -	lm75@48 {
> +	temp-sensor@48 {
>  		compatible = "national,lm75";
>  		reg = <0x48>;
>  	};
> @@ -534,7 +534,7 @@
>  		reg = <0x52>;
>  	};
>  
> -	ds1682@6b {
> +	elapsed-time-recorder@6b {
>  		compatible = "dallas,ds1682";
>  		reg = <0x6b>;
>  	};
> @@ -551,7 +551,7 @@
>  		reg = <0x38>;
>  	};
>  
> -	adt7411@4a {
> +	adc@4a {
>  		compatible = "adi,adt7411";
>  		reg = <0x4a>;
>  	};
> @@ -563,7 +563,7 @@
>  	pinctrl-0 = <&pinctrl_i2c2>;
>  	status = "okay";
>  
> -	gpio9: sx1503q@20 {
> +	gpio9: io-expander@20 {
>  		compatible = "semtech,sx1503q";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pinctrl_sx1503_20>;
> @@ -574,12 +574,12 @@
>  		interrupts = <31 IRQ_TYPE_EDGE_FALLING>;
>  	};
>  
> -	lm75@4e {
> +	temp-sensor@4e {
>  		compatible = "national,lm75";
>  		reg = <0x4e>;
>  	};
>  
> -	lm75@4f {
> +	temp-sensor@4f {
>  		compatible = "national,lm75";
>  		reg = <0x4f>;
>  	};
> @@ -591,17 +591,17 @@
>  		reg = <0x23>;
>  	};
>  
> -	adt7411@4a {
> +	adc@4a {
>  		compatible = "adi,adt7411";
>  		reg = <0x4a>;
>  	};
>  
> -	at24c08@54 {
> +	eeprom@54 {
>  		compatible = "atmel,24c08";
>  		reg = <0x54>;
>  	};
>  
> -	tca9548@70 {
> +	i2c-mux@70 {
>  		compatible = "nxp,pca9548";
>  		pinctrl-names = "default";
>  		#address-cells = <1>;
> @@ -639,7 +639,7 @@
>  		};
>  	};
>  
> -	tca9548@71 {
> +	i2c-mux@71 {
>  		compatible = "nxp,pca9548";
>  		pinctrl-names = "default";
>  		reg = <0x71>;
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
