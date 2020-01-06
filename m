Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64973130DB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 07:53:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJ6fmGJeWnFF6X8l+x+EqQk/bsg8SBOhdg14NFr5ik0=; b=bZXWR8ym56PmPH
	aI+XfN5tiYzgq59Jy6fDVzmem2iveahED0PpdzUHa4yTJxHq74EOUHM//P+3QG5P4VAJS5rNmC5zz
	n68fq0PeWuuEbV8oPOt6sLl5VVKLG0hCZUjwghMYoZR8uV6js7R/c8piFugG1IkqXgjk4oYF0l5Ns
	5NaVIsVo4k93KNsz2X1BD8qdBML0OOxsNDXiw2bi2M2+rNGPwE0KDrJ73JnImtyCv1H0q6dmpC0je
	tg2K9c/Xry7ysVtq8Qw+71wqfZCA9l+a+75z0P5lGVE4wr9k/1ynwGQgFivqTvyE4Nkt9XVZdxgpw
	F0UJ1V0LXr0s2VFafTHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioMG5-0004e1-PX; Mon, 06 Jan 2020 06:53:01 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioMFx-0004db-NJ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 06:52:55 +0000
Received: by mail-pl1-x643.google.com with SMTP id c13so21499650pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 22:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ILbtPQ49UQ5/z2fgV/Pv/NXVgfndSPVO/Z+iSzamE50=;
 b=TxRMT6EuVhwzU6EmNtGY1bRoMPFMdfiDhDdKhwErLKT61PVaGUf4J9+nhf4SPZTADG
 91+cf6E/ra/fgI7GUqbL2FSkkK1FnEnSP3nLEymeIwXACeq9bWBckwbrmab6uvLr3naJ
 XuQofEyR7tJUvoIM+tbNih5jv8iCnufHolp2GKt6CfWbLgL249AA1EFlsq27lDGTOxnx
 t7NqStB9h6OpMKiEkvSEYpKQRbi4NWZ/di/nETGVQGtQkD2OkTuRWCz/YGXP8QfanuHM
 84CnMFIhKMo+lmf8Y6D/Jy+OApz9Bkt980yDikVxbW3Zs+L4jZuIoVNfZ1Vvlmnd/1jk
 fO1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ILbtPQ49UQ5/z2fgV/Pv/NXVgfndSPVO/Z+iSzamE50=;
 b=f3wIuV7bkwpqac+ArJUPmTfgE2ZdXiPbVrm1O1wUMfOOxXlgh6qpFSNkzHFXBjNFQh
 Djtux/esPt04/P5hivouXv47O604qDsnywncOaaFi/HL8DK/QBGalrddWo5D0jDfOyFe
 v8RV3UkGa/HFyH/kfT9qoKaLVq0cUEP4y6yj/2gcne3n/b3pFiKnAvogpzMrbjMimDcl
 SA65piiBUbG08X6XjE8hE1BcVq/259OXzSH+UrYoFlgkJH33kDoJEyNiloYZD6OEDJFl
 lqfW6Qml7I7hS7o2F2g7JJ8gf+ZcciJN6LRUArzV/6e/E8fWc5hEXV2sL+sG729WfuVE
 DffQ==
X-Gm-Message-State: APjAAAXA5yqt1JwQF8GbtIjiDHv9bA5ZA/ysYCS6Q8uy1hSYCEIE/Hvc
 eRAuq4qFUuSJnQ3Vv7iG9YM=
