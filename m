Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11D3B635F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+EhrYc7+FkrnBf56faJJydykmNq2sT7T6mscZR+thU=; b=uJ52fi8AI8BL1F
	zJohUNR+BdooFeBAGB5triatxTfwAxs2wOdye44o1VTcqflucWqV7JWXRVyduXxySTS6qFUD97awT
	Uw8zMRxU0Q+EBr0dR3rvsjcMlonHsUNP0V2rbgquev2jHBFl/zcAaJ7o60Dd4CCQYRKqkmFEbh7PQ
	0ysgQs7QwYsvQTAyoK56gK711v9PEcvOwQ4ts2A2jVK2rPGtAudCmMXx1gayaT05AmpaaEWnbUOoZ
	gBSJgOC1h7IejAQuquL5niB07pmXoM13WNDn42jZD3hoKUSDx2RjOcAHfXown81ejR+vbNN2hQC/W
	p/9vuLfsqAtAwq96p4CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZDJ-0003JB-7G; Wed, 18 Sep 2019 12:37:41 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZCb-0003IP-2p
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:36:58 +0000
Received: by mail-oi1-f196.google.com with SMTP id i16so5823984oie.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:36:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TGvS6AhUHn5wf4afwTlLa7uTvF5Onr61XOQ/Aq65EDw=;
 b=cndDXOcKflRymfhCJ80sg45NTGCwCh98lFzNrnFxjdHP4qG9nLNdvKPbGfAiS6IFi2
 kkQlsTHspiFI6cTkeIpYLvJ/ec/vZRczS4WYtt0m3GUCXenRvOMEh9JUY9oIc3TMDSD3
 2Yd6zdlZ8/4vHcynRsE87wAu+EHk/43f+7RZYtpJdb+pJzNmVmdZjfDeuUc+QvdK8MgT
 8f3EL5PC/pfFpLcrgbpncN/qDwJgbrRxcN4K1+92W5WVEjvwM4luih2DaS+P/O/1607T
 +4vjPdYBNua0MSybWJ4+LMPiFr6WhLip7o2Y/Yh3dCooQUXnrv8m9l24MC7bHevdMZoI
 IYJg==
X-Gm-Message-State: APjAAAUAWIS+FZ3F7dNFliTyYvVZVIUYrIXRb6RDzzKuLqwMGAy3Lq4V
 jUfXq9I5CL2upKMjQ8/7PQ==
X-Google-Smtp-Source: APXvYqwHsTIV2zcgkEiykj1HNn8414Z7SeIjp6LokpIJB26rTRdmqxJN2riKchid6WJKJLxLC/bZ5Q==
X-Received: by 2002:aca:1303:: with SMTP id e3mr1821190oii.6.1568810215772;
 Wed, 18 Sep 2019 05:36:55 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id c12sm1616286otp.49.2019.09.18.05.36.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:36:55 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:36:54 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 08/11] dt-bindings: arm: samsung: Convert Exynos
 System Registers bindings to json-schema
Message-ID: <20190918123654.GA318@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-8-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-8-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_053657_128408_4BBFCD6D 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-rtc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 11:20:04AM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos System Registers (SYSREG) bindings to DT schema
> format using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Example somehow fails:
> Documentation/devicetree/bindings/arm/samsung/pmu.example.dt.yaml:
> system-controller@10040000: compatible:0: 'samsung,exynos5250-pmu' is
> not one of ['samsung,exynos4-sysreg', 'samsung,exynos5-sysreg']
> 
> It seems that PMU schema is applied to sysreq nodes (and vice-versa).
> ---
>  .../bindings/arm/samsung/sysreg.txt           | 19 -----------
>  .../bindings/arm/samsung/sysreg.yaml          | 33 +++++++++++++++++++
>  2 files changed, 33 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/samsung/sysreg.txt b/Documentation/devicetree/bindings/arm/samsung/sysreg.txt
> deleted file mode 100644
> index 4fced6e9d5e4..000000000000
> --- a/Documentation/devicetree/bindings/arm/samsung/sysreg.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -SAMSUNG S5P/Exynos SoC series System Registers (SYSREG)
> -
> -Properties:
> - - compatible : should contain two values. First value must be one from following list:
> -		- "samsung,exynos4-sysreg" - for Exynos4 based SoCs,
> -		- "samsung,exynos5-sysreg" - for Exynos5 based SoCs.
> -		second value must be always "syscon".
> - - reg : offset and length of the register set.
> -
> -Example:
> -	syscon@10010000 {
> -		compatible = "samsung,exynos4-sysreg", "syscon";
> -		reg = <0x10010000 0x400>;
> -	};
> -
> -	syscon@10050000 {
> -		compatible = "samsung,exynos5-sysreg", "syscon";
> -		reg = <0x10050000 0x5000>;
> -	};
> diff --git a/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml b/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
> new file mode 100644
> index 000000000000..a3d44646e441
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/samsung/sysreg.yaml
> @@ -0,0 +1,33 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/samsung/sysreg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung S5P/Exynos SoC series System Registers (SYSREG)
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - samsung,exynos4-sysreg
> +          - samsung,exynos5-sysreg
> +      - const: syscon

The problem is this will by default match any node with 'syscon'. You 
have to add a custom 'select' entry. See the LVDS panel bindings for an 
example.

I'd like to kill off 'syscon'...

> +
> +  reg:
> +    maxItems: 1
> +
> +examples:
> +  - |
> +    syscon@10010000 {
> +      compatible = "samsung,exynos4-sysreg", "syscon";
> +      reg = <0x10010000 0x400>;
> +    };
> +
> +    syscon@10050000 {
> +      compatible = "samsung,exynos5-sysreg", "syscon";
> +      reg = <0x10050000 0x5000>;
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
