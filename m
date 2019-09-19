Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F21BB7001
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 02:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zjG4lFJe3+HXohkutSRkrPlmnIxRfvddc1K4UbFGZR0=; b=PdR3O0YE6prjKu
	jpzDuOfcNtlzcyJJLq28kKkd7u/kYCLSykPXcytAflvbsfIoM9Q2wM1J5+kCF3xlSSQrgdMPaMias
	/SHKpM9Jp/fO7a9zGW+yYIYoei0yx5W/F4D++wUk2CYU5EOrhM+0wfgYgj21rwEj7rSwrtA1gaiEt
	BEqARkhLnVzKFYVd8jZD10r1Z5wT5CtVoym6dCtpAARdsyZpNpnY4CWwQ9pP49bXv7t6p7X+p/hxe
	JXAK5gMem6VnUsMfN4YHvIvcK2gwUF2bGIiwdiNI9tFYzohYGNtpww3zSnX/lA04VwQvHilwK0MsB
	bpULzx12QklxLlZ97W7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAkBT-0001RW-Lo; Thu, 19 Sep 2019 00:20:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAkBG-0001QH-CK
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 00:20:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id z12so789298pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 17:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tHO8idxYvCXO7Xl0b0Brpx8nnJ3dAZiCIzv0ysrkpR8=;
 b=J0Do6o5AerwDtZyl8dLc9miEApIwpFWAOanu8xKsifMz54iwBW/mgpw+1gwHLYcYhb
 GfIBEIxKedStctxiR2NJ+SRy5b/TDIbRGkDJV9aMApwkXSq8rUwJJlnrm7Cs9dl6FfEE
 CpXtOy7mw+Gop6f/TGdPWDRX0OAHy3Ib5A/Qg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tHO8idxYvCXO7Xl0b0Brpx8nnJ3dAZiCIzv0ysrkpR8=;
 b=YhBfiVLyOHaxSVR3OSwRErD2jtOpg47HxoBPIdWclpGvMV7JBym3G7y5DOqHhemtW0
 w6VRDpkaz5rqAxJsLlHRcmWNgW8IZujBcMoHHsND3FfkdvOHdDhRKS6Fqx6naaDat4Xd
 HQI+w0UR77wAWc+VxVPkD+lZsh3LyTWeqeED0Gwfo6el9ysJxwb52HYe4g64RG+ASH8Y
 2Cn60eq7Pv2s229r5VmrVYaulykwBBqUbZLFnjswvLI+YW7r0kH2p1gDGnecJ7fnSva6
 lCcH6EjhkFv5qYJYGiZBfKNFZv/gA/zeN/yige50x0jp7ZA6y2JDEXkmsvlO0AwtFOtQ
 4XkQ==
X-Gm-Message-State: APjAAAUid+i+Jmy9xwbzoQrPUH6Y7kzyt6TwFVtgXskF5uJ1NE4p06g0
 5WAez9c0OixEVHLO9PZFtkCjXA==
X-Google-Smtp-Source: APXvYqxQXGfAj7Tm6yt4FaTaG/b5TVZyScNcObutnzEEg2k7jmyKhq+EBKSb/IemFBLdTCyPk6sZrA==
X-Received: by 2002:a63:4857:: with SMTP id x23mr6593458pgk.142.1568852417268; 
 Wed, 18 Sep 2019 17:20:17 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id 1sm7888373pff.39.2019.09.18.17.20.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 17:20:15 -0700 (PDT)
Date: Wed, 18 Sep 2019 17:20:13 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 4/8] PM / devfreq: Don't take lock in devfreq_add_device
Message-ID: <20190919002013.GR133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <2fe8d1000bed5de70b08ed77fc8360d159ae4434.1568764439.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fe8d1000bed5de70b08ed77fc8360d159ae4434.1568764439.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_172018_448970_FFCF6752 
X-CRM114-Status: GOOD (  14.95  )
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

On Wed, Sep 18, 2019 at 03:18:23AM +0300, Leonard Crestez wrote:
> A device usually doesn't need to lock itself during initialization
> because it is not yet reachable from other threads.
> 
> This simplifies the code and helps avoid recursive lock warnings.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 57a217fc92de..860cbbab476c 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -634,11 +634,10 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  		err = -ENOMEM;
>  		goto err_out;
>  	}
>  
>  	mutex_init(&devfreq->lock);
> -	mutex_lock(&devfreq->lock);
>  	devfreq->dev.parent = dev;
>  	devfreq->dev.class = devfreq_class;
>  	devfreq->dev.release = devfreq_dev_release;
>  	INIT_LIST_HEAD(&devfreq->node);
>  	devfreq->profile = profile;
> @@ -647,28 +646,24 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	devfreq->last_status.current_frequency = profile->initial_freq;
>  	devfreq->data = data;
>  	devfreq->nb.notifier_call = devfreq_notifier_call;
>  
>  	if (!devfreq->profile->max_state && !devfreq->profile->freq_table) {
> -		mutex_unlock(&devfreq->lock);
>  		err = set_freq_table(devfreq);
>  		if (err < 0)
>  			goto err_dev;
> -		mutex_lock(&devfreq->lock);
>  	}
>  
>  	devfreq->scaling_min_freq = find_available_min_freq(devfreq);
>  	if (!devfreq->scaling_min_freq) {
> -		mutex_unlock(&devfreq->lock);
>  		err = -EINVAL;
>  		goto err_dev;
>  	}
>  	devfreq->min_freq = devfreq->scaling_min_freq;
>  
>  	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
>  	if (!devfreq->scaling_max_freq) {
> -		mutex_unlock(&devfreq->lock);
>  		err = -EINVAL;
>  		goto err_dev;
>  	}
>  	devfreq->max_freq = devfreq->scaling_max_freq;
>  
> @@ -679,20 +674,18 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  			array3_size(sizeof(unsigned int),
>  				    devfreq->profile->max_state,
>  				    devfreq->profile->max_state),
>  			GFP_KERNEL);
>  	if (!devfreq->trans_table) {
> -		mutex_unlock(&devfreq->lock);
>  		err = -ENOMEM;
>  		goto err_dev;
>  	}
>  
>  	devfreq->time_in_state = kcalloc(devfreq->profile->max_state,
>  					 sizeof(unsigned long),
>  					 GFP_KERNEL);
>  	if (!devfreq->time_in_state) {
> -		mutex_unlock(&devfreq->lock);
>  		err = -ENOMEM;
>  		goto err_dev;
>  	}
>  
>  	devfreq->last_stat_updated = jiffies;
> @@ -701,17 +694,14 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  
>  	dev_set_name(&devfreq->dev, "devfreq%d",
>  				atomic_inc_return(&devfreq_no));
>  	err = device_register(&devfreq->dev);
>  	if (err) {
> -		mutex_unlock(&devfreq->lock);
>  		put_device(&devfreq->dev);
>  		goto err_out;
>  	}
>  
> -	mutex_unlock(&devfreq->lock);
> -
>  	mutex_lock(&devfreq_list_lock);
>  
>  	governor = try_then_request_governor(devfreq->governor_name);
>  	if (IS_ERR(governor)) {
>  		dev_err(dev, "%s: Unable to find governor for the device\n",

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
