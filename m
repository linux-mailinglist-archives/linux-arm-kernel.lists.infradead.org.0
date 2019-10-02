Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3494C9388
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 23:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+zlFxPmjtvRzf7nbgQrzvAu3cw0p154caULxI4B1ZQ=; b=EDqz1oevJ0Uzvk
	VyQVSoifOgydQagKwhQHL+3J38UGRFSb6R8WmAUa/lTfuQuFqzrAW58l+ONtqsJdT/GJp85+c/2Ts
	e8VHJqBXVZFjvxcbDktLE+ydAjObPEctdZarcc/wqSUxhzCHD2emD3udumLloo26hfOzAlD2QYu8w
	+CzOD8k82nV2y9Um3GsTxME+GlbWWP1CNaXZ6+D3ng+xPZk6PDXxOOM1hqVGLyx/V6E8DpM6BdyLK
	XdG6kGrmt8z05pTbhwctp+8wAfxLJ/TGUPyeIOW79v5OT1ZTIr8A1N2ecsziVTfgBEf4QXpXZNXl2
	OpsyHcmd25Mq1Orn8cHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFmFh-0003BW-Jo; Wed, 02 Oct 2019 21:33:41 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFmFa-0003Al-HM
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 21:33:35 +0000
Received: by mail-pf1-x441.google.com with SMTP id x127so304742pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 14:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8XR0z8nVsrTH9SjYUvL864JxswMR5JXpGrN9af9PQc0=;
 b=egPSRHXxNXrqsqqU3qFdaZ/q1JB3mN2LSZEDi7SwD9fc3pG/S2pxMLfZZmx8Wrx1ws
 iDcUFhanpu0/y9JLriS74G9REK/5Xi6gCaIg0t3Fj8BTEekt0nq3CUfw8bYPAquqc+ii
 WEr2VvrLcKtzsTki0nP3KtJ/TSuOCUOLYnj0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8XR0z8nVsrTH9SjYUvL864JxswMR5JXpGrN9af9PQc0=;
 b=nM3UxoeUuhnwVl9/9R3j2XvRWKPzPlBnUzFrdQkPiwmey/7GfvuQsUEmvawLjnILk5
 luaib8PJYFBzjRtc5qc6OP4s9xvztytfJdknepgj3YoQsMn6UUwtR6YyvovJpp/Ev8wL
 nOYwyrulVkn9utSV+9lnbbu/xoyxVA3ulMEU1FvUtWGup9/wF2cgKhkDzzHp09hbMXfK
 7+vP0oNSt6C8zU77t9HeWzgx5DKpIpr4/hrR/+5h8UwRVpEHrZ2yptLvHbmLBu79a2N3
 GfSpWEsivFvK74PlopL4Rb3Yy1PS4ubQhWBI2OQGMTBhytiPXuBOhw6ftoRaljEph8m7
 fS9g==
X-Gm-Message-State: APjAAAWtI7Fo6E/Umn/5iNSToeZu2sC3TAD7qobVG3xrAV5yhhtsBq8G
 Ej6R6pBudyA/STdwIcQSGbLZsw==
X-Google-Smtp-Source: APXvYqyQIgtvZsqL/4S3dtAlXaur3e2GH1E+K5/9qdE4PswmIsWs22/2sffAY0ZoGs1OpAIqAJbbLg==
X-Received: by 2002:a17:90b:903:: with SMTP id
 bo3mr6676659pjb.52.1570052013681; 
 Wed, 02 Oct 2019 14:33:33 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id p189sm288617pga.2.2019.10.02.14.33.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 14:33:32 -0700 (PDT)
Date: Wed, 2 Oct 2019 14:33:30 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v9 3/8] PM / devfreq: Set scaling_max_freq to max on OPP
 notifier error
Message-ID: <20191002213330.GG87296@google.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <bee69d4635f83d8812fedbc108beb6c51ac9d4e7.1570044052.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bee69d4635f83d8812fedbc108beb6c51ac9d4e7.1570044052.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_143334_605055_15F650FD 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 10:25:06PM +0300, Leonard Crestez wrote:
> The devfreq_notifier_call functions will update scaling_min_freq and
> scaling_max_freq when the OPP table is updated.
> 
> If fetching the maximum frequency fails then scaling_max_freq remains
> set to zero which is confusing. Set to ULONG_MAX instead so we don't
> need special handling for this case in other places.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 32bbf6e80380..3e0e936185a3 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -557,12 +557,14 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>  	devfreq->scaling_min_freq = find_available_min_freq(devfreq);
>  	if (!devfreq->scaling_min_freq)
>  		goto out;
>  
>  	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
> -	if (!devfreq->scaling_max_freq)
> +	if (!devfreq->scaling_max_freq) {
> +		devfreq->scaling_max_freq = ULONG_MAX;
>  		goto out;
> +	}
>  
>  	err = update_devfreq(devfreq);
>  
>  out:
>  	mutex_unlock(&devfreq->lock);
> -- 
> 2.17.1
> 

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
