Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DA2501EA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 08:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMamySC2JEcQTBVsg59ig9iW6C5T8Cw2LEe9cz2iw88=; b=U0Ukd5sZqjvAh9
	0TBLHl6zfbLLaYt8k9TH2pU+VFTyVaGYC8JdM4EOziRW2X6Y9rZfFQr0qd4kSY+crHV8j4x2LJw4D
	5JXvwNtVIFOLFN8w0lEcw27bM/tI3WaUxuWbMffL1J/+iBgWOS2KDLZwtTrwfTtjrWmQ0LPpqRAx6
	2pVScdioDRwzAewFjnBZAMHoCWdFNKTsTe7SxACs4GRvQayGax7K2vMPoKuke18QKthSPPP+bppoE
	KDRPiLl2/wdWzuJnodRj23XtAgnL1/Xq+bpn4Fdey311hLhocSs9aRc3Lvfam0J9O3jVyD58eKMXi
	1hAIfEVzfaI3sDtYV6/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfI7S-0002Sr-8y; Mon, 24 Jun 2019 06:06:22 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfI7D-0002SH-99
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 06:06:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id k8so6273186plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 23:06:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rczLXy/YdSTRCqTeKDK2d2KcKBJ58Sk09VwtTR7c1D0=;
 b=ezovdk0fIqsbaH3BRH7IYNVk7pFaH+wp0P2j0nRBwNRuPMyUFoMbdVd+2jMTEDGVgo
 IZmW3IP4AXneC1YBX1129nHybakYDLNci6SALVR1OSMpqGN2hwHNlxo7C6EMmumZUC8P
 A50eUtMpOWgSRW6Kl0cjA31otm4ZsTHmV9fmDwu0B6gG8im13AwoVCybx5x4B08QQT4w
 79fTu8xIps8bOQdDhp1oBfMCnZ+siksJOS/Vh1zp6ndB1fyTJs6jJ8pJgMCrOhlY12p+
 DewbSP8RVVniYsQbxpu7TmpktfyQ1xPdQqJXtvBvoGaUMNbOLevIN5d9skSvnuqlKKxp
 lR6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rczLXy/YdSTRCqTeKDK2d2KcKBJ58Sk09VwtTR7c1D0=;
 b=tkTSq+gicVM+ZA6iFfi4w8DHtWLUdR7Z4nDZyThk3Y7tgUgiaGsECEPhCHfA/S84/j
 vum1azjQ24hliD2rk4ORM4eI1TjGA/kVo+SFKxVO9qr8/WFfW0++oVi8jfLhW8QhSD5d
 grBrenI3N+BV224k/OXmhGcqMv4jiln43510KfR27P5rsnOzXYW+QtPNUy14milg7iGH
 6cI+RMAC97T/RjI/hIIYC43yRWQDfupTim/mwV6ZRHX0MQsEJfbBHbScgar3lRuXsJm1
 23l5qmhOfsGNKKVHaGlWvGo3YBgjCeX9ycyRc6mkWt/wBZ0WFOwgkA0L+Jf2o2iCAyMb
 Y1qg==
X-Gm-Message-State: APjAAAXRBv9PQ2qCPekS2ASOdWnw2W8ytuf4hpoYsqBCFd2/lw0AR5PG
 9YT6wxaE2lQRJb8lIHkzZlpcdg==
X-Google-Smtp-Source: APXvYqyE4KypheWDTMolsvMJk+gKBAPl1QkcrSeuna1NO+V0ysfH9LpuW1Ya22r7aLQvQAUZoZJ/BQ==
X-Received: by 2002:a17:902:42a5:: with SMTP id
 h34mr110669295pld.16.1561356366447; 
 Sun, 23 Jun 2019 23:06:06 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id w4sm10278398pfw.97.2019.06.23.23.06.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 23:06:05 -0700 (PDT)
Date: Mon, 24 Jun 2019 11:36:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 5/6] thermal/drivers/imx: Remove cooling device usage
Message-ID: <20190624060604.v3docq36c4rmscja@vireshk-i7>
References: <20190621132302.30414-1-daniel.lezcano@linaro.org>
 <20190621132302.30414-5-daniel.lezcano@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621132302.30414-5-daniel.lezcano@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_230607_325254_68DFF701 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Zhang Rui <rui.zhang@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21-06-19, 15:23, Daniel Lezcano wrote:
> The cpufreq_cooling_unregister() function uses now the policy to
> unregister itself. The only purpose of the cooling device pointer is
> to unregister the cpu cooling device.
> 
> As there is no more need of this pointer, remove it.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>  drivers/thermal/imx_thermal.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
> index 6746f1b73eb7..021c0948b740 100644
> --- a/drivers/thermal/imx_thermal.c
> +++ b/drivers/thermal/imx_thermal.c
> @@ -203,7 +203,6 @@ static struct thermal_soc_data thermal_imx7d_data = {
>  struct imx_thermal_data {
>  	struct cpufreq_policy *policy;
>  	struct thermal_zone_device *tz;
> -	struct thermal_cooling_device *cdev;
>  	enum thermal_device_mode mode;
>  	struct regmap *tempmon;
>  	u32 c1, c2; /* See formula in imx_init_calib() */
> @@ -656,6 +655,7 @@ MODULE_DEVICE_TABLE(of, of_imx_thermal_match);
>  static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
>  {
>  	struct device_node *np;
> +	struct thermal_cooling_device *cdev;
>  	int ret;
>  
>  	data->policy = cpufreq_cpu_get(0);
> @@ -667,9 +667,9 @@ static int imx_thermal_register_legacy_cooling(struct imx_thermal_data *data)
>  	np = of_get_cpu_node(data->policy->cpu, NULL);
>  
>  	if (!np || !of_find_property(np, "#cooling-cells", NULL)) {
> -		data->cdev = cpufreq_cooling_register(data->policy);
> -		if (IS_ERR(data->cdev)) {
> -			ret = PTR_ERR(data->cdev);
> +		cdev = cpufreq_cooling_register(data->policy);
> +		if (IS_ERR(cdev)) {
> +			ret = PTR_ERR(cdev);
>  			cpufreq_cpu_put(data->policy);
>  			return ret;
>  		}

This too..

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
