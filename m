Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1AA16407D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 10:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/6BHsbfD821itVuT0YR0fNtMKDr5uDB6Or4nRpZqcM=; b=dWRNq87CFrRqy2
	cCU1s98vuIng/Ch6zM0Zm7k33lbD1DmArrUG5/gC7Tnl5IAiWFrM0WNGtwFCcHazoAShymH/K9VQc
	x4Ad4eEeymShjVl4IgGIZN/P7YpCtFBqqoLjDkNGdMMBLTnpYOk0YELO7gZ77koXjAIR0ein5rXcg
	RNWaI0NSKnYvb+3Rr02Q8fdskYkLEmGi2NwKFIvAUKdYZaJh3ONJ6uBnp5DH1QOTnSOQ52yhqFRSw
	Kj7Y6npiChW4Mcuhwz4olL0RvnSu5audynhlADgaqPSOh7FmXR2rnpu821F4b5MJGNnywlDT1qmdI
	6CX5U7f/iSd9LAlSVniw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LlZ-0007iU-P5; Wed, 19 Feb 2020 09:35:37 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LlR-0007b3-Tt
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 09:35:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id g6so9341639plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 01:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GCLJlhQbmqtvLX++5mWx+FHf2ZtKUxmqooelutz8LgU=;
 b=aO6M0kr1/raWi+gakS6VlXlIr4daF1fCcZUrrxn+M0nHUsoSbXR3AFySQb/eCMyElX
 LAPT3W1HSXZ+qD7usQqJWCWFoJt0YrEulyvhzKNiDDZGiwSwNVNBJDV+zatkzmZn/wdH
 oBK2eTXGgcPofsjmOGNFv+uPnkvtY3+HaEJLmF1N30J50QTPK88pV5+gToyfTXVwKMWu
 digQVoD3fvlVzVDNS7DRklL6b+Npo5xI/bxkG+QYATPITNf1e0S3O07ktnFTO4zKhcNc
 j8wTDyMj5+OH76h4VaOq8WaprW/cFkKkiSyndvXE9S8F8nrK8y0cv0AqSHv6eAzJON4x
 GPqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GCLJlhQbmqtvLX++5mWx+FHf2ZtKUxmqooelutz8LgU=;
 b=JOtaopXwvZj4oDlpyn+eKV+t8JgcicRB5N8ISpknY4OczoLO4tWF3Z+lFmksTSSbef
 KlqtFdhaLH4HgI3hh6+1iQwQWWHlLyNgsaQbXyydx+l98vnigU24h9yTfcXBckczc6JC
 76Eo/v2FlsbB2GWbAfgFrzeleEZC3eHwc1pLZmcDCZKSBpRsj19IXpQ8TgWNv3zRSQRs
 teZE5Dv4xQ8mv3TMqaYpYLeuVqpjrXBeAPPr7dPHRSVz0kIgdGwytKPXehCycBrAd2I1
 WvzuGqq9XAD2s3zU97p3IlQWQpzFAfTtyBcrpBKQPbK+Fm3DDokA1It4g7kFp4YyWTT9
 b+GA==
X-Gm-Message-State: APjAAAWQbY3LK5EitDyFWIB4fuRnFUrR/3iw+uQd1uUVYbR3sNdb/RAi
 9Ng1VfDZdzNmDbTk+QJzG2lB6Q==
X-Google-Smtp-Source: APXvYqxxfL+nqG1A8dD9hdN+866t39oDu/9xqIUm1q4+NC3N1VUDra5qDxiSB4GF1hGVpJ2+n0Lkdg==
X-Received: by 2002:a17:902:6bcb:: with SMTP id
 m11mr26229011plt.10.1582104929171; 
 Wed, 19 Feb 2020 01:35:29 -0800 (PST)
Received: from localhost ([223.226.55.170])
 by smtp.gmail.com with ESMTPSA id fz21sm1883319pjb.15.2020.02.19.01.35.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Feb 2020 01:35:28 -0800 (PST)
Date: Wed, 19 Feb 2020 15:05:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: peng.fan@nxp.com
Subject: Re: [PATCH v2 10/14] cpufreq: dt: Allow platform specific
 intermediate callbacks
Message-ID: <20200219093526.hexyzhfuirb2lg4m@vireshk-i7>
References: <1582099197-20327-1-git-send-email-peng.fan@nxp.com>
 <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582099197-20327-11-git-send-email-peng.fan@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_013530_032744_07B26337 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
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
Cc: abel.vesa@nxp.com, Anson.Huang@nxp.com, sboyd@kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-02-20, 15:59, peng.fan@nxp.com wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Platforms may need to implement platform specific get_intermediate and
> target_intermediate hooks.
> 
> Update cpufreq-dt driver's platform data to contain those for such
> platforms.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/cpufreq/cpufreq-dt.c | 4 ++++
>  drivers/cpufreq/cpufreq-dt.h | 4 ++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt.c b/drivers/cpufreq/cpufreq-dt.c
> index d2b5f062a07b..26fe8dfb9ce6 100644
> --- a/drivers/cpufreq/cpufreq-dt.c
> +++ b/drivers/cpufreq/cpufreq-dt.c
> @@ -363,6 +363,10 @@ static int dt_cpufreq_probe(struct platform_device *pdev)
>  		dt_cpufreq_driver.resume = data->resume;
>  		if (data->suspend)
>  			dt_cpufreq_driver.suspend = data->suspend;
> +		if (data->get_intermediate) {
> +			dt_cpufreq_driver.target_intermediate = data->target_intermediate;
> +			dt_cpufreq_driver.get_intermediate = data->get_intermediate;
> +		}
>  	}
>  
>  	ret = cpufreq_register_driver(&dt_cpufreq_driver);
> diff --git a/drivers/cpufreq/cpufreq-dt.h b/drivers/cpufreq/cpufreq-dt.h
> index a5a45b547d0b..28c8af7ec5ef 100644
> --- a/drivers/cpufreq/cpufreq-dt.h
> +++ b/drivers/cpufreq/cpufreq-dt.h
> @@ -14,6 +14,10 @@ struct cpufreq_policy;
>  struct cpufreq_dt_platform_data {
>  	bool have_governor_per_policy;
>  
> +	unsigned int	(*get_intermediate)(struct cpufreq_policy *policy,
> +					    unsigned int index);
> +	int		(*target_intermediate)(struct cpufreq_policy *policy,
> +					       unsigned int index);

Who calls them ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
