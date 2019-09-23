Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A3EBBF00
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 01:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iPlSx4ByHG06XZ53V1idkP86aHkdhbK2Ae4YIkkoOg=; b=UeTDQ1UJIz/KJ/
	QxI/vDSt8ZiCYmRCBAeeIMhedoEZ2scUfpXs3BE6+Otm/Nlzj9Dywdn/SSM5cJLnzQJM83Ks83R6G
	rT0MOjfGeXGbv6ehptNjuuweoqLwM8UjlYlbEPWSZ1A1S+v6TE8s00/l5xyL/yCpW/5/jSMtYHQmC
	gA6aZY5++FSOhu2gRDGNkx2MHreMW8aQzSZtSyorK7eijeEw3U2wvYdM6IUArWXjg8F42toVjenu1
	7CbcpiDfbraLZ9/PNUGyDGGkkF0XFnxuCfcRd1qx9edg+jUqFyZrKPuNx03JpAF2x7Sf6J73CDCMG
	TPmLu1hS8BsSmd/pFg4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCXr2-0006N1-0E; Mon, 23 Sep 2019 23:34:52 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCXqv-0006MX-2B
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 23:34:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id x127so10212608pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 16:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+G+rLbb52zBJRE1VmJ1LVcR80nuQp+i3zNouEcUswdc=;
 b=df4LL5mrvZVwXHwgH+E0fOsXZkcJ99sGcAGKxkIIICMrS7i5Za1cgdqlPDbVDJw4zi
 695p14YH+TBHD0dxdTGXFaTM/JlJgypNzf5PsNL3bRrBw+k7+pKDyn168LFMlQHJfobI
 HfrhDq+0tUQQnZ8d7bD+hvZCzaRZEnbGg6jXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+G+rLbb52zBJRE1VmJ1LVcR80nuQp+i3zNouEcUswdc=;
 b=F8ppp0TNe08K6ihYK0/q8NiaEO6JJFNHyNNI3VIqmYR23qGo8OvsW2hLLCQadcUdFP
 e6jwvEptIs4X1SZjhOPc0gG+w39DphF/TJIYYCwWnox7BmNJ4QkXhnxXhPt508wQ8PDL
 AO9kQLJyGGwQUNqy2i7v20xWwOqNDVSDLflNp5iUBuG1nfmRG3j61/M5kPIPNaUmcc//
 HL+eUyMlRSowFh0yY56wDXAC0lfQ6boWKcrbb3TnHpMYl3dAQZXgoSdu0LbM8/HPY0gY
 Le9tplzag5ghuikxiwgSB0Uzhzfitwgcclz5EJA0FDEyt5nO+yAouRWmZCoB2yUMx5A5
 YPjA==
X-Gm-Message-State: APjAAAUGBbrsJ7HCD+JShyRDFJB4TQrXh7u0FBBIK02MLqtJeCtPBI1B
 VhIzWR9XfM844ZQzNmy08WIrxg==
X-Google-Smtp-Source: APXvYqyJSn6aVOVdD1pVZnNSaY8DCStdL4Q5Ln5mJRy/cBS5iGdwfErV8aaYQJMqIH1Idb2/DbmJ3A==
X-Received: by 2002:a63:4042:: with SMTP id n63mr47731pga.75.1569281681253;
 Mon, 23 Sep 2019 16:34:41 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id r186sm17531424pfr.40.2019.09.23.16.34.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 16:34:40 -0700 (PDT)
Date: Mon, 23 Sep 2019 16:34:38 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] PM / devfreq: Lock devfreq in trans_stat_show
Message-ID: <20190923233438.GH133864@google.com>
References: <714675448e7fbf3c930b0dca6fbe54fa5f87211b.1569256001.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <714675448e7fbf3c930b0dca6fbe54fa5f87211b.1569256001.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_163445_131680_68586842 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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

nit: the comment doesn't add much value, I'd suggest to remove it.

Forgot to comment on this earlier. My Reviewed-by tag still stands, up
to you if you want to re-spin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
