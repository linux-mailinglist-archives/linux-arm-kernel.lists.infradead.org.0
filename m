Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E84135362
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 07:55:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T7pcYQByuJZ4etEm3rrhkSegh2iDoj22EntpXJDJfGA=; b=l3a1rSaMZFfFE11VGlM1M0YmS
	XqJd2BqZ0lppkNBRvHN3W1o/kd/f8qwFVT/n5GCZjOFd/x6ztJX+8ZaUuXeCLWtyQnxLn3SCOFgUa
	U7dsAiYSiQetDIiPxl9DenFD0+0eWxQjbovYU5g6NO5NFQSXc6rlnxYS7hdAGyDIo/D2Pf6s77huw
	8n3Q52DivM3d3H5OMhzAkO2xEq1PT5qs+ih/bPH3xoDAIhcv7lZI1KCnmlW1He0oQkS8Jod+CzLeR
	TtgC4Tx0Tn+Ag04K6xFhwkbbNSIRKP9B0+itSNw109Cl1MZlqpfcFWHQEqYqumlD1LOXfd9NIl8X1
	darg+ykiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipRif-0005tC-VH; Thu, 09 Jan 2020 06:55:01 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipRiY-0005sH-QX; Thu, 09 Jan 2020 06:54:56 +0000
Received: from [10.28.39.63] (10.28.39.63) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 9 Jan
 2020 14:55:14 +0800
Subject: Re: [PATCH v5 2/5] clk: meson: add support for A1 PLL clock ops
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20191227094606.143637-1-jian.hu@amlogic.com>
 <20191227094606.143637-3-jian.hu@amlogic.com>
 <CAFBinCC4Fgn3QQ6H-TWO_Xx+USonzMDZDyvJBfYp-_6=pmKdLQ@mail.gmail.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <ee163cd0-a05e-5147-c307-e9870535b1dd@amlogic.com>
Date: Thu, 9 Jan 2020 14:55:14 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCC4Fgn3QQ6H-TWO_Xx+USonzMDZDyvJBfYp-_6=pmKdLQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.63]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_225454_861834_3F6A57C6 
X-CRM114-Status: GOOD (  22.39  )
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
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin

Thanks for your review

On 2019/12/28 0:53, Martin Blumenstingl wrote:
> Hi Jian,
> 
> On Fri, Dec 27, 2019 at 10:46 AM Jian Hu <jian.hu@amlogic.com> wrote:
> [...]
>> @@ -294,9 +298,12 @@ static int meson_clk_pll_is_enabled(struct clk_hw *hw)
>>   {
>>          struct clk_regmap *clk = to_clk_regmap(hw);
>>          struct meson_clk_pll_data *pll = meson_clk_pll_data(clk);
>> +       int ret = 0;
>>
>> -       if (meson_parm_read(clk->map, &pll->rst) ||
>> -           !meson_parm_read(clk->map, &pll->en) ||
>> +       if (MESON_PARM_APPLICABLE(&pll->rst))
>> +               ret = meson_parm_read(clk->map, &pll->rst);
>> +
>> +       if (ret || !meson_parm_read(clk->map, &pll->en) ||
>>              !meson_parm_read(clk->map, &pll->l))
>>                  return 0;
> I had to read this part twice to understand what it's doing because I
> misunderstood what "ret" is used for (I thought that some "return ret"
> is missing)
> my proposal to make it easier to read:
> ...
> if (MESON_PARM_APPLICABLE(&pll->rst) &&
>      meson_parm_read(clk->map, &pll->rst))
>    return 0;
> 
> if (!meson_parm_read(clk->map, &pll->en) ||
>      !meson_parm_read(clk->map, &pll->l))
>                   return 0;
> ...
> 
> please let me know what you think about this
I was intended to use 'ret' to store the return value of pll->rst.

If pll->rst exists, it will get it. Otherwise, the ret will be zero.

Your proposal is a good way for it. I will use it.
> 
>> @@ -321,6 +328,23 @@ static int meson_clk_pll_enable(struct clk_hw *hw)
>>          /* do nothing if the PLL is already enabled */
>>          if (clk_hw_is_enabled(hw))
>>                  return 0;
>> +       /*
>> +        * Compared with the previous SoCs, self-adaption module current
>> +        * is newly added for A1, keep the new power-on sequence to enable the
>> +        * PLL.
>> +        */
>> +       if (MESON_PARM_APPLICABLE(&pll->current_en)) {
>> +               /* Enable the pll */
>> +               meson_parm_write(clk->map, &pll->en, 1);
>> +               udelay(10);
>> +               /* Enable the pll self-adaption module current */
>> +               meson_parm_write(clk->map, &pll->current_en, 1);
>> +               udelay(40);
>> +               /* Enable lock detect module */
>> +               meson_parm_write(clk->map, &pll->l_detect, 1);
>> +               meson_parm_write(clk->map, &pll->l_detect, 0);
>> +               goto out;
>> +       }
> in all other functions you are skipping the pll->rst register by
> checking for MESON_PARM_APPLICABLE(&pll->rst)
> I like that because it's a pattern which is easy to follow
> 
> do you think we can make this part consistent with that?
> I'm thinking of something like this (not compile-tested and I dropped
> all comments, just so you get the idea):
It is a good idea. I will test it.
> ...
> if (MESON_PARM_APPLICABLE(&pll->rst)
>    meson_parm_write(clk->map, &pll->rst, 1);
> 
> meson_parm_write(clk->map, &pll->en, 1);
> 
> if (MESON_PARM_APPLICABLE(&pll->rst))
>    meson_parm_write(clk->map, &pll->rst, 0);
> 
> if (MESON_PARM_APPLICABLE(&pll->current_en))
>    meson_parm_write(clk->map, &pll->current_en, 1);
> 
> if (MESON_PARM_APPLICABLE(&pll->l_detect)) {
>    meson_parm_write(clk->map, &pll->l_detect, 1);
>    meson_parm_write(clk->map, &pll->l_detect, 0);
> }
> 
> if (meson_clk_pll_wait_lock(hw))
> ...
> 
> I see two (and a half) benefits here:
> - if there's a PLL with neither the pll->current_en nor the pll->rst
> registers then you get support for this implementation for free
> - the if (MESON_PARM_APPLICABLE(...)) pattern is already used in the
> driver, but only for one register (in your example when
> MESON_PARM_APPLICABLE(&pll->current_en) exists you also modify the
> pll->l_detect register, which I did not expect)
> - only counts half: no use of "goto", which in my opinion makes it
> very easy to read (just read from top to bottom, checking each "if")
> 
I see, I will verify it.
> 
> Martin
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
