Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EA4C120D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 21:58:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kufsu9pSxrpzRpHYoBNDRcaEI7wHBPsTPw/vdoIf8mc=; b=egfp7pmZVYVAI5
	P+Gby/NEA6MXkF3Ee4EnrqkAgBtNDQq3ZrAxeMn9iz8mxTK6HQo8bplPVr40fxSOTtgT4iNUAor3g
	GvfZ/TSu5fZk95BZXKjj7s37IKMr4L406O6w6jmc6h/HRD1lNIvteZ57RiKHDv0PvTSXJ9gKZUB8w
	851JO+xOK4GQwUCCyKwPTkrGQXE5xFtCma+H7mJoudtrLwbdKhenC4QAKnbno9XY/o0HqKgRwJDg5
	F+J6SGftsPbfUIso/1jU0zsOsyWRDbksDrjfxli2o0EnPvwwcoRTHx/J/ufgCb5K2phoceX/SR7pI
	DNpPUMGbtrsK4Av9i0Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEIrR-0001C7-8m; Sat, 28 Sep 2019 19:58:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEIrI-0001Bf-7z
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 19:58:25 +0000
Received: by mail-pl1-x641.google.com with SMTP id w8so1894012plq.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Sep 2019 12:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ogyzIFvOLHZ7NakTY/cmqL28cZzz/DzZcHGiImXfu8U=;
 b=ay2PcEMtq9QYZWVqsQLrrtraG62kxgk8rWR43jOU4tDMZXOSokblxEX3/Kt2P4trqL
 PCsWWFVVKY0CWx3gi9KnZ61rMoNETAifxtk4QrOLoXXSMVLyULiHVW133n4Bl/Wa6dLZ
 leE/nL5WS04vxyMjJDCEo4aEVlVOSPOOV5cZeD9E7zCo+CzG1CcAx2KrKrazfJ494n3g
 rjPBWL7MEDyiqYriJZJCKNXXfXC4/cY/W6eOROfnfd/2xOjNAaHQClBJiZbWm5T4BWw8
 IO0JCPuED/nKcDyLHtkK21YmE1FTLqqzgVn2dODd4ps5+0zmZeX3UfyqsQaLf3KX7CK7
 zoBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ogyzIFvOLHZ7NakTY/cmqL28cZzz/DzZcHGiImXfu8U=;
 b=N2f7DBdu9hb2H6pTJWugFyfjy1H1+BXUhFfHUj80vjsjIEv3gW2J4rnqFnpc8OiYyT
 Cl3oj18Lg1UMsfQmB5MR89dVRfl+cCOLlN41Zep3aeR3awkgHyPJjBLq717ZE2aUMWpI
 7PxEMR/zPF8dsry736NV8YefztKO0Jfnn2wyCO38hBi89RDM5G1skbJhvPUSQY8rgsVA
 tqWFwm6LvUKISekR3v06Eh4J9++5vZLuhtZwiT+wromsrEwpaJR22x5AcRS7qxr/XYnf
 n4v3TaDP+WQ6QfMBH3CcbKBwaQTAEnWNdvSAt5ZAX3vw6wQAyiQj3CMeRMieWRcO+Rw1
 Dc1w==
X-Gm-Message-State: APjAAAXhq32f5+3NnuIvIXvJ/uOvMEzRLLVA3BAHUnJNmHsENzPBteLO
 apRrV2iOgLEmqorHVHYipVQ=
X-Google-Smtp-Source: APXvYqx6TlQTdUPWxM7re0/gbTZGPprvCs1DkfOt3EHXtwFCSDVXbJn4zqvXyLcrQdLnfgS7h8tjxg==
X-Received: by 2002:a17:902:9f91:: with SMTP id
 g17mr11347046plq.298.1569700702949; 
 Sat, 28 Sep 2019 12:58:22 -0700 (PDT)
Received: from [10.230.28.130] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x10sm11282638pfr.44.2019.09.28.12.58.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 28 Sep 2019 12:58:22 -0700 (PDT)
Subject: Re: [PATCH V3 7/8] ARM: dts: Add minimal Raspberry Pi 4 support
To: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Eric Anholt <eric@anholt.net>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <77b0a773-912a-aa5b-6eb5-5423c2c07e58@gmail.com>
Date: Sat, 28 Sep 2019 12:58:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_125824_311441_9F6B799A 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, devicetree@vger.kernel.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 9/28/2019 5:07 AM, Stefan Wahren wrote:
> This adds minimal support for the new Raspberry Pi 4 without the
> fancy stuff like GENET, PCIe, xHCI, 40 bit DMA and V3D. The RPi 4 is
> available in 3 different variants (1, 2 and 4 GB RAM), so leave the memory
> size to zero and let the bootloader take care of it. The DWC2 is still
> usable as peripheral via the USB-C port.

That comment is useful, and probably belongs where the memory node is
declared, see below.

> 
> Other differences to the Raspberry Pi 3:
> - additional GIC 400 Interrupt controller
> - new thermal IP and HWRNG
> - additional MMC interface (emmc2)
> - additional UART, I2C, SPI and PWM interfaces
> - clock stretching bug in I2C IP has been fixed
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---

[snip]

> +/ {
> +	compatible = "raspberrypi,4-model-b", "brcm,bcm2711";
> +	model = "Raspberry Pi 4 Model B";
> +
> +	chosen {
> +		/* 8250 auxiliary UART instead of pl011 */
> +		stdout-path = "serial1:115200n8";
> +	};
> +

Might be worth a comment that the reg property of the memory node is
filed by the boot loader based on the populated amount of DRAM. You can
also go with a shorter format for the size (0)?

> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0 0 0x00000000>;
> +	};
> +

[snip]

> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/soc/bcm2835-pm.h>
> +
> +/ {
> +	compatible = "brcm,bcm2711";
> +
> +	#address-cells = <2>;
> +	#size-cells = <1>;

Trying to see if we may need a #size-cells property value of 2 here, for
the 4GB model, I would assume that we would have to, unless we are fine
with supporting 4GB - 1byte of DRAM?

> +
> +	interrupt-parent = <&gicv2>;
> +
> +	soc {
> +		ranges = <0x7e000000  0x0 0xfe000000  0x01800000>,
> +			 <0x7c000000  0x0 0xfc000000  0x02000000>,
> +			 <0x40000000  0x0 0xff800000  0x00800000>;

Might be nice to get some comments about

> +		/* Emulate a contiguous 30-bit address range for DMA */
> +		dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
> +
> +		local_intc: local_intc@40000000 {
> +			compatible = "brcm,bcm2836-l1-intc";
> +			reg = <0x40000000 0x100>;
> +		};

This deserves a comment to indicate that this node is the provider for
the enable-method for bringing up secondary cores. And no PSCI, still,
what year is this?

[snip]

> +		rng@7e104000 {
> +			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			/* RNG is incompatible to brcm,bcm2835-rng */

Nit: s/to/with/

[snip]

> +		spi@7e204000 {
> +			reg = <0x7e204000 0x0200>;
> +			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>;
> +		};

Why is this SPI node incomplete, are you just overriding a previously
defined node here?

[snip]

> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>;
> +		/* This only applies to the ARMv7 stub */
> +		arm,cpu-registers-not-fw-configured;
> +
> +		/* The ARM cores doesn't enter deep enough states */

Nit: s/doesn't/do not/
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
