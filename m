Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3B9142334
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 07:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXy4j79K6Tl8HCjnleQnzgPFW4se8xq7mxmTOqO4wZs=; b=K9Z9nJ1D9jpZ0D
	K1DKtVx2cfiBfSUxrpiTDhiNImXKSBIoXf/gC36eK3c60H8CyEC07uvoQuj7LOycyRmNR8/dZzJRd
	olRiFjZwVFxEko57M1tcqVl0vwRbNSKuRJWSUAehV+Y8a8UvT5nok2WNQH2rXJ/u0VKEIFVTk9ocI
	+U7EPAyuh/oLYBb+vVuioP+87+Ca6RFBIq6fFZ24AZdVFhBgeM6Yz+xfoqGO/rFG5pgZuWMGWvgs4
	ctdLDe1OWhAOCqoqQjSHz4AAOVsu/LAh+jzCCGUnQKEPzSuQmEJQbA0uD7J//RLXXBdnv9cYloboy
	WTby/MBlNREYTyanwg1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itQRR-0008Qj-7I; Mon, 20 Jan 2020 06:21:41 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itQRF-0008Pm-6n
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 06:21:33 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s7so6640405pjc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 22:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FnAngPR8gSFbezIM3xfQhGpPmFxWOtFtCSlqS5qfXAo=;
 b=LZSPlN4fD4a4JzgFT2rY/DxxrayfXEV28MoW53pPPBE4ZB6ZELpcd0J6ddJxzdJ1Lm
 BWF62i9RCRKa2LhJGe3bln24ZcljMjs8DHFXsnpP2aGO+SQETcWFI9IgIrOhoh98Ut4r
 gJBlzUaD6vjNlyt/mK5pfltDriHIapLf9HG4/3Qez4gAdpgQYgR/WAqSz5XMGRzulYyU
 ESeOR9osysFnSKfH6xODkRV/xnyaLwLpwM5QGJmS51JZxCVodMaUADOFmOTRsYLbmDJY
 KqwcShmAZQivrlPYaFfBxJj6dQB5w0fBDR1Lo7RL/wD2zGw2Si6XZOfubfwn/6wQFty6
 IPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FnAngPR8gSFbezIM3xfQhGpPmFxWOtFtCSlqS5qfXAo=;
 b=Nr/1xcT5vu8XY6Cj47RWnJKsMwaGgJapkBZk9Lqe7EYhCDyqmJ+dwspNdYOy37vK+7
 +1g0ljg0mBozqtXyVzgBgGbJrw2EqwLrFZEnsswvgF3XVNtemlowyZjnaFad5SUiRI1+
 Tbs6+QtDDd7+wS3g+XGiSXCaNwpbDvV7ZbNEZc0hiFiFEJvI5of1zirHB+lcv/yA3wls
 SbQomcclYQ6XMo4fjEVvvtLucBJFh0aiqkwkhe3gJ+nKLF0vCSFFiIDQFFelD7FUm+p/
 WwZGNL2SUW31HkI8G5N7ZO/Wmhq7pfhqTJ1bPbDbQ2EueYT7fYbuqrvI846tx5+QFSG3
 3epg==
X-Gm-Message-State: APjAAAXSwBtISnaycp7J9fX7DKh1RSLXGmQ6R3oxPSrcGoJ/K+9U7FH/
 8mSxh1kHZ8Wbz1FahqPvljOkNQ==
X-Google-Smtp-Source: APXvYqziQT15J0JnLljJx6TSSJEg11GZh1WRLm/E/pQZFkqMxREjpH+FuO3kv9KmbyWDMTZpIfomjg==
X-Received: by 2002:a17:90a:246c:: with SMTP id
 h99mr22045031pje.134.1579501288625; 
 Sun, 19 Jan 2020 22:21:28 -0800 (PST)
Received: from localhost ([122.172.71.156])
 by smtp.gmail.com with ESMTPSA id c22sm36979913pfo.50.2020.01.19.22.21.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Jan 2020 22:21:27 -0800 (PST)
Date: Mon, 20 Jan 2020 11:51:26 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: chenqiwu <qiwuchen55@gmail.com>
Subject: Re: [PATCH v3] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Message-ID: <20200120062126.nmxaqhcpqcojuihr@vireshk-i7>
References: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
 <20200120053250.igkwofqfzvmqb3c3@vireshk-i7>
 <20200120055822.GB5185@cqw-OptiPlex-7050>
 <20200120060134.izotrbzjvzk327zx@vireshk-i7>
 <20200120061356.GA5605@cqw-OptiPlex-7050>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120061356.GA5605@cqw-OptiPlex-7050>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_222129_250228_786B5DE2 
X-CRM114-Status: GOOD (  24.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mmayer@broadcom.com, chenqiwu <chenqiwu@xiaomi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-01-20, 14:13, chenqiwu wrote:
> On Mon, Jan 20, 2020 at 11:31:34AM +0530, Viresh Kumar wrote:
> > On 20-01-20, 13:58, chenqiwu wrote:
> > > On Mon, Jan 20, 2020 at 11:02:50AM +0530, Viresh Kumar wrote:
> > > > On 19-01-20, 15:09, qiwuchen55@gmail.com wrote:
> > > > > From: chenqiwu <chenqiwu@xiaomi.com>
> > > > > 
> > > > > brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq policy,
> > > > > meanwhile, it also increments the kobject reference count to mark it busy.
> > > > > However, a corresponding call of cpufreq_cpu_put() is ignored to decrement
> > > > > the kobject reference count back, which may lead to a potential stuck risk
> > > > > that the cpuhp thread deadly waits for dropping of kobject refcount when
> > > > > cpufreq policy free.
> > > > > 
> > > > > For fixing this bug, cpufreq_get_policy() is referenced to do a proper
> > > > > cpufreq_cpu_get()/cpufreq_cpu_put() and fill a policy copy for the user.
> > > > > If the policy return NULL, we just return 0 to hit the code path of
> > > > > cpufreq_driver->get.
> > > > > 
> > > > > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > > > > ---
> > > > >  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++++++--
> > > > >  1 file changed, 10 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > index 77b0e5d..ee0d404 100644
> > > > > --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > @@ -452,8 +452,16 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
> > > > >  
> > > > >  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
> > > > >  {
> > > > > -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> > > > 
> > > > Why can't we just add a corresponding cpufreq_cpu_put() instead of all this ?
> > > > 
> > > 
> > > cpufreq_get_policy() does a proper cpufreq_cpu_get()/cpufreq_cpu_put(),
> > > meanwhile fills a policy copy for the user. It equals to using
> > > cpufreq_cpu_get() and a corresponding cpufreq_cpu_put() around access
> > > to the policy pointer. I think both methods are fine here.
> > > What do you think?
> > 
> > cpufreq_get_policy() does an extra memcpy as well, which isn't required at all
> > in your case.
> > 
> > -- 
> > viresh
> 
> Huha..Do you worry about the race conditon with cpufreq policy free path?

No. I just worry about an unnecessary memcpy, nothing else.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
