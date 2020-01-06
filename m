Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FAE130EAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 09:30:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDykq6sn4QDBTmtIC4MmwsHR51WCwIw873lPSYbB/0A=; b=qUFxprFMa3xvT5
	GcuFqGjCK0jM6/KTQAf78NpVZqohpfjRswlZCm1gHjp2806CZyHAfJImUzCIw/ISTzkMnu9t8IscP
	9V/QZ+unt0C4YzwEs08eBLXLDfK+/u+HBkpLMKJ5HGgySwuvPtNgEHs3CZbza+plD5KnOX5I0zg1M
	gM2rubBzscK/0osAwFdjTd+uef1iDwFDg1WCSdA+sIo9V5mQdIavtm9saXGlXPHKrSyhbTH36TKW2
	hG/LiSSnB/dayk2ca6+LHZd/cUyGvgvxUDMO93Ir/dssZPwDQVQaBbsa30FaK+x/6kZqIjT0jnk0R
	oRCreQ5D0bhRGH6dZY0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioNmN-0006HO-QB; Mon, 06 Jan 2020 08:30:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioNmH-0006H1-R0
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 08:30:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id n9so18767764pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 00:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0ZMM8rPl/5wZ+794bf91e79SwCRRg7n7qPgWsUoe+gM=;
 b=Sgcl4NhaAj1CK3LylgkLWA5PkEVN4KmwayIz86BKDL3HpnwmsE7ZdsZQLmGIr/LHaP
 MCf43shQ40RYRiqHrcjF4s4Sjv4V52jlagbE+7NQDqWVNxt8QrKIATtLXV3m1N692uer
 FAalMZnharEcHUaPckaOYC5IBrfAHSFEAKHGNGwzr6PfFP2/vtdegYYJnljUcjmrRU6B
 UljkB03EUB2YpypJOliMSDhlMxwj9RpC7XZD8ySD0zCu6Xlplsd4h9kfnxhmucBRKknS
 YBgpCCTpSEhde3cm3196FTjHgNcVcOtiBzARBJAzl+kO+VK61fFO40XR1fniJiVSFE6Y
 F7Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0ZMM8rPl/5wZ+794bf91e79SwCRRg7n7qPgWsUoe+gM=;
 b=LVCqoJRGdUdRfV22x/mPrYdzzm4D2XJ7QesFwwLr1L9V1HljQIWkdnfqU25hVs3mVS
 Xu3Ww3ang6R1vGX6M28Hnsbh5wqIo99d9MiUdfN0Jei91KTyVdJBs6waG5CJcm6ug0qP
 Qg5sEfDwIb3PxgviitxQ7KHonQjynOS/5Ffs6nPWl3uU6d8OkkhobsWBF1+uWXR/8YrP
 AbSXbYnkfUEgnPuw4q4NW4CmlJqldKWzxn6GbtCe4lfWqhYrpoL/5iojluB2DlnDEJz2
 BYcGbLLUyeicAhYhTj9sCCmMSQa9NGfrv6al2/Q7jtZS2/U7fcA1BomflB0u9OXqIXmP
 76Pg==
X-Gm-Message-State: APjAAAUnjBO+WAMtg3tBzhUJmsJup8Dv0ZoNk/gJZi/ZYWfDaqCs5x+R
 8uzKqOsiUb+LV3TpHOA9Jfo=
X-Google-Smtp-Source: APXvYqwMUd/x/Ld704TOMMgRs2SgTrv1gvTim77h9jeOE9N9fYpCUm8Cr3j9b5QihHwarQm2+/y+oQ==
X-Received: by 2002:aa7:82d5:: with SMTP id
 f21mr110243047pfn.245.1578299421170; 
 Mon, 06 Jan 2020 00:30:21 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id b193sm69181638pfb.57.2020.01.06.00.30.20
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Mon, 06 Jan 2020 00:30:20 -0800 (PST)
Date: Mon, 6 Jan 2020 16:30:18 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Message-ID: <20200106083018.GA19697@cqw-OptiPlex-7050>
References: <1577515439-14477-1-git-send-email-qiwuchen55@gmail.com>
 <20200106054811.uduf2qdn5ecvbwrc@vireshk-i7>
 <20200106065249.GA16392@cqw-OptiPlex-7050>
 <20200106065502.bimpddvrvmfm2f5f@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106065502.bimpddvrvmfm2f5f@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_003021_900732_D529805A 
