Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DFC2161C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 11:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y86hmX8GZ6P2aXpCCFWYd/kjHQvxF7SyVhTPVWfSkRQ=; b=XvX1fXNKTopI3w
	jSGWqfrq+lNoIePIW0GJieGyJm3FlgxL9eY7AzINUG0IXgW/aTzYvjB2m42/P4R9n+PhtAug0q5el
	mQPu+W73HEJMELSeQwTq46x36ZEw/y/AI82lL0BJuLO91nZCqIo9VXUIyWmhGBm6IKRgvGCdRotdw
	sJRingKW9gAZO3UiqC116+h+vGnTnK1Ykd3IU887L0h2zt4MVAr3lMFox0lA/JdJikRkmYm82czvc
	TcA55Q6UrykS9XGngVKOtnPnnqDBE79qIT0snRD/yvybnnybeT7b1on1EIVfUtQbwM06ChhF0JP+L
	P2z0ctc/cTgcO40E+sQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYzY-0005Hw-Jr; Fri, 17 May 2019 09:17:28 +0000
Received: from legacy.eumx.net ([2001:470:9853::71])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYzQ-0005GR-H5; Fri, 17 May 2019 09:17:22 +0000
Subject: Re: next/master boot bisection: next-20190514 on rk3288-veyron-jaq
To: Doug Anderson <dianders@chromium.org>, "kernelci.org bot"
 <bot@kernelci.org>
References: <5cdae78b.1c69fb81.a32a9.870f@mx.google.com>
 <CAD=FV=WDjUBvwoAaWNOmXPaLpZCccpAgRWDzRSnvsQ62TFwVmQ@mail.gmail.com>
From: Jack Mitchell <ml@embed.me.uk>
Message-ID: <a9767b82-9b3c-fc05-5f33-fb79c8fc8507@embed.me.uk>
Date: Fri, 17 May 2019 10:17:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAD=FV=WDjUBvwoAaWNOmXPaLpZCccpAgRWDzRSnvsQ62TFwVmQ@mail.gmail.com>
Content-Language: en-BW
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_021720_569636_DA4E3301 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Guillaume Tucker <guillaume.tucker@collabora.com>,
 Matthias Kaehlcke <mka@chromium.org>, Elaine Zhang <zhangqing@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, matthew.hart@linaro.org, mgalka@collabora.com,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>, Kevin Hilman <khilman@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/05/2019 22:38, Doug Anderson wrote:
> Hi,
> 
> From: kernelci.org bot <bot@kernelci.org>
> Date: Tue, May 14, 2019 at 9:06 AM
> To: <tomeu.vizoso@collabora.com>, <guillaume.tucker@collabora.com>,
> <mgalka@collabora.com>, <broonie@kernel.org>,
> <matthew.hart@linaro.org>, <khilman@baylibre.com>,
> <enric.balletbo@collabora.com>, Elaine Zhang, Eduardo Valentin, Daniel
> Lezcano
> Cc: Heiko Stuebner, <linux-pm@vger.kernel.org>,
> <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
> Zhang Rui, <linux-arm-kernel@lists.infradead.org>
> 
>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>> * This automated bisection report was sent to you on the basis  *
>> * that you may be involved with the breaking commit it has      *
>> * found.  No manual investigation has been done to verify it,   *
>> * and the root cause of the problem may be somewhere else.      *
>> * Hope this helps!                                              *
>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>>
>> next/master boot bisection: next-20190514 on rk3288-veyron-jaq
>>
>> Summary:
>>   Start:      0a13f187b16a Add linux-next specific files for 20190514
>>   Details:    https://kernelci.org/boot/id/5cda7f2259b514876d7a3628
>>   Plain log:  https://storage.kernelci.org//next/master/next-20190514/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
>>   HTML log:   https://storage.kernelci.org//next/master/next-20190514/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
>>   Result:     691d4947face thermal: rockchip: fix up the tsadc pinctrl setting error
>>
>> Checks:
>>   revert:     PASS
>>   verify:     PASS
>>
>> Parameters:
>>   Tree:       next
>>   URL:        git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>>   Branch:     master
>>   Target:     rk3288-veyron-jaq
>>   CPU arch:   arm
>>   Lab:        lab-collabora
>>   Compiler:   gcc-8
>>   Config:     multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y
>>   Test suite: boot
>>
>> Breaking commit found:
>>
>> -------------------------------------------------------------------------------
>> commit 691d4947faceb8bd841900049e07c81c95ca4b0d
>> Author: Elaine Zhang <zhangqing@rock-chips.com>
>> Date:   Tue Apr 30 18:09:44 2019 +0800
>>
>>     thermal: rockchip: fix up the tsadc pinctrl setting error
>>
>>     Explicitly use the pinctrl to set/unset the right mode
>>     instead of relying on the pinctrl init mode.
>>     And it requires setting the tshut polarity before select pinctrl.
>>
>>     When the temperature sensor mode is set to 0, it will automatically
>>     reset the board via the Clock-Reset-Unit (CRU) if the over temperature
>>     threshold is reached. However, when the pinctrl initializes, it does a
>>     transition to "otp_out" which may lead the SoC restart all the time.
>>
>>     "otp_out" IO may be connected to the RESET circuit on the hardware.
>>     If the IO is in the wrong state, it will trigger RESET.
>>     (similar to the effect of pressing the RESET button)
>>     which will cause the soc to restart all the time.
>>
>>     Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
>>     Reviewed-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>>     Signed-off-by: Eduardo Valentin <edubezval@gmail.com>
> 
> I can confirm that the above commit breaks my jerry, though I haven't
> dug into the details.  :(  Is anyone fixing?  For now I'm just booting
> with the revert.
> 
> 
> -Doug

I can also confirm that this breaks boot on our custom board which is
very similar to the rk3288-Firefly. In my scenario the processor just
seems to "hang", no reset occurs if that helps debug matters.

Regards,
Jack.

> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
