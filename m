Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8850C72135
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 23:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QthtNW81aYfeiKFH0MNnzzuHsaRhsYQYTeqYKz8C68g=; b=jkc2qMfEiD7Ant
	I5Ria8Ik9l5Ack3eL47rneyWejLyCw0WfAKwt4+ajb6YJEOFHRVK1IRxuefZ2vB/Df0IaVi6vYxXy
	WcITyZ/APpqGHFkvoZuFssVQ3qHt+cUDnXhpZhR14ZMpqoVKy3HNuFm4di4V99OFi5yqh5X1V3eQj
	MP4YBzZPWVGByn4hecq48DUrI45kAlAFS9iycbCCJmvp/gfB8mhtPlniulXv1sexcqRjqLMzfpRg7
	OIkWMoDv95xScPecfjwqwHCE7cl/ANSso+36Gdk++/Vwdq3OH/lgF9+K/nTpwdZLUXMnmXcjMDWt3
	TjPm61YIulgn4QfyYF3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1v6-0007nE-A5; Tue, 23 Jul 2019 21:02:00 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1uu-0007m7-Do
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 21:01:50 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NL1hJ8098993;
 Tue, 23 Jul 2019 16:01:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563915703;
 bh=u6SXikvGbSFU77KnFGFUWfACbpOyuISOALYakteXBb0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=O9CkEp5xCTYBUGASZzWVRrFKX6mskxwPOfQCOpkxx68DZlr3/1acoGJa82ue+d9dB
 con4HqbuGQpT43hLr52sObTQFTt8sZXgyJJMz5dZFzRpGnX6Eo4i7At8vk2v/KB6Dr
 zyCZejU/CIXstHxFU7TLFe7scnrhUV1MHBMbhpNE=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NL1hPL046625
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 16:01:43 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 16:01:42 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 16:01:42 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NL1gEL050568;
 Tue, 23 Jul 2019 16:01:42 -0500
Subject: Re: [PATCH 5/8] ARM: dts: Drop bogus ahclkr clocks for dra7 mcasp 3
 to 8
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-6-tony@atomide.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <2c750847-700e-c835-ee53-a656b363c36c@ti.com>
Date: Tue, 23 Jul 2019 16:01:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723112811.44381-6-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_140148_597680_968DBE5D 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Dave Gerlach <d-gerlach@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, Faiz Abbas <faiz_abbas@ti.com>,
 Keerthy <j-keerthy@ti.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

On 7/23/19 6:28 AM, Tony Lindgren wrote:
> The ahclkr clkctrl clock bit 28 only exists for mcasp 1 and 2 on dra7.
> Otherwise we get the following warning on beagle-x15:
> 
> ti-sysc 48468000.target-module: could not add child clock ahclkr: -19
> 
> Fixes: 5241ccbf2819 ("ARM: dts: Add missing ranges for dra7 mcasp l3 ports")
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm/boot/dts/dra7-l4.dtsi | 25 ++++++++++---------------
>  1 file changed, 10 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
> --- a/arch/arm/boot/dts/dra7-l4.dtsi
> +++ b/arch/arm/boot/dts/dra7-l4.dtsi
> @@ -2818,9 +2818,8 @@
>  					<SYSC_IDLE_SMART>;
>  			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
>  			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 0>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 24>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 28>;
> -			clock-names = "fck", "ahclkx", "ahclkr";
> +				 <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 24>;
> +			clock-names = "fck", "ahclkx";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x0 0x68000 0x2000>,
> @@ -2854,9 +2853,8 @@
>  					<SYSC_IDLE_SMART>;
>  			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
>  			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP4_CLKCTRL 0>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP4_CLKCTRL 24>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP4_CLKCTRL 28>;
> -			clock-names = "fck", "ahclkx", "ahclkr";
> +				 <&l4per2_clkctrl DRA7_L4PER2_MCASP4_CLKCTRL 24>;
> +			clock-names = "fck", "ahclkx";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x0 0x6c000 0x2000>,
> @@ -2890,9 +2888,8 @@
>  					<SYSC_IDLE_SMART>;
>  			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
>  			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP5_CLKCTRL 0>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP5_CLKCTRL 24>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP5_CLKCTRL 28>;
> -			clock-names = "fck", "ahclkx", "ahclkr";
> +				 <&l4per2_clkctrl DRA7_L4PER2_MCASP5_CLKCTRL 24>;
> +			clock-names = "fck", "ahclkx";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x0 0x70000 0x2000>,
> @@ -2926,9 +2923,8 @@
>  					<SYSC_IDLE_SMART>;
>  			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
>  			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP6_CLKCTRL 0>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP6_CLKCTRL 24>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP6_CLKCTRL 28>;
> -			clock-names = "fck", "ahclkx", "ahclkr";
> +				 <&l4per2_clkctrl DRA7_L4PER2_MCASP6_CLKCTRL 24>;
> +			clock-names = "fck", "ahclkx";
>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x0 0x74000 0x2000>,
> @@ -2962,9 +2958,8 @@
>  					<SYSC_IDLE_SMART>;
>  			/* Domains (P, C): l4per_pwrdm, l4per2_clkdm */
>  			clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 0>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 24>,
> -				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 28>;
> -			clock-names = "fck", "ahclkx", "ahclkr";
> +				 <&l4per2_clkctrl DRA7_L4PER2_MCASP7_CLKCTRL 24>;
> +			clock-names = "fck", "ahclkx";

The equivalent change to MCASP8 is missing.

regards
Suman

>  			#address-cells = <1>;
>  			#size-cells = <1>;
>  			ranges = <0x0 0x78000 0x2000>,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
