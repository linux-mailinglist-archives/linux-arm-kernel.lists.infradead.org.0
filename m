Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FF715980C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:19:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VgAabfOu5o3IptAnA2Wnwdz74BfJnyuJjKoRhA26Pt8=; b=kfV0Jf/MnvNTi8
	TaBaaG8YhD1rhfX9CInDi9bsoo7cyU51y8lY8C+58iGT2ttRKtcJJA385xlc3wLBHAZyHOqmUnroD
	nWOOzcMVVJeO6Q9FU9cS+vqnlLfkigJNwydxb7op4pRHtSkKKHosNRhZCL41IRba7uOobFuVgcxrv
	JEOSsB/6ygQLU0JI8AdtI0jUs1XMw4xlzeWEb3irdIWmF0lT8V6+uHZTx70ehyZr8D/8c3xqNo+9v
	J3qWS+iHOHkwgPQqRligDoaN4aeBT5voaiPhrqmkzWwm27KrIhowr8ZhyLe1h9pNenhHulSaWm10R
	SCS9h+0XoJ0P01JRxR+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a8F-0006QU-2a; Tue, 11 Feb 2020 18:19:35 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zk7-00045Y-KH; Tue, 11 Feb 2020 17:54:43 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so5838031pfb.11;
 Tue, 11 Feb 2020 09:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lhwMxE6m+hbjfdldTjoAs49IPO29e5T3zjT9L7XAt7k=;
 b=dNkH+M/OfyjyHF0TcgxyzBaSdDXFJ6vu15/fz8ENR426ArEI0uHXffsL9+zgmmp3IN
 GaXczkPQnqLIt7xP4LCgsvU6jnIZ8fRHbaETE65DamrBtypYykAyyOOPS28Ku09o1iAJ
 HylwDue71XCSiahwkHpjYkMeYA9unuoE80ZE1xwaAwSPf+RkgNegpy5U7sExB0FCRe1l
 EGTNNXtwfqU0riO8lxq6S40wGfWAee19ApeI4D9ILGGkOD2a5oHiRar+BeGxw/8sIlnd
 J5KqibYSUrNYWJjm6txhxcRXR57sxJLdwMW/pgTFQe4mmLoulVXae8T8vv2hhwrhLQ9v
 EHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lhwMxE6m+hbjfdldTjoAs49IPO29e5T3zjT9L7XAt7k=;
 b=kQKTmZsslutWBQZoCR261giw3K6iI86JjP8TtnhFNIxTiP5hzk6+fyueMofn0E7i2n
 FnnIsB0A77jFPfr2a90SF6lBrlTGj9U2EOtHIM8zwKYET+W5Uo8SminRkNFK7hgSRYF+
 2M2rtS5Icj5AqGBhpymUjRGQcnWnoSPPvOkrad/DJx53+11yegKzvccdBqjf3mRQ+IXF
 yVlgQBow8CU7iSu06yoIGkxhTBup5gRvKd23dabjH9G8jXEqFmuCMOYCf54V6SEAITM6
 ksvlQmJyR5Xfngb/yu3EHKA/OswY23DiBn2fchy6jpli+x/V5HnATi26bd4jJmgmpNCy
 NQrQ==
X-Gm-Message-State: APjAAAWdljBb8ttjNEmL7CFeLUkUfKfiThpYyqDSIZhYEp2MjjTpzRRn
 nJK9TBqaXFGgoltkam1PbBk=
X-Google-Smtp-Source: APXvYqxP05KVKzzDSlERDWaU0BlziQbGbaiRwwtdXw+b07g/iGlYM5R+CZmoxoRLzdOXdximkAHjyg==
X-Received: by 2002:aa7:934a:: with SMTP id 10mr4422391pfn.233.1581443678329; 
 Tue, 11 Feb 2020 09:54:38 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id w68sm21517pfc.20.2020.02.11.09.54.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 11 Feb 2020 09:54:37 -0800 (PST)
