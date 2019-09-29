Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 309A1C145B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 13:25:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tLE3BLpm7MXUEPjDtX8U/+OmlAhLkNfnPWG4TJi/Z3Y=; b=e6d82bcZ35dArUWlkBMsetskO
	3+YmV3MMni8SPoMt4cuVP4yU//8VVh+bMyjhxcX0GuNsQ/aJu8T2ssRapv2b0SMk9n8TtE8ExHW/Q
	/G0AUbuu61GcfDn9WGFUXD9XYV/zI8iXrD6w3LkkB0YUNWMifQRoXvFwPncZ/hM1cqzrNeSGA6wUv
	kZzP1WutzJqZJhzCjsDzP2Ca1MJlVspjckTJ8opsjWk1PvUuHJrLF3EyqQX7rNLD4e3o6OWcAQK2d
	oDlpAikCiZe4U5oEw/i4GI1UZ9ZdHsKbYvG1rmnGJk6Zs0oI+gzbDrS9/g8Yu7NqgU4+65EA4jkD1
	WPzvn5Jgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEXKd-0003OT-Ty; Sun, 29 Sep 2019 11:25:39 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEXKU-0003Nn-0d
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 11:25:31 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iEXKL-0007jl-Cr; Sun, 29 Sep 2019 13:25:21 +0200
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH V3 7/8] ARM: dts: Add minimal Raspberry Pi 4 support
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Sun, 29 Sep 2019 12:25:19 +0100
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
 <1569672435-19823-8-git-send-email-wahrenst@gmx.net>
Message-ID: <b75876e1b3c46297142c052e1c6ea0a2@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: wahrenst@gmx.net, robh+dt@kernel.org, mark.rutland@arm.com,
 eric@anholt.net, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 bcm-kernel-feedback-list@broadcom.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_042530_206105_7DA51D5C 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-28 13:07, Stefan Wahren wrote:
> This adds minimal support for the new Raspberry Pi 4 without the
> fancy stuff like GENET, PCIe, xHCI, 40 bit DMA and V3D. The RPi 4 is
> available in 3 different variants (1, 2 and 4 GB RAM), so leave the 
> memory
> size to zero and let the bootloader take care of it. The DWC2 is 
> still
> usable as peripheral via the USB-C port.
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

[...]

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
> +		always-on;

I already commented on this. The A72 not entering a deep enough sleep 
state to
lose its comparator seems dubious at best. The right way to do this is 
to have
a global timer, which you said the platform has.

Please drop this.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
