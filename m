Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D64130DBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 07:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnoZjZtLEPE7i34+fdtse5MbUhSS/ZOgidQ9APrpMnM=; b=V0NgBqStJ0uOWF
	R2dbpdM4Pl6DsqLrgdga2SOpaOaDhaONOR7Cwhlp8iETMpdLsBccl9aiMakkMnwsA5w5bhaLE9NXx
	3t+S9HqMJ/ZxWuLIQSEqhItbdmpTRd435EWXy26KMlMFyy7qayoUyycySvIAByPmAaGvkJQG8FB7+
	EaBwJmuKCdRxIhfA9A6u5aiciySesIR5mkWpnHaTGhiP13UGGljd2EkF9if8ESxW4FVz5cmRovw08
	xn7hgMSqinsiAyz0wsbADkNrG4obJCdznAjI641b858BQu03hGKy1cuanRHrnEMvnD7Q4/G5hZTor
	EU1ixwXES9wiv7ZJ52mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioMIE-0006LM-Bo; Mon, 06 Jan 2020 06:55:14 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioMI6-0005sQ-4h
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 06:55:07 +0000
Received: by mail-pg1-x541.google.com with SMTP id q127so26440339pga.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 22:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kMjWw4ObQXa5tU7/4BC/Kf0fTl6f93HTAnRhQj6fbYQ=;
 b=rbiZz4bfFgf1jTPa3LFYJTALJqVunQJkyqIBz6qTTRJ6IXYmBRVMVnbtv89C27cCMK
 GbnyT86UTVdO5nGt2TPC3Yd7V5jLEErJRNJKZa9DG/UBSMW3BqhhyY78sxr0Mogby9cO
 EMZ2mEw5bnYmr8GbTYEPl5KDiQOfgOBdoLrsZOrDrM4rIpIRlxcDX1uLdxRCId7WIQle
 UGdj1rzTvzVdEwVSNUy8QcUmnfLjoBUZ0q5fo4bfYF/JhyVJR8Qi37DnKQCifiytQ7gI
 L7L1jnfWUoEIkd1cmkhZM1QLeVS7IWAcn218pivk4ZSk4LyFAefJe1aMUFfiGWRtlXOr
 1ebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kMjWw4ObQXa5tU7/4BC/Kf0fTl6f93HTAnRhQj6fbYQ=;
 b=cNNBPBSSQGAKoTj3ShRUYvASz7+de0oUFHTtmooyeybjC0ly3FtNfRQMqJ5Laa7CwI
 irMdrFawf7NA9ya/cjENkyR19j5B1wSFXCLjk+1WOdCXZ3EUqIMrrthQySVqeRhj5KCQ
 hPBfA1BUN0JB1pJcKN2kYPvTUptWbOGEYSr6FOZhjBGoXIEPx0cG6CTTZnnWXfi+k+cs
 Gg4HI5EcwkepyVMhzxkPpKSxvfNaD7acpXS53EX6gbWjzpsvxYil0QKEFQfeKVO9eWos
 xGJ61SUgoCIxGqnn41rMxEiw+4qYsoI9R0DxbL4H/xn6ZLVNNUc+y2HjV1IS35YnVjt1
 Y3bA==
X-Gm-Message-State: APjAAAV5sBe5vlVA1lRO9dN806lbq+QztePcluCqjNXimnzh0GU+nl/1
 nnIqW+i+SabdiGyNwCW8CPcHEw==
X-Google-Smtp-Source: APXvYqzDrb4T5b5fxDDS/CxIRlUlD59ItmCXmCwsdQJKzsrikz4XhCQmY7mMb4+ZrEIymAreV3RhQA==
X-Received: by 2002:a65:56c9:: with SMTP id w9mr105330256pgs.296.1578293705329; 
 Sun, 05 Jan 2020 22:55:05 -0800 (PST)
Received: from localhost ([122.172.26.121])
 by smtp.gmail.com with ESMTPSA id l8sm22852583pjy.24.2020.01.05.22.55.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 Jan 2020 22:55:04 -0800 (PST)
