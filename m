Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1445AB7506
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 10:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGpwYoF1LftdzH4xICEwjW7JxFUjCi8EYF9Jf7ml2Ps=; b=npoGRArYjEyfWG
	6UpAEPKEN/Hns0cjXVlqTOJZ2SG5tbS7k2RO6JQlsTSHWbwECybK8zkJvQ0b6BnsQWBjYcnhoKx2z
	dORQcgHnGu09skTOFH+Z5sontxvoi8Hee/wPAk5Kos2CdazzFUS2Xk38U4alMhxo07CQpsjWhss6K
	0gSupDO9/mu2GbAvYNLi37RqUhlQxc7je/8pumH2rV4jEiT4JzybrVz40H50OiBysRBwJdgOIzkRw
	Cu7lUpahH+1OHGC7K7QLK2E92zgA8MV83Q/ijedi2H58KxL2FHN2rLOyuoXgSrn9hsuvGcvmdVZQ6
	qPJVe7MgYQoPtc39F+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAriX-0005Aw-1y; Thu, 19 Sep 2019 08:23:09 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iArhg-00059v-LH
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 08:22:22 +0000
Received: by mail-wr1-f66.google.com with SMTP id o18so2030773wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 01:22:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LeVWiP96skI5eB7uqPIrDv7wt1djjgh1Br2ODaNGKJs=;
 b=tvpdq1Bbpz1JBPvpJNuPlBYoYejP7vJ9TNqFQHixRJwjqT6oKEXJTWDHvJwHRV9n7/
 sEr1NSxWuh0x96Y2i0HU1MdGbF5S0QiizLadY5SNPXVXGTHyH9zeN+H6iL1mrE6e9mjP
 7C/1JxXGEaQG0xFA8a8dNXUTDqyzesZmEzhR7qrEIf6FZUgBZHb1zrcWcVMHvXnYSUSS
 ztF2LRX10iQmrsQwtKAtIrSVdWfOtRWmpW3xQ8v0xY4M+9RvmjQvguoFlspRndmQd9hj
 Sawgw/UaZwdGlEWSn1Jhxy7keCmdF6iOkHQHmYGnJnHtrlBcJHfyRe5dF5K31j5AuHhQ
 yugw==
X-Gm-Message-State: APjAAAWY2CefLdDvBSlgDez4adf2bFFa8bOMyLi+0jNYz4cW+s8woNyc
 4w2PQS+7EurMk4XQg8eIrWw=
X-Google-Smtp-Source: APXvYqxd+SvRD+xij34ds5Wefq2QoMUwnmH1O7Cuz+Oifi4mcJExLaFEH9KvWL95Bj1jErdjdGqxaQ==
X-Received: by 2002:adf:fd10:: with SMTP id e16mr6455268wrr.17.1568881334522; 
 Thu, 19 Sep 2019 01:22:14 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id s1sm11877105wrg.80.2019.09.19.01.22.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 01:22:13 -0700 (PDT)
Date: Thu, 19 Sep 2019 10:22:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 8/9] ASoC: samsung: arndale: Add missing OF node
 dereferencing
Message-ID: <20190919082211.GF13195@pi3>
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680@eucas1p2.samsung.com>
 <20190918104634.15216-9-s.nawrocki@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918104634.15216-9-s.nawrocki@samsung.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_012217_283514_D43CE8F4 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 12:46:33PM +0200, Sylwester Nawrocki wrote:
> Ensure there is no OF node references kept when the driver is removed/unbound.
> 
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
>  sound/soc/samsung/arndale_rt5631.c | 31 ++++++++++++++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)

Wasn't this issue introduced in 5/9? It looks weird to fix it here...

Best regards,
Krzysztof

> 
> diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale_rt5631.c
> index 3744c47742b8..d8da313e898a 100644
> --- a/sound/soc/samsung/arndale_rt5631.c
> +++ b/sound/soc/samsung/arndale_rt5631.c
> @@ -132,6 +132,17 @@ static struct snd_soc_card arndale_wm1811 = {
>  	.num_links = ARRAY_SIZE(arndale_wm1811_dai),
>  };
>  
> +static void arndale_put_of_nodes(struct snd_soc_card *card)
> +{
> +	struct snd_soc_dai_link *dai_link;
> +	int i;
> +
> +	for_each_card_prelinks(card, i, dai_link) {
> +		of_node_put(dai_link->cpus->of_node);
> +		of_node_put(dai_link->codecs->of_node);
> +	}
> +}
> +
>  static int arndale_audio_probe(struct platform_device *pdev)
>  {
>  	struct device_node *np = pdev->dev.of_node;
> @@ -156,16 +167,31 @@ static int arndale_audio_probe(struct platform_device *pdev)
>  	if (!dai_link->codecs->of_node) {
>  		dev_err(&pdev->dev,
>  			"Property 'samsung,audio-codec' missing or invalid\n");
> -		return -EINVAL;
> +		ret = -EINVAL;
> +		goto err_put_of_nodes;
>  	}
>  
>  	ret = devm_snd_soc_register_card(card->dev, card);
> -	if (ret)
> +	if (ret) {
>  		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n", ret);
> +		goto err_put_of_nodes;
> +	}
>  
> +	return 0;
> +
> +err_put_of_nodes:
> +	arndale_put_of_nodes(card);
>  	return ret;
>  }
>  
> +static int arndale_audio_remove(struct platform_device *pdev)
> +{
> +	struct snd_soc_card *card = platform_get_drvdata(pdev);
> +
> +	arndale_put_of_nodes(card);
> +	return 0;
> +}
> +
>  static const struct of_device_id arndale_audio_of_match[] __maybe_unused = {
>  	{ .compatible = "samsung,arndale-rt5631",  .data = &arndale_rt5631 },
>  	{ .compatible = "samsung,arndale-alc5631", .data = &arndale_rt5631 },
> @@ -181,6 +207,7 @@ static struct platform_driver arndale_audio_driver = {
>  		.of_match_table = arndale_audio_of_match,
>  	},
>  	.probe = arndale_audio_probe,
> +	.remove = arndale_audio_remove,
>  };
>  
>  module_platform_driver(arndale_audio_driver);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
