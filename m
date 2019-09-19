Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91F1B8144
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 21:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Qgqkv6nBFvOVi5u6noLq/TwMmVdobFXAKlOKvCIqWs=; b=uoQrIbZGoEfO8i
	uOnw+Z2LMKtCzvFX9GifNJ1ZDG9LGHI/Ll6UpLG9X0wGOFMj3F+y4UXWryqB42lEA1db2xjWWb4dw
	t+uspCzwcXvOvkxPm1jk3VEjniS5o7A/mvBEKIWLox4l4kMqpHCvA917VUtHctuoD57M0hNe4QE7B
	LLFQfzhi1aq0skfWEbgFANDprEsrX4dTRpKxxu1cHBZJzy6x4mI4wywzZdMTfiMvmqtje0WR4lC75
	HSZAmXaOPFvwBuck6UpSshKVf5D61QMkcLjh7WBXhW/QAenDJIsRcabt5+6HsT8j7sBmZ5hcYXKG0
	fmtjlBowPhtUW8+1sj9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB1va-0005KU-Ew; Thu, 19 Sep 2019 19:17:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB1vK-0005K6-Cd
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 19:17:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id x10so2430658pgi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 12:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3dlQ6O4U4Y6iTe68DKUl7bDSDWocpATfaoQJw9GaTwA=;
 b=BEAvPSDMRYZ7psL5CsA0bF0/tyiZdL5Pj4Blz60FpJHTg9+O6iIVTQAikrSRVEtX50
 jS+ZLqYWO7Qik2WlNNIa2T98BHbLrXnHn9ZZbAJZLxQlr2pVEQ/FMHv+QuOeQ+g4oBDZ
 9aTq09z4U3DkpRkdfiJcMWFXho8VFmc6AFMn8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3dlQ6O4U4Y6iTe68DKUl7bDSDWocpATfaoQJw9GaTwA=;
 b=JdYAFVrJaV/UjwFhtze9ueYO8mHWxl9v62tr/brMmrkUuI/3gQU6+VGHdy7XVFKM9V
 7P/k/VA1hvtN4uo36cJeNvrsC66mMcRyfNYtiAH9IHYgY6bZmZcdGlgYYlK2oeOhJ8jf
 FznmkfhNt7ptzrSVqSlNzf1MX023AFBxA353Bq/6rgTvhUCUqIdVwz4YZJEveTFw3iNT
 JM2HK0sjLa8546j8Hz2ikwdFnFAW5Ayvm+lfs93+97QGut5En53ftiEI2foc4GkFdMbx
 ey9LzojaD0QHtYiMLJ83BIL4KJJLGCpyDi+bHMnJfBg2z/jYGh7ZH7r8AR9nIssEVIV1
 qzBw==
X-Gm-Message-State: APjAAAWHL5lOwJpNUnFBHC/Js2D15b1OxXueUlf5araJHvMNdsET+vvn
 mAZaZFDxPc82jHIECV563Tc61g==
X-Google-Smtp-Source: APXvYqyw0vY+LzMWyvC/PtDI3LAIIJ38He/wxtDobfuFTls9VDxuKUu1wJ2FE63lnnsle4oR6+aIIg==
X-Received: by 2002:a65:4002:: with SMTP id f2mr10770258pgp.447.1568920621694; 
 Thu, 19 Sep 2019 12:17:01 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id a17sm11919735pfc.26.2019.09.19.12.17.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 12:17:00 -0700 (PDT)
Date: Thu, 19 Sep 2019 12:16:59 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 3/8] PM / devfreq: Move more initialization before
 registration
Message-ID: <20190919191659.GV133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <59bd0d871fad520eb417ca46943fa7f86ef9186a.1568764439.git.leonard.crestez@nxp.com>
 <20190918232904.GP133864@google.com>
 <VI1PR04MB702350FA21534747D540C04FEE890@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB702350FA21534747D540C04FEE890@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_121702_433951_9B4E6FF5 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 19, 2019 at 06:52:07PM +0000, Leonard Crestez wrote:
