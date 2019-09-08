Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B580ACCB7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 14:31:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21mVBZbRFTvDgQ/LW5e9Jygqzk1MoZU1D1bs5ezx6iA=; b=gqK3B1UMbr6QTN
	JPXiIBDIaE6zhhgF9ry056QtpV1F+1nwTICC8bUD38AHz9aCZMWvLIX69GwXqhKsiDKpkaQiZvGyq
	95gmhVurtFvtkeVQI2LA4qiB32Jgs4d79bu8EAFkg3sXT0NzRVW6Q0BYU1lO2mB3qukNWINajo4vm
	HcUSpVM8dVOYhaCuR7oGxft4YI8Y6+B96L2h3SXPJX37ApHarsmR7hBcPGMGgXQdmz1V+mMIwSpbz
	C8oqNa8EfGHS8Pbq4n1VXnfpywqpUGVXcTxHQLyv+WeM3K9Lt4ULxnEfirdvniWDcXHyeJS+4H4WC
	OZNKM7aNCe1m1MQ2yIGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6wM1-0007im-Im; Sun, 08 Sep 2019 12:31:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6wLv-0007iR-5w
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 12:31:36 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CD2E2081B;
 Sun,  8 Sep 2019 12:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567945894;
 bh=cj9qbMaSD8MXlVqXVwfmJA/SjgnhVIKx/gTAE+c1dlY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=t2RRi7mW+3tu/jy1I2SaOW1JzHCOyPqUO5GBsm25WL58hRJ4RhNbW+rD9XJajrJcX
 MqCeQ8v59luoDp+hUTwiTZbriCOiKAp0ylWvanNdXzsSNLIEWzNxiDwu1ri7QDYuqt
 6zyOwYF6aLtfFHe8LUKauJjbZtD+w2UEBUSWs2/I=
Date: Sun, 8 Sep 2019 13:31:22 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 11/11] dt-bindings: iio: adc: exynos: Remove old
 requirement of two register address ranges
Message-ID: <20190908133122.7080a124@archlinux>
In-Reply-To: <20190907092007.9946-11-krzk@kernel.org>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-11-krzk@kernel.org>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_053135_264762_A4F0E4AC 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Hartmut Knaack <knaack.h@gmx.de>, linux-rtc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  7 Sep 2019 11:20:07 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Commit fafb37cfae6d ("iio: exyno-adc: use syscon for PMU
> register access") changed the Exynos ADC driver so the PMU syscon
> phandle is required instead of second register address space.  The
> bindings were not updated so fix them now.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Seems sensible. Thanks for cleaning this up.

As before I'll wait on review from Rob or similar. If they
are going via another path (fine by me as well).

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com> for
both IIO related binding patches.

Thanks,

Jonathan

> 
> ---
> 
> Changes since v1:
> 1. New patch.
> ---
>  .../bindings/iio/adc/samsung,exynos-adc.yaml     | 16 ++--------------
>  1 file changed, 2 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> index dd58121f25b1..b4c6c26681d9 100644
> --- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> @@ -25,8 +25,7 @@ properties:
>        - samsung,s5pv210-adc
>  
>    reg:
> -    minItems: 1
> -    maxItems: 2
> +    maxItems: 1
>  
>    clocks:
>      description:
> @@ -55,7 +54,7 @@ properties:
>      $ref: '/schemas/types.yaml#/definitions/phandle'
>      description:
>        Phandle to the PMU system controller node (to access the ADC_PHY
> -      register on Exynos5250/5420/5800/3250).
> +      register on Exynos3250/4x12/5250/5420/5800).
>  
>    has-touchscreen:
>      description:
> @@ -83,19 +82,8 @@ allOf:
>                - samsung,exynos4212-adc
>                - samsung,s5pv210-adc
>      then:
> -      properties:
> -        reg:
> -          items:
> -            # For S5P and Exynos
> -            - description: base registers
> -            - description: phy registers
>        required:
>          - samsung,syscon-phandle
> -    else:
> -      properties:
> -        reg:
> -          items:
> -            - description: base registers
>  
>    - if:
>        properties:


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
