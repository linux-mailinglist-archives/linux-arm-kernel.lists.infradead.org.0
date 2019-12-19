Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272C8126C53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 20:03:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+bYiBbS9sk2nCc7yv2Zm5DCj45tunrnO59OnHt2YiE=; b=PbN99zm8/sTToM
	D9mnt4ov/IWEla6goqkRuCMbIooxv2HnRpU3QPhBSUdqP20+ndMz10XWA5jO/TcEVDAnLs6JkoweG
	AkQfUr/cRK7usOs5U3MFTGtyfWI2o6iDT6Hxed6driZp2IT1Jf7gIc4miID5Zqz2IZ3mB53RSW7/+
	sk1/flyVXBC3A2Kj9MOJTnWFukXTSFUBeeBzZKb9FOMSaikknldSvXUJk7M5nOp2hFZJMbpMXWEy5
	LBe9U+HqgE9JnLOVie0jpmj1sQyDnf+1xrHceizNbHiRIsC0iEYBKTOMWn7lE5xaFq+3XsQu2w3Zd
	xth4ZhK/LZkqZdSyufYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii152-0001lp-1n; Thu, 19 Dec 2019 19:03:24 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii14m-0001kJ-S6
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 19:03:15 +0000
Received: by mail-ot1-f68.google.com with SMTP id 77so8427211oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 11:03:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MhQmAYSBCNgRDn1V2uwlp2WGL+e8qZb16as3kbVKN44=;
 b=XQl6p2bfBCY1E1EfzUnifWTfg+p01jKCKuVH/XbkFF6a1ZIjRrdUUYAq2f+q1cl5WU
 9rusmA3quaBgaoeSH7507we98/cgI9twL4OLqnTxMxdWIJ+WDU9NqLGuiuYsBQu3htsq
 p4uEhPRauK05r5rb1uUJ8hLHSo3GlLI+UbSif+JtQN3eyGYyhNtb0tTzJ3+JpKk3tYOJ
 YgMZWjuWqEv2KszZiSvi9AZ+KTb2ulqqO2yjOw3bysgEOdVT0X44rpbEQVsIv/ByZ72H
 V00Kq5fmRJExBX9GJVnuxwzl3o+OuG+XxwgkbCeQruVWPOHpS3hIRdSgUDrRZk+90ohm
 h9IA==
X-Gm-Message-State: APjAAAWlxHtMlQhuYHpVOb/TTFDfYSba7iaxDCm7Jc3GT7qG8BFxfabP
 gHC65lx8m2Dqbs04MJHSqg==
X-Google-Smtp-Source: APXvYqzPRgRQaYkhYJ6vOfSj3XTQpQJ9Jab5kKoVr9tHwLwleDoN36tstYW5ESuaYRmCLneN4/unyw==
X-Received: by 2002:a05:6830:155a:: with SMTP id
 l26mr10578983otp.339.1576782188047; 
 Thu, 19 Dec 2019 11:03:08 -0800 (PST)
Received: from localhost ([2607:fb90:bdf:98e:3549:d84c:9720:edb4])
 by smtp.gmail.com with ESMTPSA id w12sm2396543otk.75.2019.12.19.11.03.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 11:03:07 -0800 (PST)
Date: Thu, 19 Dec 2019 13:03:04 -0600
From: Rob Herring <robh@kernel.org>
To: Hanna Hawa <hhhawa@amazon.com>
Subject: Re: [PATCH v2 6/6] arm64: dts: amazon: add Amazon's Annapurna Labs
 Alpine v3 support
Message-ID: <20191219190304.GA4786@bogus>
References: <20191209161341.29607-1-hhhawa@amazon.com>
 <20191209161341.29607-7-hhhawa@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209161341.29607-7-hhhawa@amazon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_110313_535514_1DA68482 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, nm@ti.com, heiko@sntech.de, jonnyc@amazon.com,
 mchehab+samsung@kernel.org, ronenk@amazon.com, khilman@baylibre.com,
 talel@amazon.com, tsahee@annapurnalabs.com, devicetree@vger.kernel.org,
 antoine.tenart@bootlin.com, Jonathan.Cameron@huawei.com, tglx@linutronix.de,
 hanochu@amazon.com, linux-arm-kernel@lists.infradead.org, benh@amazon.com,
 barakw@amazon.com, gregkh@linuxfoundation.org, chanho.min@lge.com,
 linux-kernel@vger.kernel.org, davem@davemloft.net, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 04:13:41PM +0000, Hanna Hawa wrote:
