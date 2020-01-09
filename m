Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9A51353E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 08:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=guLN/THGoIK7HmSXF8/rYyvcV3a5tXD7W+rFKeCHlro=; b=WoYDSBzy8CwT08fvERQ0oqcxC
	kWRBjTRcfsfFb4sbPqcgx2/IeZQZVBdAsttTRABl0Giqes+HN1cZa5H8niH8APnSBHdOxUJhIa/zh
	TSHAqEzb9ttR+cYb1jXzdZtDpTPANiLqcGYYQJJj1ZufZjjzwnQ+intA5v3+QfKV/3MEGpbLAeAxW
	dTkg4ULyMaiipAnsGf1wowGBskBS9sqOJ4OtZXhUi6BEddwpPkLQllSEhtHleQUFDYAwafU1+DPbd
	Xw0Up9kIO18B+P2P/QcNQNW+awKy1xTgBxIf8v2fBflJwaG084Toxwv93WhDvahPz6l5b/Wdoy35s
	SphZTJ+mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipSep-0002Br-RP; Thu, 09 Jan 2020 07:55:07 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipSed-0002Ah-QQ; Thu, 09 Jan 2020 07:54:57 +0000
Received: from [10.28.39.63] (10.28.39.63) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Thu, 9 Jan
 2020 15:55:17 +0800
Subject: Re: [PATCH v5 3/5] clk: meson: a1: add support for Amlogic A1 PLL
 clock driver
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20191227094606.143637-1-jian.hu@amlogic.com>
 <20191227094606.143637-4-jian.hu@amlogic.com>
 <CAFBinCB2XF1unfEGbApuoXR3ZBRMwgc4EuqSjgKWKm_2G16S5g@mail.gmail.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <6d8b7bd4-87ea-46ad-0909-9803032580e4@amlogic.com>
Date: Thu, 9 Jan 2020 15:55:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCB2XF1unfEGbApuoXR3ZBRMwgc4EuqSjgKWKm_2G16S5g@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.63]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_235455_863957_5A2DB893 
X-CRM114-Status: GOOD (  17.35  )
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
 Qiufang Dai <qiufang.dai@amlogic.com>, Chandle Zou <chandle.zou@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/12/28 1:04, Martin Blumenstingl wrote:
> Hi Jian,
> 
> On Fri, Dec 27, 2019 at 10:46 AM Jian Hu <jian.hu@amlogic.com> wrote:
> [...]
>> +               .parent_data = &(const struct clk_parent_data){
>> +                       .fw_name = "xtal_fixpll",
>> +               },
> in the Meson8b and G12A (I assume it's the same on GXBB, I didn't
> check it) we have a space between " clk_parent_data)" and "{"
> this applies to at least one more occurrence below
> 
I have checked G12A and Meson8b, there is a space.The space is missing 
here, the same as other place. I will fix it in next version.
> [...]
>> +               /*
>> +                * This clock is used by APB bus which setted in Romcode
> nit-pick: I'm not sure about the grammar here: setted -> "is set"?
> and to make sure I understand this correctly: do you mean the "boot
> ROM" with "Romcode"?
You are right, it is a mistake here. 'is set' is right.
Yes, Romcode means boot ROM. I will change it to 'boot ROM code'
> 
> [...]
>> +static int meson_a1_pll_probe(struct platform_device *pdev)
>> +{
>> +       const struct meson_eeclkc_data *data;
> what do you need this "data" variable for?
> 
>> +       struct device *dev = &pdev->dev;
>> +       struct resource *res;
>> +       void __iomem *base;
>> +       struct regmap *map;
>> +       int ret, i;
>> +
>> +       data = of_device_get_match_data(dev);
>> +       if (!data)
>> +               return -EINVAL;
>> +
>> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> +
>> +       base = devm_ioremap_resource(dev, res);
>> +       if (IS_ERR(base))
>> +               return PTR_ERR(base);
>> +
>> +       map = devm_regmap_init_mmio(dev, base, &clkc_regmap_config);
>> +       if (IS_ERR(map))
>> +              return PTR_ERR(map);
>> +
>> +       /* Populate regmap for the regmap backed clocks */
>> +       for (i = 0; i < data->regmap_clk_num; i++)
>> +               data->regmap_clks[i]->map = map;
> why can't we use a1_pll_regmaps directly here?
> 
OK, I will use it directly .
>> +
>> +       for (i = 0; i < data->hw_onecell_data->num; i++) {
>> +               /* array might be sparse */
>> +               if (!data->hw_onecell_data->hws[i])
>> +                       continue;
>> +
>> +               ret = devm_clk_hw_register(dev, data->hw_onecell_data->hws[i]);
> and why can't we use a1_pll_hw_onecell_data directly here?
> 
OK, I will use it directly.
> [...]
>> +static const struct meson_eeclkc_data a1_pll_data = {
>> +               .regmap_clks = a1_pll_regmaps,
>> +               .regmap_clk_num = ARRAY_SIZE(a1_pll_regmaps),
>> +               .hw_onecell_data = &a1_pll_hw_onecell_data,
>> +};
> if _probe would access these directly then you can drop meson_eeclkc_data
> that is a good thing in my opinion because I was confused by the
> "eeclk" since the patch description says that there's no EE or AO
> domain on the A1 SoCs
> 
OK, I will remove it and verify it.
> 
> Martin
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