X-Google-Smtp-Source: APXvYqwOS+lopbhTJeonZU5znewHDoRirY65GOzExc1QuBLtvUvMa4G2mxAEaK1WabMcrppIQ6uaoA==
X-Received: by 2002:a17:90a:8a8f:: with SMTP id
 x15mr42050937pjn.87.1578293572889; 
 Sun, 05 Jan 2020 22:52:52 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id q199sm77129113pfq.163.2020.01.05.22.52.51
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 05 Jan 2020 22:52:52 -0800 (PST)
Date: Mon, 6 Jan 2020 14:52:49 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Message-ID: <20200106065249.GA16392@cqw-OptiPlex-7050>
References: <1577515439-14477-1-git-send-email-qiwuchen55@gmail.com>
 <20200106054811.uduf2qdn5ecvbwrc@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106054811.uduf2qdn5ecvbwrc@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_225253_788293_7BF43C44 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Mon, Jan 06, 2020 at 11:18:11AM +0530, Viresh Kumar wrote:
> On 28-12-19, 14:43, qiwuchen55@gmail.com wrote:
> > From: chenqiwu <chenqiwu@xiaomi.com>
> > 
> > There is a potential UAF issue in xxx_cpufreq_reboot_notifier_evt() that
> > the cpufreq policy of cpu0 has been released before using it. So we should
> > make a judgement to avoid it.
> 
> There is no UAF problem here, but that we do cpufreq_cpu_get() with a
> corresponding cpufreq_cpu_put().
> 
> > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > ---
> >  drivers/cpufreq/s3c2416-cpufreq.c | 11 ++++++++++-
> >  drivers/cpufreq/s5pv210-cpufreq.c | 10 +++++++++-
> >  2 files changed, 19 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
> > index 1069103..0f576ba 100644
> > --- a/drivers/cpufreq/s3c2416-cpufreq.c
> > +++ b/drivers/cpufreq/s3c2416-cpufreq.c
> > @@ -304,6 +304,7 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
> >  {
> >  	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
> >  	int ret;
> > +	struct cpufreq_policy policy;
> >  
> >  	mutex_lock(&cpufreq_lock);
> >  
> > @@ -318,7 +319,15 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
> >  	 */
> >  	if (s3c_freq->is_dvs) {
> >  		pr_debug("cpufreq: leave dvs on reboot\n");
> > -		ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
> > +
> > +		memset(&policy, 0, sizeof(policy));
> > +		ret = cpufreq_get_policy(&policy, 0);
> > +		if (ret < 0) {
> > +			pr_debug("cpufreq: get no policy for cpu0\n");
> > +			return NOTIFY_BAD;
> > +		}
> > +
> 
> This doesn't make sense to me, why don't you do cpufreq_cpu_get() and
> put() instead ?
>
Hi viresh,
I can't explain which approach is better, but I think both approaches are
effective for the situation.
By the way, there is a possibility that the cpu0 hotplug thread will call
cpufreq_policy_free() to free cpufreq policy if cpu0 hotplug failed.
I think there should be a judgement to avoid this UAF risk if necessary,
or we just do panic if cpu0's cpufreq policy is free.

> > +		ret = cpufreq_driver_target(&policy, FREQ_SLEEP, 0);
> >  		if (ret < 0)
> >  			return NOTIFY_BAD;
> >  	}
> > diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
> > index 5d10030..d99b4b1 100644
> > --- a/drivers/cpufreq/s5pv210-cpufreq.c
> > +++ b/drivers/cpufreq/s5pv210-cpufreq.c
> > @@ -555,8 +555,16 @@ static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
> >  						 unsigned long event, void *ptr)
> >  {
> >  	int ret;
> > +	struct cpufreq_policy *policy;
> >  
> > -	ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
> > +	policy = cpufreq_cpu_get(0);
> > +	if (!policy) {
> > +		pr_debug("cpufreq: get no policy for cpu0\n");
> > +		return NOTIFY_BAD;
> > +	}
> > +
> > +	ret = cpufreq_driver_target(policy, SLEEP_FREQ, 0);
> > +	cpufreq_cpu_put(policy);
> 
> Like what is done here.
> 
> Also add a blank line here.
> 
> >  	if (ret < 0)
> >  		return NOTIFY_BAD;
> >  
> > -- 
> > 1.9.1
> 
> -- 
> viresh

Thanks for your review!
Qiwu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
