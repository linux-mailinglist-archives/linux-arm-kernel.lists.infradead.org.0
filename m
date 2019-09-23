Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D65BBB8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 20:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBjQ/hGA7FN7KehqRU8KT7YNHk8ktm+0D0iWvWVXW1k=; b=pF7t9taB18pCVe
	i9C08cwWKSfZsJC9XivUncWOG+BBTzK+QWTkjNv9AtWUUNIcmAOXe04M1hK1JX58iy2tNhJoBCRr0
	bPJXz3zmwxKKDj3V2Gn6hz9F1uDB1QnQsMcX3PaO7IFE/cDVerIyJN4krfXCg3CgVtSZ4k4h82Zsi
	hMfLlX+Ms64klhcsn3WmGSAh35SmcfI+/yTm3jMVxAujcvwF1wuNfRZKCBKklOqVA+TE8O1aR+MZJ
	JEEUPmM8hF1b4UYV91kAZw9MFOxVDqHebIM09DbRfu41BSACepHchQVF/cHk6aKjJI0RwiAcZdr5N
	2kGNm7Sf7qcERRiXIlhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCT5B-0002Vy-Ne; Mon, 23 Sep 2019 18:29:09 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCT4v-0002VW-8E
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 18:28:54 +0000
Received: by mail-pg1-x544.google.com with SMTP id z12so8444700pgp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 11:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=osrTSn6KjMgzsQs20d8e8jW1Eld7CeaYVglhaLiaLFM=;
 b=Yh7pE8es+GVW4C8JR7aOYXG2O0qKNB6DC0vm4QpDXsa1xVGouuF8HLw6sJIaI1fdC5
 kN2rydapFx5DlHkCLwyPiPEaXhLX8PW4fM4+aMPvuP7hRrS3NjmJvVsAmN6cGSmMe2sC
 CaoJDzr+VPWJrywZdIYc5zH3+xiRqRadGHncE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=osrTSn6KjMgzsQs20d8e8jW1Eld7CeaYVglhaLiaLFM=;
 b=nBH05f19PgPjMY/R+5wvAUDSh737pQqTictB2yeEWCHrM+onQLd6fEauipudMoYwDL
 +zOLFqzG1Q8faedAaqW/wEGBMe5ywuRsYYARxLsZCnGTac9Rx3upEeSFjzvuEMPSBDnf
 QhkT5oHKGpwSwaH8cGp7Jd//HOO9nVpWWp/e2uSc/s85t+G/2m2MUA6sM6wd1t3I+pb+
 7hvWUGg/KSr6tG+t3eEO0SQWTd+awXKwd9FD8yXeh65tMKRuhZVlh6qP4C21XV9y/ZJO
 o8Jbfs93WWe74uex6dnU1sVHvzrzLgYPkwOW0pKrKaRlHpSfp6uUt1+6gRteVz+erzZr
 P8ew==
X-Gm-Message-State: APjAAAWb+Hbb6WZth1ChRLaYu1STkDueKP+qbai4hNV1WwKE6KpHo4ZI
 baCbqc9KpMb9HO9/JhKMcrxU4Q==
X-Google-Smtp-Source: APXvYqxnWvwnP8W6mGj9+JL5YprZG5pP/WpUUgP7zfCNFpJEkySyt5F6Iu1FF86JYwkPO2XQ0Q9GHw==
X-Received: by 2002:a17:90a:8087:: with SMTP id c7mr941118pjn.56.1569263332455; 
 Mon, 23 Sep 2019 11:28:52 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id w11sm19047961pfd.116.2019.09.23.11.28.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Sep 2019 11:28:51 -0700 (PDT)
Date: Mon, 23 Sep 2019 11:28:49 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v6 5/6] PM / devfreq: Add PM QoS support
Message-ID: <20190923182849.GA133864@google.com>
References: <cover.1569252537.git.leonard.crestez@nxp.com>
 <55807c847f072690f3ec904168023484767dc603.1569252537.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55807c847f072690f3ec904168023484767dc603.1569252537.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_112853_319430_19249068 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Please see my comments on v5: https://patchwork.kernel.org/patch/11149485/

an additional nit inline

On Mon, Sep 23, 2019 at 06:51:08PM +0300, Leonard Crestez wrote:
> Register notifiers with the PM QoS framework in order to respond to
> requests for DEV_PM_QOS_MIN_FREQUENCY and DEV_PM_QOS_MAX_FREQUENCY.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/devfreq/devfreq.c | 71 +++++++++++++++++++++++++++++++++++++++
>  include/linux/devfreq.h   |  5 +++
>  2 files changed, 76 insertions(+)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index b6acb827fee5..a4c7dde17a06 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -22,17 +22,20 @@
>  #include <linux/platform_device.h>
>  #include <linux/list.h>
>  #include <linux/printk.h>
>  #include <linux/hrtimer.h>
>  #include <linux/of.h>
> +#include <linux/pm_qos.h>
>  #include "governor.h"
>  
>  #define HZ_PER_KHZ 1000
>  
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/devfreq.h>
>  
> +#define HZ_PER_KHZ	1000
> +
>  static struct class *devfreq_class;
>  
>  /*
>   * devfreq core provides delayed work based load monitoring helper
>   * functions. Governors can use these or can implement their own
> @@ -123,10 +126,16 @@ static void devfreq_get_freq_range(struct devfreq *devfreq,
>  	} else {
>  		*min_freq = freq_table[devfreq->profile->max_state - 1];
>  		*max_freq = freq_table[0];
>  	}
>  
> +	/* constraints from PM QoS: */

nit: remove colon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
