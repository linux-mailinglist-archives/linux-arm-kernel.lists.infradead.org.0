Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 290C1157CCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:50:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uh8KJvaFPj34Q52ac+gr+Hb2x6Zhjt4X/Sdy/9wlS7w=; b=DcX30ZLvN1rnJ0
	y1Ygh1GO770r+71mLCn88gu4RrWlVdK2hAa6W3dpojeK/nYOliTYfLoJPaTgx8noOiOfWuWrvN9gR
	qNgQ1hm0QkN19m92Xa3VHr1U0DPWb+009i8HBWkDzkf0WKwyzG7BZ5PuZC/JAQiUkvRMnNmrxNCNw
	ENTugbKz6cgIxq3AKm6blf62f39b23BHujnNB74ii8tbyWzftNfWziCkCncaDKdHJ9i3APTzLHbsp
	3wJ4HdF33S2Yw4p4rtppcT5pxCmj4GJA17x8cC1leF3j6OVn8l60rlGqQ1WDcOU2/KB6XOIvY3JW6
	Nux3ZRO8W/fCdgJVJamg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19S9-0002VD-Lq; Mon, 10 Feb 2020 13:50:21 +0000
Received: from mail-ed1-f46.google.com ([209.85.208.46])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19S1-0002GQ-Jc
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:50:14 +0000
Received: by mail-ed1-f46.google.com with SMTP id m13so329356edb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 05:50:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oUh/ndXbaDqp+3tPebK12Mbm+ONI7sh2CQOdtDK1Y1Q=;
 b=aGvl9pud65bwa/K9xpSuycFUY/vPtvwuXqpd9VGs1Ht4gmZ8AENwNjLaBNYpmkgGHn
 vXo7qvWu7tdLzpAWJqcUF/9Elpq5ANMVURUXvwcZ4XnQ69uz0/T+C3vOnv7O6HJ70Ywn
 3PSu6cjqymguS1pLAy/Oy9aFuAMuLDe8RlHG8eWLf+rZ02g5TTG0hGIeRqyW67jLx14f
 6hz3z8P1Op29aGvyIyM7ZlBSmIUY9c31iWIuqRvaiMB7tk3b/+uir+yZ9/5qO9vXL8UC
 qtOlPYCXyIivNIHsSESp0xPZzXofzLVp2mi13gs0/fmGgixpKMBdbMKN/L5ahAYDV8CT
 dRtw==
X-Gm-Message-State: APjAAAVAdIOTrmK0RTCLfUh7PkK/DI/l2Fq/2g5iqE2vEWU1NtAmguHw
 9YEnG3h98LGDERFUt+yLzzLIUpkPRBI=
X-Google-Smtp-Source: APXvYqyn2t288jmOkFcP+OP9icXtvKT/eVN8DeIO76jSB5/gUw5aD8FBkeSGATGBn0SU9NvUvANfQw==
X-Received: by 2002:a17:906:23e2:: with SMTP id
 j2mr1165391ejg.257.1581342611234; 
 Mon, 10 Feb 2020 05:50:11 -0800 (PST)
Received: from pi3 ([194.230.155.125])
 by smtp.googlemail.com with ESMTPSA id qw15sm43828ejb.92.2020.02.10.05.50.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 05:50:10 -0800 (PST)
Date: Mon, 10 Feb 2020 14:50:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCHv3 2/3] ARM: dts: exynos: Add missing usbdrd3 suspend clk
Message-ID: <20200210135008.GA2163@pi3>
References: <20200210105108.1128-1-linux.amoon@gmail.com>
 <20200210105108.1128-3-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200210105108.1128-3-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_055013_645737_823FF05A 
X-CRM114-Status: GOOD (  17.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.46 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.46 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 10:51:07AM +0000, Anand Moon wrote:
> This patch adds new combatible strings for USBDRD3
> for adding missing suspend clk, exynos5422 usbdrd3
> support two clk USBD300 and SCLK_USBD300, so add missing
> suspemd_clk for Exynos542x DWC3 nodes.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
>  arch/arm/boot/dts/exynos54xx.dtsi | 4 ++--
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> index b672080e7469..bd505256a223 100644
> --- a/arch/arm/boot/dts/exynos5420.dtsi
> +++ b/arch/arm/boot/dts/exynos5420.dtsi
> @@ -1372,8 +1372,8 @@ &trng {
>  };
>  
>  &usbdrd3_0 {
> -	clocks = <&clock CLK_USBD300>;
> -	clock-names = "usbdrd30";
> +	clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
> +	clock-names = "usbdrd30", "usbdrd30_susp_clk";
>  };
>  
>  &usbdrd_phy0 {
> @@ -1383,8 +1383,8 @@ &usbdrd_phy0 {
>  };
>  
>  &usbdrd3_1 {
> -	clocks = <&clock CLK_USBD301>;
> -	clock-names = "usbdrd30";
> +	clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
> +	clock-names = "usbdrd30", "usbdrd30_susp_clk";
>  };
>  
>  &usbdrd_dwc3_1 {
> diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
> index 8aa5117e58ce..0aac6255de5d 100644
> --- a/arch/arm/boot/dts/exynos54xx.dtsi
> +++ b/arch/arm/boot/dts/exynos54xx.dtsi
> @@ -143,7 +143,7 @@ hsi2c_7: i2c@12cd0000 {
>  		};
>  
>  		usbdrd3_0: usb3-0 {
> -			compatible = "samsung,exynos5250-dwusb3";
> +			compatible = "samsung,exynos5420-dwusb3";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges;
> @@ -165,7 +165,7 @@ usbdrd_phy0: phy@12100000 {
>  		};
>  
>  		usbdrd3_1: usb3-1 {
> -			compatible = "samsung,exynos5250-dwusb3";
> +			compatible = "samsung,exynos5420-dwusb3";

This affects also Exynos5410 but you do not add new clock there.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
