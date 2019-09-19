Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61904B6FF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 02:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=riTHPM9Ko3eioZplwHPlpBvqVw4pUKyGHw654nRl+cc=; b=JIGOfwa83XQuzE
	aYF5coI+hkCYNLHxuqOy0UC0yGBvqdBnIL4sWIbMnijNIFbLPZa9JIyfy373W1d/rktJoOWMJ6t9P
	LiviaCi9VzGb7mFi5+kmsk2N5d4RyJWmgwEXsUXq1+7w0LeSMhfQIWxjJgToOEFa58lMG9pjgIM0y
	JlmWM1sZHUH6/6asAV0ViiGwu8zrRZj4SFdL/5aWB9BA1kFpE0zW2Nyoe7YYIwQbMFKtXY6AgI9VD
	GJctKY9z7dOrpuGfdbefyR2FKM3jqDNc90sfiXXvcRU4UfTlwUUxC2o2+FCJHJBR96JSuTRRKs2ma
	GMneI0zGtq4m203c4qrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAk6L-0006sB-Fm; Thu, 19 Sep 2019 00:15:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAk67-0006pb-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 00:15:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id y22so1055225pfr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 17:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rgzgbFogMZcfDXsyk9n/1Ks0YYcSvnisMMxtq1J/+YM=;
 b=PFZqgEQ7wuvQ4PBDtBbyAW29d+Gjn79xA5kOx6VGrUYEa9WnC1UauU0ananPb+2lX/
 yf490g2Xe/rSZvbxHeLRlqrMu6LzTETCc1PAPzQub3qa3cz1gUg1rzQuQP5r/fM7Y2qZ
 RuFx6Tn/V27LXJlF0NXyaQyTm1F3vYbkcnPls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rgzgbFogMZcfDXsyk9n/1Ks0YYcSvnisMMxtq1J/+YM=;
 b=ELBOFas1dbRR1Vy6pe8MHIBTC/dpjhShINbid/XRMha7vv1Jc8vWArQcZ+L5yybp4q
 AUWuzdu9wmQ+C0BoG36ydxGSZAThvZrj7F6kwf+cPQhFzREwrFSgb5zMFoFlcIjT/d/b
 WAWHcOnCgOPDKI9Ly3rvdA4qn9i6mvkrM85ueFgCHg3zqIFOwBxPL1WxR9long1/u+l9
 9b8yGgTY04m2eL0O1tTxqo0Krw2Ug4L9qna8zcR42/1rF5eNBNYB1VnnHmPn6/XA48UR
 mAp3JXNuFFaAgoZFWZ6GisRMOaLYuXKRccprxaH7pWZ6SgOisVkLkL2bPNI0NRdlL0o6
 ZUtw==
X-Gm-Message-State: APjAAAV0cwrXcnVH3FfnjSq/pln/YjpHSSjBFNtC6iWMhF/wUs5oFDM3
 feFs9b1gpCytU6mF4gHZcSIYMA==
X-Google-Smtp-Source: APXvYqw3Ez3B/WZGTiurshAkeN4vdx03q9zRUt2P3aObHO0BLFH8ud+W7Wm9Qr7WGKuYky1flFmZFw==
X-Received: by 2002:a63:83c3:: with SMTP id h186mr6580699pge.317.1568852097768; 
 Wed, 18 Sep 2019 17:14:57 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id e127sm10880073pfe.37.2019.09.18.17.14.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 17:14:57 -0700 (PDT)
Date: Wed, 18 Sep 2019 17:14:54 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 3/8] PM / devfreq: Move more initialization before
 registration
Message-ID: <20190919001454.GQ133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <59bd0d871fad520eb417ca46943fa7f86ef9186a.1568764439.git.leonard.crestez@nxp.com>
 <20190918232904.GP133864@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918232904.GP133864@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_171459_281968_9951B319 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

