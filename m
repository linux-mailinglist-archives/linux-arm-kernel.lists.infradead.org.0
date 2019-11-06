Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755AFF0DBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+ri6YROzjcsl0UYlDhruLqa52QbdbpBro1EE7LvT+Q=; b=DHphTUsxbxdN5w
	0WCcw52/tA/6sT+pZ/O4SB9NvqyUMKfqYfLtGVvOAPX1W7YN5ZGGf1IxTwbHct5QsGM7sn1iUH1KU
	gOhiDXqiaTfUE7NaIXO+j3mD+tzukxtqMQL+u6wiD4IwG9gOhHj6922yqCoQaEs0NNK4KTvVEI2t/
	FsaQ3bcSVMC2+882PUF+QxVtUKdx5rCLTLu4UxLLug7hqyEsy/GUn96BGiaHD4dB3r+/TVav06N71
	feV8DecuodYMXNVbxtHJs3qaR87M3O14BRnB6blIgkGwPfHBauLcO1cew46wa4rdbyconrs0B6jpD
	Zq6ri639eljWegmNwUgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCon-0001H8-MC; Wed, 06 Nov 2019 04:21:17 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCog-0001GR-1W
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:21:11 +0000
Received: by mail-oi1-f196.google.com with SMTP id n16so19783688oig.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:21:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GC1/ksdOjIfMA8r88prdxzosO6y9Ard78ftKzJT3YRs=;
 b=cqL8XE6ipDTYW46iPpCafusVRcvU9iR4EL2BWn6Ce/g2fdwDH/loEHGC3rf/m0vhSs
 DgzPEYoW1YA5Or8PtxZtNx2IGdkdbTYRr/VfsfYox7AVxsPY8EDtAfmCYv9EuBc1hOF0
 jHk6Yc4dTL29PErnyOnrL7aV5MSqkgZc+yr6TLDRhYPpIMqlLU9vSRrOaOEzejwIjmTX
 tevZnE4xZfD+1s4zxnqh37QOaTQNaHPAvg414N+o8wBfMMYtpFu/qidsp7FeYiGURzc+
 WZrD+2xn/KgQzRkbB5XZRcAAim2OXrQ97B+7JyWCRdHs8fhfmtf14BB/ukoEOcANtUTt
 99iA==
X-Gm-Message-State: APjAAAWgedt3HVAmv9IqcrY6mkhB/5ApBnAI5NHxuwJwRl4CIDStqqEZ
 NShq3oFseLJYkfqhO7qZCQ==
X-Google-Smtp-Source: APXvYqxb3gJ3FVF2f7SF5xK93QdhFdGOiFF3vebJkIxP4iOZGB1hOKdkRk9PCd9/I6GEDKwfvdOhYg==
X-Received: by 2002:aca:5942:: with SMTP id n63mr481764oib.56.1573014068494;
 Tue, 05 Nov 2019 20:21:08 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z16sm101924oih.56.2019.11.05.20.21.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:21:07 -0800 (PST)
Date: Tue, 5 Nov 2019 22:21:07 -0600
From: Rob Herring <robh@kernel.org>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH 1/4] dt-bindings: Add BCM2711 thermal
Message-ID: <20191106042107.GA27699@bogus>
References: <1572615749-9524-1-git-send-email-wahrenst@gmx.net>
 <1572615749-9524-2-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572615749-9524-2-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_202110_083979_CC57B34D 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-pm@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, Chen-Yu Tsai <wens@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 02:42:26PM +0100, Stefan Wahren wrote:
> Since the BCM2711 doesn't have a AVS TMON block, the thermal information
> must be retrieved from the AVS ring oscillator block. So add a new
> suitable binding.

Anything else in that block? 
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  .../bindings/thermal/brcm,bcm2711-thermal.txt      | 39 ++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
> 
> diff --git a/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt b/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
> new file mode 100644
> index 0000000..5531d3f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/thermal/brcm,bcm2711-thermal.txt
> @@ -0,0 +1,39 @@
> +Binding for Thermal Sensor driver for BCM2711 SoCs.
> +
> +Required properties:
> +- compatible:		must be: "brcm,bcm2711-thermal"

If the block is called 'AVS ring oscillator', then the compatible name 
should mirror that.

> +- reg:			Address range of the thermal registers.
> +- clocks:		Phandle of the clock used by the thermal sensor.
> +- #thermal-sensor-cells:	should be 0 (see thermal.txt)
> +
> +Example:
> +
> +thermal-zones {
> +	cpu_thermal: cpu-thermal {
> +		polling-delay-passive = <0>;
> +		polling-delay = <1000>;
> +
> +		thermal-sensors = <&thermal>;
> +
> +		trips {
> +			cpu-crit {
> +				temperature	= <80000>;
> +				hysteresis	= <0>;
> +				type		= "critical";
> +			};
> +		};
> +
> +		coefficients = <(-487)  410040>;
> +
> +		cooling-maps {
> +		};
> +	};
> +};
> +
> +thermal@7d5d2200 {
> +	compatible = "brcm,bcm2711-thermal";
> +	reg = <0x7d5d2200 0x4>;
> +	clocks = <&clocks BCM2835_CLOCK_TSENS>;
> +	#thermal-sensor-cells = <0>;
> +};
> +
> --
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
