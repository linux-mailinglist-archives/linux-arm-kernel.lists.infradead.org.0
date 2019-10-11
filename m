Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCA9D479C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6J6oyyv/ErdHKJWzgCODBSy2Zi73SBY5JURziHsZMq0=; b=KtWyURSMwI56Y4
	lyLOgVmTzQlSbvF0x6lIGBtEEX6qgQV7pp8/a2XL2cj3wG1fmC19kYNn40Oq/gVHM8qhbR2iBWhSw
	5O/Z6u4H7W8pYDinWaM3ojbDB2nKE7aI5Oh4wbhck+c6z492lEWzw/oe1syLb9WNKOJrIdAtKWmHo
	sScaGol8gVKYaYHyyz4mnkyIP/h8pyA2BG/6gWvK/iPvtlcZwCKkkSH8MJk+g90eSQ2aNvvoPH+oU
	Ff8/Oj7dWzRRP75nyAvD9E624VTeN3orhqQxut2g1XFG901hK1CZ4AXiHDO1SpRKNTKnnPliuOWjp
	N2fJNX1DJ4oCSSu39BYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzfE-000381-CJ; Fri, 11 Oct 2019 18:29:20 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzf5-00037H-9D
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 18:29:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id b8so6233902pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 11:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=O5o9Mqr/OVet2gVtrM7VOhNOSa7DEH704LnRNkVU6nE=;
 b=h/cAEAJIJooyWocHgl1PJ2HCJ2xWmJqjl4Yy+lENN0kaTpygwmM6fAkXo9ZkNJFHXl
 WO18mghMidJCCyeelOrzgsZ5ofWXt/t83vZn8t5tq7pCVQcn5ib6ZQ7c5pomT0rMdoWy
 KuICDhGFSKLrQvKAIMvH3XONwlCL6svgIe5Z4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=O5o9Mqr/OVet2gVtrM7VOhNOSa7DEH704LnRNkVU6nE=;
 b=Ceco2p9w2wpJRVJbPCwbv5Uvfvt1cY3s9tQzTQWbYu+h7byK0VQfkrff4vV4JdAY1Y
 QDSWUm+zD3sYotV56vbE8AIQMYflvs18hjR5qlNR9bLakTRCwL880PLI8WDXtwvba+yP
 1C3oBB1OXtMSL6brf9URMKOdpf1f8wpOiEtnaQGwpvcMZZreWk8Ersvl/o3uxB0DSc+c
 3S9UvvagIsqaAlpK5m8yIYcT1ixuo2dOQX1ysCaIHPPMejYtrfwAVKoLqYQoyouzg25k
 ZI3ATYHT2J2fplYp2fdCMM6x7CZKKn9OBV1hDYt7D0Z1bK7Vd09z2IzzuVvQtoGSR+03
 M7Rw==
X-Gm-Message-State: APjAAAX1byyRx+FAtV++dn8b3qGppwROQIn9j8H3+3Y6NW5MV3cYQ9DR
 kCxd1Q89XNpukLBT+u5sQITAww==
X-Google-Smtp-Source: APXvYqwk/t3m0uPwdqj+hc3584RGzLLVJTHZ26WbVC2pBTiJOqUqvSRJZAlb+E/la920VhqnV19zIA==
X-Received: by 2002:a62:2643:: with SMTP id m64mr5762842pfm.232.1570818550460; 
 Fri, 11 Oct 2019 11:29:10 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id q204sm12835066pfc.11.2019.10.11.11.29.09
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Oct 2019 11:29:09 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:29:07 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v9 6/8] PM / devfreq: Introduce get_freq_range helper
Message-ID: <20191011182907.GN87296@google.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <c453bb60a74b41a5192e270f286dfc81c1088449.1570044052.git.leonard.crestez@nxp.com>
 <20191003181938.GJ87296@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003181938.GJ87296@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_112911_345494_1DE550FB 
X-CRM114-Status: GOOD (  20.48  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-pm@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 11:19:38AM -0700, Matthias Kaehlcke wrote:
> On Wed, Oct 02, 2019 at 10:25:09PM +0300, Leonard Crestez wrote:
> > Moving handling of min/max freq to a single function and call it from
> > update_devfreq and for printing min/max freq values in sysfs.
> > 
> > This changes the behavior of out-of-range min_freq/max_freq: clamping
> > is now done at evaluation time. This means that if an out-of-range
> > constraint is imposed by sysfs and it later becomes valid then it will
> > be enforced.
> > 
> > Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >  drivers/devfreq/devfreq.c | 110 +++++++++++++++++++++-----------------
> >  1 file changed, 62 insertions(+), 48 deletions(-)
> > 
> > diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> > index 87eff789ce24..2d63692903ff 100644
> > --- a/drivers/devfreq/devfreq.c
> > +++ b/drivers/devfreq/devfreq.c
> >
> > ...
> >
> >  static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
> >  			     char *buf)
> >  {
> >  	struct devfreq *df = to_devfreq(dev);
> > +	unsigned long min_freq, max_freq;
> >  
> > -	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
> > +	mutex_lock(&df->lock);
> > +	get_freq_range(df, &min_freq, &max_freq);
> 
> With this min/max_freq shown aren't necessarily those set through sysfs,
> but the aggregated PM QoS values (plus OPP constraints).
> 
> I did some testing with a WIP patch that converts devfreq_cooling.c to
> PM QoS. When reading sysfs min/max values to double check the limits
> set earlier I found it utterly confusing to see the sysfs min/max values
> fluctuating due to thermal throttling, and not being able to see the
> configured values.
> 
> Looks like cpufreq does the same, but I'm not convinced this is a good
> idea. I think we want to display the values set by userspace, as done
> before managing the limits through PM QoS. Viresh, was this change of
> userspace visible behavior done intentionally for cpufreq?

ping

Viresh / devfreq maintainers:

Do we really want to expose through sysfs the potentially constantly
changing aggregate min/max values, instead of those set by userspace?
At least for cpufreq that's a divergence from previous behavior, and
from a userspace perspective it seems odd that you can't reliably read
back the limit set by userspace.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
