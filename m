Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE37B7517
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URGeRa8gOLnZN7HTukzvUXtwUJ8tALNmUmG5z/ubHhY=; b=qlJLbU3LUGGdTH
	VIe2WjLOX0i9PmglQuRU/da/EKi52XmkLdy7Ek6BAGLAwuw8bPJz0LFHcKFBQ+Ldd+JzXsnYi7KyE
	QbufkMXDwocWE6vTTGWPJsyJTILUlJZqIs1X3m/CRvrszCPMlrThebtUmFAqpk3eQL1FkCQ4qrXtz
	a0mmucV0M2uO/QlTGDLgC4rMz+RvY6D76krTNQoeMBO48ML+ORHoE0Oc4kUHZx2sZHq49e24xjE9v
	sCglpUtrD9XlaP3ouFKC2IyjZOD/rlB0sufTgPxQ6Sy71p0BtWl/NAkInB6qi/A+Y5aQcIMjyEq8v
	XeulG9ZO05Y0uGSd4WKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iArnH-000778-Gi; Thu, 19 Sep 2019 08:28:03 +0000
Received: from mail-wm1-f65.google.com ([209.85.128.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArli-00070F-Kd
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:26:50 +0000
Received: by mail-wm1-f65.google.com with SMTP id 5so3315281wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 01:26:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5Kix1vWVqgxCmDUQkxBHf8UbEBayBPaxaHrzjCVpKWE=;
 b=BcWVqv1lR8hQ5Uccc1qMkK8Ny6JTVxtDmySrIsCBmbQ/9WvZgfKjMFGjBwzuXHRqIW
 TUNY/mG/b7k/yf2lhjSoCZamBCw0wRzjY8ajHe8wW5XzbhtSatpodh6R0cxvDEYlpMp7
 /5zM1rJEwlk/2xB8q3GCd25eX4lnlm9vD1OVVKG0RjXUDQVw01cEmHpEC+INSzwi14nd
 YCynHNeu+TiCbGBKSuY7UhUyKNo31GrOw250cjBNuK52XQqx7aVGvsHDhw5ZB+aro7yb
 39jTsx/boV3bk7aokE9R0lt6fONMdT3uAi/z6+ofYytlrUJimjilrvw6MbcGYb74bNbZ
 GRXg==
X-Gm-Message-State: APjAAAUaMACEOPsVfBgl9O3tN0e30beOWYYOJXKirFoOkYarqcdjWjFR
 iXc/wDIMkylgjQ3aLAujwcoGK7Lo
X-Google-Smtp-Source: APXvYqzzWYQAyNSPK0OicTAv83TGfnT3qvETBNRtC/3D58bfQtSXgxXkEDBhiDTK0t/7qWUw8Q38HA==
X-Received: by 2002:a1c:d188:: with SMTP id i130mr1738494wmg.101.1568881585095; 
 Thu, 19 Sep 2019 01:26:25 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id n7sm2737843wrt.59.2019.09.19.01.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 01:26:24 -0700 (PDT)
Date: Thu, 19 Sep 2019 10:26:21 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 9/9] ARM: dts: arndale: Add audio support (WM1811
 CODEC boards)
Message-ID: <20190919082621.GG13195@pi3>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104715eucas1p2a051a537a0e86becfbbcb36c172ef705@eucas1p2.samsung.com>
 <20190918104634.15216-10-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-10-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_012633_843457_FA729517 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.65 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 12:46:34PM +0200, Sylwester Nawrocki wrote:
> Add sound node and the clock configurations for the I2S controller
> for audio support on the Exynos5250 SoC Arndale boards with
> WM1811 based audio daugther board.
> 
> We need to increase drive strength of the I2S bus, otherwise
> the audio CODEC doesn't work. Likely the CODEC's master clock
> is the main issue here.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  arch/arm/boot/dts/exynos5250-arndale.dts | 27 +++++++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
> index dc6fa6fe83f1..62aa6720aa88 100644
> --- a/arch/arm/boot/dts/exynos5250-arndale.dts
> +++ b/arch/arm/boot/dts/exynos5250-arndale.dts
> @@ -11,6 +11,7 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/clock/samsung,s2mps11.h>
> +#include <dt-bindings/sound/samsung-i2s.h>
>  #include "exynos5250.dtsi"
>  
>  / {
> @@ -135,6 +136,12 @@
>  		};
>  	};
>  
> +	sound {
> +		compatible = "samsung,arndale-wm1811";
> +		samsung,audio-cpu = <&i2s0>;
> +		samsung,audio-codec = <&wm1811>;
> +	};
> +
>  	fixed-rate-clocks {
>  		xxti {
>  			compatible = "samsung,clock-xxti";
> @@ -499,12 +506,24 @@
>  	};
>  };
>  
> +&clock {
> +	assigned-clocks = <&clock CLK_FOUT_EPLL>;
> +	assigned-clock-rates = <49152000>;
> +};
> +
> +&clock_audss {
> +	assigned-clocks = <&clock_audss EXYNOS_MOUT_AUDSS>;
> +	assigned-clock-parents = <&clock CLK_FOUT_EPLL>;
> +};

Put them before "cpu" so alphabetical order is preserved.

Best regards,
Krzysztof

> +
>  &i2c_3 {
>  	status = "okay";
>  
> -	wm1811a@1a {
> +	wm1811: codec@1a {
>  		compatible = "wlf,wm1811";
>  		reg = <0x1a>;
> +		clocks = <&i2s0 CLK_I2S_CDCLK>;
> +		clock-names = "MCLK1";
>  
>  		AVDD2-supply = <&main_dc_reg>;
>  		CPVDD-supply = <&main_dc_reg>;
> @@ -540,9 +559,15 @@
>  };
>  
>  &i2s0 {
> +	assigned-clocks = <&i2s0 CLK_I2S_RCLK_SRC>;
> +	assigned-clock-parents = <&clock_audss EXYNOS_I2S_BUS>;
>  	status = "okay";
>  };
>  
> +&i2s0_bus {
> +	samsung,pin-drv = <EXYNOS4_PIN_DRV_LV2>;
> +};
> +
>  &mixer {
>  	status = "okay";
>  };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
