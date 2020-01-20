Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB49F142345
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 07:30:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtmewMt410QYV1R+wj4Utt/Xp7pNuWIgXzrHtUkvAUQ=; b=jWB9G5jTHWntPl
	YDpvHvVF4qUSYHGKdhJFf6/DVNfrB/o2ImZ/2AvRG2uWLKtrpZ8yYE3/mA+7maKnS8Keb2Pnu0+HE
	ZYluqn5IBBQ2zhcAfKKNTFD5S515Ql97smKLD5yCCON09GneBfzgpNf824lcoNrdf3eCrcoGOituT
	bkStP+vgfdsblKDSxpT92RNGIFDn/7+bW4epKvqsie2B0+1j1xNRYMwgGH07+owUxoff4cLeEomyQ
	RD6PGSb4yVokS5vLHBXC92j3B1YeQJrQJZEYXDajmRF6w3cKJfIrovHFWqYuN/hvWfb8V6svz7C49
	imjimN63552ncPOy41dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itQZp-0003Lb-7Q; Mon, 20 Jan 2020 06:30:21 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itQZd-0003JD-2j
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 06:30:12 +0000
Received: by mail-pg1-x541.google.com with SMTP id r11so15032618pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 22:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xf1QiuMf0hHigZRu4/cbzAY/tfWYTII9JMzw/Trme34=;
 b=a4KwANnE2EZL0qHoQ+SpxO0bZOErxLwdUS0tR0s7vjU16+pCr7d4tI9/7tAX0OGxeR
 3Ujo0XFEL87E+PdvBn2VRM+jsvPd2lMNk8IRvMi4wKEtsaUefWlemKt1vgyXmV/khhne
 K/u694w8gbMQGifnS1TPubDWXRqBFmXyP0iFa8VZc7u6r/pTclt0FYbOSuJzsuzWmQjX
 mO8hh8Qiy7JFvaE/M8uOtRoHwFt2PaVWVg3QOIP4XQjFZd9AwxSvxo6IRFm7rDzXbTrV
 JZl4NXasmhTp9ep6O0CWO2J2Lakjya3kwlqcOy/eJZfLYJiUkb3R3rE3xLq87vazhNi7
 wANA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xf1QiuMf0hHigZRu4/cbzAY/tfWYTII9JMzw/Trme34=;
 b=Qtq94JN21LYXBOtZ6tn87EjLh2l5KFz07DDWy7HgyvsUn8h/tlG4h8PxexyU15qWUc
 S3pu+0GsWvWlstugeayuNMX/7cYvIrf81QAezXgEkU3YzVUiJ/pY1vKb8XnOZN/HbWnJ
 xf4zzMjQiFVjaezmpZG/HxmR/1D/eVFDOuwihYLwagx0qojwFbHkCX1ju8IZxFcP4Ar9
 OJJwKgdzqUrG0nkUsasqqf6yCExwpoqpbjLMZPuf46/ScsU6e4EKMSa1Vbfd3bY5Bwf9
 pj9+OcpDuZWNmW+mG5vWRbwa/bKZcOha11nvQyzIcR4XbwtBCcBt4UPuoZYfklov/4Vb
 itsA==
X-Gm-Message-State: APjAAAUFTrHwJZR98p8ufwyVjZkif7mqjwr7ZwKoib1Tkfmsvb97UGWZ
 Gdz7saYdtWbRvoqUazsxlOIr4w==
X-Google-Smtp-Source: APXvYqyLGxswmFQFbRVpKv/a3s/IpKKD3P/z1gJ/ntpqumpKG02JtHNzqYLPbIeBS1DTzCykmYynuw==
X-Received: by 2002:a62:1889:: with SMTP id 131mr15707948pfy.250.1579501807380; 
 Sun, 19 Jan 2020 22:30:07 -0800 (PST)
Received: from localhost ([122.172.71.156])
 by smtp.gmail.com with ESMTPSA id g9sm38268658pfm.150.2020.01.19.22.30.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 Jan 2020 22:30:06 -0800 (PST)
