Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A0F130DD7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 08:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zDYt/GeSuNPGy/5HG12jtaWQbphm/nfmGxiZLPFcmCw=; b=gwc6hEXI5Z8Iip
	nedgvZhA50LCMFQvw6gdVgCFXw8pJHHD147IxYCja6n7KTrtBLm3MTj4UsNjsXmpVdjA/BC5mqgK3
	tZQK9h2q/wDUAXs91SxSbEpL7S7lCrS7M+fzHDia/4H1Gv+ziQgZVagI+M+5UK+hK3RtqbF9UWcsd
	qBDJ7zEdfFZ4GbStLmgEhwEt4ROioNTOVzmEdMHJwxX9lGYBKrpF416WXnB9tvl4Dc9/xi9ocNHQB
	3Fjq2/sFGCVnP2smxXew7oBPeb9r7ynsWM33pusmCJFZjnrhFY5PABHHd36peXaR9ylWnpF226RrW
	t4cpb7eVja3LzkEznizw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioMVr-0002WP-Pt; Mon, 06 Jan 2020 07:09:19 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioMVl-0002W3-6C
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 07:09:14 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t101so7394364pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Jan 2020 23:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nWk0OuHhu+M1/eNpjWo6RnDHi691B44p0xwgqH5nuoo=;
 b=Kdi2oGktRrF/QR3ElQpGSTBJi0vYvFbRyPlfdWJEotdmLi1WP8OTz7iQDDvgFKkJzS
 bVcDc8a4wzus0v+FoQfXNbkgqnlW3YOyEh3KY0xieHFBcS1SsHIm510zS/GObOoEc4lE
 ZgjNP652xQaewQUWS9y8t5M/ptJtEt13tiFQL5LI6BKVpr+SjoeMEgyTbvz2vMlaZApq
 QLOMfoZFWLmMXRyM8mzZiAp23kdUBb3DNCWo9OnNJmZ3/u/5P+dJB+glLwhqwcP3pCz6
 P/f8A7ymJcJ8rAMQpWaJfCzf8uBgazwOkBHxYSvQeA6iD43rQyb/rq6TJsTe9XBr54QV
 4FbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nWk0OuHhu+M1/eNpjWo6RnDHi691B44p0xwgqH5nuoo=;
 b=rhDBXsduaWcO0jn+9ktHpgo1YCDncPMDCj0xlIMUDF3mkRjUIkSSUVwLi2Viwieigj
 X0x2qR2gvqiTTHLtHSQ1xjnILy5pG/RoLyVh4quZ13eLlmm9Gc0IWBC9PVNSXmDIVzWt
 z2rMLUFvC6GFE8ZcAWl6bxgweOsLrs68XsKa+Nwlcv0niLwIaLJQIFXxsYkpH9HpxX25
 4K7m4oweNks+bRXQcK4/qt9Y9xb+xSpQpm9RoHSroBiSyKEGhs+ovocLuKMQcHI8N662
 avjAZwNQSWahqDZ5wdQt7Dz6psRAD8pZivSXlV2b3AJ6+9pgR8PqUdqnO5zGcXHpkS2C
 vruQ==
X-Gm-Message-State: APjAAAUheNbsiGgKuRn4jhxxtW9ADPh3wj18Bf3UIrOccwQ6vH7hSSZU
 yJ5XqNm+Hx/Pmr5lD87Orb8=
X-Google-Smtp-Source: APXvYqznxCjoYvbyYBBoCMO3neBFVA0lu5RvGuWfHnR001FH2Q+kZHQjC/k26NqYA/UGjFxQhVaG1A==
X-Received: by 2002:a17:90b:438e:: with SMTP id
 in14mr40333971pjb.83.1578294552600; 
 Sun, 05 Jan 2020 23:09:12 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id 18sm69300092pfj.3.2020.01.05.23.09.11
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 05 Jan 2020 23:09:12 -0800 (PST)
Date: Mon, 6 Jan 2020 15:09:10 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v2] cpufreq: brcmstb-avs-cpufreq: avoid potential stuck
 and UAF risk
Message-ID: <20200106070910.GA17897@cqw-OptiPlex-7050>
References: <1578228650-17157-1-git-send-email-qiwuchen55@gmail.com>
 <20200106055637.zq4icl5klg4wpvkx@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106055637.zq4icl5klg4wpvkx@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_230913_256934_657943AC 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 bcm-kernel-feedback-list@broadcom.com, mmayer@broadcom.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 11:26:37AM +0530, Viresh Kumar wrote:
> On 05-01-20, 20:50, qiwuchen55@gmail.com wrote:
> > From: chenqiwu <chenqiwu@xiaomi.com>
> > 
> > brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get cpufreq policy,
> > meanwhile, it also increments the kobject reference count of policy to
> > mark it busy. However, a corresponding call of cpufreq_cpu_put() is
> > ignored to decrement the kobject reference count back, which may lead
> > to a potential stuck risk that percpu cpuhp thread deadly waits for
> > dropping of kobject refcount when percpu cpufreq policy free.
> > 
> > The call trace of stuck risk could be:
> > cpufreq_online()  //If cpufreq online failed, goto out_free_policy.
> >     ->cpufreq_policy_free()     //Do cpufreq_policy free.
> >         ->cpufreq_policy_put_kobj()
> >             ->kobject_put()       //Skip if policy kfref count is not 1.
> >                 ->cpufreq_sysfs_release()
> >                     ->complete()  //Complete policy->kobj_unregister.
> >                 ->wait_for_completion() //Wait for policy->kobj_unregister.
> > 
> > A simple way to avoid this stuck risk is use cpufreq_cpu_get_raw()
> > instead of cpufreq_cpu_get(), since this can be easily exercised by
> > attempting to force an unbind of the CPUfreq driver.
> > 
> > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > ---
> >  drivers/cpufreq/brcmstb-avs-cpufreq.c | 11 +++++++++--
> >  1 file changed, 9 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > index 77b0e5d..6d2bf5c 100644
> > --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > @@ -452,8 +452,15 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
> >  
> >  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
> >  {
> > -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> > -	struct private_data *priv = policy->driver_data;
> > +	struct cpufreq_policy *policy = cpufreq_cpu_get_raw(cpu);
> > +	struct private_data *priv;
> > +
> > +	if (!policy)
> > +		return 0;
> > +
> 
> Since we always reach here after the cpufreq driver is registered, we
> may not need to check the policy pointer at all.
> 
> > +	priv = policy->driver_data;
> > +	if (!priv || !priv->base)
> > +		return 0;
> 
> Can there be a case where priv or priv->base be set to NULL for this
> driver ? I don't think so and so this may not be required.
>

Hi viresh,
There could be a case as the description of this patch besides
brcm_avs_driver unloads. Since cpufreq_policy_free() will free
the mm of cpufreq_policy at the last moment.

Thanks!
Qiwu

> >  
> >  	return brcm_avs_get_frequency(priv->base);
> >  }
> > -- 
> > 1.9.1
> 
> -- 
> viresh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
