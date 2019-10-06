Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445C2CD038
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 12:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Et0mY0znhWP3KTusGuHOX6nhCI0FjcCcS/yuRVnivsg=; b=Bea6D7E5GfKPh6
	BUptmVTm37DHL+8ym+unJmZ/fg9hvn8OWVQJcWjw8WFIkBu/21FWqAMBxRQ3fl1cFiJHsje1zB+8o
	nJwVke1N0XEJTpdOl7Om/4y9x9mtBZQf3hci7KH/Wg6mAR10Ajf5MpV/yJeipi8omdOItxMp7jlfI
	n0K38R0DBsMW6eNg4HMGH4HlKV7GWWXd1ZroETXuckGqPIFiiXqxuhVR2dsfgztHRMR0gMDOCSmrt
	k7YFon+h71HV9eKSE/VkyvHM5d3q/wcIRzJdbT7VRbXXvJegJeOhImOBeDK0p0mTsnpH6Wk6W5k3z
	6hWwRG20kxEdWTBbbHHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3My-0004ma-It; Sun, 06 Oct 2019 10:02:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH3Mo-0004lz-Vy
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 10:02:20 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77A352087E;
 Sun,  6 Oct 2019 10:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570356138;
 bh=WoWzz39cjtCzCBsaJMsfzp2UsQsEkwZw/OfDAiF+O6I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=qXeNzunK/8EmIm8JxKPKzqkJ4VlMw4VuwJgpXwDkKaidkpxGSo3bRNW4gnWxblqae
 MrGTom/yIde5y8P8MclKhvLK9qC2xFxxQpyj5p0aYp+txlb3T1xgSpVus0TSzx9y5Z
 t1WFjkL7Rum72VkyaKs67wUpMHR7WZvajvdbidyM=
Date: Sun, 6 Oct 2019 11:02:12 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 4/4] dt-bindings: iio: adc: exynos: Use defines instead
 of clock numbers
Message-ID: <20191006110212.4e6fe30e@archlinux>
In-Reply-To: <20191002160744.11307-4-krzk@kernel.org>
References: <20191002160744.11307-1-krzk@kernel.org>
 <20191002160744.11307-4-krzk@kernel.org>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_030219_047721_1550F7C5 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 18:07:44 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Make the examples in Exynos ADC bindings more readable and bring them
> closer to real DTS by using defines for clocks.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> ---
>  .../devicetree/bindings/iio/adc/samsung,exynos-adc.yaml     | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> index a0a9b909ac40..a3010e7ea051 100644
> --- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> @@ -135,6 +135,8 @@ examples:
>      };
>  
>    - |
> +    #include <dt-bindings/clock/exynos3250.h>
> +
>      adc@126c0000 {
>          compatible = "samsung,exynos3250-adc";
>          reg = <0x126C0000 0x100>;
> @@ -142,8 +144,8 @@ examples:
>          #io-channel-cells = <1>;
>          io-channel-ranges;
>  
> -        clocks = <&cmu 0>, // CLK_TSADC
> -                 <&cmu 1>; // CLK_SCLK_TSADC
> +        clocks = <&cmu CLK_TSADC>,
> +                 <&cmu CLK_SCLK_TSADC>;
>          clock-names = "adc", "sclk";
>  
>          vdd-supply = <&buck5_reg>;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
