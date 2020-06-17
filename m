Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E541FCB44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyBZhfTfikTRmkfOsaVEvhSTiDTTiyyJM0D0IkJuL9I=; b=fVKBNUDppszRxA
	Xnzko+SImAkUrp0JzKAQOKluVhPzNCqvvHhco8dqHEfAVfm2Q1UIYc/Sbj+nkSblUn/A4MUC5bim+
	lQCdpLm2/78rKckxhXjj63/wCkfiUOkQT6M5QnSJCM94b2HpDlG7B+OiB5B2Bbmhn0ZwAG2ugszIA
	0TbkJ49Du3b99g5efrDAJ7f+hc6n1EKzdoB6jONmBpbo9/ZfenXmWkfojqH9g5Ya4f+M2WyBIOB/w
	YcUkZh7mnriIFTudH8XRIh/eDpOHCPJOladBJD20is0fFOk/bWLsFOHcVCgbq1acaPAXHciUk6+gf
	GvjilCrd2JP4Ucl2EEcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlVdb-0001y0-8M; Wed, 17 Jun 2020 10:49:47 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlVdK-0001vu-C2
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:49:32 +0000
Received: by mail-ej1-x644.google.com with SMTP id dr13so1807168ejc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 03:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c0YiZR/0JogxadNuaaf1uQ0iU9Zfr56Svwi+PMNymt4=;
 b=K1KPVfsxzHMmy9fFx5TCa+VwhEgU/e8ZBg2F3UkpgXxdN5XZqlTjHnmP38cJpaM0oY
 W/XxM/SF1mHgF1ecLbATLqlovmJ8QclxKXduTR7uKbSGd5qEXkthT9/KKJgBCpaSAi3l
 ppGRHB2k7Cfn/C65Urk2ph0mzzE6zxisuUsVD1HHrfO7/+4q4Do1plJ/3AKshuwxysMx
 LCwik5506H0V9e4rlgKqdTVXuPQd7EmwoXMrADuXRrFLnYYhKA6EkWC8+f1sYSGgb6TH
 RdO0Vu27zk8c0bhS9RzaaOQRhYHwwd5A8B+ZQSDn9s66b9bjlwEehWDTkbtGOIpHNMYC
 Sj1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c0YiZR/0JogxadNuaaf1uQ0iU9Zfr56Svwi+PMNymt4=;
 b=VlMShUPIPi95puiQ0uXh+dCczc/QvMtr58q78RiEWXe+C9zmdtAYbQ21piwJxsObeJ
 SFn1tvfYV7z/sK+1b/z+TNU7jk2qhbdrQOrqKsiPh3199OcjH3c51ToBfUdRnmLTGJmx
 y3jgyQV5WcBhaGNqaVf6Fqmfsj1zpJu4Q4J8/7vJ9ZFp4KBidbIfW6CBeErQ3WSE2t1V
 DoqfqB6NvDOO9Fe3Xh2zi6ZLa3fEZcL4t3LrBHCWCJnV47jDec2piwtLUrmGGZjQZCNw
 hKdi8BnUGERLIym9nlh/VUZ35TY09GeGJF1ZXIKjgLfKvoG9kOwTAxq17JP32pQ4oL/Y
 lbEw==
X-Gm-Message-State: AOAM531sYo3F1Z4R/YXqxbfoNF4gJqBbY2bi321pjQ4nEP8Wa3bsMCjP
 O2sf1KLeQ6JT8MmW0aEn/Rk4Fvn01DuIvnHCSfISbQ==
X-Google-Smtp-Source: ABdhPJxDwEr5BsQAWQrAu//fxP1TYSqxwr9HgBkoD24SU35NquqXv8kuCkH1hQYja/PGg7/nkg+18AREK64cWzXXCQY=
X-Received: by 2002:a17:907:9484:: with SMTP id
 dm4mr7298323ejc.56.1592390964917; 
 Wed, 17 Jun 2020 03:49:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200612121047.GF4282@kadam> <20200612121133.GA1139533@mwanda>
In-Reply-To: <20200612121133.GA1139533@mwanda>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 17 Jun 2020 11:49:14 +0100
Message-ID: <CAJ9a7Vjn-1gvOY0h5eiffXgqiNu4rz=Z18hgV33WExGnLEV-nA@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Fix error handling in probe
To: Dan Carpenter <dan.carpenter@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_034930_446349_DCD2AF4F 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dan,

Thanks for looking at this. I agree with the patch, other than the one
change below.
I have compiled and run on my DB410 system, against 5.8-rc1.

