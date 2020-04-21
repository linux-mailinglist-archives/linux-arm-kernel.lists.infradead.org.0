Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468C01B23ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 12:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTyuVHkYqvvSfKx0Q+EkdLH0doSJMK8U8Qwj+T0nJcU=; b=TqbE4xYCp+wvpn
	0/G7A2DSpPXEYT8fyYEY/vh0rkLgVIuP5SAn6Z4WGwZ+ZL3yMugc5Ij4cYADvy2S2NfnSKBxaecB+
	dqNcYRJqfsj68KKzGKog+r1k25d4ITprLDQOY4GnQVR4fSGjGEJLewUK4YTxoqqv95VM2EAtMBzOf
	WR7NH+lJlhaQrzIqdRoIJXfGPwGtGRrNU6rKxwR+yiNOGwbojGwGGjhgFYcoSD9HtXMqY6E+XpsHu
	+uO2r35ZzwBarbj3/ft3bqmlSmuVoyp/4Yd9WPfGq+JHqT+qSsC7UtpoxhIjjy963UZwulXe19VXV
	33p87eK8RyJP9+VQN17g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQqEN-0000vf-WC; Tue, 21 Apr 2020 10:34:20 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQqE7-0000sk-78
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 10:34:06 +0000
Received: by mail-ej1-x644.google.com with SMTP id re23so10604010ejb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 03:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D2hiFbFpeqI3UA1jm3eupsMgZzI4Zr656OrPwr2Pcbg=;
 b=MAvZodZ/fCc6scKy74YlQx3VkLmUky07SNEsGF7+8RbgfovAhqkCNSdQVxtUyvbb1s
 H+0N4mgb0a2r+3AxETxPISs3aXbsg5C+QLRn7lOQzk56Jq26Am8A9/C4Mz6mNqKQGAa2
 EqWSO/PgyHNQnyqLmnCQhhZ+KTqINW51uxZgCCfF2SQRqdMNdkXTZJzF9diYjwXrSnAk
 L0V2u551OukqrsDKff3zFim9oVsyxDOn79/bhOnaCUknM2oZ7B5pDDnbefRntF2Yccon
 GeQdTa6LL+i9oo36qIe/grjyTB5Qnoy5QKYUQ9ITynWE9C7iDt+ucppi8ocV0xSMBOEv
 KNLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D2hiFbFpeqI3UA1jm3eupsMgZzI4Zr656OrPwr2Pcbg=;
 b=neIvu5+SJy1yosvHGBFQ6+iHl6YRKbhnPPTfvCY+XcvNT9hGFkOyV5DzewrmO1KAzT
 txCGlOgcSjtLnDaOddqpPzI7CCjaFzH7POtiJiHu1GBnDlfB/TUAsmUy73j69jQhC/+v
 ahoQ3/LP86ncN+iH4v2SdTyU/2A+WefywD9iWaJvDMZrI32HNW7a5Wgx4EwztfxH6Xv+
 z3g1GLRZRmamcAObRKz+ezfgiI3mUDxr4uTL9ePUpLzd2aZaf8vaCBP0vtEXjSH1/s+G
 3CvXtnO8PGdoXdFSA/h7Lq+cRc8WtBa/uCWE10KULgHH4quN/+UqwZom8gg1ibwgtB3Q
 wu0A==
X-Gm-Message-State: AGi0Pua6yoK/rgD01Vl2ze26l2IQQqCtkgtC0kaYItSLnjHjcUmZeAPL
 fI4YtOjKwjAfzDWNXIhrnWcmZkMJtxLGkziRANJn9A==
X-Google-Smtp-Source: APiQypISk8v8QGM7t20jvNcNCEUhzjEwvnpAeAudaT0bTVBzxu3qL/Zx8gG0YfjUR/vw1zybdAGNldUTvAIQfs8IeqQ=
X-Received: by 2002:a17:906:8609:: with SMTP id
 o9mr20809069ejx.361.1587465240951; 
 Tue, 21 Apr 2020 03:34:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200415201116.15687-1-mike.leach@linaro.org>
 <20200420205827.GC25885@xps15>
