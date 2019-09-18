Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F52B63EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 14:59:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgWAA54bK98WLMp9eVQTnwMn5fXKG5xK26/i7QpGL7w=; b=as0q788/0zlqQl
	JnZcuApj2+IpFE2eDW76Wb0IC+XDc4aoiiNgaXOPYRVQLXTM31yRz57du6jL0P098ha3XmPVL/Wwo
	lJwZuiZf5GmiUBXbnIHNWIM9jCqmrr7Qu/s5TyCxWCFgAnf5N0KATm2XLZ39L22ywvpKcWNJVpz/F
	iIqaVSTooEdWrf0uKLLcxj5kD88VH7Tr/3EkMMdw3l5ZNGjP7f1WpMzR0gEh9AlNsmfJbJA9r1Typ
	qZRWW0p40YHQACuuVfiXCVDn1bWZ+7Drf5RSxACeKTuwPvM7T1l1vBI8Qyf17DmjClUWXtCGX0T/I
	bvl8AEzIrD3/DujeiOWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAZYb-00052u-TP; Wed, 18 Sep 2019 12:59:42 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAZX2-000414-6g
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:58:05 +0000
Received: by mail-ot1-f67.google.com with SMTP id g13so6196170otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 05:58:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3zFk5MHE8p77ZTvBJ2Ef8rpgfEWBCuHhymRwnVR4wL0=;
 b=TTHtjHHIMNUgvR8KdEi2bfwCY3ytpsw8NZfnJjyM4B1fir4zCbGXPuDa45EomjVVTY
 F+4vFKqElNEexI2q4oCgs6E1N/5Xp8ejbokLtstWMJJMfefEzIXlbnSR4BJ7tOnaKyb2
 kWMK4uhy6ny0ylAK5rR7iTw25PansL79zDGjUkxegv9qkKl1h8YOXj4VEhQneHZz3Eqk
 fX+gD6hApGAVfIjy5wD5m7FHkngHafOKo0sI0N1AntFe1g36QSu2xwycDn1eJfJlNaFH
 ymvwcKaxOVjDGFokY80dDzBAeyL0Py7SVRhFLq2olIdT1OH4rjIwC0LRykZ9RdH8iF9f
 CwNQ==
X-Gm-Message-State: APjAAAWNJHJr8A6xKXt/a8hLMZskDC0hw41zReFZmU5OQ+xMiwnZ7qPs
 I177XgAyZVeXmrfUCXR4zw==
X-Google-Smtp-Source: APXvYqxToU8rop07pJTky58dYQp14T/5DaTXWnKAr6A/JtuqsIRZmPTo+yZGDzHd9PTvx9bgAsyScQ==
X-Received: by 2002:a9d:744c:: with SMTP id p12mr2787957otk.198.1568811483291; 
 Wed, 18 Sep 2019 05:58:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k8sm1704774otl.31.2019.09.18.05.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 05:58:02 -0700 (PDT)
Date: Wed, 18 Sep 2019 07:58:02 -0500
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 10/11] dt-bindings: iio: adc: exynos: Convert Exynos
 ADC bindings to json-schema
Message-ID: <20190918125802.GA1051@bogus>
References: <20190907092007.9946-1-krzk@kernel.org>
 <20190907092007.9946-10-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907092007.9946-10-krzk@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_055804_374943_E23A3B67 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  7 Sep 2019 11:20:06 +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos Analog to Digital Converter bindings to DT schema
> format using json-schema.
> 
> This is a direct conversion of existing bindings so it also copies the
> existing error in the bindings regarding the requirement of two register
> address ranges for certain compatibles.  The inconsistency in binding
> was caused by commit fafb37cfae6d ("iio: exyno-adc: use syscon for PMU
> register access").
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> Changes since v1:
> 1. Rework reg, clocks and clock-names matching for specific compatibles,
> 2. Make samsung,syscon-phandle required only on certain compatibles,
> 3. Fix indentation.
> ---
>  .../bindings/iio/adc/samsung,exynos-adc.txt   | 107 ------------
>  .../bindings/iio/adc/samsung,exynos-adc.yaml  | 163 ++++++++++++++++++
>  2 files changed, 163 insertions(+), 107 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
