Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACC9116DF5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 14:29:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1/N6vZ/k4fTZqViEQC+oMeNQbdDaUEMbLwtOGtIrF7M=; b=IG++18iJe5DO3ZoqFZllqOWyA
	GAB4xjWDWYPkpeaAd7yhNe9IpHngSmgB1/tZJP29xdbxQsG/0IrbEAGnoAQV5MCpKoOJSnA/fazEa
	khpgns2cIEIf3WUZ9llfEcZL9H6Bk4D6CWWI8PL1OJebo+CTebnouxGTgmkbvqNJFtUqiulTtgZG5
	pEIlaZC67jbENzHdzLB2ZZgjJiaPg4O3bUOeUmj2vPOUJco23sUViRQacl7+BFigUYh7FDsvQLa4V
	efF1KepGXTcuFAgkUe6+i1DssH1Z75Rm7ml/U1IIF7Dn0HQRrSuWg4irPfZ7XACWmivwlMGrjlGV6
	W/x6DLJ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJ6I-0005kw-VV; Mon, 09 Dec 2019 13:29:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJ6B-0005k0-Hj; Mon, 09 Dec 2019 13:29:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DC39328;
 Mon,  9 Dec 2019 05:29:13 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1F2943F718;
 Mon,  9 Dec 2019 05:29:09 -0800 (PST)
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Daniel Schultz <d.schultz@phytec.de>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
Date: Mon, 9 Dec 2019 13:29:08 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_052915_679910_E721F80B 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06/12/2019 6:45 pm, Anand Moon wrote:
> Most of the RK3399 SBC boards do not perform clean
> shutdown and clean reboot.

FWIW reboot problems on RK3399 have been tracked down to issues in 
upstream ATF, and are unrelated to the PMIC.

> These patches try to help resolve the issue with proper
> shutdown by turning off the PMIC.

As mentioned elsewhere[1], although this is what the BSP kernel seems to 
do, and in practice it's unlikely to matter for the majority of devboard 
users like you and me, I still feel a bit uncomfortable with this 
solution for systems using ATF as in principle the secure world might 
want to know about orderly shutdowns, and this effectively makes every 
shutdown an unexpected power loss from secure software's point of view.

Robin.

[1] 
http://lists.infradead.org/pipermail/linux-rockchip/2019-December/028183.html

> For reference
> RK805 PMCI data sheet:
> [0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
> RK808 PMIC data sheet:
> [1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
> RK817 PMIC data sheet:
> [2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf
> RK818 PMIC data sheet:
> [3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf
> 
> Reboot issue:
> My guess is that we need to some proper sequence of
> setting to PMCI to perform clean.
> 
> If you have any input please share them.
> 
> Tested on SBC
> Rock960 Model A
> Odroid N1
> Rock64
> 
> -Anand Moon
> 
> Anand Moon (8):
>    mfd: rk808: Refactor shutdown functions
>    mfd: rk808: use syscore for RK805 PMIC shutdown
>    mfd: rk808: use syscore for RK808 PMIC shutdown
>    mfd: rk808: use syscore for RK818 PMIC shutdown
>    mfd: rk808: cleanup unused function pointer
>    mfd: rk808: use common syscore for all PMCI for clean shutdown
>    arm64: rockchip: drop unused field from rk8xx i2c node
>    arm: rockchip: drop unused field from rk8xx i2c node
> 
>   arch/arm/boot/dts/rk3036-kylin.dts            |   1 -
>   arch/arm/boot/dts/rk3188-px3-evb.dts          |   1 -
>   arch/arm/boot/dts/rk3288-evb-rk808.dts        |   1 -
>   arch/arm/boot/dts/rk3288-phycore-som.dtsi     |   1 -
>   arch/arm/boot/dts/rk3288-popmetal.dts         |   1 -
>   arch/arm/boot/dts/rk3288-tinker.dtsi          |   1 -
>   arch/arm/boot/dts/rk3288-veyron.dtsi          |   1 -
>   arch/arm/boot/dts/rk3288-vyasa.dts            |   1 -
>   arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 -
>   arch/arm/boot/dts/rv1108-evb.dts              |   1 -
>   arch/arm64/boot/dts/rockchip/px30-evb.dts     |   1 -
>   arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 -
>   arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   1 -
>   .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   1 -
>   .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   1 -
>   .../boot/dts/rockchip/rk3368-geekbox.dts      |   1 -
>   arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi |   1 -
>   .../boot/dts/rockchip/rk3368-px5-evb.dts      |   1 -
>   .../boot/dts/rockchip/rk3399-firefly.dts      |   1 -
>   .../boot/dts/rockchip/rk3399-hugsun-x99.dts   |   1 -
>   .../boot/dts/rockchip/rk3399-khadas-edge.dtsi |   1 -
>   .../boot/dts/rockchip/rk3399-leez-p710.dts    |   1 -
>   .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |   1 -
>   .../boot/dts/rockchip/rk3399-orangepi.dts     |   1 -
>   arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |   1 -
>   .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   1 -
>   .../boot/dts/rockchip/rk3399-rock-pi-4.dts    |   1 -
>   .../boot/dts/rockchip/rk3399-rock960.dtsi     |   1 -
>   .../boot/dts/rockchip/rk3399-rockpro64.dts    |   1 -
>   .../boot/dts/rockchip/rk3399-sapphire.dtsi    |   1 -
>   drivers/mfd/rk808.c                           | 144 +++++-------------
>   include/linux/mfd/rk808.h                     |   2 -
>   32 files changed, 42 insertions(+), 134 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