In-Reply-To: <20200420205827.GC25885@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 21 Apr 2020 11:33:49 +0100
Message-ID: <CAJ9a7VjaxFmfC7K4JJVr-3mZAdDfZrZ4B8iGy64Od7VVw-6kWw@mail.gmail.com>
Subject: Re: [PATCH] coresight: cti: Add power management to CTI driver
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_033403_824789_D2F8E114 
X-CRM114-Status: GOOD (  31.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Mon, 20 Apr 2020 at 21:58, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> Good day Mike,
>
> On Wed, Apr 15, 2020 at 09:11:16PM +0100, Mike Leach wrote:
> > Add in CPU hotplug and CPU idle power management handling to CTI driver.
> >
> > Only CPU bound CTIs will register with the PM routines, to enable PM of
> > CTI alongside PM of ETM devices.
> >
> > Need separate HP PM event CPUHP_AP_ARM_CORESIGHT_CTI_STARTING as events
> > can only be registered once.
> >
> > Applies to Linux 5.7-rc1, tested on platforms Juno-r1 and DB410c.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >  drivers/hwtracing/coresight/coresight-cti.c | 163 +++++++++++++++++++-
> >  include/linux/cpuhotplug.h                  |   1 +
>
> Please split this set in half, one for pm_runtime and another one for hotplug.
>

Will do.

> >  2 files changed, 156 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-cti.c b/drivers/hwtracing/coresight/coresight-cti.c
> > index aa6e0249bd70..31996a20ce69 100644
> > --- a/drivers/hwtracing/coresight/coresight-cti.c
> > +++ b/drivers/hwtracing/coresight/coresight-cti.c
> > @@ -5,6 +5,7 @@
> >   */
> >
> >  #include <linux/property.h>
> > +#include <linux/cpu_pm.h>
> >  #include "coresight-cti.h"
> >
> >  /**
> > @@ -27,6 +28,12 @@ static DEFINE_MUTEX(ect_mutex);
> >  #define csdev_to_cti_drvdata(csdev)  \
> >       dev_get_drvdata(csdev->dev.parent)
> >
> > +/* power management handling */
> > +static int nr_cti_cpu;
> > +
> > +/* quick lookup list for CPU bound CTIs when power handling */
> > +static struct cti_drvdata *cti_cpu_drvdata[NR_CPUS];
> > +
> >  /*
> >   * CTI naming. CTI bound to cores will have the name cti_cpu<N> where
> >   * N is the CPU ID. System CTIs will have the name cti_sys<I> where I
> > @@ -36,7 +43,7 @@ static DEFINE_MUTEX(ect_mutex);
> >   */
> >  DEFINE_CORESIGHT_DEVLIST(cti_sys_devs, "cti_sys");
> >
> > -/* write set of regs to hardware - call with spinlock claimed */
> > +/* write set of regs to hardware - call with spinlock claimed / cpu context */
> >  void cti_write_all_hw_regs(struct cti_drvdata *drvdata)
> >  {
> >       struct cti_config *config = &drvdata->config;
> > @@ -73,7 +80,7 @@ static void cti_enable_hw_smp_call(void *info)
> >  }
> >
> >  /* write regs to hardware and enable */
> > -static int cti_enable_hw(struct cti_drvdata *drvdata)
> > +static int cti_enable_hw(struct cti_drvdata *drvdata, bool hp_re_enable)
>
> s/hp_re_enable/hp_event
>
>
> >  {
> >       struct cti_config *config = &drvdata->config;
> >       struct device *dev = &drvdata->csdev->dev;
> > @e -82,8 +89,11 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
> >       pm_runtime_get_sync(dev->parent);
> >       spin_lock(&drvdata->spinlock);
> >
> > -     /* no need to do anything if enabled or unpowered*/
> > -     if (config->hw_enabled || !config->hw_powered)
> > +     /* no need to do anything if enabled or unpowered */
> > +     if (!hp_re_enable) {
> > +             if (config->hw_enabled || !config->hw_powered)
> > +                     goto cti_state_unchanged;
> > +     } else if (!atomic_read(&drvdata->config.enable_req_count))
> >               goto cti_state_unchanged;
> >
> >       /* claim the device */
> > @@ -91,7 +101,7 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
> >       if (rc)
> >               goto cti_err_not_enabled;
> >
> > -     if (drvdata->ctidev.cpu >= 0) {
> > +     if (drvdata->ctidev.cpu >= 0 && !hp_re_enable) {
> >               rc = smp_call_function_single(drvdata->ctidev.cpu,
> >                                             cti_enable_hw_smp_call,
> >                                             drvdata, 1);
> > @@ -102,12 +112,15 @@ static int cti_enable_hw(struct cti_drvdata *drvdata)
> >       }
> >
> >       config->hw_enabled = true;
> > -     atomic_inc(&drvdata->config.enable_req_count);
> > +     if (!hp_re_enable)
> > +             atomic_inc(&drvdata->config.enable_req_count);
> > +
>
> We are dealing with 2 different variables, i.e CPU CTI vs global CTI, hotplug
> event vs framework event.  I wonder if we have just enough complexity to spin
> off two flavours of cti_enable_hw()...
>

The complexity comes from the re-enable requirement not wanting to
update any reference counting rather than the CPU / global CTI.
On this basis I agree - perhaps cti_enable_hw() /
cti_hp_re_enable_hw() would work - at the cost of some repeated code.


> >       spin_unlock(&drvdata->spinlock);
> >       return rc;
> >
> >  cti_state_unchanged:
> > -     atomic_inc(&drvdata->config.enable_req_count);
> > +     if (!hp_re_enable)
> > +             atomic_inc(&drvdata->config.enable_req_count);
> >
> >       /* cannot enable due to error */
> >  cti_err_not_enabled:
> > @@ -563,12 +576,127 @@ static void cti_remove_conn_xrefs(struct cti_drvdata *drvdata)
> >       }
> >  }
> >
> > +/** cti PM callbacks **/
> > +static int cti_cpu_pm_notify(struct notifier_block *nb, unsigned long cmd,
> > +                          void *v)
> > +{
> > +     struct cti_drvdata *drvdata;
> > +     unsigned int cpu = smp_processor_id();
> > +
> > +     if (!cti_cpu_drvdata[cpu])
> > +             return NOTIFY_OK;
> > +
> > +     drvdata = cti_cpu_drvdata[cpu];
> > +
> > +     if (WARN_ON_ONCE(drvdata->ctidev.cpu != cpu))
> > +             return NOTIFY_BAD;
> > +
> > +     switch (cmd) {
> > +     case CPU_PM_ENTER:
> > +             /* CTI regs all static - we have a copy & nothing to save */
> > +             drvdata->config.hw_powered = false;
> > +             if (drvdata->config.hw_enabled)
> > +                     coresight_disclaim_device(drvdata->base);
> > +             break;
> > +
> > +     case CPU_PM_ENTER_FAILED:
> > +             drvdata->config.hw_powered = true;
> > +             if (drvdata->config.hw_enabled) {
> > +                     if (coresight_claim_device(drvdata->base))
> > +                             drvdata->config.hw_enabled = false;
> > +             }
> > +             break;
> > +
> > +     case CPU_PM_EXIT:
> > +             /* write hardware registers to re-enable. */
> > +             drvdata->config.hw_powered = true;
> > +             drvdata->config.hw_enabled = false;
> > +
> > +             /* check enable reference count to enable HW */
> > +             if (atomic_read(&drvdata->config.enable_req_count)) {
> > +                     /* check we can claim the device as we re-power */
> > +                     if (coresight_claim_device(drvdata->base))
> > +                             return NOTIFY_OK;
> > +
> > +                     drvdata->config.hw_enabled = true;
> > +                     cti_write_all_hw_regs(drvdata);
> > +             }
> > +             break;
> > +     default:
> > +             return NOTIFY_DONE;
> > +     }
>
> For all of the above the config's hw_enabled and hw_powered are manipulated
> without taking drvdata->spinlock.  Please use spin_trylock() and spin_unlock().
>

OK - good point.

> > +
> > +     return NOTIFY_OK;
> > +}
> > +
> > +static struct notifier_block cti_cpu_pm_nb = {
> > +     .notifier_call = cti_cpu_pm_notify,
> > +};
> > +
> > +static int cti_cpu_pm_register(void)
> > +{
> > +     if (IS_ENABLED(CONFIG_CPU_PM))
> > +             return cpu_pm_register_notifier(&cti_cpu_pm_nb);
> > +
> > +     return 0;
> > +}
> > +
> > +static void cti_cpu_pm_unregister(void)
> > +{
> > +     if (IS_ENABLED(CONFIG_CPU_PM))
> > +             cpu_pm_unregister_notifier(&cti_cpu_pm_nb);
> > +}
> > +
> > +/* CPU HP handlers */
> > +static int cti_starting_cpu(unsigned int cpu)
> > +{
> > +     struct cti_drvdata *drvdata = cti_cpu_drvdata[cpu];
> > +
> > +     if (!drvdata)
> > +             return 0;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     drvdata->config.hw_powered = true;
> > +     spin_unlock(&drvdata->spinlock);
> > +
> > +     cti_enable_hw(drvdata, true);
> > +     return 0;
> > +}
> > +
> > +static int cti_dying_cpu(unsigned int cpu)
> > +{
> > +     struct cti_drvdata *drvdata = cti_cpu_drvdata[cpu];
> > +
> > +     if (!drvdata)
> > +             return 0;
> > +
> > +     spin_lock(&drvdata->spinlock);
> > +     drvdata->config.hw_powered = false;
> > +     coresight_disclaim_device(drvdata->base);
> > +     spin_unlock(&drvdata->spinlock);
> > +     return 0;
> > +}
> > +
> > +/* release PM registrations */
> > +static void cti_pm_release(struct cti_drvdata *drvdata)
> > +{
> > +     if (drvdata->ctidev.cpu >= 0) {
> > +             if (--nr_cti_cpu == 0) {
> > +                     cti_cpu_pm_unregister();
> > +
> > +                     cpuhp_remove_state_nocalls(
> > +                             CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
> > +             }
> > +             cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
> > +     }
>
>         if (drvdata->ctidev.cpu < 0)
>                 return;
>
>         if (--nr_cti_cpu > 0)
>                 return;
>
>         cti_cpu_pm_unregister();
>         cpuhp_remove_state_nocalls(CPUHP_AP_ARM_CORESIGHT_CTI_STARTING);
>         cti_cpu_drvdata[drvdata->ctidev.cpu] = NULL;
>

Agreed.

> > +
> >  /** cti ect operations **/
> >  int cti_enable(struct coresight_device *csdev)
> >  {
> >       struct cti_drvdata *drvdata = csdev_to_cti_drvdata(csdev);
> >
> > -     return cti_enable_hw(drvdata);
> > +     return cti_enable_hw(drvdata, false);
> >  }
> >
> >  int cti_disable(struct coresight_device *csdev)
> > @@ -598,6 +726,7 @@ static void cti_device_release(struct device *dev)
> >
> >       mutex_lock(&ect_mutex);
> >       cti_remove_conn_xrefs(drvdata);
> > +     cti_pm_release(drvdata);
> >
> >       /* remove from the list */
> >       list_for_each_entry_safe(ect_item, ect_tmp, &ect_net, node) {
> > @@ -673,6 +802,23 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
> >               goto err_out;
> >       }
> >
> > +     /* setup CPU power management handling for CPU bound CTI devices. */
> > +     if (drvdata->ctidev.cpu >= 0) {
> > +             cti_cpu_drvdata[drvdata->ctidev.cpu] = drvdata;
> > +             if (!nr_cti_cpu++) {
> > +                     cpus_read_lock();
> > +                     cpuhp_setup_state_nocalls_cpuslocked(
> > +                             CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
>
> Any reasons CPUHP_AP_ARM_CORESIGHT_STARTING couldn't be reused?
>

Yes - any CPUHP constant can only be registered with the system once -
a second attempt is rejected by the API. Last year I proposed moving
the HP stuff out of the ETM driver into the generic coresight area,
and developed a structure for any driver to use it - this approach was
rejected by both you and Suzuki. We discussed @ the last connect and
agreed that an additional CPUHP constant was the way to go.

Thanks for the feedback.

Mike

> Thanks,
> Mathieu
>
> > +                             "arm/coresight_cti:starting",
> > +                             cti_starting_cpu, cti_dying_cpu);
> > +
> > +                     ret = cti_cpu_pm_register();
> > +                     cpus_read_unlock();
> > +                     if (ret)
> > +                             goto err_out;
> > +             }
> > +     }
> > +
> >       /* create dynamic attributes for connections */
> >       ret = cti_create_cons_sysfs(dev, drvdata);
> >       if (ret) {
> > @@ -711,6 +857,7 @@ static int cti_probe(struct amba_device *adev, const struct amba_id *id)
> >       return 0;
> >
> >  err_out:
> > +     cti_pm_release(drvdata);
> >       return ret;
> >  }
> >
> > diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> > index 77d70b633531..6dc7332307ca 100644
> > --- a/include/linux/cpuhotplug.h
> > +++ b/include/linux/cpuhotplug.h
> > @@ -142,6 +142,7 @@ enum cpuhp_state {
> >       CPUHP_AP_ARM_XEN_STARTING,
> >       CPUHP_AP_ARM_KVMPV_STARTING,
> >       CPUHP_AP_ARM_CORESIGHT_STARTING,
> > +     CPUHP_AP_ARM_CORESIGHT_CTI_STARTING,
> >       CPUHP_AP_ARM64_ISNDEP_STARTING,
> >       CPUHP_AP_SMPCFD_DYING,
> >       CPUHP_AP_X86_TBOOT_DYING,
> > --
> > 2.17.1
> >



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
