Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C53E012F2FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 03:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AS7nJ7MAKLggUa69Vg0YzlexYJ3ZJVkg/e1a8F7g84Q=; b=vELNk7IKOcyWJo
	bFujTI0Q0fzdRTDv/N5h/ykWRIP5sFIKMwNMj+4niQLDdOREJtAvU9i+I6A7mG6Tt+fnqO22zZ80O
	4/sssLjTeFUMsNdEND0WNHe5MVnV9c8zOv6laIl77heBxMIBhFFGPh3tL1zej5byBCFLf5LoBOwDS
	r0T7A0QbRLPnzGw+AilcRJd1ubFL6DGbyfxnFiQaVqMztSxAH08+0EyviptbZECmaqh732IjqTVzD
	/W9la7+VppSYTS9jbdS3A66JWwDGWJZkoi9UPu1jzArivaDp3OzqR0/KkIEMPkb/HsQ4vxSPZEv3+
	TC2BxxQNtBSPT5N5MbpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inCoC-0006QE-Ed; Fri, 03 Jan 2020 02:35:28 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inCo3-0006Ot-88
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 02:35:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so18537178plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 18:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tGEEwbHeUHLQP4Ptti/qDHixIuYd/unHWt5t4Ky3zjg=;
 b=LiuIunQyP8zym26WwockXUORPmoNJDXevkc/8TMfHbIAo8fkNVJ4LDlMkrE/Y43Uv1
 vSWw09goD6zpzLXL911InQKv73Ln7e2c3FT7DSPGtGyF0NdGg3+LPTOvJoDdfSdEIZTS
 +VnAHbHUJrBbXMdzO0xhJvDM88aidW+oPMvBiyM/Tx0SBAVGSUzfjmsutxs20j2NWnbY
 uS+W7DA+3tksOKfcM+T1gIF2IIm5VZYrKXo2YupNLPUjvCemqxxhQoes1pKC3UPz5kN+
 8pUeBnhBji7dEI+QoBbNDQhTRdMAohK2zu1suXtYbDc9LU2ao+ujyipgN8NOYUHgIZ8g
 /X9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tGEEwbHeUHLQP4Ptti/qDHixIuYd/unHWt5t4Ky3zjg=;
 b=uJI71NmKlrXhzu670cktKPzE01iF/FMl5aMED1gjIcI9o3+943wVxqKViXZXYoxwly
 TLtJCX+/RPmF6oone+0ForA2oHu9/bvtE7QewomV6oNbRFnIMgFWg/e6Vc404fQiQ6PB
 lpgMIGLVjibJfbjQDa/IADqUowuBKhA7JdkXU41rHH0qWM1zeqA+Ifs/JC6LpvoLxM+9
 v5csYKNbJ9XT7VoXcQY4yjEwAFP3tzd8W3VEt1XkesCscrQTtBHY7WquvLTgC0hjqw/C
 fOJgT4tYDQaC6KSUblBzO0/VrZIkpYc8VR9HSKsgL6lV7KQfMq8bpVL3r2piZjHvaR/t
 5IQg==
X-Gm-Message-State: APjAAAWEwWpkrQ59Qapu/yG14wJ5JcYnWR76SpWRvWkbWbSw7atShqLW
 8Fzu3GoV3XzDQWtQn/u+TSjzlFHG6Wc=
X-Google-Smtp-Source: APXvYqymLlV7m58zphcHYTAerP/fyjZ3gzvpczJHHzHMOoZE9w0bLKsKWEmyMN4uiUkm/RiW59QPbw==
X-Received: by 2002:a17:902:868e:: with SMTP id
 g14mr60508979plo.214.1578018916194; 
 Thu, 02 Jan 2020 18:35:16 -0800 (PST)
