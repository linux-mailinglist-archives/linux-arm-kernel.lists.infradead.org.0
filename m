Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F38D1320B2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 08:50:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DID8Uk4iagfZ3CuCVD+BqFbRQoSkqPs0y/oqvF8yKdY=; b=HIpz21AgT53uKT
	HNJaldW4WONpwPTc8yXpO5AVGDUUWkiGF8ESCn37By4d5bKDB6TRLsp85ekzGrmhe6m6N1DpLR2rV
	r23nhoNEKMuyTYwXcwTH2pNIu3ag/a649suMiS5p4WplK4YpXpssNf8TXIQZuWhNwV5XbOEMrhEkV
	zOLTlXVcuD4BZKlC13h/T2lLq5K08TjETaYTR/pdl53IoTPp0K3xaFcdw802eM553NH01RbhlUux9
	IrUORulPhgK3yFMOS8xOvO6GEXzxApsmOcXWlgbQV9g1bcttYb9gMnY/xx5Fx97MgwHdVVs4M4VyK
	DNSqpoJEeMNajQE4T4tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojdY-0004Ek-5K; Tue, 07 Jan 2020 07:50:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojdN-0004E8-AJ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 07:50:38 +0000
Received: by mail-pg1-x544.google.com with SMTP id x8so28101956pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 23:50:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qzzTC8ttKEfiApeWn3h6jKqgrPf6T465Tjv1Jd74c78=;
 b=rC6EmZ+GudEOVFN+abU1cBbz1PjUjHEpFvOkOklH1dX2nFXUMenumC72Evz9K65I8X
 zX79Mv2G3Fj3wlaQIcroMGfUyi4XaXZfApz08/vpq7zUbw6ItBEmiZKQITqDVYZxHGy7
 N4IVd+ouWx/Ou5pfNzm56bhDnvybF8/7plx77sMn+NLPRo0s2wRTVh97i+D2fz7jZGbx
 ba/v9c35l0es9M2MVwl8CxBsJ4ydUthfe1JNJaq3za/e86xIxjFyH8Rdw7z4rkhZXry7
 2X6hX5RGtsOowmniqaG52cnub9CqwNscphLGsJ+ZKQIKV7ZtC3dZ1Oz+onZ4bNLGQjTH
 bPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qzzTC8ttKEfiApeWn3h6jKqgrPf6T465Tjv1Jd74c78=;
 b=W0AgmEAyPPiYm+MzXSVJsqIK6VO3GW+AV4mBrDKEiQXLgSB538vRPyU0/nqborWc5v
 oebPwwASsRXCwkaJ1qTMucILrmoECjuLRp3Wc+CPch9ZbJILBj1wLwUY64cWk16g5Lay
 O3eaBWBTDuhqtZdtYhqJMEzXU0up8GStSkcT8f8R6oXjLwP2Y52HI+i+Arb8hqQDfesR
 k3jtodcf/IBcNCHkY43tguCYp7z/XzkC/hv4ZzRdQYq12DxIRfQisqLfXEj5RGJ3k6dM
 rP38OHO2y91BdOgPn9Pl3fr1O8WAu0K2bpqsclYV8Q1PVRSrNk63Q+C+CS0SU3USbsIh
 TdoA==
X-Gm-Message-State: APjAAAULwpHuB7M+bgfS46LaX9AIxwKGPyLzfTqFoqWLJ1JLSBTfaZrd
 KAlJv+EsO+qTHbV9R/gyKyUpDxiE3ic=
X-Google-Smtp-Source: APXvYqx/Lp0aOaCYq2Hq9Zs8XRmir80kumuPx1zejmVByeswt0T6vNQnU3BSh7MVR5Rf1gYYjXlqrw==
X-Received: by 2002:a63:3484:: with SMTP id
 b126mr112310953pga.17.1578383436541; 
 Mon, 06 Jan 2020 23:50:36 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id v143sm73133535pfc.71.2020.01.06.23.50.35
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Mon, 06 Jan 2020 23:50:36 -0800 (PST)
Date: Tue, 7 Jan 2020 15:50:33 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v2] cpufreq: s3c: avoid use after free issue in
 xxx_cpufreq_reboot_notifier_evt()
