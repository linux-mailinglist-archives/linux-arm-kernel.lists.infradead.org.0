Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E5CCAE09
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 20:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imSAJgKU2WHLpD/AUPKD8AhngwwZ5WbPoMxp5tBMytE=; b=ZXYCv5I92Olzcw
	ldJW/fdkz9/lF2hjMvHDkJ7g2nh66tDDUEiiWUwkO8Mvn9Oi2ncOu4bHW5/gWUOlWeuLmPBGut+sS
	pz4L8oha3CCt9InC6wO/9ZUbUVeh8omnK5h1imniIkVbzcOdRdsH7ILM/fdE9ulHllYtSIddX8Lht
	Z4n+BsgTX/mWFtBT3GYg73irCUgFVTZQCzenPFN4sw94nTLQeX51VUd6R3su5yfLjyWtzkSC3EAIs
	1mKs6RZUtf434kbDYqgDQi2czNlLHRTvNXNXGMEFtCgl7mhSOM+/dDPqXdoOJPerLx7OisLlupyNR
	3i+h6K8KHARXnAKRNcBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG5hc-0005cr-E5; Thu, 03 Oct 2019 18:19:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG5hV-0005cM-Ni
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 18:19:43 +0000
Received: by mail-pg1-x541.google.com with SMTP id p1so473401pgi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 11:19:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V3zfpA6pohOCQvyvizEapVU0+r/7JkIaALQBuXL6dpc=;
 b=RYYfr/9/HTri5GnuFK4sU0LwnzxScseFLrCQRKdo8R8x6zLw+7WbCPHGjzFa3JdRYl
 icU7yPc1Jhv7lKLLzrclUV0/jLKR4YF4nfpJ8RwAjFenmzu2M5fXNAmjFIAjaZawuBUc
 z3CkbEhB2CJkLZXBXbQ0MjGvQ21yczR1w6aRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V3zfpA6pohOCQvyvizEapVU0+r/7JkIaALQBuXL6dpc=;
 b=qdeWQ8VkB7f5u3hVIQ++jPz2oKT6VMk2fzRKYetNnNiA2nKniIbQHezSwHPftcEiUI
 8gqwmmRKaqHiBrYu7vB4KQexzUvw6JNME+5gORAVxQsxQD66lFc3XplnIY5yfoPdj2RM
 exjcx2fBBodScLEQiBCBMMyziEJ5HJGt+AeRZq8Kdg6qkTiwJ3ZIJ9upkAIPoLeykA5z
 udwiNET9dL2+GXJY7HUy2x8ZkbpyOzDSavEktbhiWNS2WUGva9b+4XVclKeLbTch1Iby
 S3/40hMFddHF7uAfnGWT2++x9LPtI9j53mK7iUmheIoozAm+6LIhB2s2sJuZYCOmGy7z
 8wtg==
X-Gm-Message-State: APjAAAVAZIuUongJVa6fJlVpWVUIhiybefA9biiwYz1tbLqJofAsSwiB
 q35B/WwXeKyl3jB+/pbZbpMc2A==
X-Google-Smtp-Source: APXvYqxAEXRIRhtV+Dp3adyBB3Odhiyb27dhM9grTiYboHDrD+loFme6hzU61w45+soIrPB+w9SPcw==
X-Received: by 2002:a62:5e42:: with SMTP id s63mr12421616pfb.96.1570126781009; 
 Thu, 03 Oct 2019 11:19:41 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id p189sm2794942pga.2.2019.10.03.11.19.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 11:19:40 -0700 (PDT)
Date: Thu, 3 Oct 2019 11:19:38 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v9 6/8] PM / devfreq: Introduce get_freq_range helper
Message-ID: <20191003181938.GJ87296@google.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <c453bb60a74b41a5192e270f286dfc81c1088449.1570044052.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c453bb60a74b41a5192e270f286dfc81c1088449.1570044052.git.leonard.crestez@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_111941_799088_D660210F 
X-CRM114-Status: GOOD (  17.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Oct 02, 2019 at 10:25:09PM +0300, Leonard Crestez wrote:
> Moving handling of min/max freq to a single function and call it from
> update_devfreq and for printing min/max freq values in sysfs.
> 
> This changes the behavior of out-of-range min_freq/max_freq: clamping
> is now done at evaluation time. This means that if an out-of-range
> constraint is imposed by sysfs and it later becomes valid then it will
> be enforced.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>  drivers/devfreq/devfreq.c | 110 +++++++++++++++++++++-----------------
>  1 file changed, 62 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index 87eff789ce24..2d63692903ff 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
>
> ...
>
>  static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
>  			     char *buf)
>  {
>  	struct devfreq *df = to_devfreq(dev);
> +	unsigned long min_freq, max_freq;
>  
> -	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
> +	mutex_lock(&df->lock);
> +	get_freq_range(df, &min_freq, &max_freq);

With this min/max_freq shown aren't necessarily those set through sysfs,
but the aggregated PM QoS values (plus OPP constraints).

I did some testing with a WIP patch that converts devfreq_cooling.c to
PM QoS. When reading sysfs min/max values to double check the limits
set earlier I found it utterly confusing to see the sysfs min/max values
fluctuating due to thermal throttling, and not being able to see the
configured values.

Looks like cpufreq does the same, but I'm not convinced this is a good
idea. I think we want to display the values set by userspace, as done
before managing the limits through PM QoS. Viresh, was this change of
userspace visible behavior done intentionally for cpufreq?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
