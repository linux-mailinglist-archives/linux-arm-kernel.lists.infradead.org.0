Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4F915B4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 07:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQynMsvrH8WGyn8jyncqf6Hb7uhNkkmWzpgt6KUebm0=; b=Io1uxkVsSZMzzm
	jQDxmXd0ZWvxpt+lkUx6P24CIqG/bMt/Rt/BvRCgTXJV61RxbdmflYqY5uFRoALPNExehbSivYTfU
	XKr7G1CetE8xj1U3npHok9PKvgae9XRiohOiDxdd2UFovPbqqOEWiiMQCWSZA3IFAmgC8agqWkkxC
	FqH05HjT6MXrpTPtwfjjj/xnqm8FMOSLLLh10Mn4673nVHh7OLH3dzU8aWnoLPs7bMFsceuIiCRdg
	59Ri+8Pzk22kmLlRYvoR4vHzOJClwbpPUnofEuoyF7vgwHEoXReB2LeWtsskIrhSuZIi7zW7GUT7m
	jiDiwpI77sW4GY5TQ8jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNt2o-0007Oj-Gg; Tue, 07 May 2019 05:53:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNt2h-0007OO-5h
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 05:53:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id g3so8052933pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 22:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8uyCOz7KxCA9rdrZ980SRkWPRIiBf6qTqibeSY1JMf4=;
 b=IPLZhXXADfzehFr/wqjL7whdB44mR9KjDFbBF7sCg6EG3jSmMqa1CZOc/OkUdmjDsw
 qwM0kdZFpHbv+rChs78Blg0U2pmmY32M3D2EldxhIfD2+W6dAaTUA1A23w2rC9cGe4Dy
 bIbRgfceNAs8Pi8/K1CUKD7zqgM9oODVfStxkccdl50A3p90rOnrRj47o2PUlFbWwjKP
 3xtesPSZph710XTjvBHKZuzPvdByrJO9DPZuCM+XDbPAMp/tR3ucAPo5mqC/57Zm5LoK
 GWReKDRSMgJW+ZLAvXL76ouaY/fl/Yj5mZ1DCVLRTXdfZTFYZEvITneMHZelCNjBD4zV
 eAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8uyCOz7KxCA9rdrZ980SRkWPRIiBf6qTqibeSY1JMf4=;
 b=unVpqaN+YBXLFKKYFY3O7AbecJFlPn6sjfer3LC2Ubyzam1hzRpIHH+R+AabEDfx4y
 xFe8u9QyVKNR5HlKmbAB6l1bJtxjYXOCi2wjaMnW09CEwWxGws1xAEqdy6jM1/R536oW
 N5p64H0m+z7RaGmnmjEefJ0Dpr7GI3k40wIrOlq0UASjRzjAVgnRVJgVYh+YrJ0ub4x/
 Ppgq0qFNYyqVXxCL4VitE1NHg51nTg9vhRUjGuZOCESUkBLobfEpjZijEjqgTGQje8Ld
 tL/kre9z2hWG6qt5r/LgSIqVjJRTvCaVV1G6p4JQHrhDxnjXXR+ZCefD5MWhUv08H5og
 b41A==
X-Gm-Message-State: APjAAAW8jVcr+XMkRUWlYsZN6KlbePrpPJkM2vX3keEuXyeIeEvWIIIO
 lyLIZ5dKM0Ki/zosgpPvkWfXQw==
X-Google-Smtp-Source: APXvYqw8aVBMyNC18fXZGRkbVE4vEgsE4gtXjBTmyTJdR1WZmNX8H11pXfh6usgB7sK6uXkhC4iU8g==
X-Received: by 2002:a65:44c7:: with SMTP id g7mr32972066pgs.399.1557208409857; 
 Mon, 06 May 2019 22:53:29 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id k14sm33275146pfj.171.2019.05.06.22.53.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 22:53:29 -0700 (PDT)
Date: Tue, 7 May 2019 11:23:27 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Jacky Bai <ping.bai@nxp.com>
Subject: Re: [PATCH v2] cpufreq: imx6q: Fix the resource leak caused by
 incorrect error return
Message-ID: <20190507055327.sakuoy2j3g7dwv3f@vireshk-i7>
References: <20190505080736.27970-1-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190505080736.27970-1-ping.bai@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_225331_221230_37EECD91 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "rjw@rjwysocki.net" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-05-19, 08:02, Jacky Bai wrote:
> Previous goto only handled the node reference, the opp table,
> regulator & clk resource also need to be free before error return.
> 
> Fixes: ddb64c5db3c (cpufreq: imx6q: fix possible object reference leak).

This should have been.

Fixes: ddb64c5db3cc ("cpufreq: imx6q: fix possible object reference leak")

Auto configure it with following in .gitconfig

[pretty]
	fixes = Fixes: %h (\"%s\")
	onelin = commit %h (\"%s\")

and then:

git log --pretty=fixes ddb64c5db3c

will generate it by itself.

> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  drivers/cpufreq/imx6q-cpufreq.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
> index 3e17560b1efe..1d4ecefaabc6 100644
> --- a/drivers/cpufreq/imx6q-cpufreq.c
> +++ b/drivers/cpufreq/imx6q-cpufreq.c
> @@ -383,23 +383,22 @@ static int imx6q_cpufreq_probe(struct platform_device *pdev)
>  		goto put_reg;
>  	}
>  
> +	/* Because we have added the OPPs here, we must free them */
> +	free_opp = true;
> +
>  	if (of_machine_is_compatible("fsl,imx6ul") ||
>  	    of_machine_is_compatible("fsl,imx6ull")) {
>  		ret = imx6ul_opp_check_speed_grading(cpu_dev);
>  		if (ret) {
> -			if (ret == -EPROBE_DEFER)
> -				goto put_node;
> -
> -			dev_err(cpu_dev, "failed to read ocotp: %d\n",
> -				ret);
> -			goto put_node;
> +			if (ret != -EPROBE_DEFER)
> +				dev_err(cpu_dev, "failed to read ocotp: %d\n",
> +					ret);
> +			goto out_free_opp;
>  		}
>  	} else {
>  		imx6q_opp_check_speed_grading(cpu_dev);
>  	}
>  
> -	/* Because we have added the OPPs here, we must free them */
> -	free_opp = true;
>  	num = dev_pm_opp_get_opp_count(cpu_dev);
>  	if (num < 0) {
>  		ret = num;

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

@Rafael: This needs to go in 5.2 itself, can you queue it directly ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
