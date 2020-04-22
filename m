Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3462B1B3A61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 10:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dqoZ10k7fKcQipeT7efm2jS7sqj01l5ggpMsjBRfgyw=; b=bXHGXBN6amYBxEksxNmlUIArD
	4IMqtW9rHrujt8abUPvO7ASQ1XlKe4wmx/U77IOLgRolETztftLVJR4ak6+E7Cm5yoeEmHnTAcjUo
	QQJ52WzY2nX01oWS1UxKkb778QqJ6q43UOpD9vx0I192rCqkHGb+ZOKgpFDV9jMm21DeYHSFswMic
	SiuQPzElCgteNZrEK1CgVmz68sdsNyhCXSH+hx55L5OLw18Ah3xjKoR1YNm+jy3e6LFeGn5h0BrdR
	+2kg7ze+o/v5skaOhj4PcLsNTN3c7GrDmhz0ahKq/mZW5D9q5iD6lDBNnXde3XjZpe+4ohBubOqIw
	W4YAv+5Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRAvy-0005FF-Ex; Wed, 22 Apr 2020 08:40:42 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRAvn-0005CJ-8y
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 08:40:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Message-ID:References:In-Reply-To:Subject:Cc:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vpGUfuTiVLd2vA91ue4c0K9V/4VZKL+mbW8WcjO/LrA=; b=Ki4mBfA7ZnNAsIT4ktrRzJONzz
 qGcH4XX8vK9hT0WegeJHXHi9GvfaTzDrFsGGzgrIGxVbAd1awjUtXZFs+hVnKXbXeoLyFQr5KtIhP
 xlYu37mmaPdqJlz6jaJwzzlIzXOseOphSdyN+fY8h8JEb9IvKQLpMTBV59EIQdTAuW734Vupni4Ew
 UDtTt1uueJRAdHdKXCAh2bm8uKhnnhxF2mqQyggxYa3shekii9sWDk8UbiHKGeVw2RoqY2QbFUydF
 O5qgvGJ81fO9ehCniBZrn1P3xFqFjxgkMcwboDpUly3hRVJ2fFevFnkoLglHEQefQwj65hHLEFFDb
 lkr/7p3w==;
Received: from spamrelay.zxcs.nl ([185.104.28.12]:50258
 helo=mail-slave01.zxcs.nl)
 by web0081.zxcs.nl with esmtp (Exim 4.93.0.4)
 (envelope-from <dev@pascalroeleven.nl>)
 id 1jRAvU-002uIq-5s; Wed, 22 Apr 2020 10:40:12 +0200
MIME-Version: 1.0
Date: Wed, 22 Apr 2020 10:40:11 +0200
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [linux-sunxi] [RFC PATCH 4/4] pwm: sun4i: Delay after writing the
 period
In-Reply-To: <f1d9a17e-df9e-dc12-603d-84e908a04b81@sholland.org>
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
 <20200317155906.31288-5-dev@pascalroeleven.nl>
 <f1d9a17e-df9e-dc12-603d-84e908a04b81@sholland.org>
User-Agent: Roundcube Webmail/1.4.2
Message-ID: <fd36eddb87b529498e0429afe3521da7@pascalroeleven.nl>
X-Sender: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_014031_615391_8290F336 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K?= =?UTF-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-22 05:43, Samuel Holland wrote:
> Hello Pascal,
> 
> On 3/17/20 10:59 AM, Pascal Roeleven wrote:
>> When disabling, ensure the period write is complete before continuing.
>> This fixes an issue on some devices when the write isn't complete 
>> before
>> the panel is turned off but the clock gate is still on.
>> 
>> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
>> ---
>>  drivers/pwm/pwm-sun4i.c | 5 +++++
>>  1 file changed, 5 insertions(+)
>> 
>> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
>> index a11d00f96..75250fd4c 100644
>> --- a/drivers/pwm/pwm-sun4i.c
>> +++ b/drivers/pwm/pwm-sun4i.c
>> @@ -299,6 +299,10 @@ static int sun4i_pwm_apply(struct pwm_chip *chip, 
>> struct pwm_device *pwm,
>>  	sun4i_pwm_writel(sun4i_pwm, val, PWM_CH_PRD(pwm->hwpwm));
>>  	next_period = jiffies + usecs_to_jiffies(cstate.period / 1000 + 1);
>> 
>> +	/* When disabling, make sure the period register is written first */
>> +	if (!state->enabled && cstate.enabled)
>> +		sun4i_pwm_wait(next_period);
>> +
> 
> It is not visible from the context of this patch, but this call to
> sun4i_pwm_wait() ends up calling msleep() inside a spinlock, which 
> isn't
> allowed. The spinlock should probably be converted to a mutex, 
> considering that
> sun4i_pwm_apply() already sleeps and takes mutexes.
> 
> Regards,
> Samuel
> 

Yes you're right. A different implementation of this patch series is 
being worked on, in which I'll take this into account. Unfortunately I 
have other things to work on at the moment, so it might take a while.

Regards,
Pascal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
