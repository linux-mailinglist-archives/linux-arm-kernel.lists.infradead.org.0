Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC911137188
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n38zRx4enmq7LJj8e1Okc8mgDOnFCow7NUg3hqnfoVw=; b=L9yoHTEvGQMNFA
	LYU7eWcti4aft+jr4ZN2UBHsrCQVmabBFNBkgV6wfziG4YSLgIWujOkeQDppiJIWybFH9WsFS9plO
	IUesaG7sQyVpRpXUQBn/4ZuvKN6yDC4xjQGnVjEHZeGRrZkHEK66COh7adBzZzN2+pa8NK7uonrDR
	fScF8UFwO9zxKS/PDJxJnHJo/boqL2dinuXoQXODYmWb4PwEzAi4bd9Ygz/1JL7mkVg5Dw7URqA0y
	LqYDwiz07WU78Dg8Eews5rRjajOwGdywyytm6UE39prnDcfa42qq4NiUuQ3rM8eJmiX/7TTaZq39N
	Eh6NBmy40CIpQwXCedTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwOn-0001Or-0K; Fri, 10 Jan 2020 15:40:33 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwOf-0001OK-EI; Fri, 10 Jan 2020 15:40:26 +0000
Received: by mail-il1-x141.google.com with SMTP id t2so2071370ilq.9;
 Fri, 10 Jan 2020 07:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=zfveKwnRK85mJXCf2w5k6uuMDFTAUqHiB2SRdT1OPtw=;
 b=Eyf2pDtvCwsChMpc+mpR9mGl+B89HFzVOVjGCDfOKJzIuX/1FUntYjwt/szKs2X2RP
 oyZsDtCNH9oXEolJwkI4bijMHUmbH5gDCN9bnb1TEsZ89cjwOfEIS2J9qXOpPcL79TkC
 Jb3nK4NB5HgKGsCGV0DVJoZjflgCFWqifdSJEarXjG5DUdLUIwsZUlBxHtetIJ/SVbwT
 /IUOavZELqgR8+Me4B2vS5JeYUae0m/LokZu+KbQnGX9lQKnXY1JxtIpMOa+Zi4ApeJ6
 ndDe1GXurmXskgSPnAcbFjg9dPc3vPv8p1l4pRzbYxD9N3enYdTuE2JSHf7TreI+m/Bb
 LqZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=zfveKwnRK85mJXCf2w5k6uuMDFTAUqHiB2SRdT1OPtw=;
 b=fFXyK42iZFwXzZcHCdvd8iZTxXM2UhEtd8vn4qfUckgYDBQG+Io0SwdMu4A9EYH0lT
 6oonpIlRuBJncA02ZSkPTjGx7/1+v872P4hww2lT0CwKSaYfaCijIpYZpIqbtnZi3Lg0
 OfzCbBSxAHw27wXaruuv8f3gvJvS01CJlRvGjhTF8nvAkscX3hlbTIwJpu/ya+L2KTJH
 mKhjLCJcYvjZ6N8/u5KWkakIDLwQmT3yey1eaSZf6ENgxeIoEQ7ZR3bc1JcPTXllWQmK
 tcS8D4fMifcdOkTVBzZYiSFb4F/JDEqiuOihRhQzM5pPa2kOopo0ySUfcNqP44Euw7ju
 hhYA==
X-Gm-Message-State: APjAAAVuFnJS33DQUR3tbyndDF8W1VyiJzIFoCTycz2z7i46rqCXhwPP
 g3boBU+W8Gfi73+QAqSKG/FN7I1DfIeAtY2id3bw8g==
X-Google-Smtp-Source: APXvYqwVstS0bfJ7o2vEobkH8jOr99DSJkX7e0rovYTLXZAar3F1T2Nwyk4CYH3OT34MDdWPeSc7+j1+bIEtM/b8RdQ=
X-Received: by 2002:a92:d5cf:: with SMTP id d15mr3025126ilq.306.1578670824629; 
 Fri, 10 Jan 2020 07:40:24 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:5809:0:0:0:0:0 with HTTP; Fri, 10 Jan 2020 07:40:24
 -0800 (PST)
In-Reply-To: <20200110142128.13522-1-jbx6244@gmail.com>
References: <20200110142128.13522-1-jbx6244@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Date: Fri, 10 Jan 2020 16:40:24 +0100
Message-ID: <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
To: heiko@sntech.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_074025_507369_8FC30C71 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Question for Heiko or rob+dt.
Where would should #address-cells and #size-cells go in the dts or to the dtsi.
In case they become required in a futhure rockchip-dw-mshc.yaml?
ie. Should we patch all XXX rockchip,rk3288-dw-mshc nodes with them?

Thanks

2020-01-10 15:21 GMT+01:00, Johan Jonker <jbx6244@gmail.com>:
> An experimental test with the command below gives this error:
> rk3399-firefly.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-orangepi.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge-captain.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge-v.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> So fix this by adding a reg property to the brcmf sub node.
> Also add #address-cells and #size-cells to prevent more warnings.
>
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts      | 3 +++
>  arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi | 3 +++
>  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts     | 3 +++
>  3 files changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> index 92de83dd4..06043179f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> @@ -669,9 +669,12 @@
>  	vqmmc-supply = &vcc1v8_s3;	/* IO line */
>  	vmmc-supply = &vcc_sdio;	/* card's power */
>
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	status = "okay";
>
>  	brcmf: wifi@1 {
> +		reg = <1>;
>  		compatible = "brcm,bcm4329-fmac";
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> index 4944d78a0..e87a04477 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> @@ -654,9 +654,12 @@
>  	sd-uhs-sdr104;
>  	vqmmc-supply = <&vcc1v8_s3>;
>  	vmmc-supply = <&vccio_sd>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	status = "okay";
>
>  	brcmf: wifi@1 {
> +		reg = <1>;
>  		compatible = "brcm,bcm4329-fmac";
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> index 0541dfce9..9c659f311 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> @@ -648,9 +648,12 @@
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>  	sd-uhs-sdr104;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	status = "okay";
>
>  	brcmf: wifi@1 {
> +		reg = <1>;
>  		compatible = "brcm,bcm4329-fmac";
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
> --
> 2.11.0
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