X-CRM114-Status: GOOD (  28.13  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
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

On Mon, Jan 06, 2020 at 12:25:02PM +0530, Viresh Kumar wrote:
> On 06-01-20, 14:52, chenqiwu wrote:
> > On Mon, Jan 06, 2020 at 11:18:11AM +0530, Viresh Kumar wrote:
> > > On 28-12-19, 14:43, qiwuchen55@gmail.com wrote:
> > > > From: chenqiwu <chenqiwu@xiaomi.com>
> > > > 
> > > > There is a potential UAF issue in xxx_cpufreq_reboot_notifier_evt() that
> > > > the cpufreq policy of cpu0 has been released before using it. So we should
> > > > make a judgement to avoid it.
> > > 
> > > There is no UAF problem here, but that we do cpufreq_cpu_get() with a
> > > corresponding cpufreq_cpu_put().
> > > 
> > > > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > > > ---
> > > >  drivers/cpufreq/s3c2416-cpufreq.c | 11 ++++++++++-
> > > >  drivers/cpufreq/s5pv210-cpufreq.c | 10 +++++++++-
> > > >  2 files changed, 19 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
> > > > index 1069103..0f576ba 100644
> > > > --- a/drivers/cpufreq/s3c2416-cpufreq.c
> > > > +++ b/drivers/cpufreq/s3c2416-cpufreq.c
> > > > @@ -304,6 +304,7 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
> > > >  {
> > > >  	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
> > > >  	int ret;
> > > > +	struct cpufreq_policy policy;
> > > >  
> > > >  	mutex_lock(&cpufreq_lock);
> > > >  
> > > > @@ -318,7 +319,15 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
> > > >  	 */
> > > >  	if (s3c_freq->is_dvs) {
> > > >  		pr_debug("cpufreq: leave dvs on reboot\n");
> > > > -		ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
> > > > +
> > > > +		memset(&policy, 0, sizeof(policy));
> > > > +		ret = cpufreq_get_policy(&policy, 0);
> > > > +		if (ret < 0) {
> > > > +			pr_debug("cpufreq: get no policy for cpu0\n");
> > > > +			return NOTIFY_BAD;
> > > > +		}
> > > > +
> > > 
> > > This doesn't make sense to me, why don't you do cpufreq_cpu_get() and
> > > put() instead ?
> > >
> > Hi viresh,
> > I can't explain which approach is better, but I think both approaches are
> > effective for the situation.
> 
> The second one is better as it doesn't make copy of the policy, but
> rather just increments the counter.
> 
> > By the way, there is a possibility that the cpu0 hotplug thread will call
> > cpufreq_policy_free() to free cpufreq policy if cpu0 hotplug failed.
> > I think there should be a judgement to avoid this UAF risk if necessary,
> > or we just do panic if cpu0's cpufreq policy is free.
> 
> I think there are enough locks in place to avoid such issues and they
> shouldn't happen.
>

Hhh..I don't agree this, since the cpufreq policy of cpu0 may have
been released before such UAF issue happenning.
By the way, why not get invaild cpufreq policy of another cpu but
only cpu0 here?

> > > > +		ret = cpufreq_driver_target(&policy, FREQ_SLEEP, 0);
> > > >  		if (ret < 0)
> > > >  			return NOTIFY_BAD;
> > > >  	}
> > > > diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
> > > > index 5d10030..d99b4b1 100644
> > > > --- a/drivers/cpufreq/s5pv210-cpufreq.c
> > > > +++ b/drivers/cpufreq/s5pv210-cpufreq.c
> > > > @@ -555,8 +555,16 @@ static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
> > > >  						 unsigned long event, void *ptr)
> > > >  {
> > > >  	int ret;
> > > > +	struct cpufreq_policy *policy;
> > > >  
> > > > -	ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
> > > > +	policy = cpufreq_cpu_get(0);
> > > > +	if (!policy) {
> > > > +		pr_debug("cpufreq: get no policy for cpu0\n");
> > > > +		return NOTIFY_BAD;
> > > > +	}
> > > > +
> > > > +	ret = cpufreq_driver_target(policy, SLEEP_FREQ, 0);
> > > > +	cpufreq_cpu_put(policy);
> > > 
> > > Like what is done here.
> > > 
> > > Also add a blank line here.
> > > 
> > > >  	if (ret < 0)
> > > >  		return NOTIFY_BAD;
> > > >  
> > > > -- 
> > > > 1.9.1
> > > 
> > > -- 
> > > viresh
> > 
> > Thanks for your review!
> > Qiwu
> 
> -- 
> viresh

Thanks!
Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
