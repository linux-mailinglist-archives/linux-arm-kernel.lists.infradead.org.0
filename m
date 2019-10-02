Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EF1C9377
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 23:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3DYpGsn5XAvwwCNy8IlreB6gW7m2YPQCRa+sr1mFRE=; b=i5rn8lN+MYjkLA
	D5fCyDLuoStBkRqPWjVZLALC3NKhpJMPo5YunW9sWHHA/LfrdvuL68K5hdCAppNvK7fXLj86FRIBD
	Ro8SM+v5pCMMo13BjBdYb7bfiY6RAKIb4L290fTIbdGrb1w1V4w3WryvpN0zEHs2rbMU98x5feV5X
	/4G9OfKveRP4RlodC4yIgaLqBEnJ+qZ8pmpGwpQ4rWV4BPDfpiI7l4CsR883GUcV954BdmvNJiQ+R
	OUftKR6DCvbD3rm5dPrvbFum6PFFNk2HOng5FoT4wrqL2PrnJ4K+1ylTU9K6f5VhjBOAM5PNV8oBy
	F2Z8tIPVhLYb77q+ttog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFm75-0008JP-DY; Wed, 02 Oct 2019 21:24:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFm6z-0008Ix-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 21:24:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id e5so431012pls.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 14:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BTX2GSqsV6kTV3Pvc2Q5r/mtwfFtpL/CWWCZhRetRTs=;
 b=e+mqSw6IJR/B8mgIbtZx5sXFHlfRMudyijdRdZcL/hU1q1tmLM2a1dbNTj/hXPA32A
 R4lmEhkE/aB2z9ocxsZI3htEOlWQ3VoY4WfURw82rbWl32W10jRyLe+LM9cxvTQH2MPP
 Pwl87v9ABp4brXG9bQLv8pR5o2qTMabu8321Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BTX2GSqsV6kTV3Pvc2Q5r/mtwfFtpL/CWWCZhRetRTs=;
 b=arD5IZXHY480MJ5wkc2MqMGEt8A4K6Y6B6Ukcwm54X7pITo51KlRmFTcylRntkxJps
 dgD0sanLLSa9lAFjB/DSDEUdrV2Ii08S09Mz8QeFxmq6o/CuBDGhikuAFkHJsLzpFFGV
 Kgc/sDegyCMceakVd1AfpVWv2snawf4T1ZCtBOEoZGxhXjEwO9m79mnsm62BFCYsRj48
 Xx9VpBd1bVs2EFoQUJ8MkvH+oBfPjkfcmI569Yn9D2y/Bo1/S2d7VIdZ322woY3fe3qk
 y7oJqlhQt5LJAg4ShcuEWyqvBV8RW7fUuEf3sQQgij0cxAZKAYbp4abh7361O38y3xPn
 HZ3g==
X-Gm-Message-State: APjAAAUu4TaKUSlBi/4g/6p7CW/jSiVxN3JFFREJpbJeh+mumsD5UDpu
 jjCghshLFawYvMCUEzsU/R1DvA==
X-Google-Smtp-Source: APXvYqzbfa2TsOro/cQ8MOAqKaucPW2GW2LTOZyN9kOeBft1PqNo4OgVbQ2Q5v33eGeomCew+95xYQ==
X-Received: by 2002:a17:902:680d:: with SMTP id
 h13mr6026330plk.300.1570051480042; 
 Wed, 02 Oct 2019 14:24:40 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id y10sm369518pfe.148.2019.10.02.14.24.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 14:24:39 -0700 (PDT)
Date: Wed, 2 Oct 2019 14:24:37 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v9 2/8] PM / devfreq: Fix devfreq_notifier_call returning
 errno
Message-ID: <20191002212437.GF87296@google.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <10b1e5f93e7594852aa5cbfe1309bf486f70ecbb.1570044052.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10b1e5f93e7594852aa5cbfe1309bf486f70ecbb.1570044052.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_142441_194025_39E493BC 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

On Wed, Oct 02, 2019 at 10:25:05PM +0300, Leonard Crestez wrote:
> Notifier callbacks shouldn't return negative errno but one of the
> NOTIFY_OK/DONE/BAD values.
> 
> The OPP core will ignore return values from notifiers but returning a
> value that matches NOTIFY_STOP_MASK will stop the notification chain.
> 
> Fix by always returning NOTIFY_OK.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 24 +++++++++++++-----------
>  1 file changed, 13 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 7dc899da1172..32bbf6e80380 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -548,30 +548,32 @@ EXPORT_SYMBOL(devfreq_interval_update);
>   */
>  static int devfreq_notifier_call(struct notifier_block *nb, unsigned long type,
>  				 void *devp)
>  {
>  	struct devfreq *devfreq = container_of(nb, struct devfreq, nb);
> -	int ret;
> +	int err = -EINVAL;
>  
>  	mutex_lock(&devfreq->lock);
>  
>  	devfreq->scaling_min_freq = find_available_min_freq(devfreq);
> -	if (!devfreq->scaling_min_freq) {
> -		mutex_unlock(&devfreq->lock);
> -		return -EINVAL;
> -	}
> +	if (!devfreq->scaling_min_freq)
> +		goto out;
>  
>  	devfreq->scaling_max_freq = find_available_max_freq(devfreq);
> -	if (!devfreq->scaling_max_freq) {
> -		mutex_unlock(&devfreq->lock);
> -		return -EINVAL;
> -	}
> +	if (!devfreq->scaling_max_freq)
> +		goto out;
> +
> +	err = update_devfreq(devfreq);
>  
> -	ret = update_devfreq(devfreq);
> +out:
>  	mutex_unlock(&devfreq->lock);
> +	if (err)
> +		dev_err(devfreq->dev.parent,
> +			"failed to update frequency from OPP notifier (%d)\n",
> +			err);

In case an OPP freq can't be found the log doesn't provide clues
about what the problem could be. I couldn't find a clearly superior
errno value though, so I guess this is as good as it gets, unless
you want to have a dedicated message for those errors. Should be a
rare exception anyway, and previously there was no log at all.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
