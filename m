Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC08BBBDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:55:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9TAKm9WWTGnbNZq/7O/zbhOAK+45rZWExvOV6gA7UTU=; b=kCdihGdA/a+Nfv
	8B/7NgRG78WvLdUgEC37zPc1DHSlirJW7ynKXhXTJgBjFiwiIs1vSZWSRjjgn91wcpIMIC/JEQ0Hx
	CQvFvdPlNF0Y9tBQuR3Vy7gYgnVS3VE1HNSt9GkJJXyg2cmArdT91w8KUryQ7Iy6kvYu+w/KM3OHu
	ec/GllTerswCyomeOvsFAYEkNg3GQM6hh43FKyLI2RTG+zpcB0OVyw+/xb1mD0+1euIf42bhZ9wAV
	rTAtrLV1Rf6Vi8mkn94tm8xT6DGbNiTaAd2vdVDXbu4A3DMPN2SOjK2xiOHmehuLWdD85HVOcmRd/
	iL/xYldJ7a10BNXJTvBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCTUR-0003Og-2v; Mon, 23 Sep 2019 18:55:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCTUD-0002qF-JE
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:55:03 +0000
Received: by mail-pl1-x641.google.com with SMTP id d22so6881607pll.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=g60mybHGCbp+Gc4f97SO8os9p5j28yQXptZ6Fi87KY0=;
 b=d3a30Z/bHgSWI1WKIt7BlIwg88OHdDy44A0d1tyr910PgQuDPwWk5RQTTKHw1EsN3B
 50ziszTY8p0ToA5QBKml8Di9sGsnu+LeMKRRXbX+iMjL1VIcBnFTCV2+HvznkwEuaQXv
 sfxz+WjcgZ1FwLQiJvPQrSBfaln6xeqSbSDdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=g60mybHGCbp+Gc4f97SO8os9p5j28yQXptZ6Fi87KY0=;
 b=aR1nHSroxOUQLo/yVfNFP3USp2GUHvxar8y4AysVv6Rr43IOKyT86xURVdATNI7lRy
 NZyIpmF9+OB+PwdEgqGd2IumGIqwUR+cSCkc73dzjIjev0OwEF7Y5CPFQP5QTsWGpLED
 mOBiUj17Epo83oLHQ61LuhwUkQVn+y1vx0YHm+DVd1KdFS9/rQUs5HHc6KbDyNS6a78N
 mfZYy4PLWUC7suM5Tjw6eLWB9b6jvtPa+OQ/8DGUdsUETiCkc2GEtUq6H2gCsYrmtuUA
 aIpQpvtGW3Xy42YssiRN/jSC0pM/IrUIQU4wJffd/qUNQ5N1qTUz2cwl0sMQ+IGa8yer
 xA5A==
X-Gm-Message-State: APjAAAXJGc9P369GOtcbQfx3VkPiDXXP8jbpY+xkfajfik0ZXVdEBFHJ
 yfOkBRrsaeov4EhC+U0p9jRcIg==
X-Google-Smtp-Source: APXvYqyYMtEu3gYdMW1/wzwcXyQstf7KP40H/EEA/Zanwu73FgcAzv1Oh0HwkxBW+ua+V3YLfUOf3w==
X-Received: by 2002:a17:902:6b07:: with SMTP id
 o7mr1275387plk.215.1569264900656; 
 Mon, 23 Sep 2019 11:55:00 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id 1sm14804927pff.39.2019.09.23.11.54.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 11:54:59 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:54:57 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] PM / devfreq: Lock devfreq in trans_stat_show
Message-ID: <20190923185457.GD133864@google.com>
References: <714675448e7fbf3c930b0dca6fbe54fa5f87211b.1569256001.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <714675448e7fbf3c930b0dca6fbe54fa5f87211b.1569256001.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_115501_669173_449DDB16 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 07:27:27PM +0300, Leonard Crestez wrote:
> There is no locking in this sysfs show function so stats printing can
> race with a devfreq_update_status called as part of freq switching or
> with initialization.
> 
> Also add an assert in devfreq_update_status to make it clear that lock
> must be held by caller.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> Changes since v1:
> * Split from series: low-priority bugfix not strictly required for PM QoS
> * Only keep lock during update, release before sprintf
> Link to v1: https://patchwork.kernel.org/patch/11149493/
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 4c58fbf7d4e4..00fc23fea5b2 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -206,10 +206,11 @@ int devfreq_update_status(struct devfreq *devfreq, unsigned long freq)
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
> @@ -1507,16 +1508,22 @@ static ssize_t trans_stat_show(struct device *dev,
>  	struct devfreq *devfreq = to_devfreq(dev);
>  	ssize_t len;
>  	int i, j;
>  	unsigned int max_state = devfreq->profile->max_state;
>  
> -	if (!devfreq->stop_polling &&
> -			devfreq_update_status(devfreq, devfreq->previous_freq))
> -		return 0;
>  	if (max_state == 0)
>  		return sprintf(buf, "Not Supported.\n");
>  
> +	/* lock and update */
> +	mutex_lock(&devfreq->lock);
> +	if (!devfreq->stop_polling &&
> +			devfreq_update_status(devfreq, devfreq->previous_freq)) {
> +		mutex_unlock(&devfreq->lock);
> +		return 0;
> +	}
> +	mutex_unlock(&devfreq->lock);
> +
>  	len = sprintf(buf, "     From  :   To\n");
>  	len += sprintf(buf + len, "           :");
>  	for (i = 0; i < max_state; i++)
>  		len += sprintf(buf + len, "%10lu",
>  				devfreq->profile->freq_table[i]);

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
