Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45712197AF3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 13:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1dm5CinXnAMsfRRJHH59n5z4dypdITfLQvnee6twBQ=; b=KFWZ7akhJpOkVw
	JCc84I6Y5MzDYienmxBbHE3gQBLmAwKauoNwjEkHJR7ObvlZkJpB+Xepu5+58RxZBXdUQnbQbwn9z
	nNSjFYYjEiIkjfsqoNhCA4DZjWf3LA3mgUpLrVpHXTKK+R+B2FgxHAzNpjJXKwVBmedYiCb+YQaI7
	keDF+UKHCZH0NlrRN3Vfr8h/fouWdUNew0QwiY1Wm7ryPXv2XUOdoFhTuVyu1Y5uJKQFCbg01EeyV
	Oa/1rhOddjjxhNDsULiTWKH7H9XuGRHIw2GfFNOM7WRKihWWw+nBeCm1GltgZA6utYy+268ThW1y5
	S+3ZHbWJpelSZrDJt9Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIsju-0002c8-Vl; Mon, 30 Mar 2020 11:37:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIsjk-0002a9-0E
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 11:37:49 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1jIsji-0006mx-40; Mon, 30 Mar 2020 13:37:46 +0200
Subject: Re: [Linux-stm32] [PATCH 07/22] ARM: dts: stm32: Add alternate pinmux
 for SDMMC2 pins 4-7
To: Marek Vasut <marex@denx.de>, Patrice CHOTARD <patrice.chotard@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200328171144.51888-1-marex@denx.de>
 <20200328171144.51888-8-marex@denx.de>
 <0fb89d25-feb0-2eb0-9e83-d7f8c76f8b9e@st.com>
 <82dcf412-119b-0de2-0c50-f6877a82a812@pengutronix.de>
 <fcf49298-a36c-e80e-e62b-1fb9c07f0d6e@denx.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <310aa3a3-09ce-42ef-d1ea-b653163d1d72@pengutronix.de>
Date: Mon, 30 Mar 2020 13:37:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <fcf49298-a36c-e80e-e62b-1fb9c07f0d6e@denx.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_043748_043128_528F6CA4 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Patrick DELAUNAY <patrick.delaunay@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On 3/30/20 1:22 PM, Marek Vasut wrote:
> On 3/30/20 1:17 PM, Ahmad Fatoum wrote:
>> Hello Patrice,
> 
> Hi,
> 
>> On 3/30/20 1:11 PM, Patrice CHOTARD wrote:
>>> For your information, another submitted patch uses the same pinctrl sdmmc2_d47_pins_b node with different muxing (SDMMC2_D5)
>>>
>>> see https://lore.kernel.org/patchwork/patch/1216452/
>>>
>>> I haven't checked other muxing if there are other conflict.
>>
>> (author of linked patch here)
>>
>> I don't like the central stm32mp15-pinctrl.dtsi. I'd have preferred if each
>> file defined the pinctrl groups it is using.
> 
> I'm not a big fan of that either, because this is gonna be a
> combinatorial explosion of various pinmux options. But if you have each
> board define it's pinmux, it's also gonna become a massive amount of
> duplication (like iMX). So I cannot tell which one is better ...

Mhm. A middle ground could be keeping stm32mp15-pinctrl, but only for the
official ST eval kits as HW designers are expected to copy off those and have
board specifics in the board/SoM device tree?

If it has to be either one or the other, I prefer duplication in the device
tree. When the HW misses pull ups or needs to adjust slew rates, you probably
don't want a new, slightly different, pinctrl group in the stm32mp15-pinctrl.dtsi
for each variant.

So you are left with doctoring around with overrides and /delete-property/,
while just duplicating the node with the correct properties would've been
better for readability IMO.

> So, just apply one patch or the other, let me know what got applied and
> I'll rebase on top of that and resubmit if needed.

Same.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
