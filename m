Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67AAB6EF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 23:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DcaPBjBA4bxsllV/O9pstcE3usoG+TQpC8TvcNRIMWs=; b=KH8na1HmLtCeSK
	M4mJk+TWYD6t1L2tv2b579bl/xfgikX1nSASL/yheDo7UoFvyGH1elQzGaIlwTRNnB98iaVh5d5gz
	RGGmM+kFzJ5tkgJmg6FplMdfarnvK8NOJo1X5Vm94KEqbEcApBcF9L9l4KNd6PioGXGuDNMl6v2EH
	NoZnnnXlWZPx2nV9LNnuEGpRB3MlxkoFVAzHTPj4XwDPvFMOAP6OWmbqF3nZ0EYZ2cqblid6g4xNg
	Q6NR3eKYKgXN7oqNXNLxDKKa/J5zsQTzz/zQV/iJwFlDPgKPyXg2OUwRPqv5VW+dqEWykgTKBxa3v
	0mlo3cswxzxTPxhl8UjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAhhW-0001wQ-7Z; Wed, 18 Sep 2019 21:41:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAhhL-0001w2-J8
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 21:41:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so865980pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 14:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pIZyn+G+bA7XtEVOcWB74dsFb9Insi2abCRrDc2HQeE=;
 b=XTmEYrvsMQthzUKL3yBYx8caiWqf/wT7Mr0lti3P3Za6WgWm/KTDYD7Zu4T/3PSV6c
 6Pj2pf3uecVmf0b1+RV6odqfUtL0q9gYfJISIKf/RTlROVHtyef4GgYwh4ySp10lwyrF
 4RgLTcieZkkdZIUrlF98yG0jD43EUE/+n2i80=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pIZyn+G+bA7XtEVOcWB74dsFb9Insi2abCRrDc2HQeE=;
 b=VfdXbKF0U7+wBMpDBnDkvg8fY6dwAMWOtFICK7NUfFcYT/QTibSa0i8QsDJmPQe/we
 +s/bJoJDwpNC+pSnP/8Tvf2/hPxwMJFB/uiIiR6fxAUCiLhKpXiZppZAkdy+SeurLTgZ
 Iju7F7LffMqbZelfx5sQRN/ZWeSKE1ZX8C4irjQa1vqII5u2N0bcSnGmAhGWZ9xRSUFd
 jjo0pXMaPf1kWT5USHqTXn5dxlSuBmeBv35J09O8+qee7NAn6ao0tqvu86OEvWEyLavZ
 Z9FDjnC/PX11hx7G6eQ2vu8swR4LwYVZxzia0rrF9a6Eq7MiZNT+nHwwD77i16whIlBe
 lF/A==
X-Gm-Message-State: APjAAAXTL8O6CBJan+fr9h2wlIKMiVbxHY7SrbbUf059bTTvCYRkQ0vH
 jwG85bDIr1lavYnK1boASBU9Yg==
X-Google-Smtp-Source: APXvYqw5kQ6N+iHQn1rHpL/B5Vq2EZxlSiSCFgV/INYo3Ec4YEO5FWuja1lQ6g05sCXgKtq/2YOszQ==
X-Received: by 2002:a63:b954:: with SMTP id v20mr5995525pgo.140.1568842874736; 
 Wed, 18 Sep 2019 14:41:14 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id k95sm3616293pje.10.2019.09.18.14.41.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 14:41:14 -0700 (PDT)
Date: Wed, 18 Sep 2019 14:41:11 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 2/8] PM / devfreq: Don't fail devfreq_dev_release if not
 in list
Message-ID: <20190918214111.GO133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <60f8aa909fe209632734b6c637dffbc7554f996c.1568764439.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <60f8aa909fe209632734b6c637dffbc7554f996c.1568764439.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_144115_657754_A3227305 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

On Wed, Sep 18, 2019 at 03:18:21AM +0300, Leonard Crestez wrote:
> Right now devfreq_dev_release will print a warning and abort the rest of
> the cleanup if the devfreq instance is not part of the global
> devfreq_list. But this is a valid scenario, for example it can happen if
> the governor can't be found or on any other init error that happens
> after device_register.
> 
> Initialize devfreq->node to an empty list head in devfreq_add_device so
> that list_del becomes a safe noop inside devfreq_dev_release and we can
> continue the rest of the cleanup.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 665575228c4f..a715f27f35fd 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -582,15 +582,10 @@ static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>  static void devfreq_dev_release(struct device *dev)
>  {
>  	struct devfreq *devfreq = to_devfreq(dev);
>  
>  	mutex_lock(&devfreq_list_lock);
> -	if (IS_ERR(find_device_devfreq(devfreq->dev.parent))) {
> -		mutex_unlock(&devfreq_list_lock);
> -		dev_warn(&devfreq->dev, "releasing devfreq which doesn't exist\n");
> -		return;
> -	}
>  	list_del(&devfreq->node);
>  	mutex_unlock(&devfreq_list_lock);
>  
>  	if (devfreq->profile->exit)
>  		devfreq->profile->exit(devfreq->dev.parent);
> @@ -641,10 +636,11 @@ struct devfreq *devfreq_add_device(struct device *dev,
>  	mutex_init(&devfreq->lock);
>  	mutex_lock(&devfreq->lock);
>  	devfreq->dev.parent = dev;
>  	devfreq->dev.class = devfreq_class;
>  	devfreq->dev.release = devfreq_dev_release;
> +	INIT_LIST_HEAD(&devfreq->node);
>  	devfreq->profile = profile;
>  	strncpy(devfreq->governor_name, governor_name, DEVFREQ_NAME_LEN);
>  	devfreq->previous_freq = profile->initial_freq;
>  	devfreq->last_status.current_frequency = profile->initial_freq;
>  	devfreq->data = data;

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
