Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9D1721E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 23:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjzxU00c+eekfQyqUduTQO73Jjg3CoMr1paYwDjLP4o=; b=FRvmniiLGr+mse
	9eM3bkLulHQ8I30dJHVAk4LiMwSIPnK5NuMOhEtbDp90sAsNChn0TwcSLXY09sqay7EfZI08pV7n9
	7re9uSF5zRftFHyT8cxkr8nqzLCm7hJ5FnIGx9K35Ow09kaQc5IcKsq9EWldhD5uE9otG1NS7w6Rm
	JA7U//Gg5+SpKvkzlBo2Q2qVckeuPHs8HC8blQNVJtkzkeb8pq1mYrAq7bO1vi4SZOXueHo2KnNpl
	wHPmycAK3QVo3VKHzJs1Vp/mrfJXJPc3izfDy1QTIipjudbFtLAPyQJcFPLTf4j3urU7Wr0G3mbWy
	M+QBFrHkNT8iOf4p+P6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq2oF-0003Nh-If; Tue, 23 Jul 2019 21:58:59 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq2o1-0003Lr-Kd
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 21:58:47 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NLweTl036312;
 Tue, 23 Jul 2019 16:58:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563919120;
 bh=ILKhKI41EkFj4wPxs81h4zDtCcBF0AQzAXW0JOqC9K0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Dk6jIp5+ZXbAUqHopDnnzLjWF8ef7bRO3D1TFj5xiKqSBuZ8aFkYJZZSYbV/0k3QZ
 w2YcU5RB6ytxVT7uAyQ9xMRLOz8EmjGTuo/oZ8ofOqUY1QzGO5rClW+N8cazVo4ygY
 dwDXwdvi3TbO8+xh0u8rZrVl6b74pRjj0EVf/UTE=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NLwejB005955
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 16:58:40 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 16:58:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 16:58:40 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NLwdj7128934;
 Tue, 23 Jul 2019 16:58:39 -0500
Subject: Re: [PATCH 6/8] ARM: dts: Fix flags for gpio7
To: Tony Lindgren <tony@atomide.com>, <linux-omap@vger.kernel.org>
References: <20190723112811.44381-1-tony@atomide.com>
 <20190723112811.44381-7-tony@atomide.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <7b09274a-eed2-a7ef-e1ae-b95f1d0b8666@ti.com>
Date: Tue, 23 Jul 2019 16:58:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190723112811.44381-7-tony@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_145845_767438_3A4A739E 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
> The ti,no-idle-on-init and ti,no-reset-on-init flags need to be at
> the interconnect target module level for the modules that have it
> defined. Otherwise we get the following warnings:
> 
> dts flag should be at module level for ti,no-idle-on-init
> dts flag should be at module level for ti,no-reset-on-init
> 
> Signed-off-by: Tony Lindgren <tony@atomide.com>

There's a similar one within the am335x-icev2.dts file for gpio0
that can also use this fix.

Reviewed-by: Suman Anna <s-anna@ti.com>

regards
Suman

> ---
>  arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi | 2 +-
>  arch/arm/boot/dts/dra7-evm.dts                  | 2 +-
>  arch/arm/boot/dts/dra7-l4.dtsi                  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi b/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
> --- a/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
> +++ b/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
> @@ -379,7 +379,7 @@
>  	};
>  };
>  
> -&gpio7 {
> +&gpio7_target {
>  	ti,no-reset-on-init;
>  	ti,no-idle-on-init;
>  };
> diff --git a/arch/arm/boot/dts/dra7-evm.dts b/arch/arm/boot/dts/dra7-evm.dts
> --- a/arch/arm/boot/dts/dra7-evm.dts
> +++ b/arch/arm/boot/dts/dra7-evm.dts
> @@ -498,7 +498,7 @@
>  	phy-supply = <&ldousb_reg>;
>  };
>  
> -&gpio7 {
> +&gpio7_target {
>  	ti,no-reset-on-init;
>  	ti,no-idle-on-init;
>  };
> diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
> --- a/arch/arm/boot/dts/dra7-l4.dtsi
> +++ b/arch/arm/boot/dts/dra7-l4.dtsi
> @@ -1261,7 +1261,7 @@
>  			};
>  		};
>  
> -		target-module@51000 {			/* 0x48051000, ap 45 2e.0 */
> +		gpio7_target: target-module@51000 {		/* 0x48051000, ap 45 2e.0 */
>  			compatible = "ti,sysc-omap2", "ti,sysc";
>  			ti,hwmods = "gpio7";
>  			reg = <0x51000 0x4>,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
