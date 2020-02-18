Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1531622FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:06:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RI3OELieNMCCKB2amweD6YD10eOOE/+AvjEJsLVntjc=; b=l4LAqQl1EOQALwfD0J66bP/IfT
	iwISuCzllVs0MY6oK7lgS0duKDJIhLQquLHI4zff8+gHIOoSP0Cy6VUfrt7wJXlVy6sQqoMwtNyR4
	nHFT+C5oL9PWyridRqI/AP0qo90GZF4g6OsS4YjrygfDhsg0gAmMFTroYm2apmIFOXNSKzApuV1n0
	VbRn5wcyAQFPltmD0PK7YxkOjgHMYpobnn7p0Sj7m62/q8QB7dgNzbYJbGunO5KNyGWa0RQCqN0AK
	XbNqtCMgaZ0IqU5TdCmNxx6RWWVuKYTWXtmI+07kVc43CP5I++mJtLLX+tL5CAD2tYiSavubybIP+
	xriVm4Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ypR-0002HC-2w; Tue, 18 Feb 2020 09:06:05 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ypA-0002FP-13
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:05:50 +0000
Received: by mail-wr1-x444.google.com with SMTP id c9so22928519wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 01:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=ZQOUNLnI2259PEgDQeFnGl4MBwAdHmsWL1wSexCinM4=;
 b=uXc+7s1riFQCb+A5ws5EF3BokKj3HF5Ic7fu+a6RWMuGmjkBH2YIJ5d/XCq/0hbPe8
 ZdV/SnkczBOx9DNcZDRkEG62+CVv+Ul71XEunTqjDbZba1X8yaPVIXjo8ZcC2X6TZwzV
 zJdM5EVbamvY8CL1TmWChxN3kC2d7sJcmT57hcBw7iuT3weuEUHczpA/dEa7J8NHyLSj
 3FfbhHrvX8TMlqVUm32ZicYOl4h6wkXdN6dPRY1WZRglffWh8F9fo3uwGhstowwATguW
 GlhpbGhH7eQOnT6OVc3ya1iec+VOHF2fM96YAJpoNJzX6sCVFkDt+WAG1J5VIhjCy3l/
 6FBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=ZQOUNLnI2259PEgDQeFnGl4MBwAdHmsWL1wSexCinM4=;
 b=pc6qL2KH2MIul/0jyeeZ4HeM+tPy67ua+d9lzzo478yxgdtmZcfycjMpOHjxeXGISB
 UxLJw4VRgsJGPj4tHAPPf15COgA1X0b++uVFzmmXumyOv5CCCdjGcbzYKfU0saMMpE0c
 y6FjkY/kO9yg3PC7A8c/iLeiKq7W9bSd0EW5v6JyKewZP8L6TuTpUR2WXfRHAhainpwD
 3X2UNeT+uUdhZNBq4wbujrj5R8n2iakpE75XD+l9XcRf/qYRAEonZVmYz6OXYFBL+OxA
 lOl6bXfFedCgW8+kAc0AjPXgWeIQDlP4ELXIxPfJmR1QD5r0b1hnowRPfvugnfeaMwI9
 BsBw==
X-Gm-Message-State: APjAAAUoqW7plrHns/Vc0kdku2bPph3re9vhw+D3waKK9p0WFJJkiZwg
 lieYnUfZDmapL4/4MBoj7AGrHg==
X-Google-Smtp-Source: APXvYqw7gVv24LXO4yo+TKhY0kNEn11cDs1o6RHPmwxTKhpnXMxlZFCrF93NRIGzbtr+nGTfG9euuQ==
X-Received: by 2002:a5d:5647:: with SMTP id j7mr27755061wrw.265.1582016745546; 
 Tue, 18 Feb 2020 01:05:45 -0800 (PST)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id w7sm2722224wmi.9.2020.02.18.01.05.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 01:05:44 -0800 (PST)
References: <20200120034937.128600-1-jian.hu@amlogic.com>
 <20200120034937.128600-3-jian.hu@amlogic.com>
 <1jftfq7ir8.fsf@starbuckisacylon.baylibre.com>
 <ce7d406e-b5bd-44c8-84fb-5edd3b3ffbce@amlogic.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jian Hu <jian.hu@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH v7 2/5] clk: meson: add support for A1 PLL clock ops
