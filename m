Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 605CBCAF52
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 21:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gk5X2o3J0Bb4BOpWwFY2smng99FOaCz1CQCpuTJNKdA=; b=IVkbHaYPKBAbQK
	+4/7WzY0D6ECKJPqAKtZTUONpBkpDQ3sO+3B9v7Dm+7M4/6uOqigYB813Gp1lylYAWPFHTYtIq+4k
	CJMJcA7OtKN4pCzLOWC1iI6kpz7etxcV2QkYtS5QOoJ34/EBxuPr4QVJ0im6prko96xuXwCPKtaiA
	9oQMW0PEY+6fCqLuLkBuH2UdyEk9thBHb5Nw/KPBNN6iVnhrrVXgJO+NGqg5X0u6mtEStpYFyRnxl
	X6tpNY6yPqycxt1WCRyJGcvFWIBNkL20qtH75uz4GlTmKdw4gyyHxZdKrHpZPzihnvl5SUXjDJnEX
	TT1qTIccc7XOT20+Winw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG6u3-0000yp-Ai; Thu, 03 Oct 2019 19:36:43 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG6tv-0000yH-V2
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 19:36:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id 23so2366178pgk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 12:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZvvRP7gkLP5an2LWz9E1ke0Xw4siIdz4im6LiZr9lFg=;
 b=HiJl3vpesZuqwM+SmijuoPnUumZoAv3sCg/C/WP/jkGClXCnM2cBWZovl6RscYdUa8
 5+jMD7PJzdUhWqSgiRtfvuhfbzAn4ClW7xdLx0aP8J0b6h4Dz4vZ04jDjS9ZkxPoadgT
 T19rufMDohikjY2k/JmG11wzjEX84oHmwq18E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZvvRP7gkLP5an2LWz9E1ke0Xw4siIdz4im6LiZr9lFg=;
 b=plTL9gSDrsXvD0mgmn05G1BIxi/w+S+oH6GuhCYiDbsaRUIlSO5H4U7rdUs4HYllhW
 o0IWZWE1OZ3m+FMTIg0ZlGRJO1JHdsQPQWzxw7WrejSInCfm/+/4G6UHln72mo70gCsZ
 jc0kLcLP8gmREPfLDpuj8u8vlcqQMQ5dH29Z6oTn9gomL2QJHZekkHq+a9Z54yaQZBBL
 tTTE3p6/BDJakIfPc33q+AI+ORXLR2CHk0ejJThPmWDYcyXODBsiCU2MQFTcFMnD71HY
 TmhH/nlf0a+SnF5X5YVslcVn2UyRQaQWRsF1MIReXtOQzut8bMfx8vhJJotVB6K3E1o1
 I9tA==
X-Gm-Message-State: APjAAAX6R8mEi11JMz8iMX6ngQvmc+tWpA23/uxh3gSMli6aMoZDX7F3
 Bzt9w+5YQtDiNkqhsn1yNNOaNA==
X-Google-Smtp-Source: APXvYqwjpD8GhUhY20mwLWg8zPZOimPm45NzgOBknYjkymmY6DFCgmmBy/IPHPcV1VlbUvoQTZKccg==
X-Received: by 2002:a17:90a:2481:: with SMTP id
 i1mr12562859pje.77.1570131395126; 
 Thu, 03 Oct 2019 12:36:35 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id l189sm3730845pgd.46.2019.10.03.12.36.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 12:36:34 -0700 (PDT)
Date: Thu, 3 Oct 2019 12:36:32 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH v9 6/8] PM / devfreq: Introduce get_freq_range helper
Message-ID: <20191003193632.GK87296@google.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <c453bb60a74b41a5192e270f286dfc81c1088449.1570044052.git.leonard.crestez@nxp.com>
 <20191003181938.GJ87296@google.com>
 <VI1PR04MB7023F76F9C7BA20CE54058BEEE9F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VI1PR04MB7023F76F9C7BA20CE54058BEEE9F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_123636_024147_5DFC1951 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, dl-linux-imx <linux-imx@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
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

On Thu, Oct 03, 2019 at 07:16:03PM +0000, Leonard Crestez wrote:
> On 03.10.2019 21:19, Matthias Kaehlcke wrote:
> > On Wed, Oct 02, 2019 at 10:25:09PM +0300, Leonard Crestez wrote:
> >> Moving handling of min/max freq to a single function and call it from
> >> update_devfreq and for printing min/max freq values in sysfs.
> >>
> >> This changes the behavior of out-of-range min_freq/max_freq: clamping
> >> is now done at evaluation time. This means that if an out-of-range
> >> constraint is imposed by sysfs and it later becomes valid then it will
> >> be enforced.
> >>
> >> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> >> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> >> ---
> >>   drivers/devfreq/devfreq.c | 110 +++++++++++++++++++++-----------------
> >>   1 file changed, 62 insertions(+), 48 deletions(-)
> >>
> >> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> >> index 87eff789ce24..2d63692903ff 100644
> >> --- a/drivers/devfreq/devfreq.c
> >> +++ b/drivers/devfreq/devfreq.c
> >>
> >> ...
> >>
> >>   static ssize_t min_freq_show(struct device *dev, struct device_attribute *attr,
> >>   			     char *buf)
> >>   {
> >>   	struct devfreq *df = to_devfreq(dev);
> >> +	unsigned long min_freq, max_freq;
> >>   
> >> -	return sprintf(buf, "%lu\n", max(df->scaling_min_freq, df->min_freq));
> >> +	mutex_lock(&df->lock);
> >> +	get_freq_range(df, &min_freq, &max_freq);
> > 
> > With this min/max_freq shown aren't necessarily those set through sysfs,
> > but the aggregated PM QoS values (plus OPP constraints).
> > 
> > I did some testing with a WIP patch that converts devfreq_cooling.c to
> > PM QoS. When reading sysfs min/max values to double check the limits
> > set earlier I found it utterly confusing to see the sysfs min/max values
> > fluctuating due to thermal throttling, and not being able to see the
> > configured values.
> 
> Isn't current devfreq_cooling based on OPP disabling which modifies 
> scaling_max_freq? This is not a behavior change: reading back always 
> showed the "effective maximum" rather than the value explicitly written 
> to max_freq.

I stand corrected, for devfreq indeed this isn't a behavioral change, and
looking at the diff would have told me. I just expected it to do the
reasonable thing and what cpufreq did in the past.

> This behavior is indeed confusing but can be fixed by adding two new 
> files: user_min/max_freq and user_max_freq. These would act like current 
> min/max_freq on write but on read would only show the value explicitly 
> configured by the user.

It seems the reasonable thing to do, though it's not great to alter
userspace visible behavior :( I doubt though that userspace would really
depend on it, since any min/max value read might change inmediately
afterwards. If there's really value in exposing the aggregate limits it
would probably make sense to do this through separate attributes. Let's
see what devfreq maintainers think.

In any case the patch should be fine as is, since it doesn't introduce the
(IMO) odd behavior.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
