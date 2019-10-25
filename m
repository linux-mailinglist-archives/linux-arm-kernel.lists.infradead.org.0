Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E65CE43C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 08:47:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SpVWgnZCCXIE2s2ZUC/bjqGnv07/zwcDgOBZnsThdNw=; b=kgrwsJzBkiuKie4ezGh2Ya0wX
	6uB9kPW8M4fjpyvigitWlmRqoUOoUYx6TDTTCGOIAIaP2jrC5sDEPO4Wm2NDWs3B+0yiWLp+cU854
	CyLZPR2FTZOSaChPxAu+VFJFEMuRhprJzKjHx6LcOIHdtfG0nqyIbwDHaA/+/tZW4tqCE7INmO78s
	l2jishhq5g823bYqQQu49pW5Fk4DQjdPr3FiGunrbCwWfJgK3GS5pwqm6/XUvbZkiYwScJWYu+If/
	dSwnleuaOMn7oW4n2b5hPIo9Km2h4d519OGOt78ITyjIDDZu8JkvDS/W7bs+jeeyOSC0ntbgXuYn7
	EEWAJR15Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNtNs-0005Bh-CA; Fri, 25 Oct 2019 06:47:40 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNtNe-0005BA-P7; Fri, 25 Oct 2019 06:47:28 +0000
Received: from [10.28.19.114] (10.28.19.114) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Fri, 25 Oct
 2019 14:47:37 +0800
Subject: Re: [PATCH v2 2/3] clk: meson: add support for A1 PLL clock ops
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
References: <1571382865-41978-1-git-send-email-jian.hu@amlogic.com>
 <1571382865-41978-3-git-send-email-jian.hu@amlogic.com>
 <1jtv82bai3.fsf@starbuckisacylon.baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <77eb8a68-f5b5-357b-f71c-e22337d88a39@amlogic.com>