On Wed, Sep 18, 2019 at 04:29:04PM -0700, Matthias Kaehlcke wrote:
> Hi Leonard,
> 
> On Wed, Sep 18, 2019 at 03:18:22AM +0300, Leonard Crestez wrote:
> > In general it is a better to initialize an object before making it
> > accessible externally (through device_register).
> > 
> > This make it possible to avoid relying on locking a partially
> > initialized object.
> > 
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> > ---
> >  drivers/devfreq/devfreq.c | 38 ++++++++++++++++++++------------------
> >  1 file changed, 20 insertions(+), 18 deletions(-)
> > 
> > diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> > index a715f27f35fd..57a217fc92de 100644
> > --- a/drivers/devfreq/devfreq.c
> > +++ b/drivers/devfreq/devfreq.c
> > @@ -589,10 +589,12 @@ static void devfreq_dev_release(struct device *dev)
> >  
> >  	if (devfreq->profile->exit)
> >  		devfreq->profile->exit(devfreq->dev.parent);
> >  
> >  	mutex_destroy(&devfreq->lock);
> > +	kfree(devfreq->time_in_state);
> > +	kfree(devfreq->trans_table);
> >  	kfree(devfreq);
> >  }
> >  
> >  /**
> >   * devfreq_add_device() - Add devfreq feature to the device
> > @@ -671,44 +673,43 @@ struct devfreq *devfreq_add_device(struct device *dev,
> >  	devfreq->max_freq = devfreq->scaling_max_freq;
> >  
> >  	devfreq->suspend_freq = dev_pm_opp_get_suspend_opp_freq(dev);
> >  	atomic_set(&devfreq->suspend_count, 0);
> >  
> > -	dev_set_name(&devfreq->dev, "devfreq%d",
> > -				atomic_inc_return(&devfreq_no));
> > -	err = device_register(&devfreq->dev);
> > -	if (err) {
> > -		mutex_unlock(&devfreq->lock);
> > -		put_device(&devfreq->dev);
> > -		goto err_out;
> > -	}
> > -
> > -	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
> > +	devfreq->trans_table = kzalloc(
> >  			array3_size(sizeof(unsigned int),
> >  				    devfreq->profile->max_state,
> >  				    devfreq->profile->max_state),
> >  			GFP_KERNEL);
> >  	if (!devfreq->trans_table) {
> >  		mutex_unlock(&devfreq->lock);
> >  		err = -ENOMEM;
> > -		goto err_devfreq;
> > +		goto err_dev;
> >  	}
> >  
> > -	devfreq->time_in_state = devm_kcalloc(&devfreq->dev,
> > -			devfreq->profile->max_state,
> > -			sizeof(unsigned long),
> > -			GFP_KERNEL);
> > +	devfreq->time_in_state = kcalloc(devfreq->profile->max_state,
> > +					 sizeof(unsigned long),
> > +					 GFP_KERNEL);
> >  	if (!devfreq->time_in_state) {
> >  		mutex_unlock(&devfreq->lock);
> >  		err = -ENOMEM;
> > -		goto err_devfreq;
> > +		goto err_dev;
> >  	}
> >  
> >  	devfreq->last_stat_updated = jiffies;
> >  
> >  	srcu_init_notifier_head(&devfreq->transition_notifier_list);
> >  
> > +	dev_set_name(&devfreq->dev, "devfreq%d",
> > +				atomic_inc_return(&devfreq_no));
> > +	err = device_register(&devfreq->dev);
> > +	if (err) {
> > +		mutex_unlock(&devfreq->lock);
> > +		put_device(&devfreq->dev);
> > +		goto err_out;
> 
>   		goto err_dev;
> 
> > +	}
> > +
> >  	mutex_unlock(&devfreq->lock);
> >  
> >  	mutex_lock(&devfreq_list_lock);
> >  
> >  	governor = try_then_request_governor(devfreq->governor_name);
> > @@ -734,14 +735,15 @@ struct devfreq *devfreq_add_device(struct device *dev,
> >  
> >  	return devfreq;
> >  
> >  err_init:
> >  	mutex_unlock(&devfreq_list_lock);
> > -err_devfreq:
> >  	devfreq_remove_device(devfreq);
> > -	devfreq = NULL;
> > +	return ERR_PTR(err);
> 
> The two return paths in the unwind part are unorthodox, but I
> see why they are needed. Maybe add an empty line between the two paths
> to make it a bit more evident that they are separate.
> 
> >  err_dev:
> 
> This code path should include
> 
> 	mutex_destroy(&devfreq->lock);
> 
> That was already missing in the original code though.
> 
> Actually with the later device registration the mutex could be
> initialized later and doesn't need to be held. This would
> obsolete the mutex_unlock() calls in the error paths.

Just saw that you are already doing this in "[4/8] PM / devfreq:
Don't take lock in devfreq_add_device" :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