Received: from localhost ([43.224.245.179])
 by smtp.gmail.com with ESMTPSA id g7sm67200526pfq.33.2020.01.02.18.35.15
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Thu, 02 Jan 2020 18:35:15 -0800 (PST)
Date: Fri, 3 Jan 2020 10:35:13 +0800
From: chenqiwu <qiwuchen55@gmail.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] cpufreq: brcmstb-avs-cpufreq: avoid a stuck risk and UAF
 issue in brcm_avs_cpufreq_get()
Message-ID: <20200103023513.GA5021@cqw-OptiPlex-7050>
References: <1577536777-24966-1-git-send-email-qiwuchen55@gmail.com>
 <5ba60a5b-15dc-3420-29ea-f21990ed1c07@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ba60a5b-15dc-3420-29ea-f21990ed1c07@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_183521_793785_592E09B2 
X-CRM114-Status: GOOD (  24.54  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (qiwuchen55[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (qiwuchen55[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org,
 bcm-kernel-feedback-list@broadcom.com, mmayer@broadcom.com,
 chenqiwu@xiaomi.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 02, 2020 at 04:08:53PM -0800, Florian Fainelli wrote:
> On 12/28/19 4:39 AM, qiwuchen55@gmail.com wrote:
> > From: chenqiwu <chenqiwu@xiaomi.com>
> > 
> > brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get cpufreq policy,
> > meanwhile, it also increments the kobject reference count of policy to
> > mark it busy. However, a corresponding call to cpufreq_cpu_put() is
> > ignored to decrement the kobject reference count back, which may lead
> > to a potential stuck risk that cpuhp thread deadly wait for dropping
> > of refcount when cpufreq policy free.
> > 
> > The call trace of stuck risk could be:
> > cpufreq_online()  //If cpufreq initialization failed, goto out_free_policy.
> >     ->cpufreq_policy_free()	//Do cpufreq_policy free.
> >         ->cpufreq_policy_put_kobj()
> >             ->kobject_put()       //Skip if policy kfref count is not 1.
> >                 ->cpufreq_sysfs_release()
> >                     ->complete()  //Complete policy->kobj_unregister.
> >                 ->wait_for_completion() //Wait for policy->kobj_unregister.
> > 
> > A simple way to avoid this stuck risk is use cpufreq_cpu_get_raw()
> > instead of cpufreq_cpu_get(), since brcmstb-avs driver just wants
> > to get cpufreq policy.
> > 
> > What's more, there is a potential UAF issue in cpufreq_notify_transition()
> > that the cpufreq policy of current cpu has been released before using it.
> > So we should make a judgement to avoid it.
> > 
> > Thanks!
> > Qiwu
> > 
> > Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>
> 
> This can be easily exercised by attempting to force an unbind of the
> CPUfreq driver without your patch, we will indeed be stuck in the code
> sequence you indicated, whereas with your patch, we can successfully unbind.
> 
> You might want to make some changes though, since you return NULL from a
> function whose signature for the return type is unsigned int. If nothing
> else returning 0 would make sure you hit that code path:
> 
>         if (cpufreq_driver->get && !cpufreq_driver->setpolicy) {
>                 policy->cur = cpufreq_driver->get(policy->cpu);
>                 if (!policy->cur) {
>                         pr_err("%s: ->get() failed\n", __func__);
>                         goto out_exit_policy;
>                 }
> 
> something like this on top of your patch:
> 
> diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> index f4f0d6b4e77c..be559fc4e7c6 100644
> --- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
> +++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
> @@ -488,11 +488,11 @@ static unsigned int brcm_avs_cpufreq_get(unsigned
> int cpu)
>         struct private_data *priv;
> 
>         if (!policy)
> -               return NULL;
> +               return 0;
> 
>         priv = policy->driver_data;
>         if (!priv || !priv->base)
> -               return NULL;
> +               return 0;
> 
>         return brcm_avs_get_frequency(priv->base);
>  }
> 
> With that, you can add:
> 
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Tested-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> Thank you!
> -- 
> Florian
Hi Florian,
I agree your idea, since NULL equals to ((void *)0), return 0 matches
with unsigned int.

Thanks!
Qiwu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
