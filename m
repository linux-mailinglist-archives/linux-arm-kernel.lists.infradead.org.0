Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807186A61F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:06:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoHwayIvnDw/71MKmNebXFdyV7z5cbEYHsvyhuCUp/0=; b=IgfF9z6mdieVus
	gesTMZapZv8H+tK92vYM8zc1+IcwAxv64CgFbUMPROUDEoLiFq6N9CuOr8ihcwQ61cG2Ad7JpFL6J
	dThQ6XdhHPAaqk6p7V70RyD71kdsuqfknfMFSO2rvu8bWUEogdF1nKzB/yXlxLzc5IgvaxaTi49zA
	CEmWwPRrTf8IZ1qEM0h+4w8oMehxiUhqxLIEDNePCnc25v7jaXzvLN4fReE/RFKyQKWgvq3OJeF6B
	i3FrQq7d4syStFq+PrthrMz9Cew7ZKI+qI1WS6zx85gKXFdIrcskIA5zjp+7MKvCdtzGi/YBuYWgi
	vAA84quro97r5IMFO4nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKLL-0007Gw-0X; Tue, 16 Jul 2019 10:05:55 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKL8-0007GV-VY
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:05:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id c2so9834244plz.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 03:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=eOw4mJCwxsos04l+iE4dhcTh1ydYMzdors+pgowvvxM=;
 b=tMocE6swchBVuMnt58lGP9P628g1yOafJT46XmsoPTPU6cu+QH3WHGgsc/TzqTykTJ
 rdGZzvn6Mr6/PJqwPcSatTt4KCjIUHOWmaND9V8869f0KdmOna8tDoC4N31GVxqzyEuP
 EuNPIbAPdLAlOZZ4YTGbeCRtM8Qt76g0ldmmzrdR8bhfhTUk8KDNxnBisgvO+StyihUL
 hUdt9bMl/8WwQFG2nJBH9y99Wp6WaJ5G64VHqBZaakuCUgHohQgp4dbB8Omi6hF7rJ3c
 EvZCoX+goncN8mcgg/ODeGn69779oS06XcVejTPoaDJQg1DvPHhgrQ8c03ZGbvjjNjQS
 F7Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eOw4mJCwxsos04l+iE4dhcTh1ydYMzdors+pgowvvxM=;
 b=OheDzlYKOimNkw8kavTGazeFfmRu863KPuSnl2TYhdCDEyyViuXUhjN2KVr3Udeqk4
 eInDWj7q5X2h3iNeLT1O8LhwTydTxYhTWx57wbvm/VWYvJbuiZ2LamtOONrHyIzzuJlq
 c/RXySmB1/Wh/KtewHERiu9hgvt7FmncaTIIAg7FgNLv5S2aOReFaB162b3wtkQrc0Ih
 QqpO5DkWiLDFBVyh/Pn970S7vqFfopA/184e+4FYMFbIXhSI6JfYzwI4KrpM0nT/RIg2
 PqbM9u+sQu30BYcePtoGuanqW4iSh58Z3VH37YIYCK7TyhLDOqg9i/CAUPz5UDfovBku
 1vdQ==
X-Gm-Message-State: APjAAAWwIugRwbp9tiwFFR07Kvq/mb/WTCnCC2s/QqEzOPvsY2eOwzvu
 MeFVIA81cU3hB5wYw1YRyQtSSelgjHk=
X-Google-Smtp-Source: APXvYqxwTXMWEmk/VEda4x6ElrsGyejRqXGCt8fhdrVypQtnG9VBy8x7GNe4fxfIxk0bDln28cUC3w==
X-Received: by 2002:a17:902:6b02:: with SMTP id
 o2mr31420099plk.99.1563271542213; 
 Tue, 16 Jul 2019 03:05:42 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id f6sm21071066pga.50.2019.07.16.03.05.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 03:05:41 -0700 (PDT)
Date: Tue, 16 Jul 2019 15:35:39 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Kamil Konieczny <k.konieczny@partner.samsung.com>
Subject: Re: [PATCH v2 1/4] opp: core: add regulators enable and disable
Message-ID: <20190716100539.4uqelbxqz7bmtmea@vireshk-i7>
References: <20190715120416.3561-1-k.konieczny@partner.samsung.com>
 <CGME20190715120430eucas1p19dddcc93756e6a110d3476229f9428b3@eucas1p1.samsung.com>
 <20190715120416.3561-2-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715120416.3561-2-k.konieczny@partner.samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_030543_024623_BE984FBF 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 15-07-19, 14:04, Kamil Konieczny wrote:
> Add enable regulators to dev_pm_opp_set_regulators() and disable
> regulators to dev_pm_opp_put_regulators(). This prepares for
> converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().
> 
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> --
> Changes in v2:
> 
> - move regulator enable and disable into loop
> 
> ---
>  drivers/opp/core.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 0e7703fe733f..069c5cf8827e 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -1570,6 +1570,10 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>  			goto free_regulators;
>  		}
>  
> +		ret = regulator_enable(reg);
> +		if (ret < 0)
> +			goto disable;

The name of this label is logically incorrect because we won't disable
the regulator from there but put it. Over that, I would rather prefer
to remove the label and add regulator_put() here itself.

> +
>  		opp_table->regulators[i] = reg;
>  	}
>  
> @@ -1582,9 +1586,15 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>  
>  	return opp_table;
>  
> +disable:
> +	regulator_put(reg);
> +	--i;
> +
>  free_regulators:
> -	while (i != 0)
> -		regulator_put(opp_table->regulators[--i]);
> +	for (; i >= 0; --i) {
> +		regulator_disable(opp_table->regulators[i]);
> +		regulator_put(opp_table->regulators[i]);

This is incorrect as this will now try to put/disable the regulator
which we failed to acquire. As --i happens only after the loop has run
once. You can rather do:

	while (i--) {
		regulator_disable(opp_table->regulators[i]);
		regulator_put(opp_table->regulators[i]);
        }


> +	}
>  
>  	kfree(opp_table->regulators);
>  	opp_table->regulators = NULL;
> @@ -1610,8 +1620,10 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
>  	/* Make sure there are no concurrent readers while updating opp_table */
>  	WARN_ON(!list_empty(&opp_table->opp_list));
>  
> -	for (i = opp_table->regulator_count - 1; i >= 0; i--)
> +	for (i = opp_table->regulator_count - 1; i >= 0; i--) {
> +		regulator_disable(opp_table->regulators[i]);
>  		regulator_put(opp_table->regulators[i]);
> +	}
>  
>  	_free_set_opp_data(opp_table);
>  
> -- 
> 2.22.0

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