On Fri, 12 Jun 2020 at 14:46, Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> There were a couple problems with error handling in the probe function:
> 1)  If the "drvdata" allocation failed then it lead to a NULL
>     dereference.
> 2)  On several error paths we decremented "nr_cti_cpu" before it was
>     incremented which lead to a reference counting bug.
>
> There were also some parts of the error handling which were not bugs but
> were messy.  The error handling was confusing to read.  It printed some
> unnecessary error messages.
>
> The simplest way to fix these problems was to create a cti_pm_setup()
> function that did all the power management setup in one go.  That way
> when we call cti_pm_release() we don't have to deal with the
> complications of a partially configured power management config.
>
> I reversed the "if (drvdata->ctidev.cpu >= 0)" condition in cti_pm_release()
> so that it mirros the new cti_pm_setup() function.
>
> Fixes: 6a0953ce7de9 ("coresight: cti: Add CPU idle pm notifer to CTI devices")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> Please note!!!  I cannot compile this patch.  Mike can you review it?
>
>  drivers/hwtracing/coresight/coresight-cti.c | 96 ++++++++++++---------
>  1 file changed, 54 insertions(+), 42 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> index 40387d58c8e7..d2da5bf9f552 100644
> --- a/drivers/hwtracing/coresight/coresight-cti.c
> +++ b/drivers/hwtracing/coresight/coresight-cti.c
> @@ -747,17 +747,50 @@ static int cti_dying_cpu(unsigned int cpu)
>         return 0;
>  }
>
> +static int cti_pm_setup(struct cti_drvdata *drvdata)
> +{
> +       int ret;
> +
> +       if (drvdata->ctidev.cpu == -1)
> +               return 0;
> +
> +       if (nr_cti_cpu)
> +               goto done;
> +
> +       cpus_read_lock();
> +       ret = cpuhp_setup_state_nocalls_cpuslocked(
> +                       CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
> +                       "arm/coresight_cti:starting",
> +                       cti_starting_cpu, cti_dying_cpu);
> +       if (ret) {
> +               cpus_read_unlock();
> +               return ret;
> +       }
> +
> +       ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
> +       cpus_read_unlock();
> +       if (ret) {
> +               cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> +               return ret;
> +       }
> +
> +done:
> +       nr_cti_cpu++;
> +       cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> +
> +       return 0;
> +}
> +
>  /* release PM registrations */
>  static void cti_pm_release(struct cti_drvdata *drvdata)
>  {
> -       if (drvdata->ctidev.cpu >= 0) {
> -               if (--nr_cti_cpu == 0) {
> -                       cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> +       if (drvdata->ctidev.cpu == -1)
> +               return;
>
> -                       cpuhp_remove_state_nocalls(
> -                               CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> -               }
> -               cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
> +       cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;

This should remain as  cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
here. We are reversing the assignment in cti_pm_setup().

> +       if (--nr_cti_cpu == 0) {
> +               cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> +               cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
>         }
>  }
>
> @@ -823,19 +856,14 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>
>         /* driver data*/
>         drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> -       if (!drvdata) {
> -               ret = -ENOMEM;
> -               dev_info(dev, "%s, mem err\n", __func__);
> -               goto err_out;
> -       }
> +       if (!drvdata)
> +               return -ENOMEM;
>
>         /* Validity for the resource is already checked by the AMBA core */
>         base = devm_ioremap_resource(dev, res);
> -       if (IS_ERR(base)) {
> -               ret = PTR_ERR(base);
> -               dev_err(dev, "%s, remap err\n", __func__);
> -               goto err_out;
> -       }
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
>         drvdata->base = base;
>
>         dev_set_drvdata(dev, drvdata);
> @@ -854,8 +882,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>         pdata = coresight_cti_get_platform_data(dev);
>         if (IS_ERR(pdata)) {
>                 dev_err(dev, "coresight_cti_get_platform_data err\n");
> -               ret =  PTR_ERR(pdata);
> -               goto err_out;
> +               return  PTR_ERR(pdata);
>         }
>
>         /* default to powered - could change on PM notifications */
> @@ -867,35 +894,20 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>                                                drvdata->ctidev.cpu);
>         else
>                 cti_desc.name = coresight_alloc_device_name(&cti_sys_devs, dev);
> -       if (!cti_desc.name) {
> -               ret = -ENOMEM;
> -               goto err_out;
> -       }
> +       if (!cti_desc.name)
> +               return -ENOMEM;
>
>         /* setup CPU power management handling for CPU bound CTI devices. */
> -       if (drvdata->ctidev.cpu >= 0) {
> -               cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> -               if (!nr_cti_cpu++) {
> -                       cpus_read_lock();
> -                       ret = cpuhp_setup_state_nocalls_cpuslocked(
> -                               CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
> -                               "arm/coresight_cti:starting",
> -                               cti_starting_cpu, cti_dying_cpu);
> -
> -                       if (!ret)
> -                               ret = cpu_pm_register_notifier(&cti_cpu_pm_nb);
> -                       cpus_read_unlock();
> -                       if (ret)
> -                               goto err_out;
> -               }
> -       }
> +       ret = cti_pm_setup(drvdata);
> +       if (ret)
> +               return ret;
>
>         /* create dynamic attributes for connections */
>         ret = cti_create_cons_sysfs(dev, drvdata);
>         if (ret) {
>                 dev_err(dev, "%s: create dynamic sysfs entries failed\n",
>                         cti_desc.name);
> -               goto err_out;
> +               goto pm_release;
>         }
>
>         /* set up coresight component description */
> @@ -908,7 +920,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>         drvdata->csdev = coresight_register(&cti_desc);
>         if (IS_ERR(drvdata->csdev)) {
>                 ret = PTR_ERR(drvdata->csdev);
> -               goto err_out;
> +               goto pm_release;
>         }
>
>         /* add to list of CTI devices */
> @@ -927,7 +939,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
>         dev_info(&drvdata->csdev->dev, "CTI initialized\n");
>         return 0;
>
> -err_out:
> +pm_release:
>         cti_pm_release(drvdata);
>         return ret;
>  }
> --
> 2.27.0
>

Reviewed-by Mike Leach <mike.leach@linaro.org>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
