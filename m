Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 711B34B659
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Sw1vSoaj+JeNxsDOxAyLXHprdcDXRJUc6o8jZ3lWNA=; b=bJqJAoAqKIKhZa
	ylizxCJs0gsBH9VhzTDNTV487f9thDqg9kF3qIIizjTb8W9k0FeVgqH7CKcqPcensoCocSLcuBTa4
	kfL4rrkKy9Xum8M62WfQX7JuR0EpWJIm+KDc5UurbWoDt5UMVfJW+7e1ynkb0IH55LHU3et6ORIAx
	Mi0FdGuPe4q/1GjSbixVwYTGAlUp0e43U48sCiUmaRKz/T0Wsl9zh83ETwyOpOhcIiVWL2od/MuIt
	o19BvvFuxXBSUhYNUyfqt4HQE5P/qpsdvk1rXTLWubQvmDxhI8s/LXK0hKNluNQ1C09Y74jO7nh4A
	IWoPEqwNCdfgwcK7fPgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdY1P-0005N7-0D; Wed, 19 Jun 2019 10:40:55 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdY1D-0005MZ-9y
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:40:44 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d0a112b0000>; Wed, 19 Jun 2019 03:40:43 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 19 Jun 2019 03:40:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 19 Jun 2019 03:40:42 -0700
Received: from [10.21.132.148] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 19 Jun
 2019 10:40:41 +0000
Subject: Re: [PATCH 1/4] arm64: tegra: Add ID EEPROM for Jetson TX2 module
To: Thierry Reding <thierry.reding@gmail.com>
References: <20190613165331.8689-1-thierry.reding@gmail.com>
From: Jon Hunter <jonathanh@nvidia.com>
Message-ID: <bec2ec6d-a88e-4ebd-cef9-f0317097e618@nvidia.com>
Date: Wed, 19 Jun 2019 11:40:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613165331.8689-1-thierry.reding@gmail.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1560940843; bh=s96Udi+SmJdT0B/9Wp5y3qWh94REGP90zH1AEOlb8wo=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=JH6vu8dIyJs572TZa9bwXZ6G5AB+53eJoHIPUfAa3N6HsU5m85DdSE6JTB/YFsVaI
 +xrjtB892zoOsPLyjXpeOBFX4AsGnPJYFHdMiu2peAyK67UHPJk9Ly60XEgBJG7Vuy
 uzR4LRrQAmqftqhxPIMHdqXtm+HGY2SsXRgNoLS47/QBkCPIK/Hj9qU3bIIWX5dwIy
 OxP+qpqXVf70ij1mq3cLkRM5UAs3QRrIhY89OMEOI32OZ6sbLC8Yx/GtrbtwsoYwh0
 t3EwrIx0oTQDd6tLGiXUWXmZlToKZKlBc4zMttmra6rRYgt2KlO9Esp6CgzGTnY0sM
 PZgLuuiiIQ7/w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_034043_364731_BE06A5C8 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 13/06/2019 17:53, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> There is an ID EEPROM in the Jetson TX2 module that stores various bits
> of information to indentify the module. Add the device tree node so that
> operating systems can access this EEPROM.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
> index 38ad1053f21a..4bbee83d9943 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra186-p3310.dtsi
> @@ -124,6 +124,17 @@
>  
>  	i2c@c250000 {
>  		status = "okay";
> +
> +		/* module ID EEPROM */
> +		eeprom@50 {
> +			compatible = "atmel,24c02";
> +			reg = <0x50>;
> +
> +			address-bits = <8>;
> +			page-size = <8>;
> +			size = <256>;
> +			read-only;
> +		};
>  	};
>  
>  	rtc@c2a0000 {
> 


Acked-by: Jon Hunter <jonathanh@nvidia.com>

Cheers
Jon

-- 
nvpublic

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
