Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C12B6ECD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 23:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ni/XQwsD0HnSQHlblNAGSaC00T8UBjlxjiAXnBjSp7Q=; b=fD7esi6sNOIEtA
	kPxuduumRiikI7ZXc/bhjJZgULHB8WcIBMJZX2Ktr63sQWcRloQCh3neYSUaBUI7yV4Nvqe+Sn8iX
	HcTuWLgdV5MjazKyNRmMRJaoPXRAyIcLKIbGosx38EW4GoPzdtfeUzH7Km6AcCYl3YJcpLBU1A2gl
	6BNFZ0M8FV49mw8emgUSYio6tVAwwFjXgTUj1rH162liDc6wlUJqBEQqVHLz5hUoxyJavteF6/i5/
	agmBuNTlWz1JRKxUPE4xUfXaSXWC93I7R0O+ot7N39nlEoJcNW8eRWAktCTOyoOG2h2EzUOEGDxMB
	sTsFHDxFVN+RX65OjB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAhVM-0005de-D7; Wed, 18 Sep 2019 21:28:52 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAhVB-0005dE-5a
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 21:28:42 +0000
Received: by mail-pf1-x442.google.com with SMTP id b128so840814pfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 14:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qri0Ci/6Io8ZQOLMb0J47wZgXPltrE6CU1oNGGjo+T0=;
 b=eGsXUA3CvqG2Zq9JKWiq7uoo9O11pHqGntNkFluEcWAQBvRlcbMCRzH8MxCK45GMKp
 PvRHpeV2CuiKkFM4+sMcgjt5Si+3EZ63CXob2oc5ZVwAwGhG9TTu3P0CEgy94oVVWGnk
 9QiACfShv4bTyvw25pB5wy+MRoSmRb/EoElLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qri0Ci/6Io8ZQOLMb0J47wZgXPltrE6CU1oNGGjo+T0=;
 b=T1/HT/gm8S7pggnb0F6s9539M4+Bd6sAwVHpt3t67utcs6pXjn58TCg4c3leN+x1Ty
 R2NYsleBJ3zG30SxnzgcM9W80dypJny6nwmbmu8d3epEPyZ6QsIAeDJN1C/1r/124JG3
 6dlte7D0JdjljRY9EG/fuFFx4Z0I8I6EjlYl6vj87yHe11meQdt03YFo+7RzZHGL1MuL
 r7FdpdoYZWnizMtlJivDcYZhHp9e4PrLzeaqBaHilBKbcJ1DsqlJ3NSNDtz9CnhaTKhC
 6hMfKyt4dtQm6ivrz7O8rn89HyRlDRqbxRoiaTlm/lg/4gIam948T4mAedqMVNpCvfzv
 wwmQ==
X-Gm-Message-State: APjAAAWKc4/on+pArKTTg0JBm0h7g99dOD1ooh/YSI9Vv7SUL0Xo7ot6
 nwWI8fulDS+nroTUH1wTMw9Ilg==
X-Google-Smtp-Source: APXvYqxXszwL+YGBJM/WR5hKmwW33kPCL9KeOCmjchKAHr+Jl6LDW1DO8yKZ1OMmIfhE253Vr2/jCw==
X-Received: by 2002:a62:2b46:: with SMTP id r67mr6748861pfr.140.1568842119375; 
 Wed, 18 Sep 2019 14:28:39 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id e127sm10649749pfe.37.2019.09.18.14.28.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 14:28:38 -0700 (PDT)
Date: Wed, 18 Sep 2019 14:28:36 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH 1/8] PM / devfreq: Lock devfreq in trans_stat_show
Message-ID: <20190918212836.GN133864@google.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <7d8f4d5c608d45ba19cdd52068fe6ffe30de67c1.1568764439.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d8f4d5c608d45ba19cdd52068fe6ffe30de67c1.1568764439.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_142841_232252_74C60AEE 
X-CRM114-Status: GOOD (  21.86  )
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

this series doesn't indicate the version, from the change history in
the cover letter I suppose it is v5.

On Wed, Sep 18, 2019 at 03:18:20AM +0300, Leonard Crestez wrote:
> There is no locking in this sysfs show function so stats printing can
> race with a devfreq_update_status called as part of freq switching or
> with initialization.
> 
> Also add an assert in devfreq_update_status to make it clear that lock
> must be held by caller.

This and some other patches look like generic improvements and not
directly related to the series "PM / devfreq: Add dev_pm_qos
support". If there are no dependencies I think it is usually better to
send the improvements separately, it keeps the series more focussed
and might reduce version churn. Just my POV though ;-)

> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 2494ee16f502..665575228c4f 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -159,10 +159,11 @@ int devfreq_update_status(struct devfreq *devfreq, unsigned long freq)
>  {
>  	int lev, prev_lev, ret = 0;
>  	unsigned long cur_time;
>  
>  	cur_time = jiffies;
> +	lockdep_assert_held(&devfreq->lock);
>  
>  	/* Immediately exit if previous_freq is not initialized yet. */
>  	if (!devfreq->previous_freq)
>  		goto out;
>  
> @@ -1415,15 +1416,20 @@ static ssize_t trans_stat_show(struct device *dev,
>  	struct devfreq *devfreq = to_devfreq(dev);
>  	ssize_t len;
>  	int i, j;
>  	unsigned int max_state = devfreq->profile->max_state;
>  
> +	mutex_lock(&devfreq->lock);
>  	if (!devfreq->stop_polling &&
> -			devfreq_update_status(devfreq, devfreq->previous_freq))
> -		return 0;
> -	if (max_state == 0)
> -		return sprintf(buf, "Not Supported.\n");
> +			devfreq_update_status(devfreq, devfreq->previous_freq)) {
> +		len = 0;

you could assign 'len' in the declaration instead, but it's just
another option, it'ss fine as is.

> +		goto out;
> +	}
> +	if (max_state == 0) {
> +		len = sprintf(buf, "Not Supported.\n");
> +		goto out;
> +	}

This leaves the general structure of the code as is, which is great,
but since you are already touching this part you can consider to
improve it: 'max_state' is constant after device creation, hence the
check could be done at the beginning, which IMO would be clearer, it
could also save an unnecessary devfreq_update_status() call and it
wouldn't be necessary to hold the lock (one goto less).

>  	len = sprintf(buf, "     From  :   To\n");
>  	len += sprintf(buf + len, "           :");
>  	for (i = 0; i < max_state; i++)
>  		len += sprintf(buf + len, "%10lu",
> @@ -1447,10 +1453,13 @@ static ssize_t trans_stat_show(struct device *dev,
>  			jiffies_to_msecs(devfreq->time_in_state[i]));
>  	}
>  
>  	len += sprintf(buf + len, "Total transition : %u\n",
>  					devfreq->total_trans);
> +
> +out:
> +	mutex_unlock(&devfreq->lock);
>  	return len;
>  }
>  static DEVICE_ATTR_RO(trans_stat);
>  
>  static struct attribute *devfreq_attrs[] = {

My only comments are possible improvements, but the change also looks
good as is, so:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