Date: Mon, 6 Jan 2020 12:25:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: chenqiwu <qiwuchen55@gmail.com>
Subject: Re: [PATCH] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Message-ID: <20200106065502.bimpddvrvmfm2f5f@vireshk-i7>
References: <1577515439-14477-1-git-send-email-qiwuchen55@gmail.com>
 <20200106054811.uduf2qdn5ecvbwrc@vireshk-i7>
 <20200106065249.GA16392@cqw-OptiPlex-7050>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106065249.GA16392@cqw-OptiPlex-7050>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_225506_236547_1DB826C9 
X-CRM114-Status: GOOD (  25.93  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, krzk@kernel.org, kgene@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 06-01-20, 14:52, chenqiwu wrote:
> On Mon, Jan 06, 2020 at 11:18:11AM +0530, Viresh Kumar wrote:
> > On 28-12-19, 14:43, qiwuchen55@gmail.com wrote:
> > > From: chenqiwu <chenqiwu@xiaomi.com>
> > > 
> > > There is a potential UAF issue in xxx_cpufreq_reboot_notifier_evt() that
> > > the cpufreq policy of cpu0 has been released before using it. So we should
> > > make a judgement to avoid it.
> > 
> > There is no UAF problem here, but that we do cpufreq_cpu_get() with a
> > corresponding cpufreq_cpu_put().
> > 
> > > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > > ---
> > >  drivers/cpufreq/s3c2416-cpufreq.c | 11 ++++++++++-
> > >  drivers/cpufreq/s5pv210-cpufreq.c | 10 +++++++++-
> > >  2 files changed, 19 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
> > > index 1069103..0f576ba 100644
> > > --- a/drivers/cpufreq/s3c2416-cpufreq.c
> > > +++ b/drivers/cpufreq/s3c2416-cpufreq.c
> > > @@ -304,6 +304,7 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
> > >  {
> > >  	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
> > >  	int ret;
> > > +	struct cpufreq_policy policy;
> > >  
> > >  	mutex_lock(&cpufreq_lock);
> > >  
> > > @@ -318,7 +319,15 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
> > >  	 */
> > >  	if (s3c_freq->is_dvs) {
> > >  		pr_debug("cpufreq: leave dvs on reboot\n");
> > > -		ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
> > > +
> > > +		memset(&policy, 0, sizeof(policy));
> > > +		ret = cpufreq_get_policy(&policy, 0);
> > > +		if (ret < 0) {
> > > +			pr_debug("cpufreq: get no policy for cpu0\n");
> > > +			return NOTIFY_BAD;
> > > +		}
> > > +
> > 
> > This doesn't make sense to me, why don't you do cpufreq_cpu_get() and
> > put() instead ?
> >
> Hi viresh,
> I can't explain which approach is better, but I think both approaches are
> effective for the situation.

The second one is better as it doesn't make copy of the policy, but
rather just increments the counter.

> By the way, there is a possibility that the cpu0 hotplug thread will call
> cpufreq_policy_free() to free cpufreq policy if cpu0 hotplug failed.
> I think there should be a judgement to avoid this UAF risk if necessary,
> or we just do panic if cpu0's cpufreq policy is free.

I think there are enough locks in place to avoid such issues and they
shouldn't happen.

> > > +		ret = cpufreq_driver_target(&policy, FREQ_SLEEP, 0);
> > >  		if (ret < 0)
> > >  			return NOTIFY_BAD;
> > >  	}
> > > diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
> > > index 5d10030..d99b4b1 100644
> > > --- a/drivers/cpufreq/s5pv210-cpufreq.c
> > > +++ b/drivers/cpufreq/s5pv210-cpufreq.c
> > > @@ -555,8 +555,16 @@ static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
> > >  						 unsigned long event, void *ptr)
> > >  {
> > >  	int ret;
> > > +	struct cpufreq_policy *policy;
> > >  
> > > -	ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
> > > +	policy = cpufreq_cpu_get(0);
> > > +	if (!policy) {
> > > +		pr_debug("cpufreq: get no policy for cpu0\n");
> > > +		return NOTIFY_BAD;
> > > +	}
> > > +
> > > +	ret = cpufreq_driver_target(policy, SLEEP_FREQ, 0);
> > > +	cpufreq_cpu_put(policy);
> > 
> > Like what is done here.
> > 
> > Also add a blank line here.
> > 
> > >  	if (ret < 0)
> > >  		return NOTIFY_BAD;
> > >  
> > > -- 
> > > 1.9.1
> > 
> > -- 
> > viresh
> 
> Thanks for your review!
> Qiwu

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
