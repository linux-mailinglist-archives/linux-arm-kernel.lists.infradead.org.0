Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AEF116E57
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 14:58:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GDBHDt/zWf4XuYAiu7OKCwDOO8tEVPXAUqlBn1YnV4s=; b=RyviWhqKVotCI+zAcX6xfgN/j
	1bh7kjN6vSPIugarYheUQpaI19Etl/5NBEo44VG7nNEAHMYjb9glYN0sojiJYGG1o+Z9O+3w15pPX
	yX5x/hZmAQ9uZ6yxJXluniwFk9NwP3t+gyToFFvCBWxGL82YIEDoKS/CyT4+wGBARP5PbbBQfNHfW
	cnq4svrmC4BEPWN9/gkUvou6TAnEBkhgiyjRHxFeHh4oDk7j+ReYiJTVFkn0ahTu5A3MFF3eQbpuL
	ai9Wljsdi8CnTCf0PNNDrzE3mLi/HLvhVA2t8vkC2g+hi3Mk0r9BRj3JHdaPDXIpSasxYo1LdJF1W
	wB/OFuDcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieJYX-0001bY-6C; Mon, 09 Dec 2019 13:58:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieJYP-0001aU-Hb; Mon, 09 Dec 2019 13:58:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7696328;
 Mon,  9 Dec 2019 05:58:24 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFE123F718;
 Mon,  9 Dec 2019 05:58:22 -0800 (PST)
Subject: Re: [RFCv1 0/8] RK3399 clean shutdown issue
To: Peter Geis <pgwipeout@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
 <724aa7db-3838-16f9-d344-1789ae2a5746@arm.com>
 <CAMdYzYoZY5gau=DGtPhk9CPV_WcyM4wjR9o+rPyaQfOzoy2Y=Q@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <f7ac4ff0-5c32-9bb3-1547-ec7ac80bf38d@arm.com>
