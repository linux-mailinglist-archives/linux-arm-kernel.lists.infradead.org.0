Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1295DB6FB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 01:29:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKA2LUzVnTyHjBBCz15i/YDcqVa0bIHJIW9PG3FJLy8=; b=XnlF1SndGGGfs/
	UOMBu8EZr1VGDE1qsr4+f3APU112zxL4WqQ3mo+0+tyBnBup/IuRA2+SKjD0//fxuJKYNP02nuyY8
	4rdPUV3jsnxyG2tqXn6ii7zA89ZrG/OPnM9SXJeeVcsgK86pBhdJq0cVASEA+x+Kt+Cfu2yFaC0dh
	cVHzY9nq5YCTifoD5F69Xjtao4LJ0HWdMGy4VzA8D7gg6xAjvJXvHOj2VDDqYV/tjf3HfGMfaruvr
	F8HTQ4oMY9JKKuepLjTQjfBlfj4DUTJzVJ58YGYHDD39eBKQpyBUm6uQveZBAGD/TLVIuxhtUVCWg
	lwFmvv8Pot6Ih+R9DOSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAjNx-0001dF-K4; Wed, 18 Sep 2019 23:29:21 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAjNk-0001ck-Eq
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 23:29:09 +0000
Received: by mail-pg1-x542.google.com with SMTP id a24so757786pgj.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 16:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xkSAHLojjpoJjVoNc1BW0mr4HJS6Pbtg1jwjCnh3QCI=;
 b=hAauSUP5UaViSzCRq0EKIC4YzU2nskkSrg4ZGnVbrYp/XXBzJ46HAMnj9EAwu4YtKp
 E4KIFQ2BKRpP3DO3CyNDa365WBPB47eW6TCcZz3bN4tW+duJrvt3NZtzScga2H9iReAX
 EGYcbu3JXWAkSMh6SwY7BnXff/BrhjvptGwvM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xkSAHLojjpoJjVoNc1BW0mr4HJS6Pbtg1jwjCnh3QCI=;
 b=IYSEpOIwcM8miTr9GTLxjH+MT5pZWAEIb6AYaWdj/cclw+z00gJ+aSbhRMBSqghRKF
 g3HyDZPDzYTO+mNv59MIXadlAPD2JGC92fPNYTD+LcvjpJ87rnF9iEW55uJzkhhhBFHO
 kwzs0VImRikf8tP1Mg8QZ6Lac9q+SMq0HivwC8QgG4kFpaMjpuQXIYTds/WwrbUQLSPH
 ywxi+Wz1pr+f5acKKfl0ABXskw/EZWqvU2FmGZFBjIWWxQfBEWnnrF6MwKK5WlurlZe3
 HnFaPXS+Y9KqEqEBS90TzuF6rAX1K7exZO1YF2S0DjsCsblPBOHmITwenHYla4MozZlq
 Cecg==
X-Gm-Message-State: APjAAAUTh5rf2sZt0BQ1vDAo8YmUhJw5p9/Hh3VslOkfEpS+AWZ7z9aM
 SsL7MJVAxsEqQzdHNi1CIP58bOLsmfw=
X-Google-Smtp-Source: APXvYqwCuTM1Y/zo1nM7wFA2UvVoZjRZ/YbI8o0M/84ds1jVpWuIesSxUztoUh6l6JOlD1ZVb8OAyA==
X-Received: by 2002:a63:211c:: with SMTP id h28mr6301450pgh.372.1568849347203; 
 Wed, 18 Sep 2019 16:29:07 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id k13sm7533807pfa.138.2019.09.18.16.29.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 16:29:06 -0700 (PDT)
Date: Wed, 18 Sep 2019 16:29:04 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 3/8] PM / devfreq: Move more initialization before
 registration
