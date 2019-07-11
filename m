Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8761651D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 08:22:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFxa6ZNSeK7LOI5N/ttRUAa2Dw3sYSNTE628mqqrXpg=; b=owWxUYq1dvAvpi
	mOGR1l5nefZ38atW76lMoZK4EhowHNqArlcCY4jDm6LZaxk3bHLapMcbQSWpfPabrJxPLhq7NIvZM
	Up1TSkGXIsj1np7yCoNiLgHMc1UXbiLYoh9Zy7WSUcjZaauB8bc6wPYTbEpzzsFD/YmCD3yYfZtK8
	PSgXxDiU2z5buPJJFvsAe/6zXeK0+0iWRK8t0E9F0YNdURj07GKs0Ok0zvrcT/P565E/0mrIr1rLb
	Z7Q1fFVJ3LIvPVqZRy+7fw/HpbJwtxtwxT0dJNc+KZGWJp0XzkULK9o89i7IArEZZ8NW44aYXNfwE
	u1JQDfuChbEk5sjY1lYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlSTb-0002ua-3t; Thu, 11 Jul 2019 06:22:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlSTO-0002tw-Jo
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 06:22:32 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so2468169pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jul 2019 23:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2/izmyLx3zgLly59CRyGw1zLBbtbQty91ZENtAWD4Vk=;
 b=bCJUZdgFXSL1JPheXWrE2SvDktcgz7ZRvLp8UkZ09vb/Prg3mHtmdw0CdPu+kNUcGI
 a+TMxXx6wNfmwQtEtIXMhXKR2VzbJQGJVBT4Jcr78m07BpKzdxphTgR8GXJ75FNnpqAB
 FNgXp0c4Bq/bsz0u8wFe6FU1NqqZn1sx5kV5TnReJTFWuqsfXI0nlrO3bGvOpcXDoF9E
 kH2fUTOxrcxqE6WyOVzMskdFpKOYyKgmdeY68u0Bz7QfklwW+Yz9KVGimSXOF4E3tW+I
 Ndk3OY2HRkZ2wOYaljBN7Ygo+45k9VGREMHudaTh1IrRGsaLJbxdRM0v/ZdSiMQ7S5FG
 78xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2/izmyLx3zgLly59CRyGw1zLBbtbQty91ZENtAWD4Vk=;
 b=skeBqfzPQEX/uVp+q6mYl+OHA7t9JB9R1zFv1XMQQOXUP9AVhpZFznW3C9jXI9S6mo
 17Tu1Qd5AUsnSalqqH58k+9+q0qRPYDkFTTn1L61H0qWQo/mlYZZOtceSyl+Xu3Ee1ZW
 czKQLGy8y2KCQ36boyChjWk724N20/K24pONeiiQpTKjBhdlT1jm4VN7YGuewPQ/IDj8
 AbSo4Fnev2pfBgO1wlYXWfhRHMl8mEIGNarGRLh7eAOqFblEJ9yyuk7dM9T1vkiOxCKp
 E+F5hf41XcNDu3TM7sTph8RBePDVtoYgCFGpSuEU+Qf6veHFSk/+bmiVGEUCh6QI34Md
 WigA==
X-Gm-Message-State: APjAAAVrqIAEXmIpBkSDJfNFNqLyKHnUwsdiY59u4J8RiY2v6L8VKS88
 yF2OKwo9y+Ld0fHljYPHJr+9Iw==
X-Google-Smtp-Source: APXvYqzBa57SST8CdNhPOntlhzTG7OeoEa6rXNRY1hYntSU2vCbtVOJveAMlqx/1mMk4cJDBYNLgNw==
X-Received: by 2002:a17:902:da4:: with SMTP id
 33mr2477954plv.209.1562826149501; 
 Wed, 10 Jul 2019 23:22:29 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id j19sm1516594pgn.19.2019.07.10.23.22.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 23:22:28 -0700 (PDT)
Date: Thu, 11 Jul 2019 11:52:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: k.konieczny@partner.samsung.com
Subject: Re: [PATCH 1/3] opp: core: add regulators enable and disable
Message-ID: <20190711062226.4i4bvbsyczshdlyr@vireshk-i7>
References: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CGME20190708141159eucas1p1751506975ff96a436e14940916623722@eucas1p1.samsung.com>
 <20190708141140.24379-2-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708141140.24379-2-k.konieczny@partner.samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_232230_719840_E28C71F3 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08-07-19, 16:11, k.konieczny@partner.samsung.com wrote:
> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
> 
> Add enable regulators to dev_pm_opp_set_regulators() and disable
> regulators to dev_pm_opp_put_regulators(). This prepares for
> converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().
> 
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> ---
>  drivers/opp/core.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 0e7703fe733f..947cac452854 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -1580,8 +1580,19 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>  	if (ret)
>  		goto free_regulators;
>  
> +	for (i = 0; i < opp_table->regulator_count; i++) {
> +		ret = regulator_enable(opp_table->regulators[i]);
> +		if (ret < 0)
> +			goto disable;
> +	}

What about doing this in the same loop of regulator_get_optional() ?

> +
>  	return opp_table;
>  
> +disable:
> +	while (i != 0)
> +		regulator_disable(opp_table->regulators[--i]);
> +
> +	i = opp_table->regulator_count;

You also need to call _free_set_opp_data() here.

>  free_regulators:
>  	while (i != 0)
>  		regulator_put(opp_table->regulators[--i]);
> @@ -1609,6 +1620,8 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
>  
>  	/* Make sure there are no concurrent readers while updating opp_table */
>  	WARN_ON(!list_empty(&opp_table->opp_list));

Preserve the blank line here.

> +	for (i = opp_table->regulator_count - 1; i >= 0; i--)
> +		regulator_disable(opp_table->regulators[i]);
>  
>  	for (i = opp_table->regulator_count - 1; i >= 0; i--)
>  		regulator_put(opp_table->regulators[i]);

Only single loop should be sufficient for this.

> -- 
> 2.22.0

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