Date: Mon, 20 Jan 2020 12:00:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: chenqiwu <qiwuchen55@gmail.com>
Subject: Re: [PATCH v3] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Message-ID: <20200120063004.zzhep35vfl3urndd@vireshk-i7>
References: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
 <20200120053250.igkwofqfzvmqb3c3@vireshk-i7>
 <20200120055822.GB5185@cqw-OptiPlex-7050>
 <20200120060134.izotrbzjvzk327zx@vireshk-i7>
 <20200120061356.GA5605@cqw-OptiPlex-7050>
 <20200120062126.nmxaqhcpqcojuihr@vireshk-i7>
 <20200120062756.GA5802@cqw-OptiPlex-7050>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120062756.GA5802@cqw-OptiPlex-7050>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_223009_161300_0C367059 
X-CRM114-Status: GOOD (  26.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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

On 20-01-20, 14:27, chenqiwu wrote:
> On Mon, Jan 20, 2020 at 11:51:26AM +0530, Viresh Kumar wrote:
> > On 20-01-20, 14:13, chenqiwu wrote:
> > > On Mon, Jan 20, 2020 at 11:31:34AM +0530, Viresh Kumar wrote:
> > > > On 20-01-20, 13:58, chenqiwu wrote:
> > > > > On Mon, Jan 20, 2020 at 11:02:50AM +0530, Viresh Kumar wrote:
> > > > > > On 19-01-20, 15:09, qiwuchen55@gmail.com wrote:
> > > > > > > From: chenqiwu <chenqiwu@xiaomi.com>
> > > > > > > 
> > > > > > > brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq policy,
> > > > > > > meanwhile, it also increments the kobject reference count to mark it busy.
> > > > > > > However, a corresponding call of cpufreq_cpu_put() is ignored to decrement
> > > > > > > the kobject reference count back, which may lead to a potential stuck risk
> > > > > > > that the cpuhp thread deadly waits for dropping of kobject refcount when
> > > > > > > cpufreq policy free.
> > > > > > > 
> > > > > > > For fixing this bug, cpufreq_get_policy() is referenced to do a proper
> > > > > > > cpufreq_cpu_get()/cpufreq_cpu_put() and fill a policy copy for the user.
> > > > > > > If the policy return NULL, we just return 0 to hit the code path of
> > > > > > > cpufreq_driver->get.
> > > > > > > 
> > > > > > > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > > > > > > ---
> > > > > > >  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++++++--
> > > > > > >  1 file changed, 10 insertions(+), 2 deletions(-)
> > > > > > > 
> > > > > > > diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > > > index 77b0e5d..ee0d404 100644
> > > > > > > --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > > > +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > > > > > > @@ -452,8 +452,16 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
> > > > > > >  
> > > > > > >  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
> > > > > > >  {
> > > > > > > -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> > > > > > 
> > > > > > Why can't we just add a corresponding cpufreq_cpu_put() instead of all this ?
> > > > > > 
> > > > > 
> > > > > cpufreq_get_policy() does a proper cpufreq_cpu_get()/cpufreq_cpu_put(),
> > > > > meanwhile fills a policy copy for the user. It equals to using
> > > > > cpufreq_cpu_get() and a corresponding cpufreq_cpu_put() around access
> > > > > to the policy pointer. I think both methods are fine here.
> > > > > What do you think?
> > > > 
> > > > cpufreq_get_policy() does an extra memcpy as well, which isn't required at all
> > > > in your case.
> > > > 
> > > > -- 
> > > > viresh
> > > 
> > > Huha..Do you worry about the race conditon with cpufreq policy free path?
> > 
> > No. I just worry about an unnecessary memcpy, nothing else.
> >
> Is there any question about this extra memcpy?

What do you mean by that?

The whole point I am trying to make is that for your specific case, doing an
explicit cpufreq_cpu_get() and cpufreq_cpu_put() is far more efficient than
calling cpufreq_get_policy() which has a different purpose and usecase.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