> On 19.09.2019 02:29, Matthias Kaehlcke wrote:
> > Hi Leonard,
> > 
> > On Wed, Sep 18, 2019 at 03:18:22AM +0300, Leonard Crestez wrote:
> >> In general it is a better to initialize an object before making it
> >> accessible externally (through device_register).
> >>
> >> This make it possible to avoid relying on locking a partially
> >> initialized object.
> >>
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >> ---
> >>   drivers/devfreq/devfreq.c | 38 ++++++++++++++++++++------------------
> >>   1 file changed, 20 insertions(+), 18 deletions(-)
> >>
> >> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> >> index a715f27f35fd..57a217fc92de 100644
> >> --- a/drivers/devfreq/devfreq.c
> >> +++ b/drivers/devfreq/devfreq.c
> >> @@ -589,10 +589,12 @@ static void devfreq_dev_release(struct device *dev)
> >>   
> >>   	if (devfreq->profile->exit)
> >>   		devfreq->profile->exit(devfreq->dev.parent);
> >>   
> >>   	mutex_destroy(&devfreq->lock);
> >> +	kfree(devfreq->time_in_state);
> >> +	kfree(devfreq->trans_table);
> >>   	kfree(devfreq);
> >>   }
> >>   
> >>   /**
> >>    * devfreq_add_device() - Add devfreq feature to the device
> >> @@ -671,44 +673,43 @@ struct devfreq *devfreq_add_device(struct device *dev,
> >>   	devfreq->max_freq = devfreq->scaling_max_freq;
> >>   
> >>   	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
> >>   	atomic_set(&devfreq->suspend_count, 0);
> >>   
> >> -	dev_set_name(&devfreq->dev, "devfreq%d",
> >> -				atomic_inc_return(&devfreq_no));
> >> -	err = device_register(&devfreq->dev);
> >> -	if (err) {
> >> -		mutex_unlock(&devfreq->lock);
> >> -		put_device(&devfreq->dev);
> >> -		goto err_out;
> >> -	}
> >> -
> >> -	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
> >> +	devfreq->trans_table = kzalloc(
> >>   			array3_size(sizeof(unsigned int),
> >>   				    devfreq->profile->max_state,
> >>   				    devfreq->profile->max_state),
> >>   			GFP_KERNEL);
> >>   	if (!devfreq->trans_table) {
> >>   		mutex_unlock(&devfreq->lock);
> >>   		err = -ENOMEM;
> >> -		goto err_devfreq;
> >> +		goto err_dev;
> >>   	}
> >>   
> >> -	devfreq->time_in_state = devm_kcalloc(&devfreq->dev,
> >> -			devfreq->profile->max_state,
> >> -			sizeof(unsigned long),
> >> -			GFP_KERNEL);
> >> +	devfreq->time_in_state = kcalloc(devfreq->profile->max_state,
> >> +					 sizeof(unsigned long),
> >> +					 GFP_KERNEL);
> >>   	if (!devfreq->time_in_state) {
> >>   		mutex_unlock(&devfreq->lock);
> >>   		err = -ENOMEM;
> >> -		goto err_devfreq;
> >> +		goto err_dev;
> >>   	}
> >>   
> >>   	devfreq->last_stat_updated = jiffies;
> >>   
> >>   	srcu_init_notifier_head(&devfreq->transition_notifier_list);
> >>   
> >> +	dev_set_name(&devfreq->dev, "devfreq%d",
> >> +				atomic_inc_return(&devfreq_no));
> >> +	err = device_register(&devfreq->dev);
> >> +	if (err) {
> >> +		mutex_unlock(&devfreq->lock);
> >> +		put_device(&devfreq->dev);
> >> +		goto err_out;
> > 
> >    		goto err_dev;
> > 
> >> +	}
> >> +
> >>   	mutex_unlock(&devfreq->lock);
> >>   
> >>   	mutex_lock(&devfreq_list_lock);
> >>   
> >>   	governor = try_then_request_governor(devfreq->governor_name);
> >> @@ -734,14 +735,15 @@ struct devfreq *devfreq_add_device(struct device *dev,
> >>   
> >>   	return devfreq;
> >>   
> >>   err_init:
> >>   	mutex_unlock(&devfreq_list_lock);
> >> -err_devfreq:
> >>   	devfreq_remove_device(devfreq);
> >> -	devfreq = NULL;
> >> +	return ERR_PTR(err);
> > 
> > The two return paths in the unwind part are unorthodox, but I
> > see why they are needed. Maybe add an empty line between the two paths
> > to make it a bit more evident that they are separate.
> 
> Old code did "devfreq = NULL" just so that the later kfree did nothing. 
> There were already two unwind paths, it's just that the second one was 
> less obvious. I will add a comment.
> 
> >>   err_dev:
> > 
> > This code path should include
> > 
> > 	mutex_destroy(&devfreq->lock);
> > 
> > That was already missing in the original code though.
> 
> Yes, that would be a separate patch.
> 
> > Actually with the later device registration the mutex could be
> > initialized later and doesn't need to be held. This would
> > obsolete the mutex_unlock() calls in the error paths
> Next patch already removes mutex_lock before device_register (that's the 
> purpose of the cleanup). If you're suggesting to move mutex_init around 
> it's not clear what would be gained?

As per my earlier reply to self: I didn't look at the next patch
before writing this, it's all good, nothing to do here :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
