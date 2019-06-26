Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 287885648F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 10:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6rk7Ino3oh3WCMs9L9PBT5Sr9tB/Eg0pqWd2Upc5Vw=; b=o9tjU5VASiFjua
	xDTd5vYLs/XScUi9n4rVMl+R3A3XWgmXyQulwfJkbSYdJvLMi8RPpmLLu2aGdGoZv/Xeg4+OeFHpv
	I3IS11JhOHQmV0MSgVfua9l591AaxhJWXbtu24BEOhP/BRkcrNEiLfbJMVJb8HbIuNTInotdbMSoj
	Ex9nYgaEm7MXTq+zrlnAI7yNoACa2cPVyvA3a3KwOJADLbkLyGTJWOLGg7REoJapxIT5MXTW1cPVE
	mQhrtH8HXdiRTvebTAtw/G1Y347b2QBt+NUfHK703aLkNVVRr/fs0a+s2juOeHsDmpQEQc39Ouedk
	SMk99XlqJHRfC0qt/39w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3H6-0003Iw-9t; Wed, 26 Jun 2019 08:27:28 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3Go-0003I7-Mp
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 08:27:12 +0000
Received: by mail-wr1-x430.google.com with SMTP id p11so1624290wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 01:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=NjBGXtFI+1wAIIWeuIukIDBT9tMDnuLj71B1BtmpDZE=;
 b=zSNPgz9Y1rwKcXVLQx+zKjzciItrBD+k4lDHZWa8hHV6YpBL6UjAOj0Pyfl6ze3FJB
 qBeuIyyKJZlQ3Ayc25Rh5W1WtVES4FKtnNBNEjzoYlvf7ypvp8jl1MUeCjrbCZ+jnxqC
 bEJT2/QeyZMlMyrcN8UMa9ghOROLEf5JAC5iRXwK4OZQpxHx7AUI5qESWqid3fdqC4qG
 mtCa4n0QvQpxKEwzxV33Bla3gnGMkxUtKcfpn/nsAXrAmFrEEl86knSACc/CjwbUzb4F
 MXuYZ9nn585t29wqh7njys4dlZ+JDatAgqi+rSdj3jFr/JTqAorlhREUc6WADX0Wm+/o
 vjFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=NjBGXtFI+1wAIIWeuIukIDBT9tMDnuLj71B1BtmpDZE=;
 b=CAGtDVKL9RrQ2K/GH3DFXaq/2n6o9vt8YZ2q9HTN8UeLhjDDdn0i4AOmdxwB2+hNab
 yRRoM4Mxk7G2VIqs2qjy+vSImkpV8mDblxhEqbsvU1taYyWFflGkOW+E/REzUwc1q0Lo
 pVJtkzu/jOJjDSbqqgNtV6qnrUNkAngs1FMxlrCsG2Vxrb1n87dLE65ZmLl44vqwbFND
 kiSZnfBSgLQs6p2DIeW+OcuJLr2Mz0Ox+DnMWSzD156ZLFzcSe+BJTmbNaansbMWzdgH
 Stb91UPwJQZWHPKbhbuMKdFHnGVZ5sfgdNyyeB5K8Vn1AtgvL5ncW77VGDH4sKBGgi+l
 FELA==
X-Gm-Message-State: APjAAAWETx5UdWdKFGT1W9Q/z1ZOrmcWamPH/AHSdxg4iPO3xYLrl0fK
 qhXJtFj5DdNTwoBDIUtOcBQotA==
X-Google-Smtp-Source: APXvYqx8jZMG+o/ryqCcSbWtbD/Zxzh9yUy++b6b++28BbzW4GYCR/z53WHOE3pwgzCp9z/4l84VJA==
X-Received: by 2002:adf:ce82:: with SMTP id r2mr2419082wrn.223.1561537628908; 
 Wed, 26 Jun 2019 01:27:08 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h133sm1039910wme.28.2019.06.26.01.27.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 01:27:08 -0700 (PDT)
Subject: Re: [RFC/RFT 07/14] clk: meson: g12a: add notifiers to handle cpu
 clock change
To: Stephen Boyd <sboyd@kernel.org>, jbrunet@baylibre.com, khilman@baylibre.com
References: <20190620150013.13462-1-narmstrong@baylibre.com>
 <20190620150013.13462-8-narmstrong@baylibre.com>
 <20190625203152.6060B208CB@mail.kernel.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <0e9d3dbe-ec5d-c4dc-478a-7a21561b0910@baylibre.com>
