Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35E547F4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZsdAVfkL3wzpDiA+T++orBk+R9f4/McE2Z2KSM+CAZw=; b=XgtaCuX8702Uic
	+n/vWwA4Xs1FE1qaoSgw+DB7ebZkmk7c6e0PJToO5BhnWDsUGxgYPAOl4WO9QJFR6tRTgVvWerz6r
	sw3Fdy7ctBLIz4BpNUhGQFrrKzq5EDKTjMKfuAf8vvnkIA+MuMWiOWOLz4bOHgSjHljyGb5Te49/e
	PnV1+/uGJw1mNb12xinQRdH6/hO4jCpjiEL4tR43y1EtyCS41zGVjgNETn1NjPHrML/TeWI6qdXUN
	fuBOKArMEqpL1+drBz8rq0XwuP//Pg9P6cfIKgr33mUr9Dky4iv8V3ohzwW95GeaTgDPLLMds6TwV
	fE0vOBJH+lUV6kvFiFJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcoZB-0006oQ-ID; Mon, 17 Jun 2019 10:08:45 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoYx-0006na-RB; Mon, 17 Jun 2019 10:08:33 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 5D84F263992
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: set PWM delay backlight
 settings for Minnie"
To: Pavel Machek <pavel@ucw.cz>, Matthias Kaehlcke <mka@chromium.org>
References: <20190614224533.169881-1-mka@chromium.org>
 <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <c88619de-45f4-9ba7-cfdc-0cedb764f6f4@collabora.com>
Date: Mon, 17 Jun 2019 12:08:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190616154143.GA28583@atrey.karlin.mff.cuni.cz>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_030832_010444_04C25EBC 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 16/6/19 17:41, Pavel Machek wrote:
> Hi!
> 
>> This reverts commit 288ceb85b505c19abe1895df068dda5ed20cf482.
>>
>> According to the commit message the AUO B101EAN01 panel on minnie
>> requires a PWM delay of 200 ms, however this is not what the
>> datasheet says. The datasheet mentions a *max* delay of 200 ms
>> for T2 ("delay from LCDVDD to black video generation") and T3
>> ("delay from LCDVDD to HPD high"), which aren't related to the
>> PWM. The backlight power sequence does not specify min/max
>> constraints for T15 (time from PWM on to BL enable) or T16
>> (time from BL disable to PWM off).
>>

Hmm, clearly we are not looking at the same datasheet, because in the one I have
I don't see any reference to T15/T16 or LCDVDD. And, I assume I am probably
wrong because you might have better access to the specific panel specs for minnie.

I looked at my archive and the datasheet I have is similar to this [1]. In page
21, Section 6.5 Power ON/OFF Sequence, there are two delays T3 and T4, it is
*min* time between the pwm signal and the bl_en and it is 200 ms. That's the
delay the patch was adding.

[1] http://www.yslcd.com.tw/docs/product/B101EAN01.1.pdf

>> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
>> ---
>> Enric, if you think I misinterpreted the datasheet please holler!
> 
> Was this tested? Was previous patch tested?
> 

IIRC, It was tested measuring the backlight power on timing (although I am not
sure if I tested this on minnie or another board with better access to the pins)

> Does patch being reverted actually break anything? If so, cc stable?
> 
> 								Pavel
> 								
> 

Probably will not break anything, I don't remember the reverted patch as a fix
of any specific issue. IIRC it was more a fear to be out of specs but I'll not
be surprised if the datasheet lies and this delay is not needed at all.

Matthias, are you reverting this to solve any problem? Could you share your
datasheet?

Thanks,
~Enric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
