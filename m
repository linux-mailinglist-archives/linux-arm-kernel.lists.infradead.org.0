Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6685714C00F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 19:43:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7YkpdQ2umqgekm49iiH4gBg2sBsPL+yc0aA/TZGjiZI=; b=KKEsk+Ei7sVNwHiIyDXaPp/i2
	3F3/AywnVpezvHtkXiLZiHTz/9pgOkmS16vwRg66IMOIVRrqcH+ouj88bKazkS2Z6qG0iRJVWvdfR
	q4pzRm7Nm9Vhc0kobyb4VnOWV7ocmeOxWCd/8Bk50Ac3bo8hDjXTCljXyKnWrjPW3MGOtVOQ5YTfg
	JcWA4EPJHz7BRfnv/dKGk64/UqsTZLceK8ugdUjHCTFv4DA850IdeO7N46rv6aR9+oVYqC1li/yaI
	/w9L6IujIGiV9TLzrCZUZXEJIjrCuTBTPKroBYrchiD+IfwyiU9LChZXiPqc+JkhT+jAtW3mdGyXy
	skwfJ71xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVpz-0005h3-Kw; Tue, 28 Jan 2020 18:43:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVpr-0005gg-52; Tue, 28 Jan 2020 18:43:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3784328;
 Tue, 28 Jan 2020 10:43:37 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D25713F52E;
 Tue, 28 Jan 2020 10:43:36 -0800 (PST)
Subject: Re: [PATCH 1/3] clk: rockchip: convert rk3399 pll type to use
 readl_poll_timeout
To: Heiko Stuebner <heiko@sntech.de>
References: <20200128100204.1318450-1-heiko@sntech.de>
 <f8001dbb-ebbc-ebe3-d1db-c75d3888fd38@arm.com> <12366580.SORy7UBWfn@phil>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6349f721-60ae-b494-85c5-c1be8a669799@arm.com>
Date: Tue, 28 Jan 2020 18:43:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <12366580.SORy7UBWfn@phil>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_104339_279933_272A8E91 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/01/2020 4:29 pm, Heiko Stuebner wrote:
> Am Dienstag, 28. Januar 2020, 16:28:44 CET schrieb Robin Murphy:
>> On 28/01/2020 10:02 am, Heiko Stuebner wrote:
>>> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>>>
>>> Instead of open coding the polling of the lock status, use the
>>> handy readl_poll_timeout for this. As the pll locking is normally
>>> blazingly fast and we don't want to incur additional delays, we're
>>> not doing any sleeps similar to for example the imx clk-pllv4
>>> and define a very safe but still short timeout of 1ms.
>>>
>>> Suggested-by: Stephen Boyd <sboyd@kernel.org>
>>> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>>> ---
>>>    drivers/clk/rockchip/clk-pll.c | 21 ++++++++++-----------
>>>    1 file changed, 10 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
>>> index 198417d56300..43c9fd0086a2 100644
>>> --- a/drivers/clk/rockchip/clk-pll.c
>>> +++ b/drivers/clk/rockchip/clk-pll.c
>>> @@ -585,19 +585,18 @@ static const struct clk_ops rockchip_rk3066_pll_clk_ops = {
>>>    static int rockchip_rk3399_pll_wait_lock(struct rockchip_clk_pll *pll)
>>>    {
>>>    	u32 pllcon;
>>> -	int delay = 24000000;
>>> +	int ret;
>>>    
>>> -	/* poll check the lock status in rk3399 xPLLCON2 */
>>> -	while (delay > 0) {
>>> -		pllcon = readl_relaxed(pll->reg_base + RK3399_PLLCON(2));
>>> -		if (pllcon & RK3399_PLLCON2_LOCK_STATUS)
>>> -			return 0;
>>> +	/*
>>> +	 * Lock time typical 250, max 500 input clock cycles @24MHz
>>> +	 * So define a very safe maximum of 1000us, meaning 24000 cycles.
>>> +	 */
>>> +	ret = readl_poll_timeout(pll->reg_base + RK3399_PLLCON(2), pllcon,
>>> +				 pllcon & RK3399_PLLCON2_LOCK_STATUS, 0, 1000);
>>
>> Note that the existing I/O accessor was readl_relaxed(), but using plain
>> readl_poll_timeout() switches it to regular readl(). It may well not
>> matter, but since it's not noted as an intentional change it seemed
>> worth pointing out.
> 
> So we end up with an additional __iormb() after each readl_relaxed call.
> So except for a small speed-penalty per iteration is there some other
> memory-barrier wirednes that could come into play? (Somehow I always
> forget the contents of Will's memory-barrier talks after a time)

For the current arm64 implementation, probably not. For 32-bit it's 
still a DSB, which might in theory generate a bunch of coherency traffic 
synchronising with all the other CPUs each time, although unless you're 
counting every last microWatt even that's unlikely to be anything to 
worry about in practice. You *could* keep consistency with 
readl_relaxed_poll_timeout() instead, but you could equally argue the 
"use regular accessors for simplicity unless there's a provable benefit 
to using relaxed ones" angle. Up to you :)

Robin.

>  From a bit of non-scientific testing, rk3328 seems to need at max 20
> iterations in the wait_lock loop for the pll to lock, when doing cpufreq
> scaling.
> 
> While interestingly px30 takes somewhere between 900 and 2000 iterations
> on the same pll type.
> [Though sleeps are not really possible anyway due to pll rates also getting
> set during of_clk_register early during boot which results in errors about
> scheduling the idle thread, so in the end it doesn't really matter]
> 
> Heiko
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
