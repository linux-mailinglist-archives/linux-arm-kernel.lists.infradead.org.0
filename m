Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6638A12F201
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 01:09:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nsmeICVy9MYjvakiFgH1EFn26BHw6EYP/lCGskdSHYI=; b=Zq8rvZHsLeaG5P
	XN5faOktPn7EvA1oZd6MzpQcaWhad8NR9BIOKtw9nD6IA0XvupGGPGCJC8ePccq7cRnGlw7WVYPni
	HugTWks9M110vBLAxT/aB9ctwLXPd0GUYL6nGiOX8cBCbOgahPbT2PSW1e5v7I2K8FJGJTT3Wx8ag
	RKIiRccbDKZHMZqvFJqGuqQX+nA6Vju1egZGCNB5wj32kH2X61YuI2tjDQKLhTatR8z/GMqJvZE7d
	3mXKL3CtaVfiwL00ECa32T1Tdinmzy3SCbsnldzRk7D0z4UOOHfgQwqLOuwDV80hWsnlNIYD6W2Xp
	EqJ1SdWEeKpjjoZmMpSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inAWV-0002FK-TE; Fri, 03 Jan 2020 00:09:03 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inAWP-0002Eh-Gd
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 00:08:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id n59so4026594pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 16:08:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h+Z1sgjjjWzxFF5I8seT3A3Jj02mloF1FgWocQL4rHE=;
 b=Lt+4hJpZr8Em6qVjiStZ0DO3wGlF3vX77dAlW1namxMzQUkhaDE+X1PegxyLynkXnY
 LcjM2raJ3ZGcsANe4pPN4z+SPaUdwd0K27dfze3Zqf8dZXoHs1iZNuekNldEHS6nHS7+
 N5GeQUhGDfHdqa1aGFSpmqvkJKuNho6/GdKKPNdiGZZdCSvHhAgW+3N3+PneZ8B2H8XY
 kcdToC34HCr+HdaUkepuHR/wLZBtfaQ4BuK9EnmHcT9Ok1cqZC+G+StM/UMM8uqMtPog
 baVCRmdwK2+mx06uHT8iZMeo3WV6Vs9zUTLMspmeT01i95Oly99ToUdfh3niMH6lOc2c
 SzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=h+Z1sgjjjWzxFF5I8seT3A3Jj02mloF1FgWocQL4rHE=;
 b=B39PurKVZjz4OtMkBf2ZzsGRFR4OVxf0AciXDSoEiEnFQZj6n6h/cZQaN1oycKLgEr
 n6QTC/T+pbtz6Gtlz5a0LiL/Rc327xz1ljIkj5eFgIeUgJ1U+gg1bcuLKOv1gbW13qf0
 34ZcpOZ6FRnAy4w0876lHMyInnPeF4XWCaBEP104UWtGrmHBi544137FMafNN8D2konK
 J50tH3LebmDJIBu8gjiEMzvWopRpr6hR4f/yI6JY4xJM9zVDrVqDjIdGFReZ9TNpoA+P
 1nYUsuzgPcHVWGMiaKjPLQu23wuCutdfcc2W2qU74cJ/D76eC6q8EkpJvMEoCE5AEnjJ
 UuDw==
X-Gm-Message-State: APjAAAV6h2jrbyHVRV6/gU07JCHy06uTvuhSdETRw+Oip+Zp3+rkcaAk
 KEZw/+e764Ke1o2u3R4u/ls=
X-Google-Smtp-Source: APXvYqzy/a4H3zteupMFG5xjHoQpDcXviSYILLDBfliYti/Aj+LkSsvRGFPofOtc7KGrSbtWhG/ZKA==
X-Received: by 2002:a17:902:b487:: with SMTP id
 y7mr65333840plr.29.1578010136390; 
 Thu, 02 Jan 2020 16:08:56 -0800 (PST)
