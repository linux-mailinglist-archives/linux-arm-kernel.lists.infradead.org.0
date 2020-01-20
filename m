Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2121A1422ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 06:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUQ4Lz80q236yOf63lbwM6+65GIb7aQismefuglWxls=; b=SBEMqeCgSzrc7c
	tlOwgYkH9Oef+bVRoSl5alfPsmGrX0dgobt76TbMVFNTeLF4NklulHEH1aeobVv16ptgu1qb6SLh3
	XYubPMHRfSSqx7mjOQ2xUhC+2tsOVlNSVcG438cXKAbu6sGqzK7tOjl1JQw/yGSrh25xQre/hoK3+
	sOCDVy/omsIrkqFDVO4vJJZcCylz/hdx9U/5LT5cdx1dH6fbfe3YpnDBZak+QC+e8SpNrq1xlIEXp
	TPfTzBVMYfFuD6lXkv8xHCAne9Sq46VQzqo442cNiZPAhhOrI9LbxnxFAW61LLd/a9zuMnL3ZSwYn
	Xv53zP9WU2ZLsgYkNEEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itQ57-0008OW-HY; Mon, 20 Jan 2020 05:58:37 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itQ4x-0008Ng-J9
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 05:58:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id k25so14978891pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Jan 2020 21:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=44OvwPqHGhblGpev/Fgsdo0KBCwnSccL+pFHHJODwRA=;
 b=KbeoHMBxGQBM/Im21AP25FrgmZHdXs95J2h6j/+YlJAiPtyRvC/i4UqABBcF1zV/5A
 GlVRgFkkC3+3Xm9aS5svlW4KJUkQGd7c4O2zgLmqSN89gTd95UZqcEc/ZDBdyKd6snkG
 QjZFnq+8tp3HgISoXncj2zYpB7DxwAfDrvQogCRcjWa1j20OZV//rLAzTHlstjAa2HT6
 bgNEyExdJ0A8H8zs2/OcKwyEafaRG7NrxZ39JoQNUxPpX+kVSiF0mqv1QEB05UyXP61n
 VEKy/3akwDV1g62/13f5OCYIQAGO0ac8Ay0N9CIRiJCOqZ2RSLE1RhzyqYuAX3w3FMjF
 ns3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=44OvwPqHGhblGpev/Fgsdo0KBCwnSccL+pFHHJODwRA=;
 b=tCSqNOuXz9KdpscERKLgTMf5ZJOi2Jr8tj6TXv9Z1rH5LpSCdRro8LgXcZif/4pGfC
 yVBRtrTEsZDgVr/LOVHKLvK99I/q/bFtxDxUSeixKbU2WUHvtmR+XDoU9ayRvru2wp+3
 lh5kZyHaun8Q3c5KoaEecgtedNyXA9yaIQKD8yM2iHCUduffXHZrwUQxiNfuIGoPsjht
 r2wzHV2HunAAAKjCuSrvMB88bOKWVF8Di9+h7t0WaVMcOX+KRU+41Gzb/zxPSOvTdlLd
 tpE8DZMcWLJp4/AXAiXDG568dfAXbwEWW1nX7q8BiSCvNaXejiKdazVqjm8UZOXaEnGj
 GRTA==
X-Gm-Message-State: APjAAAXqCpklBVlbql6/R0yb6hH7QExorrk1EkpMcMlRUDGnmfjTSejb
 wrdoavvKVt+XKKRQn1y/YUA=
X-Google-Smtp-Source: APXvYqw9JjQQ6aSCtG0lkpD4uoTTy1UXI9ZPV3n5VK5AoeuRyNfmc4uOarzUHC61VTUXbFXxF7/LtA==
X-Received: by 2002:a63:6787:: with SMTP id
 b129mr58751152pgc.103.1579499905338; 
 Sun, 19 Jan 2020 21:58:25 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id z5sm7976205pfq.3.2020.01.19.21.58.24
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sun, 19 Jan 2020 21:58:24 -0800 (PST)
Date: Mon, 20 Jan 2020 13:58:22 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3] cpufreq: brcmstb-avs: fix imbalance of cpufreq policy
 refcount
Message-ID: <20200120055822.GB5185@cqw-OptiPlex-7050>
References: <1579417750-21984-1-git-send-email-qiwuchen55@gmail.com>
 <20200120053250.igkwofqfzvmqb3c3@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120053250.igkwofqfzvmqb3c3@vireshk-i7>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_215827_655469_B7224969 
X-CRM114-Status: GOOD (  24.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [qiwuchen55[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [qiwuchen55[at]gmail.com]
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

On Mon, Jan 20, 2020 at 11:02:50AM +0530, Viresh Kumar wrote:
> On 19-01-20, 15:09, qiwuchen55@gmail.com wrote:
> > From: chenqiwu <chenqiwu@xiaomi.com>
> > 
> > brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get the cpufreq policy,
> > meanwhile, it also increments the kobject reference count to mark it busy.
> > However, a corresponding call of cpufreq_cpu_put() is ignored to decrement
> > the kobject reference count back, which may lead to a potential stuck risk
> > that the cpuhp thread deadly waits for dropping of kobject refcount when
> > cpufreq policy free.
> > 
> > For fixing this bug, cpufreq_get_policy() is referenced to do a proper
> > cpufreq_cpu_get()/cpufreq_cpu_put() and fill a policy copy for the user.
> > If the policy return NULL, we just return 0 to hit the code path of
> > cpufreq_driver->get.
> > 
> > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> > ---
> >  drivers/cpufreq/brcmstb-avs-cpufreq.c | 12 ++++++++++--
> >  1 file changed, 10 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > index 77b0e5d..ee0d404 100644
> > --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> > @@ -452,8 +452,16 @@ static bool brcm_avs_is_firmware_loaded(struct private_data *priv)
> >  
> >  static unsigned int brcm_avs_cpufreq_get(unsigned int cpu)
> >  {
> > -	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> 
> Why can't we just add a corresponding cpufreq_cpu_put() instead of all this ?
> 

cpufreq_get_policy() does a proper cpufreq_cpu_get()/cpufreq_cpu_put(),
meanwhile fills a policy copy for the user. It equals to using
cpufreq_cpu_get() and a corresponding cpufreq_cpu_put() around access
to the policy pointer. I think both methods are fine here.
What do you think?

> > -	struct private_data *priv = policy->driver_data;
> > +	struct cpufreq_policy policy;
> > +	struct private_data *priv;
> > +
> > +	/*
> > +	 * In case cpufreq policy has been released, just return 0.
> > +	 */
> > +	if (cpufreq_get_policy(&policy, cpu))
> > +		return 0;
> 
> Why did you move away from the previous implementation of cpufreq_cpu_get() ?
> 
> > +
> > +	priv = policy.driver_data;
> >  
> >  	return brcm_avs_get_frequency(priv->base);
> >  }
> > -- 
> > 1.9.1
> 
> -- 
> viresh

Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