Date: Wed, 26 Jun 2019 10:27:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190625203152.6060B208CB@mail.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_012710_757623_52FC2FEB 
X-CRM114-Status: GOOD (  20.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: martin.blumenstingl@googlemail.com, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/06/2019 22:31, Stephen Boyd wrote:
> Quoting Neil Armstrong (2019-06-20 08:00:06)
>> In order to implement clock switching for the CLKID_CPU_CLK and
>> CLKID_CPUB_CLK, notifiers are added on specific points of the
>> clock tree :
>>
>> cpu_clk / cpub_clk
>> |   \- cpu_clk_dyn
>> |      |  \- cpu_clk_premux0
>> |      |        |- cpu_clk_postmux0
>> |      |        |    |- cpu_clk_dyn0_div
>> |      |        |    \- xtal/fclk_div2/fclk_div3
>> |      |        \- xtal/fclk_div2/fclk_div3
>> |      \- cpu_clk_premux1
>> |            |- cpu_clk_postmux1
>> |            |    |- cpu_clk_dyn1_div
>> |            |    \- xtal/fclk_div2/fclk_div3
>> |            \- xtal/fclk_div2/fclk_div3
>> \ sys_pll / sys1_pll
>>
>> This for each cluster, a single one for G12A, two for G12B.
>>
>> Each cpu_clk_premux1 tree is marked as read-only and CLK_SET_RATE_NO_REPARENT,
>> to be used as "parking" clock in a safe clock frequency.
>>
>> A notifier is added on each cpu_clk_premux0 to detech when CCF want to
>> change the frequency of the cpu_clk_dyn tree.
>> In this notifier, the cpu_clk_premux1 tree is configured to use the xtal
>> clock and then the cpu_clk_dyn is switch to cpu_clk_premux1 while CCF
>> updates the cpu_clk_premux0 tree.
>>
>> A notifier is added on each sys_pll/sys1_pll to detect when CCF wants to
>> change the PLL clock source of the cpu_clk.
>> In this notifier, the cpu_clk is switched to cpu_clk_dyn while CCF
>> updates the sys_pll/sys1_pll frequency.
>>
>> A third small notifier is added on each cpu_clk / cpub_clk and cpu_clk_dyn,
>> add a small delay at PRE_RATE_CHANGE/POST_RATE_CHANGE to let the other
>> notofiers change propagate before changing the cpu_clk_premux0 and sys_pll
>> clock trees.
>>
>> This notifier set permits switching the cpu_clk / cpub_clk without any
>> glitches and using a safe parking clock while switching between sub-GHz
>> clocks using the cpu_clk_dyn tree.
>>
>> This setup has been tested and validated on the Amlogic G12A and G12B
>> SoCs running the arm64 cpuburn at [1] and cycling between all the possible
>> cpufreq translations of each cluster and checking the final frequency using
>> the clock-measurer, script at [2].
>>
>> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
>> [2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> [...]
>> @@ -418,6 +458,35 @@ static struct clk_regmap g12b_cpub_clk_premux0 = {
>>         },
>>  };
>>  
>> +/* This divider uses bit 26 to take change in account */
>> +static int g12b_cpub_clk_mux0_div_set_rate(struct clk_hw *hw, unsigned long rate,
>> +                                         unsigned long parent_rate)
>> +{
>> +       struct clk_regmap *clk = to_clk_regmap(hw);
>> +       struct clk_regmap_div_data *div = clk_get_regmap_div_data(clk);
>> +       unsigned int val;
>> +       int ret;
>> +
>> +       ret = divider_get_val(rate, parent_rate, div->table, div->width,
>> +                             div->flags);
>> +       if (ret < 0)
>> +               return ret;
>> +
>> +       val = (unsigned int)ret << div->shift;
>> +
>> +       regmap_update_bits(clk->map, HHI_SYS_CPUB_CLK_CNTL,
>> +                          SYS_CPU_DYN_ENABLE, SYS_CPU_DYN_ENABLE);
>> +
>> +       return regmap_update_bits(clk->map, div->offset,
>> +                                 clk_div_mask(div->width) << div->shift | SYS_CPU_DYN_ENABLE, val);
>> +};
>> +
>> +const struct clk_ops g12b_cpub_clk_mux0_div_ops = {
> 
> static?

Ack

> 
>> +       .recalc_rate = clk_regmap_div_recalc_rate,
>> +       .round_rate = clk_regmap_div_round_rate,
>> +       .set_rate = g12b_cpub_clk_mux0_div_set_rate,
>> +};
>> +
>>  /* Datasheet names this field as "mux0_divn_tcnt" */
>>  static struct clk_regmap g12b_cpub_clk_mux0_div = {
>>         .data = &(struct clk_regmap_div_data){
> [...]
>>  
>> +static int g12a_cpu_clk_mux_notifier_cb(struct notifier_block *nb,
>> +                                       unsigned long event, void *data)
>> +{
>> +       switch (event) {
>> +       case POST_RATE_CHANGE:
>> +       case PRE_RATE_CHANGE:
>> +               /* Wait for clock propagation before/after changing the mux */
>> +               udelay(100);
>> +               return NOTIFY_OK;
>> +
>> +       default:
>> +               return NOTIFY_DONE;
>> +       }
> 
> Maybe convert this into a if statement and then have a default return
> of NOTIFY_DONE otherwise?

Would be similar, I'm not against it.

> 
>> +}
>> +
>> +struct notifier_block g12a_cpu_clk_mux_nb = {
> 
> static?

Ack

> 
>> +       .notifier_call = g12a_cpu_clk_mux_notifier_cb,
>> +};
>> +
>> +struct g12a_cpu_clk_postmux_nb_data {
>> +       struct notifier_block nb;
>> +       struct clk_hw *xtal;
>> +       struct clk_hw *cpu_clk_dyn;
>> +       struct clk_hw *cpu_clk_postmux0;
>> +       struct clk_hw *cpu_clk_postmux1;
>> +       struct clk_hw *cpu_clk_premux1;
>> +};
>> +
>> +static int g12a_cpu_clk_postmux_notifier_cb(struct notifier_block *nb,
>> +                                        unsigned long event, void *data)
>> +{
>> +       struct g12a_cpu_clk_postmux_nb_data *nb_data =
>> +               container_of(nb, struct g12a_cpu_clk_postmux_nb_data, nb);
>> +
>> +       switch (event) {
>> +       case PRE_RATE_CHANGE:
>> +               /*
>> +                * This notifier means cpu_clk_postmux0 clock will be changed
>> +                * to feed cpu_clk, this the current path :
> 
> Maybe write "this is the current path"?
> 

Ack

Thanks,
Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