Received: from [10.67.50.49] ([192.19.223.252])
 by smtp.googlemail.com with ESMTPSA id f23sm60444959pgj.76.2020.01.02.16.08.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2020 16:08:55 -0800 (PST)
Subject: Re: [PATCH] cpufreq: brcmstb-avs-cpufreq: avoid a stuck risk and UAF
 issue in brcm_avs_cpufreq_get()
To: qiwuchen55@gmail.com, mmayer@broadcom.com, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, f.fainelli@gmail.com
References: <1577536777-24966-1-git-send-email-qiwuchen55@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 G10n8gCguORqNGMsVRxrlLs7/himep7MrCc=
Message-ID: <5ba60a5b-15dc-3420-29ea-f21990ed1c07@gmail.com>
Date: Thu, 2 Jan 2020 16:08:53 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1577536777-24966-1-git-send-email-qiwuchen55@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_160857_581084_5A3BE9F6 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: chenqiwu <chenqiwu@xiaomi.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/28/19 4:39 AM, qiwuchen55@gmail.com wrote:
> From: chenqiwu <chenqiwu@xiaomi.com>
> 
> brcm_avs_cpufreq_get() calls cpufreq_cpu_get() to get cpufreq policy,
> meanwhile, it also increments the kobject reference count of policy to
> mark it busy. However, a corresponding call to cpufreq_cpu_put() is
> ignored to decrement the kobject reference count back, which may lead
> to a potential stuck risk that cpuhp thread deadly wait for dropping
> of refcount when cpufreq policy free.
> 
> The call trace of stuck risk could be:
> cpufreq_online()  //If cpufreq initialization failed, goto out_free_policy.
>     ->cpufreq_policy_free()	//Do cpufreq_policy free.
>         ->cpufreq_policy_put_kobj()
>             ->kobject_put()       //Skip if policy kfref count is not 1.
>                 ->cpufreq_sysfs_release()
>                     ->complete()  //Complete policy->kobj_unregister.
>                 ->wait_for_completion() //Wait for policy->kobj_unregister.
> 
> A simple way to avoid this stuck risk is use cpufreq_cpu_get_raw()
> instead of cpufreq_cpu_get(), since brcmstb-avs driver just wants
> to get cpufreq policy.
> 
> What's more, there is a potential UAF issue in cpufreq_notify_transition()
> that the cpufreq policy of current cpu has been released before using it.
> So we should make a judgement to avoid it.
> 
> Thanks!
> Qiwu
> 
> Signed-off-by: chenqiwu <chenqiwu@xiaomi.com>

This can be easily exercised by attempting to force an unbind of the
CPUfreq driver without your patch, we will indeed be stuck in the code
sequence you indicated, whereas with your patch, we can successfully unbind.

You might want to make some changes though, since you return NULL from a
function whose signature for the return type is unsigned int. If nothing
else returning 0 would make sure you hit that code path:

        if (cpufreq_driver->get && !cpufreq_driver->setpolicy) {
                policy->cur = cpufreq_driver->get(policy->cpu);
                if (!policy->cur) {
                        pr_err("%s: ->get() failed\n", __func__);
                        goto out_exit_policy;
                }

something like this on top of your patch:

diff --git a/drivers/cpufreq/brcmstb-avs-cpufreq.c
b/drivers/cpufreq/brcmstb-avs-cpufreq.c
index f4f0d6b4e77c..be559fc4e7c6 100644
--- a/drivers/cpufreq/brcmstb-avs-cpufreq.c
+++ b/drivers/cpufreq/brcmstb-avs-cpufreq.c
@@ -488,11 +488,11 @@ static unsigned int brcm_avs_cpufreq_get(unsigned
int cpu)
        struct private_data *priv;

        if (!policy)
-               return NULL;
+               return 0;

        priv = policy->driver_data;
        if (!priv || !priv->base)
-               return NULL;
+               return 0;

        return brcm_avs_get_frequency(priv->base);
 }

With that, you can add:

Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Tested-by: Florian Fainelli <f.fainelli@gmail.com>

Thank you!
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