Subject: Re: [PATCH v11 06/10] soc: mediatek: Add subsys clock control for bus
 protection
To: Weiyi Lu <weiyi.lu@mediatek.com>, Nicolas Boichat
 <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
 <1576813564-23927-7-git-send-email-weiyi.lu@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <b9ad8252-36e7-dacd-9040-de14e13f34f8@gmail.com>
Date: Tue, 11 Feb 2020 18:54:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1576813564-23927-7-git-send-email-weiyi.lu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095439_711224_8E97BA88 
X-CRM114-Status: GOOD (  30.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Liao <jamesjj.liao@mediatek.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/12/2019 04:46, Weiyi Lu wrote:
> Add subsys CG control flow before/after the bus protect control
> due to bus protection need SMI bus relative CGs enabled to feedback
> its ack.
> 

Sorry, I don't understand the commit message. Can you please rephrase and
explain better what this change is for.

> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
> ---
>  drivers/soc/mediatek/mtk-scpsys.c | 72 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 70 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> index 763ca58..32be4b3 100644
> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -79,6 +79,7 @@
>  #define PWR_STATUS_WB			BIT(27)	/* MT7622 */
>  
>  #define MAX_CLKS	3
> +#define MAX_SUBSYS_CLKS 10
>  
>  /**
>   * struct scp_domain_data - scp domain data for power on/off flow
> @@ -88,6 +89,8 @@
>   * @sram_pdn_bits: The mask for sram power control bits.
>   * @sram_pdn_ack_bits: The mask for sram power control acked bits.
>   * @basic_clk_name: The basic clocks required by this power domain.
> + * @subsys_clk_prefix: The prefix name of the clocks need to be enabled
> + *                     before releasing bus protection.
>   * @caps: The flag for active wake-up action.
>   * @bp_table: The mask table for multiple step bus protection.
>   */
> @@ -98,6 +101,7 @@ struct scp_domain_data {
>  	u32 sram_pdn_bits;
>  	u32 sram_pdn_ack_bits;
>  	const char *basic_clk_name[MAX_CLKS];
> +	const char *subsys_clk_prefix;
>  	u8 caps;
>  	struct bus_prot bp_table[MAX_STEPS];
>  };
> @@ -108,6 +112,7 @@ struct scp_domain {
>  	struct generic_pm_domain genpd;
>  	struct scp *scp;
>  	struct clk *clk[MAX_CLKS];
> +	struct clk *subsys_clk[MAX_SUBSYS_CLKS];
>  	const struct scp_domain_data *data;
>  	struct regulator *supply;
>  };
> @@ -301,16 +306,22 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
>  	val |= PWR_RST_B_BIT;
>  	writel(val, ctl_addr);
>  
> -	ret = scpsys_sram_enable(scpd, ctl_addr);
> +	ret = scpsys_clk_enable(scpd->subsys_clk, MAX_SUBSYS_CLKS);

Why can't we enable the subsystem clocks together with the rest just after
enabeling the regulator?

>  	if (ret < 0)
>  		goto err_pwr_ack;
>  
> +	ret = scpsys_sram_enable(scpd, ctl_addr);
> +	if (ret < 0)
> +		goto err_sram;
> +
>  	ret = scpsys_bus_protect_disable(scpd);
>  	if (ret < 0)
> -		goto err_pwr_ack;
> +		goto err_sram;
>  
>  	return 0;
>  
> +err_sram:
> +	scpsys_clk_disable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
>  err_pwr_ack:
>  	scpsys_clk_disable(scpd->clk, MAX_CLKS);
>  err_clk:
> @@ -337,6 +348,8 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>  	if (ret < 0)
>  		goto out;
>  
> +	scpsys_clk_disable(scpd->subsys_clk, MAX_SUBSYS_CLKS);
> +

Same here, why can't we disable the clocks in the scpsys_clk_disable call?

>  	/* subsys power off */
>  	val = readl(ctl_addr);
>  	val |= PWR_ISO_BIT;
> @@ -374,6 +387,48 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
>  	return ret;
>  }
>  
> +static int init_subsys_clks(struct platform_device *pdev,
> +		const char *prefix, struct clk **clk)
> +{
> +	struct device_node *node = pdev->dev.of_node;
> +	u32 prefix_len, sub_clk_cnt = 0;
> +	struct property *prop;
> +	const char *clk_name;
> +
> +	if (!node) {
> +		dev_err(&pdev->dev, "Cannot find scpsys node: %ld\n",
> +			PTR_ERR(node));
> +		return PTR_ERR(node);
> +	}
> +
> +	prefix_len = strlen(prefix);
> +
> +	of_property_for_each_string(node, "clock-names", prop, clk_name) {
> +		if (!strncmp(clk_name, prefix, prefix_len) &&
> +				(clk_name[prefix_len] == '-')) {
> +			if (sub_clk_cnt >= MAX_SUBSYS_CLKS) {
> +				dev_err(&pdev->dev,
> +					"subsys clk out of range %d\n",
> +					sub_clk_cnt);
> +				return -ENOMEM;

EINVAL maybe, ENOMEM seems wrong here.

> +			}
> +
> +			clk[sub_clk_cnt] = devm_clk_get(&pdev->dev,
> +						clk_name);

Here we get hit by the bad design of this driver in the first place. As we need
the subsystem-name (eg mm-0, mm-1) to group clocks to one scp_domain.
I think we should better try to model the domains and subdomains in DTS and add
their clocks to it. This way we can also get rid of the scp_subdomain which can
hit it's limit anytime soon when we have a chip with a sub-subdomain.
That will need a new driver, but as it seems the mt8183 and the mt6765 have a
more complex design I think it is worth it.

That said, given that you are in v11 already I understand that your motivation
to start over isn't the biggest. The problem is, any new driver will have new
bindings and won't work with older DTS. So adding a lot of stuff on top of a not
really nice driver isn't something I'm very keen on. On the other hand you
already put a lot of work into this solution.

My proposal, I'll try to bake up a new driver this week. If I fail to deliver,
it's up to you to decide if you want to go on with the approach in this series
or try to work on the new one.

Regards,
Matthias

> +
> +			if (IS_ERR(clk[sub_clk_cnt])) {
> +				dev_err(&pdev->dev,
> +					"Subsys clk get fail %ld\n",
> +					PTR_ERR(clk[sub_clk_cnt]));
> +				return PTR_ERR(clk[sub_clk_cnt]);
> +			}
> +			sub_clk_cnt++;
> +		}
> +	}
> +
> +	return sub_clk_cnt;
> +}
> +
>  static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
>  			const char * const *name)
>  {
> @@ -466,6 +521,7 @@ static struct scp *init_scp(struct platform_device *pdev,
>  		struct scp_domain *scpd = &scp->domains[i];
>  		struct generic_pm_domain *genpd = &scpd->genpd;
>  		const struct scp_domain_data *data = &scp_domain_data[i];
> +		int clk_cnt;

clk_cnt sounds to me like clock count, but the variable actually is only used to
check the return value of init_subsys_clks. Please rename it to ret or something
like this.

>  
>  		pd_data->domains[i] = genpd;
>  		scpd->scp = scp;
> @@ -476,6 +532,18 @@ static struct scp *init_scp(struct platform_device *pdev,
>  		if (ret)
>  			return ERR_PTR(ret);
>  
> +		if (data->subsys_clk_prefix) {
> +			clk_cnt = init_subsys_clks(pdev,
> +					data->subsys_clk_prefix,
> +					scpd->subsys_clk);
> +			if (clk_cnt < 0) {
> +				dev_err(&pdev->dev,
> +					"%s: subsys clk unavailable\n",
> +					data->name);
> +				return ERR_PTR(clk_cnt);
> +			}
> +		}
> +
>  		genpd->name = data->name;
>  		genpd->power_off = scpsys_power_off;
>  		genpd->power_on = scpsys_power_on;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
