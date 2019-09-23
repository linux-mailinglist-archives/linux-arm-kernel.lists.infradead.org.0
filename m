Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5EBBBAFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ximoH/va+KLZWTGR3q8Nn84mCgg47eaMEZQ5htoHNbM=; b=g3Jk3VDW8Q2p8y
	YL4mdSM+mPZ+AugJ22nvAeLBd9xOf1mtJ+WD2Req9A0NQdRJsArjf7LTfOwdrjZXATR2bDLluwyzi
	+mUlxXcDyXWgBF01zDMbCe6Fn39+moUo5op5+o0WXBIylkzg4sJtvcFAACgz2INC8UZbKLYbJQgfQ
	UWVwgUloNcZZ7MMkxktpxJaeM3OWEL75Uq4Xrt5S1fG1J1S0IR9ov5Mwtpwiuy2q3Sf11meA+f5nE
	iELCoMl+CgPPausadTIVHgRYjFw73FoaXLm1jp0TcTmYfe1Muw0nTKt86ySt+28YDi9X/q5yTawQO
	nTJ9iIqYIsL7fL3bxAbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSnr-0005Hm-Us; Mon, 23 Sep 2019 18:11:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSni-0005HP-Ls
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:11:08 +0000
Received: by mail-pf1-x442.google.com with SMTP id h195so9599022pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GhhEfz31mW+PGEj7W6BTGm1I2h8u/1sNMqll07GDL+o=;
 b=B7/uc71+COCmNXISDVfuToHc/7xx6ZbHiSybhzuIUp8h/Tt38f23peYPKn6WRkizxY
 e2rzZOXHikdJrasBPddOGEaZxJrHf7hv3/a4fvk/PoFHBY9wAdQxl+domZZ9HLso7x26
 5adXM1HlLH8vzy16lYKAJtMCAPZPzVJkkG1Zg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GhhEfz31mW+PGEj7W6BTGm1I2h8u/1sNMqll07GDL+o=;
 b=JhWa1hY0tsxmwb0436DypSa9/WY4bpn1Wx8KYuWyXbGQuUbWV8cYbNfziXueAM7+sk
 iVTAWwGG/+Zjsg6OwDY8w1ifa/uHc5hzqyzMU1u5iDinqRFIYxeWX05W+Ps69n5K+ywl
 N8ranGt6TFgkXlnemTyQkjdXdAS+xK5bdnLMRIdzGgYxqtamMsPTG8RoMq3cK4/26CQp
 ruHsS3l5G5Ujc5SSotz/NEbBvnw5vq/gbiI8O1WQlY3Xkx5urKLUhQ08acsAt4MgRy7f
 Uxuo2YRuoWiaeZDD5Wljt0mJ7pnihA6UVrAlUYVtexqhDeYP6M22qpjuzYXBSbIN0vkD
 2T6A==
X-Gm-Message-State: APjAAAXn9Ob0JQdaAJQsqyCVxf5NfHLWrSfAmt64YDp1lRjWuMVr+r8F
 R+92tu6rZf2lPHOSH+zoAUEGJQ==
X-Google-Smtp-Source: APXvYqyEAISPVu49vXFMaEKnhfTAY2pgrrhfN6m8wDPmAHv/uMsb1KW1tng8IFPDpi2B77m4daL4jw==
X-Received: by 2002:a63:5652:: with SMTP id g18mr1124229pgm.393.1569262265523; 
 Mon, 23 Sep 2019 11:11:05 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id g12sm9678516pgb.26.2019.09.23.11.11.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 11:11:04 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:10:57 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v6 2/6] PM / devfreq: Move more initialization before
 registration
Message-ID: <20190923181057.GY133864@google.com>
References: <cover.1569252537.git.leonard.crestez@nxp.com>
 <0ad496507cd7e6731e46249b1499dfdebe205c16.1569252537.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ad496507cd7e6731e46249b1499dfdebe205c16.1569252537.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_111106_743987_4080409E 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Sep 23, 2019 at 06:51:05PM +0300, Leonard Crestez wrote:
> In general it is a better to initialize an object before making it
> accessible externally (through device_register).
> 
> This makes it possible to avoid relying on locking a partially
> initialized object.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 43 +++++++++++++++++++++++----------------
>  1 file changed, 25 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 323d43315d1e..b4d2bfebb140 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -587,10 +587,12 @@ static void devfreq_dev_release(struct device *dev)
>  	mutex_unlock(&devfreq_list_lock);
>  
>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
>  
> +	kfree(devfreq->time_in_state);
> +	kfree(devfreq->trans_table);
>  	mutex_destroy(&devfreq->lock);
>  	kfree(devfreq);
>  }
>  
>  /**
> @@ -670,44 +672,43 @@ struct devfreq *devfreq_add_device(struct device *dev,
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

As per my comment on v5 I think the goto needs to go to 'err_dev'. The
device registration failed, hence devfreq_dev_release() won't be
called to free allocated memory.

> +	}
> +
>  	mutex_unlock(&devfreq->lock);
>  
>  	mutex_lock(&devfreq_list_lock);
>  
>  	governor = try_then_request_governor(devfreq->governor_name);
> @@ -733,14 +734,20 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  
>  	return devfreq;
>  
>  err_init:
>  	mutex_unlock(&devfreq_list_lock);
> -err_devfreq:
>  	devfreq_remove_device(devfreq);
> -	devfreq = NULL;
> +	return ERR_PTR(err);
> +
>  err_dev:
> +	/*
> +	 * Cleanup path for errors that happen before registration.
> +	 * Otherwise we rely on devfreq_dev_release

nit: add a period at the end of the second sentence.

> +	 */
> +	kfree(devfreq->time_in_state);
> +	kfree(devfreq->trans_table);
>  	kfree(devfreq);
>  err_out:
>  	return ERR_PTR(err);
>  }
>  EXPORT_SYMBOL(devfreq_add_device);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
