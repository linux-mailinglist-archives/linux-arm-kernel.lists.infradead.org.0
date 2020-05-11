Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8801CD44C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CzwuDP76LMbY/K0puzREFT5j5+/D3pkEGAwOncB4JdY=; b=m3mKUTV0aphuIxnj2ba+DHpD9
	oSErg3tqpCWbA8/Slwks3eg7RwfYVYAPkyZFh3y1eep5H1rL6r2A/dG50i5RmxfVWDF9mBkUeHFWT
	P++ziKVZpfDpqA5t+L2YvJRF7RKbdfw8NldjNke4dPkaytr2vbjtN6FWHDg7U9HxLUKnM6k1CLDJV
	HiHNhm3AnX9Ye/JQUQqjFoopWIZ9SajIiycQAWvl13CUmbGf4VAySphC/lxWCpoTlQJ/onnzOhbUe
	M0X13k925NvWlK40dWkW4Rh1fRvAb2EMA6cR+RTi0vQZp2cadPXr8J0VQ+up9drSMZpj8xmJabYDU
	a6PfsiIig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4F6-0001yu-60; Mon, 11 May 2020 08:56:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4Ey-0001yR-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 08:56:50 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36C1820736;
 Mon, 11 May 2020 08:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589187407;
 bh=DZOeS/DzUI7zZVlwY0PLJa1dRKEwsfs/eabsOCjHPaA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=KK625+94qcxtiyc6EHXRJgD5/7yfxr56gKJsIpkxBVVaPQHGrPlBtrvxlS8pLG7p/
 5OIg3sESlzkKWtJSzuICUj2OEwYgIQ1aMEEMjUF4SYdaY9t7urNO2+ygZJCFJQTZBP
 Vogbb582SE5kGP6w1B76q+GHSLptywEPrH/+Q6x0=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jY4Ev-00BENF-JR; Mon, 11 May 2020 09:56:45 +0100
MIME-Version: 1.0
Date: Mon, 11 May 2020 09:56:45 +0100
From: Marc Zyngier <maz@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2 06/17] arm64: dts: arm: Fix GIC compatible names
In-Reply-To: <20200507112430.183940-7-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
 <20200507112430.183940-7-andre.przywara@arm.com>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <0d905c6bb47cd712c2052286a9ce0004@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: andre.przywara@arm.com, robh@kernel.org, liviu.dudau@arm.com,
 sudeep.holla@arm.com, lorenzo.pieralisi@arm.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_015648_806160_1943EBBC 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, devicetree@vger.kernel.org,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-07 12:24, Andre Przywara wrote:
> The GIC DT binding only allows a certain combination of DT compatible
> strings, mostly just consisting of one name.
> 
> Drop the somewhat awkward combination of multiple names using different
> "cortex" based strings, in the fastmodel .dts files.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi | 2 +-
>  arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts       | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
> b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
> index 15fe81738e94..61a1750fcdd6 100644
> --- a/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
> +++ b/arch/arm64/boot/dts/arm/foundation-v8-gicv2.dtsi
> @@ -6,7 +6,7 @@
> 
>  / {
>  	gic: interrupt-controller@2c001000 {
> -		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
> +		compatible = "arm,cortex-a15-gic";
>  		#interrupt-cells = <3>;
>  		#address-cells = <2>;
>  		interrupt-controller;
> diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
> b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
> index c5d15cbd8cf6..f86f6451411f 100644
> --- a/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
> +++ b/arch/arm64/boot/dts/arm/rtsm_ve-aemv8a.dts
> @@ -95,7 +95,7 @@
>  	};
> 
>  	gic: interrupt-controller@2c001000 {
> -		compatible = "arm,cortex-a15-gic", "arm,cortex-a9-gic";
> +		compatible = "arm,cortex-a15-gic";
>  		#interrupt-cells = <3>;
>  		#address-cells = <0>;
>  		interrupt-controller;

Since you've now allowed "arm,gic-400", why don't you use that
in combination with "arm,cortex-a15-gic"? Having GIC-400 makes
a lot more sense, as these two models are ARMv8 models.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