Date: Mon, 9 Dec 2019 13:58:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYoZY5gau=DGtPhk9CPV_WcyM4wjR9o+rPyaQfOzoy2Y=Q@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_055825_673261_57B450D0 
X-CRM114-Status: GOOD (  24.12  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Daniel Schultz <d.schultz@phytec.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/12/2019 1:37 pm, Peter Geis wrote:
> On Mon, Dec 9, 2019 at 8:29 AM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> On 06/12/2019 6:45 pm, Anand Moon wrote:
>>> Most of the RK3399 SBC boards do not perform clean
>>> shutdown and clean reboot.
>>
>> FWIW reboot problems on RK3399 have been tracked down to issues in
>> upstream ATF, and are unrelated to the PMIC.
>>
>>> These patches try to help resolve the issue with proper
>>> shutdown by turning off the PMIC.
>>
>> As mentioned elsewhere[1], although this is what the BSP kernel seems to
>> do, and in practice it's unlikely to matter for the majority of devboard
>> users like you and me, I still feel a bit uncomfortable with this
>> solution for systems using ATF as in principle the secure world might
>> want to know about orderly shutdowns, and this effectively makes every
>> shutdown an unexpected power loss from secure software's point of view.
>>
>> Robin.
> 
> Since ATF is operating completely in volatile memory, and shouldn't be
> touching hardware once it passes off control to the kernel anyways,
> what is the harm of pulling the rug out from under it?
> If this idea is to prevent issues in the future, such as if ATF does
> gain the ability to preempt hardware control, then at that time ATF
> will need to be able to handle actually powering off devices using the
> same functionality.

It's not ATF itself I'm concerned about, but arbitrary Secure EL1 
payloads. In theory, a TEE might want to do something like cycle keys or 
log events in a TPM (or just encrypted in an external SPI flash), or 
scrub secure DRAM for cold boot protection. I'm pretty sure none of us 
are running such a thing on our boards today, but an upstream solution 
really wants to be robust for the general case.

> But as we discussed previously, ATF doesn't have this capability, so
> in this case any board without a dedicated power-off gpio will be
> unable to power off at all.
> Also it seems that giving ATF this functionality, with the current
> state of ATF, would be cost prohibitive.
> 
> I personally feel that allowing the kernel to do this is a solution to
> the problem we have now.

Sure - I do like your cool idea of using a custom reboot reason to 
handle a 'trusted' poweroff in the U-Boot SPL - but in the meantime 
anything would be a practical improvement over the current situation. I 
reckon this other patch[1] (this seems to be a popular issue all of a 
sudden!) looks like the neatest interim step.

Robin.

[1] 
http://lists.infradead.org/pipermail/linux-rockchip/2019-December/028245.html

>>> For reference
>>> RK805 PMCI data sheet:
>>> [0] http://rockchip.fr/RK805%20datasheet%20V1.3.pdf
>>> RK808 PMIC data sheet:
>>> [1] http://rockchip.fr/RK808%20datasheet%20V1.4.pdf
>>> RK817 PMIC data sheet:
>>> [2] http://rockchip.fr/RK817%20datasheet%20V1.01.pdf
>>> RK818 PMIC data sheet:
>>> [3] http://rockchip.fr/RK818%20datasheet%20V1.0.pdf
>>>
>>> Reboot issue:
>>> My guess is that we need to some proper sequence of
>>> setting to PMCI to perform clean.
>>>
>>> If you have any input please share them.
>>>
>>> Tested on SBC
>>> Rock960 Model A
>>> Odroid N1
>>> Rock64
>>>
>>> -Anand Moon
>>>
>>> Anand Moon (8):
>>>     mfd: rk808: Refactor shutdown functions
>>>     mfd: rk808: use syscore for RK805 PMIC shutdown
>>>     mfd: rk808: use syscore for RK808 PMIC shutdown
>>>     mfd: rk808: use syscore for RK818 PMIC shutdown
>>>     mfd: rk808: cleanup unused function pointer
>>>     mfd: rk808: use common syscore for all PMCI for clean shutdown
>>>     arm64: rockchip: drop unused field from rk8xx i2c node
>>>     arm: rockchip: drop unused field from rk8xx i2c node
>>>
>>>    arch/arm/boot/dts/rk3036-kylin.dts            |   1 -
>>>    arch/arm/boot/dts/rk3188-px3-evb.dts          |   1 -
>>>    arch/arm/boot/dts/rk3288-evb-rk808.dts        |   1 -
>>>    arch/arm/boot/dts/rk3288-phycore-som.dtsi     |   1 -
>>>    arch/arm/boot/dts/rk3288-popmetal.dts         |   1 -
>>>    arch/arm/boot/dts/rk3288-tinker.dtsi          |   1 -
>>>    arch/arm/boot/dts/rk3288-veyron.dtsi          |   1 -
>>>    arch/arm/boot/dts/rk3288-vyasa.dts            |   1 -
>>>    arch/arm/boot/dts/rv1108-elgin-r1.dts         |   1 -
>>>    arch/arm/boot/dts/rv1108-evb.dts              |   1 -
>>>    arch/arm64/boot/dts/rockchip/px30-evb.dts     |   1 -
>>>    arch/arm64/boot/dts/rockchip/rk3328-a1.dts    |   1 -
>>>    arch/arm64/boot/dts/rockchip/rk3328-evb.dts   |   1 -
>>>    .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   1 -
>>>    .../arm64/boot/dts/rockchip/rk3328-rock64.dts |   1 -
>>>    .../boot/dts/rockchip/rk3368-geekbox.dts      |   1 -
>>>    arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi |   1 -
>>>    .../boot/dts/rockchip/rk3368-px5-evb.dts      |   1 -
>>>    .../boot/dts/rockchip/rk3399-firefly.dts      |   1 -
>>>    .../boot/dts/rockchip/rk3399-hugsun-x99.dts   |   1 -
>>>    .../boot/dts/rockchip/rk3399-khadas-edge.dtsi |   1 -
>>>    .../boot/dts/rockchip/rk3399-leez-p710.dts    |   1 -
>>>    .../boot/dts/rockchip/rk3399-nanopi4.dtsi     |   1 -
>>>    .../boot/dts/rockchip/rk3399-orangepi.dts     |   1 -
>>>    arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi |   1 -
>>>    .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |   1 -
>>>    .../boot/dts/rockchip/rk3399-rock-pi-4.dts    |   1 -
>>>    .../boot/dts/rockchip/rk3399-rock960.dtsi     |   1 -
>>>    .../boot/dts/rockchip/rk3399-rockpro64.dts    |   1 -
>>>    .../boot/dts/rockchip/rk3399-sapphire.dtsi    |   1 -
>>>    drivers/mfd/rk808.c                           | 144 +++++-------------
>>>    include/linux/mfd/rk808.h                     |   2 -
>>>    32 files changed, 42 insertions(+), 134 deletions(-)
>>>
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
