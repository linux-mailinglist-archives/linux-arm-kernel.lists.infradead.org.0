Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 088B6D6583
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uy2EL36ijkW6e7ZYeLDJX68Uxh7bj5ubA6pt+/ZFEhQ=; b=QNYz4gmXm3Px27
	//k+EP2kZuQWUXzFTeCY0lYi7yu0G8iH1YytdHYf9PSh23vx0CJPhK8cWH2h4OnTTCmS8m/t5w8CK
	k5n7GGAo8w4nqXs0sJnyDeFVade2Gmgbp2Wcv8TwYzYerukrp2DHA+lXi9Gnks+ukyvDrj6aanaRl
	awhkn/A9iiP0QpxXlzE+AWUZQePFkLyj+C/BZXx/WMgtEtFIwV0uJ80hM0CCnaHeTe6NIHLXxVZ2K
	BFqwEnTSEGdk/8o94crDhynIkGLSbqeKGxohhwturvxPJJYCMwAQ0YQ8IOejIuCsNnL275T6BfXMo
	/772FJMT0/qDGz5Pk7Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1b9-0007PG-QT; Mon, 14 Oct 2019 14:45:23 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1ay-0007AA-Lk
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:45:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id b128so10552626pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 07:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lN3aRAuKpYaZ+ZuEn6xFUroPN9c8Y6dWN+cO0mavUPk=;
 b=acWQ55Aiyz7bzg/1t6x1p4ZfHhb0zNpeZtu5QsyIdzgE1QI6KUJxYkaysyyqghEd2n
 41wFIFxypCPBodguQ7QviQd8/dveMM5h0qbssgoQLldYCRe90n15XVAtxr4abyn8T0jT
 CDFf+R5syJKkVWkiBYpgaUFQHjnjI4m0NxuJiu9I6TkeB1DMa9ZcR5jpnCdQko93nvKS
 WeLNUbdlnHZ3IHqpQlJ7mDBf4/4BbLmeF8P4beDw9Qm1EAgeW+UUoTkN4fW0nwdToN4t
 dnY8pm3GrHlVUm9BUV+viabKQ/FXPLT6JWWKgudSDhEl8xHA8esTfz4x8C+U4RFzFP5J
 +phg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lN3aRAuKpYaZ+ZuEn6xFUroPN9c8Y6dWN+cO0mavUPk=;
 b=NK8G78Qx9bKGSFnNgXPnV6S1DU6PD7V9vEswdq6f/2OB5I030HMNkeDrYo+0sKjuO9
 OjvC/sEjVdLP/uiiYdy5rwkgwaYrGEAbReI+MsvjNevqn0bjAB+iTSLzBXwsja8YbOeD
 I8ErlQ2vpcvijh0O7xA4yh5W8P/SqwtO/kzfmveWWS0bDUJbkASABJtNsHbYtFrlRwoJ
 VAEVL95DzH3DmbfZqX6RG9uD5E/brNLwSnMD19bvQMkA+QdVOQXCOuQ4Jk+OIYMSoE9e
 WpypyMl06tu6bhIUkhRh9Y6z6HV1X6e6jsUSjFPK10z2Wm9/hGn+ynQe52yK3F1ZCxy3
 cmEA==
X-Gm-Message-State: APjAAAXE5tvvzHVheL9FHA1QppvJ/uPY/HDN89Z4/Ks6e4p7myhxTLS1
 qgxnMzLmWHZlbKDdI4mj3av7
X-Google-Smtp-Source: APXvYqzDg0QrcgcQ38e0+fcKt09OO187d0GYMhUan8xXe5sagd9k+8PSQ+8vzIrqqnKkx9XTu0FHlg==
X-Received: by 2002:a62:31c3:: with SMTP id
 x186mr32802372pfx.260.1571064311986; 
 Mon, 14 Oct 2019 07:45:11 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id f185sm25155509pfb.183.2019.10.14.07.45.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 14 Oct 2019 07:45:11 -0700 (PDT)
Date: Mon, 14 Oct 2019 20:15:03 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: Re: [PATCH v4 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
Message-ID: <20191014144503.GB8583@mani>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <20190916154546.24982-5-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916154546.24982-5-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_074512_719021_575DFB1E 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 09:15:43PM +0530, Manivannan Sadhasivam wrote:
> Add uSD and eMMC support for Bubblegum96 board based on Actions Semi
> S900 SoC. SD0 is connected to uSD slot and SD2 is connected to eMMC.
> Since there is no PMIC support added yet, fixed regulator has been
> used as a regulator node.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Applied for v5.5.

Thanks,
Mani

> ---
>  .../boot/dts/actions/s900-bubblegum-96.dts    | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> index 732daaa6e9d3..59291e0ea1ee 100644
> --- a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> +++ b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> @@ -12,6 +12,9 @@
>  	model = "Bubblegum-96";
>  
>  	aliases {
> +		mmc0 = &mmc0;
> +		mmc1 = &mmc1;
> +		mmc2 = &mmc2;
>  		serial5 = &uart5;
>  	};
>  
> @@ -23,6 +26,24 @@
>  		device_type = "memory";
>  		reg = <0x0 0x0 0x0 0x80000000>;
>  	};
> +
> +	/* Fixed regulator used in the absence of PMIC */
> +	vcc_3v1: vcc-3v1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.1V";
> +		regulator-min-microvolt = <3100000>;
> +		regulator-max-microvolt = <3100000>;
> +		regulator-always-on;
> +	};
> +
> +	/* Fixed regulator used in the absence of PMIC */
> +	sd_vcc: sd-vcc {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.1V";
> +		regulator-min-microvolt = <3100000>;
> +		regulator-max-microvolt = <3100000>;
> +		regulator-always-on;
> +	};
>  };
>  
>  &i2c0 {
> @@ -241,6 +262,47 @@
>  			bias-pull-up;
>  		};
>  	};
> +
> +	mmc0_default: mmc0_default {
> +		pinmux {
> +			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
> +				 "sd0_cmd_mfp", "sd0_clk_mfp";
> +			function = "sd0";
> +		};
> +	};
> +
> +	mmc2_default: mmc2_default {
> +		pinmux {
> +			groups = "nand0_d0_ceb3_mfp";
> +			function = "sd2";
> +		};
> +	};
> +};
> +
> +/* uSD */
> +&mmc0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc0_default>;
> +	no-sdio;
> +	no-mmc;
> +	no-1-8-v;
> +	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
> +	bus-width = <4>;
> +	vmmc-supply = <&sd_vcc>;
> +	vqmmc-supply = <&sd_vcc>;
> +};
> +
> +/* eMMC */
> +&mmc2 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc2_default>;
> +	no-sdio;
> +	no-sd;
> +	non-removable;
> +	bus-width = <8>;
> +	vmmc-supply = <&vcc_3v1>;
>  };
>  
>  &timer {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