Message-ID: <20200107075033.GA11054@cqw-OptiPlex-7050>
References: <1578303861-7217-1-git-send-email-qiwuchen55@gmail.com>
 <20200107053147.v5ooeeshknlqyc3l@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107053147.v5ooeeshknlqyc3l@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_235037_389944_67380464 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 chenqiwu <chenqiwu@xiaomi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 11:01:47AM +0530, Viresh Kumar wrote:
> On 06-01-20, 17:44, qiwuchen55@gmail.com wrote:
> > From: chenqiwu <chenqiwu@xiaomi.com>
> > 
> > There is a potential UAF issue in xxx_cpufreq_reboot_notifier_evt() that
> > the cpufreq policy of cpu0 has been released before using it. So we should
> > make a judgement to avoid it.
> 
> Again, the subject and description are incorrect here. This isn't a user after
> free problem as we were already calling cpufreq_cpu_get(). The problem was that
> the balancing of refcount wasn't done properly.
> 
>

Yeah, I will rewrite the title and commit message, and resend this as
patch v3.

Thanks!

> > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > ---
> > changes in v2:
> >  - use the combination of cpufreq_cpu_get() and cpufreq_cpu_put()
> >    instead of cpufreq_get_policy() in s3c2416-cpufreq.c
> > ---
> >  drivers/cpufreq/s3c2416-cpufreq.c | 12 +++++++++++-
> >  drivers/cpufreq/s5pv210-cpufreq.c | 11 ++++++++++-
> >  2 files changed, 21 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/cpufreq/s3c2416-cpufreq.c b/drivers/cpufreq/s3c2416-cpufreq.c
> > index 1069103..f07c5d1 100644
> > --- a/drivers/cpufreq/s3c2416-cpufreq.c
> > +++ b/drivers/cpufreq/s3c2416-cpufreq.c
> > @@ -304,6 +304,7 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
> >  {
> >  	struct s3c2416_data *s3c_freq = &s3c2416_cpufreq;
> >  	int ret;
> > +	struct cpufreq_policy *policy;
> >  
> >  	mutex_lock(&cpufreq_lock);
> >  
> > @@ -318,7 +319,16 @@ static int s3c2416_cpufreq_reboot_notifier_evt(struct notifier_block *this,
> >  	 */
> >  	if (s3c_freq->is_dvs) {
> >  		pr_debug("cpufreq: leave dvs on reboot\n");
> > -		ret = cpufreq_driver_target(cpufreq_cpu_get(0), FREQ_SLEEP, 0);
> > +
> > +		policy = cpufreq_cpu_get(0);
> > +		if (!policy) {
> > +			pr_debug("cpufreq: get no policy for cpu0\n");
> > +			return NOTIFY_BAD;
> > +		}
> > +
> > +		ret = cpufreq_driver_target(&policy, FREQ_SLEEP, 0);
> > +		cpufreq_cpu_put(policy);
> > +
> >  		if (ret < 0)
> >  			return NOTIFY_BAD;
> >  	}
> > diff --git a/drivers/cpufreq/s5pv210-cpufreq.c b/drivers/cpufreq/s5pv210-cpufreq.c
> > index 5d10030..e84281e 100644
> > --- a/drivers/cpufreq/s5pv210-cpufreq.c
> > +++ b/drivers/cpufreq/s5pv210-cpufreq.c
> > @@ -555,8 +555,17 @@ static int s5pv210_cpufreq_reboot_notifier_event(struct notifier_block *this,
> >  						 unsigned long event, void *ptr)
> >  {
> >  	int ret;
> > +	struct cpufreq_policy *policy;
> > +
> > +	policy = cpufreq_cpu_get(0);
> > +	if (!policy) {
> > +		pr_debug("cpufreq: get no policy for cpu0\n");
> > +		return NOTIFY_BAD;
> > +	}
> > +
> > +	ret = cpufreq_driver_target(policy, SLEEP_FREQ, 0);
> > +	cpufreq_cpu_put(policy);
> >  
> > -	ret = cpufreq_driver_target(cpufreq_cpu_get(0), SLEEP_FREQ, 0);
> >  	if (ret < 0)
> >  		return NOTIFY_BAD;
> >  
> > -- 
> > 1.9.1
> 
> -- 
> viresh

--
Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