Date: Fri, 25 Oct 2019 14:47:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1jtv82bai3.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.19.114]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_234726_819216_8C5064B5 
X-CRM114-Status: GOOD (  23.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jerome

On 2019/10/21 19:31, Jerome Brunet wrote:
> 
> On Fri 18 Oct 2019 at 09:14, Jian Hu <jian.hu@amlogic.com> wrote:
> 
>> The A1 PLL design is different with previous SoCs. The PLL
>> internal analog modules Power-on sequence is different
>> with previous, and thus requires a strict register sequence to
>> enable the PLL. Unlike the previous series, the maximum frequency
>> is 6G in G12A, for A1 the maximum is 1536M.
>>
>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>> ---
>>   drivers/clk/meson/clk-pll.c | 66 ++++++++++++++++++++++++++++++++++++++++-----
>>   drivers/clk/meson/clk-pll.h |  1 +
>>   2 files changed, 61 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
>> index ddb1e56..b440e62 100644
>> --- a/drivers/clk/meson/clk-pll.c
>> +++ b/drivers/clk/meson/clk-pll.c
>> @@ -349,6 +349,56 @@ static void meson_clk_pll_disable(struct clk_hw *hw)
>>   	meson_parm_write(clk->map, &pll->en, 0);
>>   }
>>   
>> +/*
>> + * The A1 design is different with previous SoCs.The PLL
>> + * internal analog modules Power-on sequence is different with
>> + * previous, different PLL has the different sequence, and
>> + * thus requires a strict register sequence to enable the PLL.
>> + * When set a new target frequency, the sequence should keep
>> + * the same with the initial sequence. Unlike the previous series,
>> + * the maximum frequency is 6G in G12A, for A1 the maximum
>> + * is 1536M.
> 
> The comment about the max frequency belongs in your a1 driver, not in
> the PLL driver
> 
OK, I will remove the max frequency comments
>> + */
>> +static void meson_params_update_with_init_seq(struct clk_regmap *clk,
>> +				       struct meson_clk_pll_data *pll,
>> +				       unsigned int m, unsigned int n,
>> +				       unsigned int frac)
>> +{
>> +	struct parm *pm = &pll->m;
>> +	struct parm *pn = &pll->n;
>> +	struct parm *pfrac = &pll->frac;
>> +	const struct reg_sequence *init_regs = pll->init_regs;
>> +	unsigned int i, val;
>> +
>> +	for (i = 0; i < pll->init_count; i++) {
>> +		if (pn->reg_off == init_regs[i].reg) {
>> +			/* Clear M N bits and Update M N value */
>> +			val = init_regs[i].def;
>> +			val &= CLRPMASK(pn->width, pn->shift);
>> +			val &= CLRPMASK(pm->width, pm->shift);
>> +			val |= n << pn->shift;
>> +			val |= m << pm->shift;
>> +			regmap_write(clk->map, pn->reg_off, val);
>> +		} else if (MESON_PARM_APPLICABLE(&pll->frac) &&
>> +			   (pfrac->reg_off == init_regs[i].reg)) {
>> +			/* Clear Frac bits and Update Frac value */
>> +			val = init_regs[i].def;
>> +			val &= CLRPMASK(pfrac->width, pfrac->shift);
>> +			val |= frac << pfrac->shift;
>> +			regmap_write(clk->map, pfrac->reg_off, val);
>> +		} else {
>> +			/*
>> +			 * According to the PLL hardware constraint,
>> +			 * the left registers should be setted again.
>> +			 */
>> +			val = init_regs[i].def;
>> +			regmap_write(clk->map, init_regs[i].reg, val);
>> +		}
>> +		if (init_regs[i].delay_us)
>> +			udelay(init_regs[i].delay_us);
>> +	}
> 
> So:
> 
> 1) All the code above this there make the PLL lock, IOW enable the
> PLL. It does not belong in the set_rate() callback but in enable() or
> prepare() maybe.
> 
> 2) All the above is works but it is a bit over complicated for what it
> does. From the a1_hifi_init_regs I see, all you really need to do is
>    * toggle BIT(6) in CTRL2
>    * toggle BIT(28) in CTRL0 (enable PARM)
>    * toggle BIT(26) in CTRL0
> 
> You could use PARM 'rst' for one them and introduce another parm for the
> other one. You would not need to repoke the whole sequence this way.
> 
OK, I have realized as you suggested. I will send it in the V3 patch.
>> +}
>> +
>>   static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
>>   				  unsigned long parent_rate)
>>   {
>> @@ -366,16 +416,20 @@ static int meson_clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
>>   	if (ret)
>>   		return ret;
>>   
>> +	if (MESON_PARM_APPLICABLE(&pll->frac))
>> +		frac = __pll_params_with_frac(rate, parent_rate, m, n, pll);
>> +
>>   	enabled = meson_parm_read(clk->map, &pll->en);
>>   	if (enabled)
>>   		meson_clk_pll_disable(hw);
>>   
>> -	meson_parm_write(clk->map, &pll->n, n);
>> -	meson_parm_write(clk->map, &pll->m, m);
>> -
>> -	if (MESON_PARM_APPLICABLE(&pll->frac)) {
>> -		frac = __pll_params_with_frac(rate, parent_rate, m, n, pll);
>> -		meson_parm_write(clk->map, &pll->frac, frac);
>> +	if (pll->strict_sequence)
>> +		meson_params_update_with_init_seq(clk, pll, m, n, frac);
>> +	else {
>> +		meson_parm_write(clk->map, &pll->n, n);
>> +		meson_parm_write(clk->map, &pll->m, m);
>> +		if (MESON_PARM_APPLICABLE(&pll->frac))
>> +			meson_parm_write(clk->map, &pll->frac, frac);
>>   	}
>>   
>>   	/* If the pll is stopped, bail out now */
>> diff --git a/drivers/clk/meson/clk-pll.h b/drivers/clk/meson/clk-pll.h
>> index 367efd0..d5789cef 100644
>> --- a/drivers/clk/meson/clk-pll.h
>> +++ b/drivers/clk/meson/clk-pll.h
>> @@ -41,6 +41,7 @@ struct meson_clk_pll_data {
>>   	const struct pll_params_table *table;
>>   	const struct pll_mult_range *range;
>>   	u8 flags;
>> +	bool strict_sequence;
> 
> Don't introduce parameter for this We have ops to tune the behavior of
> the clock driver. Properly refactor the code if some of it is common.
> 
remove the strict_sequence.
>>   };
>>   
>>   extern const struct clk_ops meson_clk_pll_ro_ops;
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
