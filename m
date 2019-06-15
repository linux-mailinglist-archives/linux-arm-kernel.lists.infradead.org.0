Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC4B4715D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 19:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYzDDmkvWK8nZgJ2lN200viiTdzSTeXvNpGONMSS588=; b=ZoIiFyfBX43Ug+
	TZaFVZS62HMgLpxttxNaIWIwP8v613VpPDxSEU3GpdmWoAQjOtA3m6ppOVyY6y8XA1CFGEISpA1/g
	qF2GMBxBemFBUG2Djvyc8clYmXIHzyp25Kn1ZA2JkDTVmhmVWp5aZl+FZgY5Qf1sR/1+8D4ox2tCh
	dQjJAWvKvHfzz0pYsvrvoLHpKk2KQguaFe9FXJt9gGNAUs7qxVxd1U59gQlKNTl0PXrOGbXUmNfL6
	s647FViAquaCNM2XSRF7GA9Z2I8NZVugRSyEmvjRHH6lukw+/s4aYSfjp45CZJd+aoFIA9O9OJtg3
	xSk1buuKEpuMinw2kkcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcC6i-00070K-QE; Sat, 15 Jun 2019 17:04:48 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcC6T-0006zV-Ut
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 17:04:35 +0000
Received: by mail-wm1-f65.google.com with SMTP id 207so5328636wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 10:04:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9Rvu52FQju2nG5XK2GGyQQX/fI8Lzs71tWfVjg7UD8k=;
 b=k5yroVP9qXRw5mMTR7SVfIPWFfWIk1DJtoz45hgUloAt1Vvsd0jFy+TJspnTwekKDy
 2lh3Xz2dLlUlS3lhiVvqnjfCRohjWEjLtgfvymWFCXizsu+95ci83M8YX9X4cD6zNpwV
 LJ/NvT03tjep07pJLgNQLDXSXjF4UljwegG6aTKKi5WEyEb1xgfxKPRgiuOiVHYN1Rx5
 3OP90v9iGRZUIPsBVnFry6qKHrDOu22k0seQtDHThkezaZkrdpCDJUgy+BMSPR2FVRnF
 NPeCWaf3bjYvrRgWM5mtCxDpFe5U8P9nqfIdGRYKeOCaIJuhdq1sn19mnKM5yH+MOQ8P
 po/Q==
X-Gm-Message-State: APjAAAWRFpZ5jTmuPk2/Nk4DG4jRiE5/iOsQNkPN+ynkq2UclRZfuJxo
 NeT4DCwRoEwgdgZ4J1w0VcI=
X-Google-Smtp-Source: APXvYqwLOL6sDHnk0m12aJwRWZfOM8uZ4S3yATY0LiqIYwCZDG7zrxsvVvr0G6gaBplCD2+FW6NlOQ==
X-Received: by 2002:a1c:1bc9:: with SMTP id
 b192mr12091821wmb.152.1560618271218; 
 Sat, 15 Jun 2019 10:04:31 -0700 (PDT)
Received: from kozik-lap ([194.230.155.186])
 by smtp.googlemail.com with ESMTPSA id y24sm4718925wmi.10.2019.06.15.10.04.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 15 Jun 2019 10:04:30 -0700 (PDT)
Date: Sat, 15 Jun 2019 19:04:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
Subject: Re: [PATCH] ARM: dts: exynos: add flash support to galaxy-s3 boards
Message-ID: <20190615170428.GA3447@kozik-lap>
References: <20190614155419.14260-1-GNUtoo@cyberdimension.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614155419.14260-1-GNUtoo@cyberdimension.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_100434_001526_A62633C4 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 Simon Shields <simon@lineageos.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 05:54:19PM +0200, Denis 'GNUtoo' Carikli wrote:
> From: Simon Shields <simon@lineageos.org>
> 
> The galaxy s3 boards use an aat1290 to control the flash LED.
> This patch adds the relevant device tree configuration to use it.
> 
> Signed-off-by: Simon Shields <simon@lineageos.org>
> Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org> [rebase]
> ---
>  arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi | 32 +++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> index 30eee5942eff..375aeca09882 100644
> --- a/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> +++ b/arch/arm/boot/dts/exynos4412-galaxy-s3.dtsi
> @@ -15,6 +15,24 @@
>  		i2c10 = &i2c_cm36651;
>  	};
>  
> +	aat1290 {
> +		compatible = "skyworks,aat1290";
> +		flen-gpios = <&gpj1 1 GPIO_ACTIVE_HIGH>;
> +		enset-gpios = <&gpj1 2 GPIO_ACTIVE_HIGH>;
> +
> +		pinctrl-names = "default", "host", "isp";
> +		pinctrl-0 = <&camera_flash_host>;
> +		pinctrl-1 = <&camera_flash_host>;
> +		pinctrl-2 = <&camera_flash_isp>;
> +
> +		flash-led {
> +			label = "flash";
> +			led-max-microamp = <520833>;
> +			flash-max-microamp = <1012500>;
> +			flash-max-timeout-us = <1940000>;
> +		};
> +	};
> +
>  	lcd_vdd3_reg: voltage-regulator-6 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "LCD_VDD_2.2V";
> @@ -131,6 +149,20 @@
>  	regulator-max-microvolt = <2800000>;
>  };
>  
> +&pinctrl_0 {
> +	camera_flash_host: camera-flash-host {
> +		samsung,pins = "gpj1-0";
> +		samsung,pin-function = <1>;
> +		samsung,pin-val = <0>;

Please use the pin macros from:
include/dt-bindings/pinctrl/samsung.h

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