> From: Ronen Krupnik <ronenk@amazon.com>
> 
> This patch adds the initial support for the Amazon's Annapurna Labs
> Alpine v3 Soc and Evaluation Platform (EVP).
> 
> Signed-off-by: Ronen Krupnik <ronenk@amazon.com>
> ---
>  arch/arm64/boot/dts/amazon/Makefile          |   1 +
>  arch/arm64/boot/dts/amazon/alpine-v3-evp.dts |  23 ++
>  arch/arm64/boot/dts/amazon/alpine-v3.dtsi    | 371 +++++++++++++++++++
>  3 files changed, 395 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
>  create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3.dtsi
> 
> diff --git a/arch/arm64/boot/dts/amazon/Makefile b/arch/arm64/boot/dts/amazon/Makefile
> index d79822dc30cd..ba9e11544905 100644
> --- a/arch/arm64/boot/dts/amazon/Makefile
> +++ b/arch/arm64/boot/dts/amazon/Makefile
> @@ -1,2 +1,3 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  dtb-$(CONFIG_ARCH_ALPINE)	+= alpine-v2-evp.dtb
> +dtb-$(CONFIG_ARCH_ALPINE)	+= alpine-v3-evp.dtb
> diff --git a/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts b/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
> new file mode 100644
> index 000000000000..8c1e11cf5855
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
> @@ -0,0 +1,23 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
> + */
> +
> +#include "alpine-v3.dtsi"
> +
> +/ {
> +	model = "Amazon's Annapurna Labs Alpine v3 Evaluation Platform (EVP)";
> +	compatible = "amazon,al-alpine-v3-evp", "amazon,al-alpine-v3";
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/amazon/alpine-v3.dtsi b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
> new file mode 100644
> index 000000000000..4945087f59e6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
> @@ -0,0 +1,371 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019, Amazon.com, Inc. or its affiliates. All Rights Reserved
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +	model = "Amazon's Annapurna Labs Alpine v3";
> +	compatible = "amazon,al-alpine-v3";
> +
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x0>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;

We only define cache attributes if not discoverable or the cache ID 
registers are wrong and you need to override what's discoverable.

> +			next-level-cache = <&cluster0_l2>;
> +		};
> +
> +		cpu@1 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x1>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster0_l2>;
> +		};
> +
> +		cpu@2 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x2>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster0_l2>;
> +		};
> +
> +		cpu@3 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x3>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster0_l2>;
> +		};
> +
> +		cpu@100 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x100>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster1_l2>;
> +		};
> +
> +		cpu@101 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x101>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster1_l2>;
> +		};
> +
> +		cpu@102 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x102>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster1_l2>;
> +		};
> +
> +		cpu@103 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x103>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster1_l2>;
> +		};
> +
> +		cpu@200 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x200>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster2_l2>;
> +		};
> +
> +		cpu@201 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x201>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster2_l2>;
> +		};
> +
> +		cpu@202 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x202>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster2_l2>;
> +		};
> +
> +		cpu@203 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x203>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster2_l2>;
> +		};
> +
> +		cpu@300 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x300>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster3_l2>;
> +		};
> +
> +		cpu@301 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x301>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster3_l2>;
> +		};
> +
> +		cpu@302 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x302>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster3_l2>;
> +		};
> +
> +		cpu@303 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a72";
> +			reg = <0x303>;
> +			enable-method = "psci";
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			i-cache-size = <0xc000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			next-level-cache = <&cluster3_l2>;
> +		};
> +
> +		cluster0_l2: cache@0 {
> +			compatible = "cache";
> +			cache-size = <0x200000>;
> +			cache-line-size = <64>;
> +			cache-sets = <2048>;
> +			cache-level = <2>;
> +		};
> +
> +		cluster1_l2: cache@100 {
> +			compatible = "cache";
> +			cache-size = <0x200000>;
> +			cache-line-size = <64>;
> +			cache-sets = <2048>;
> +			cache-level = <2>;
> +		};
> +
> +		cluster2_l2: cache@200 {
> +			compatible = "cache";
> +			cache-size = <0x200000>;
> +			cache-line-size = <64>;
> +			cache-sets = <2048>;
> +			cache-level = <2>;
> +		};
> +
> +		cluster3_l2: cache@300 {
> +			compatible = "cache";
> +			cache-size = <0x200000>;
> +			cache-line-size = <64>;
> +			cache-sets = <2048>;
> +			cache-level = <2>;
> +		};
> +
> +	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		secmon@0 {
> +			reg = <0x0 0x0 0x0 0x100000>;
> +			no-map;
> +		};
> +	};
> +
> +	psci {
> +		compatible = "arm,psci-0.2";
> +		method = "smc";
> +	};
> +
> +	soc {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +
> +		interrupt-parent = <&gic>;
> +		ranges;
> +
> +		arch-timer {

Move up a level. There's no mmio regs.

> +			compatible = "arm,armv8-timer";
> +			interrupts = <GIC_PPI 0xd IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_PPI 0xe IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_PPI 0xb IRQ_TYPE_LEVEL_LOW>,
> +				     <GIC_PPI 0xa IRQ_TYPE_LEVEL_LOW>;
> +		};
> +
> +		gic: interrupt-controller@f0000000 {
> +			compatible = "arm,gic-v3";
> +			#interrupt-cells = <3>;
> +			#address-cells = <0>;
> +			interrupt-controller;
> +			reg = <0x0 0xf0800000 0 0x10000>,
> +			      <0x0 0xf0a00000 0 0x200000>,
> +			      <0x0 0xf0000000 0 0x2000>,
> +			      <0x0 0xf0010000 0 0x1000>,
> +			      <0x0 0xf0020000 0 0x2000>;
> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		msix: msix@fbe00000 {
> +			compatible = "al,alpine-msix";
> +			reg = <0x0 0xfbe00000 0x0 0x100000>;
> +			interrupt-controller;
> +			msi-controller;
> +			al,msi-base-spi = <160>;
> +			al,msi-num-spis = <800>;
> +			interrupt-parent = <&gic>;
> +		};
> +
> +		pmu {
> +			compatible = "arm,cortex-a72-pmu";
> +			interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +		};
> +
> +		uart0: serial@fd883000 {
> +			compatible = "ns16550a";
> +			device_type = "serial";

Drop device_type.

> +			reg = <0x0 0xfd883000 0x0 0x1000>;
> +			clock-frequency = <0>;
> +			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
> +			reg-shift = <2>;
> +			reg-io-width = <4>;
> +		};
> +
> +		pci@fbd00000 {

pcie@...

> +			compatible = "pci-host-ecam-generic";
> +			device_type = "pci";
> +			#size-cells = <2>;
> +			#address-cells = <3>;
> +			#interrupt-cells = <1>;
> +			reg = <0x0 0xfbd00000 0x0 0x100000>;
> +			interrupt-map-mask = <0xf800 0 0 7>;
> +			/* 8 x legacy interrupts for SATA only */
> +			interrupt-map = <0x4000 0 0 1 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x4800 0 0 1 &gic 0 58 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x5000 0 0 1 &gic 0 59 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x5800 0 0 1 &gic 0 60 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x6000 0 0 1 &gic 0 61 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x6800 0 0 1 &gic 0 62 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x7000 0 0 1 &gic 0 63 IRQ_TYPE_LEVEL_HIGH>,
> +					<0x7800 0 0 1 &gic 0 64 IRQ_TYPE_LEVEL_HIGH>;
> +			ranges = <0x02000000 0x0 0xfe000000 0x0 0xfe000000 0x0 0x1000000>;
> +			bus-range = <0x00 0x00>;
> +			msi-parent = <&msix>;
> +		};
> +	};
> +};
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