In-reply-to: <ce7d406e-b5bd-44c8-84fb-5edd3b3ffbce@amlogic.com>
Date: Tue, 18 Feb 2020 10:05:43 +0100
Message-ID: <1jd0ac5kpk.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_010548_071517_CA4027DA 
X-CRM114-Status: GOOD (  21.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Mon 10 Feb 2020 at 07:11, Jian Hu <jian.hu@amlogic.com> wrote:

> Hi Jerome
>
> Thanks for your suggestions.
>
> On 2020/2/4 18:24, Jerome Brunet wrote:
>>
>> On Mon 20 Jan 2020 at 04:49, Jian Hu <jian.hu@amlogic.com> wrote:
>>
>>> Compared with the previous SoCs, self-adaption current module
>>> is newly added for A1, and there is no reset parm except the
>>> fixed pll. In A1 PLL, the PLL enable sequence is different, using
>>> the new power-on sequence to enable the PLL.
>>
>> Things are getting clearer thanks to Martin's suggestions and I can
>> understand what your driver is doing now
>>
>> However, I still have a problem with the fact that 2 different pll types
>> are getting intertwined in this driver. Parameters mandatory to one is
>> made optional to the other. Nothing clearly shows which needs what and
>> the combinatorial are quickly growing.
>>
>> Apparently the only real difference is in enable/disable, So I would
>> prefer if the a1 had dedicated function for these ops.
>>
>> I suppose you'll have to submit clk_hw_enable() and clk_hw_disable()
>> to the framework to call the appropriate ops dependind on the SoC.
>>
> I am confused here.
> What does clk_hw_is_enabled/clk_hw_enable/clk_hw_disable use here?

I'm asking you to make different callback for .enable() and .disable().
The .set_rate() callback of this driver needs to turn off and on the
clock, so it needs to call the appropriate one.

To do so, you should go through a clk_hw_xxxxx() function.

>
> clk_hw_is_enabled is intend to check a parm's existence? But
> clk_hw_is_enabled which is existed in CCF to check a PLL is locked or
> not. Maybe I understand wrong about your suggestions.
>
> Could you list a example for clk_hw_enable and clk_hw_disable function
> implementation?

drivers/clk/clk.c:523 : clk_hw_is_enabled()

clk_hw_enable() and clk_hw_disable() so you'll need to implement these
one and submit them.

>>>
>>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>>> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>>> ---
>>>   drivers/clk/meson/clk-pll.c | 47 +++++++++++++++++++++++++++++++------
>>>   drivers/clk/meson/clk-pll.h |  2 ++
>>>   2 files changed, 42 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
>>> index ddb1e5634739..10926291440f 100644
>>> --- a/drivers/clk/meson/clk-pll.c
>>> +++ b/drivers/clk/meson/clk-pll.c
>>> @@ -283,10 +283,14 @@ static void meson_clk_pll_init(struct clk_hw *hw)
>>>   	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>>>     	if (pll->init_count) {
>>> -		meson_parm_write(clk->map, &pll->rst, 1);
>>> +		if (MESON_PARM_APPLICABLE(&pll->rst))
>>> +			meson_parm_write(clk->map, &pll->rst, 1);
>>> +
>>
>> replace by
>>          enabled = clk_hw_is_enabled(hw)
>>          if (enabled)
>>             clk_hw_disable(hw)
>>
> clk_hw_is_enabled here is used to check 'pll->rst'?
>>>   		regmap_multi_reg_write(clk->map, pll->init_regs,
>>>   				       pll->init_count);
>>> -		meson_parm_write(clk->map, &pll->rst, 0);
>>> +
>>> +		if (MESON_PARM_APPLICABLE(&pll->rst))
>>> +			meson_parm_write(clk->map, &pll->rst, 0);
>>
>>         /* restore if necessary */
>>         if (enabled)
>>            clk_hw_enable(hw)
>>
>>>   	}
>>>   }
>>>   @@ -295,8 +299,11 @@ static int meson_clk_pll_is_enabled(struct clk_hw
>>> *hw)
>>>   	struct clk_regmap *clk = to_clk_regmap(hw);
>>>   	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>>>   -	if (meson_parm_read(clk->map, &pll->rst) ||
>>> -	    !meson_parm_read(clk->map, &pll->en) ||
>>> +	if (MESON_PARM_APPLICABLE(&pll->rst) &&
>>> +	    meson_parm_read(clk->map, &pll->rst))
>>> +		return 0;
>>> +
>>> +	if (!meson_parm_read(clk->map, &pll->en) ||
>>>   	    !meson_parm_read(clk->map, &pll->l))
>>>   		return 0;
>>
>> I suppose the pll can't be locked if it was in reset, so we could drop
>> the check on `rst` entirely to simplify the function
>>
> OK, I will drop 'rst' check.
>>>   @@ -323,13 +330,34 @@ static int meson_clk_pll_enable(struct clk_hw
>>> *hw)
>>>   		return 0;
>>>     	/* Make sure the pll is in reset */
>>> -	meson_parm_write(clk->map, &pll->rst, 1);
>>> +	if (MESON_PARM_APPLICABLE(&pll->rst))
>>> +		meson_parm_write(clk->map, &pll->rst, 1);
>>>     	/* Enable the pll */
>>>   	meson_parm_write(clk->map, &pll->en, 1);
>>>     	/* Take the pll out reset */
>>> -	meson_parm_write(clk->map, &pll->rst, 0);
>>> +	if (MESON_PARM_APPLICABLE(&pll->rst))
>>> +		meson_parm_write(clk->map, &pll->rst, 0);
>>> +
>>> +	/*
>>> +	 * Compared with the previous SoCs, self-adaption current module
>>> +	 * is newly added for A1, keep the new power-on sequence to enable the
>>> +	 * PLL. The sequence is:
>>> +	 * 1. enable the pll, delay for 10us
>>> +	 * 2. enable the pll self-adaption current module, delay for 40us
>>> +	 * 3. enable the lock detect module
>>> +	 */
>>> +	if (MESON_PARM_APPLICABLE(&pll->current_en)) {
>>> +		udelay(10);
>>> +		meson_parm_write(clk->map, &pll->current_en, 1);
>>> +		udelay(40);
>>> +	};
>>> +
>>> +	if (MESON_PARM_APPLICABLE(&pll->l_detect)) {
>>> +		meson_parm_write(clk->map, &pll->l_detect, 1);
>>> +		meson_parm_write(clk->map, &pll->l_detect, 0);
>>> +	}
>>>     	if (meson_clk_pll_wait_lock(hw))
>>>   		return -EIO;
>>> @@ -343,10 +371,15 @@ static void meson_clk_pll_disable(struct clk_hw *hw)
>>>   	struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>>>     	/* Put the pll is in reset */
>>> -	meson_parm_write(clk->map, &pll->rst, 1);
>>> +	if (MESON_PARM_APPLICABLE(&pll->rst))
>>> +		meson_parm_write(clk->map, &pll->rst, 1);
>>>     	/* Disable the pll */
>>>   	meson_parm_write(clk->map, &pll->en, 0);
>>> +
>>> +	/* Disable PLL internal self-adaption current module */
>>> +	if (MESON_PARM_APPLICABLE(&pll->current_en))
>>> +		meson_parm_write(clk->map, &pll->current_en, 0);
>>>   }
>>
>> With the above clarified, it should be easy to properly split the
>> functions between the legacy type and the a1 type.
>>
>> You'll need to update meson_clk_pll_set_rate() to call
>>   - clk_hw_is_enabled()
>>   - clk_hw_enable() and clk_hw_disable() (again, you'll need to add
>>   those in the framework first)
>>
>>>     static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long
>>> rate,
>>> diff --git a/drivers/clk/meson/clk-pll.h b/drivers/clk/meson/clk-pll.h
>>> index 367efd0f6410..a2228c0fdce5 100644
>>> --- a/drivers/clk/meson/clk-pll.h
>>> +++ b/drivers/clk/meson/clk-pll.h
>>> @@ -36,6 +36,8 @@ struct meson_clk_pll_data {
>>>   	struct parm frac;
>>>   	struct parm l;
>>>   	struct parm rst;
>>> +	struct parm current_en;
>>> +	struct parm l_detect;
>>>   	const struct reg_sequence *init_regs;
>>>   	unsigned int init_count;
>>>   	const struct pll_params_table *table;
>>
>> .
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
