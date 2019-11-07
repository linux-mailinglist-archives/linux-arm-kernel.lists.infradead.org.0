Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452FDF253C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 03:21:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ImT94IABzXSdvf/pGdaH3VCDbXGdXVkHVQ0uyH4a/Bo=; b=QaU0ZnORPzKL3L
	bWeTY7qhzSkMJ0tWmibhPomuAz3AWKrh4lH0ntnYbguuQd0a0B2CN6TDnxlWLkYyJYvUhv/KjGbfY
	MEeahoYw8pIAn26PttjYiBNwWgoLdRQ2/IQz07lutg0EJfe40r4qTF+89TGJ4raR1AGBXjHkyF1dr
	PMUkTbtazEC151J8rdrHmQIlK+oYRO9bWeDl6FV5EwZ4SO8S3jP2SM8wFcSIkxmzwDLeE+nMt5ylZ
	otOM0KQF/cPsqCV4n6OVqkSrJJh9pDppVfJ2lpMrsIaZgDJJfbECdeK9Bttv4gDNjIbyFK2zllcg7
	VnYNB4olQxInnaCpYnPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXQZ-0001pv-C7; Thu, 07 Nov 2019 02:21:39 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXQQ-0001pY-Kk
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 02:21:31 +0000
Received: by mail-pl1-x643.google.com with SMTP id a18so355768plm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 18:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=F8VYuNOSid43MrjVcuL5CaqvY6S8eW3r2yuK7BO5dwk=;
 b=SDJGXLGggE+E5m+gMdad8MXvtzmZkX9FQLHSFJY3No1jFMqqPX+P84oKpd1BRIrIhv
 iHfXEo4bZUfrs6P/8pwMKgedu8kInPSpg5nFo2uz3zf1gdd8OL1Ng0DHLWx5c7Uee8Q9
 yJyvD+Bykzyl0Hg3JVhqGVV5HWNrOjC214hZ1NoZk6sskkkKY2Al6aqc1NU5TPF28t3M
 Btek2alNVky8HWFU/w7EbzgdzWyIrgtDDLzh67x7C7u9sOC4exJ799z/f1N8WPY+IoGY
 FURMba0tsOS5HB1nWufsBEGQUFaKz/ilUfP4nAKu7Ux+y/z4gug6Zwg+mxN8Jj2GEr+Q
 pQow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F8VYuNOSid43MrjVcuL5CaqvY6S8eW3r2yuK7BO5dwk=;
 b=AEsVTQcMUi+72AiWxT9cAyfwOhcinwcl+woWY7gSXPoMXTGxpNYs1Wv2jaX9lSWmjK
 BnPsB1N7RnB5q5MhVkvx0HX7050FoDI8kr8xJZ0YmeEB2+YTzhXWbhZLracZ8YXVQF+y
 Pd2BehMoEbwJJf0q7eF5DQEuh73rwIDsudNWQ91WCqOLZvBIjO6sFWXrAe+vTrRYrvgj
 rrZfcrdm3EJWNg+IUUqc1gnh/evc/nRZVbW/L5jvpOlf0PCTxkJCcXjOlhxlnk2xG/BH
 9c0mckg8dYPUGAz1QrWRahariwgBFDvId/mjt/gP7HpjvTjhwQF1bok97EM/YwwH+Tja
 BKPg==
X-Gm-Message-State: APjAAAVgCpY/q27WyTDLK02b01mLpqKiA47tCIJMKE/DxSwvjj0pmpD1
 a6SdP+89fA4rzxcwWUfB6iQmfQ==
X-Google-Smtp-Source: APXvYqwCjUUa2EravddhWJUCM9i3hC9daXOm5Ys3mXL0S5Zxg/iGcWx5LIEoQdFU17focrcutXV10A==
X-Received: by 2002:a17:902:6946:: with SMTP id
 k6mr1064471plt.60.1573093289898; 
 Wed, 06 Nov 2019 18:21:29 -0800 (PST)
Received: from localhost ([122.171.110.253])
 by smtp.gmail.com with ESMTPSA id s23sm402279pgh.21.2019.11.06.18.21.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 06 Nov 2019 18:21:29 -0800 (PST)
Date: Thu, 7 Nov 2019 07:51:25 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>
Subject: Re: [PATCH 08/11] thermal: samsung: Appease the kernel-doc deity
Message-ID: <20191107022125.wkdsdoolondcxhju@vireshk-i7>
References: <cover.1573046440.git.amit.kucheria@linaro.org>
 <ef268335454e96e6ee3d13deb1cb89af0d0a3b61.1573046440.git.amit.kucheria@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef268335454e96e6ee3d13deb1cb89af0d0a3b61.1573046440.git.amit.kucheria@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_182130_683583_A467E6C3 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-samsung-soc@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 edubezval@gmail.com, Kukjin Kim <kgene@kernel.org>,
 Guillaume La Roque <glaroque@baylibre.com>, linux-pm@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Jun Nie <jun.nie@linaro.org>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-11-19, 18:58, Amit Kucheria wrote:
> Fix up the following warning when compiled with make W=1:
> 
> linux.git/drivers/thermal/mtk_thermal.c:374: warning: cannot understand function prototype: 'const struct mtk_thermal_data mt8173_thermal_data = '
> linux.git/drivers/thermal/mtk_thermal.c:413: warning: cannot understand function prototype: 'const struct mtk_thermal_data mt2701_thermal_data = '
> linux.git/drivers/thermal/mtk_thermal.c:443: warning: cannot understand function prototype: 'const struct mtk_thermal_data mt2712_thermal_data = '
> linux.git/drivers/thermal/mtk_thermal.c:499: warning: cannot understand function prototype: 'const struct mtk_thermal_data mt8183_thermal_data = '
> linux.git/drivers/thermal/mtk_thermal.c:529: warning: Function parameter or member 'sensno' not described in 'raw_to_mcelsius'

Incorrect log here.

> Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> ---
>  drivers/thermal/samsung/exynos_tmu.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/thermal/samsung/exynos_tmu.c b/drivers/thermal/samsung/exynos_tmu.c
> index fb2c55123a99e..8193b66a3f831 100644
> --- a/drivers/thermal/samsung/exynos_tmu.c
> +++ b/drivers/thermal/samsung/exynos_tmu.c
> @@ -138,7 +138,7 @@ enum soc_type {
>  
>  /**
>   * struct exynos_tmu_data : A structure to hold the private data of the TMU
> -	driver
> + *			    driver
>   * @id: identifier of the one instance of the TMU controller.
>   * @base: base address of the single instance of the TMU controller.
>   * @base_second: base address of the common registers of the TMU controller.
> @@ -162,8 +162,11 @@ enum soc_type {
>   *	0 < reference_voltage <= 31
>   * @regulator: pointer to the TMU regulator structure.
>   * @reg_conf: pointer to structure to register with core thermal.
> + * @tzd: pointer to thermal_zone_device structure
>   * @ntrip: number of supported trip points.
>   * @enabled: current status of TMU device
> + * @tmu_set_trip_temp: SoC specific method to set trip (rising threshold)
> + * @tmu_set_trip_hyst: SoC specific to set hysteresis (falling threshold)
>   * @tmu_initialize: SoC specific TMU initialization method
>   * @tmu_control: SoC specific TMU control method
>   * @tmu_read: SoC specific TMU temperature read method
> -- 
> 2.17.1

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