Message-ID: <20190918232904.GP133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <59bd0d871fad520eb417ca46943fa7f86ef9186a.1568764439.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59bd0d871fad520eb417ca46943fa7f86ef9186a.1568764439.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_162908_520684_A9FDA50B 
X-CRM114-Status: GOOD (  20.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leonard,

On Wed, Sep 18, 2019 at 03:18:22AM +0300, Leonard Crestez wrote:
> In general it is a better to initialize an object before making it
> accessible externally (through device_register).
> 
> This make it possible to avoid relying on locking a partially
> initialized object.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 38 ++++++++++++++++++++------------------
>  1 file changed, 20 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index a715f27f35fd..57a217fc92de 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -589,10 +589,12 @@ static void devfreq_dev_release(struct device *dev)
>  
>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
>  
>  	mutex_destroy(&devfreq->lock);
> +	kfree(devfreq->time_in_state);
> +	kfree(devfreq->trans_table);
>  	kfree(devfreq);
>  }
>  
>  /**
>   * devfreq_add_device() - Add devfreq feature to the device
> @@ -671,44 +673,43 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	devfreq->max_freq = devfreq->scaling_max_freq;
>  
>  	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
>  	atomic_set(&devfreq->suspend_count, 0);
>  
> -	dev_set_name(&devfreq->dev, "devfreq%d",
> -				atomic_inc_return(&devfreq_no));
> -	err = device_register(&devfreq->dev);
> -	if (err) {
> -		mutex_unlock(&devfreq->lock);
> -		put_device(&devfreq->dev);
> -		goto err_out;
> -	}
> -
> -	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
> +	devfreq->trans_table = kzalloc(
>  			array3_size(sizeof(unsigned int),
>  				    devfreq->profile->max_state,
>  				    devfreq->profile->max_state),
>  			GFP_KERNEL);
>  	if (!devfreq->trans_table) {
>  		mutex_unlock(&devfreq->lock);
>  		err = -ENOMEM;
> -		goto err_devfreq;
> +		goto err_dev;
>  	}
>  
> -	devfreq->time_in_state = devm_kcalloc(&devfreq->dev,
> -			devfreq->profile->max_state,
> -			sizeof(unsigned long),
> -			GFP_KERNEL);
> +	devfreq->time_in_state = kcalloc(devfreq->profile->max_state,
> +					 sizeof(unsigned long),
> +					 GFP_KERNEL);
>  	if (!devfreq->time_in_state) {
>  		mutex_unlock(&devfreq->lock);
>  		err = -ENOMEM;
> -		goto err_devfreq;
> +		goto err_dev;
>  	}
>  
>  	devfreq->last_stat_updated = jiffies;
>  
>  	srcu_init_notifier_head(&devfreq->transition_notifier_list);
>  
> +	dev_set_name(&devfreq->dev, "devfreq%d",
> +				atomic_inc_return(&devfreq_no));
> +	err = device_register(&devfreq->dev);
> +	if (err) {
> +		mutex_unlock(&devfreq->lock);
> +		put_device(&devfreq->dev);
> +		goto err_out;

  		goto err_dev;

> +	}
> +
>  	mutex_unlock(&devfreq->lock);
>  
>  	mutex_lock(&devfreq_list_lock);
>  
>  	governor = try_then_request_governor(devfreq->governor_name);
> @@ -734,14 +735,15 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  
>  	return devfreq;
>  
>  err_init:
>  	mutex_unlock(&devfreq_list_lock);
> -err_devfreq:
>  	devfreq_remove_device(devfreq);
> -	devfreq = NULL;
> +	return ERR_PTR(err);

The two return paths in the unwind part are unorthodox, but I
see why they are needed. Maybe add an empty line between the two paths
to make it a bit more evident that they are separate.

>  err_dev:

This code path should include

	mutex_destroy(&devfreq->lock);

That was already missing in the original code though.

Actually with the later device registration the mutex could be
initialized later and doesn't need to be held. This would
obsolete the mutex_unlock() calls in the error paths.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
