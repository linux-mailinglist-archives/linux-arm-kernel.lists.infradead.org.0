Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3690187ACB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 09:04:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqEz9aSKlVBeJDpYYK/9CPqNAIo3IvUVGKtoKsAIyKk=; b=cZuejTm4AQ/ve1
	6MSRLCRu3YfbnZd2/FsV3xKAjdvQB+R8be87dwSsfWuNvqLq66VLSSBBg3UTe6aZB7fSv/jOWqoH0
	0yuHDWBYAxiqrQMAHdmG2X/gWi0Gect9gVmMJTVTCXpktapMnXn4Opxm1AzyKFhUKUzPwksQZICoE
	AKKNjiYN+mHFW6nIH/O2vJQP2IOUxhSpNWPvOIXVNmS2a9dD+IGZXf8flOO5eFU35Ud0l27bbowSx
	xPU5DTw4zRcowfZQWot27ECRjKpVXG6eE704TLnhuajaR3s5I/K2CxH1AcpdpitB9ovDDcwlE1O/k
	fSJwCxv7bNMjJ9KPqTZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE7Cb-0001OF-Ka; Tue, 17 Mar 2020 08:03:53 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE7CU-0001Nf-7H
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 08:03:47 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l36so9774120pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Mar 2020 01:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wJzj+NhO+lX1yEtnXWO3HvgiRxvAHYyMwldXylz/g50=;
 b=uaNAUErhn8Wd3uexgimEazU8oaz2CrrpINTw3zlsRrv70YFqLvop1Mm4dr5cHY2TQ+
 tlguxrHlr1t/Tf56J59gXfrDqU5q9OIq9C36XMKu6hosdc97qIwiKaEtHCX8r3eitpRw
 6nolpgswSdHtVLtNa8s2ZTGzXh8VLzxbaO1YF/y1LwNmupkZSALAA9mwcIULIpaneNn1
 Hvv83kSpGXCFlzl1aWtp8CLaeWqU1oF8cjKFmz0w7kHptEP7AL4uY7HS+7v6K1AoLD7m
 hZaTc8HFgSVpBeOI2GtB+TXNiUZzc3bz5jk7aIlhIvGStQdBiGJukG8s/BGUbsL/VR70
 OZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wJzj+NhO+lX1yEtnXWO3HvgiRxvAHYyMwldXylz/g50=;
 b=fmP2jcbEvS6NNcna97WmqOpO8prAuzibnLYK2g5173e9dDsg8IVvM/ZO2WFA8uy1tU
 rwHouTPNjI4hlJpHlzEA21KWt0YXKFOlXUd3vkJ32O59h4RYdkbb9yV5oxlEs0RxvBOq
 +6qqsFgE4z5lLK4vy/fI1tAY27vzAxWmpbu/Goj7G6kmZuVPEEhC6yJXunqirVOkJRL/
 BVLI2a8OCTc78LSK76TmWRz+u+jLXp7nVzP8vfkAMpdE4SlWhj3It6yXhgvd3FB7WaL/
 Ei/Mas60ct/ejbbxW/XKtuYOTcYsox7xGTrt/gOEzMz6Ht5rHOZtOYgWWSDZ9mKdIf+M
 yqOg==
X-Gm-Message-State: ANhLgQ0Ugju5SPJD5gwMxLMWWAyC3/2YOwqqsrPzkM/wV3KO3ANpUI/Q
 sVL01arWsciWq5J3l/AiMRbD8Q==
X-Google-Smtp-Source: ADFU+vsA93AKpo6rZVnei/jHWtpv1Oy0bklJm2y9V7JgrzPTTmeqgzvFd+SAx1MK0x6Lnj2Ha34y2w==
X-Received: by 2002:a17:902:9a45:: with SMTP id
 x5mr3005594plv.296.1584432223464; 
 Tue, 17 Mar 2020 01:03:43 -0700 (PDT)
Received: from localhost ([122.171.122.128])
 by smtp.gmail.com with ESMTPSA id j19sm2106447pfe.102.2020.03.17.01.03.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Mar 2020 01:03:42 -0700 (PDT)
Date: Tue, 17 Mar 2020 13:33:40 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] cpufreq: imx6q-cpufreq: Improve the logic of
 -EPROBE_DEFER handling
Message-ID: <20200317080340.475xamakfosykrro@vireshk-i7>
References: <1584419934-2303-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584419934-2303-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_010346_293814_701DD03C 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
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
Cc: linux-pm@vger.kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17-03-20, 12:38, Anson Huang wrote:
> Improve the -EPROBE_DEFER handling logic to simplify the code.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/cpufreq/imx6q-cpufreq.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/cpufreq/imx6q-cpufreq.c b/drivers/cpufreq/imx6q-cpufreq.c
> index 285b8e9..fdb2fff 100644
> --- a/drivers/cpufreq/imx6q-cpufreq.c
> +++ b/drivers/cpufreq/imx6q-cpufreq.c
> @@ -400,11 +400,9 @@ static int imx6q_cpufreq_probe(struct platform_device *pdev)
>  		ret = imx6q_opp_check_speed_grading(cpu_dev);
>  	}
>  	if (ret) {
> -		if (ret == -EPROBE_DEFER)
> -			goto out_free_opp;
> -
> -		dev_err(cpu_dev, "failed to read ocotp: %d\n",
> -			ret);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(cpu_dev, "failed to read ocotp: %d\n",
> +				ret);
>  		goto out_free_opp;
>  	}

Applied. Thanks.


-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
