Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A58A5DED9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 11:11:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WE7flSRwNIcM2bLheMVkHvYwLu0G8BhvpeyXWrJO8I=; b=jb0k63/Bvbam4q
	fJQZZvoOmfHjFiSu3oXnfSZw89cB7kP0KXn2f+RWbmRiBJVmsYXLb52yGCquYgfOrKzSHwc+mkLfQ
	mEjEVVuF1YYBfYPzYlM7YhryhcxJ9t4+KFU5ptSOlaBk2qbvXawYzTLi9K8zgH463LYAqrsOK4tf2
	Cg7XJxU/aQgKlUCd5IFYR5HVUzbQUcJnFXekK3mbVYfg6gATk6yK7flFsWq/pwVKEnTvf5gGXbnBn
	0iJw40PNOwU/rcMA/CHideLwGAxU53h8pMT9q7gWoj6KrCG2Z6lizyANTx2BYfmewO07GdIaJNhz2
	8S0P8zbVhdsvWIMh9YUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL2KB-0007h7-DV; Mon, 29 Apr 2019 09:11:47 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL2K3-0007ga-L0
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 09:11:41 +0000
Received: by mail-ua1-x941.google.com with SMTP id t15so3241682uao.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 02:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=asEe05QML5luh9BkHoaqsaC4xpJfu815zEv+T/idjic=;
 b=SRDYkKT4r4FbZt2UW9vSOSC4A+6AkmqH2u7dMpzN3NIznkVEpleLEFASjo6Vf2FJmW
 yvOGfMUBULgT5Y7H6M0Q0xGDaan8e8l9GXIuazjv4tsS6Rnl6iGwvEJTeoP0hjcM6tls
 P3FT4awK7iqjKaSlWeL06aRFXjxVMThlsJ1vB9m9Ku91pCMmz40oZ3Lu/nyN/L/+0rvn
 PK2n/2tk4tDoPIrScG5zjw4/Nr5nQ3ehRAuCDDU+mW+BVSW92t/MQnfliClwND4DCJZg
 hBJTtQOxVK6w/3hoYDkP2sfMJW94JeYvNxOPaLkCrd4kiI3aL3bAci4WDw5FdO4J695L
 6Iig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=asEe05QML5luh9BkHoaqsaC4xpJfu815zEv+T/idjic=;
 b=eCyYB1Pme9Pib/4PxUVgo/vZtWA3zr1K9ofaUQliTxki6vmIONqcWNVN5Zpkxt0+Wn
 me+yq5AzIgjjuQyL0qA8Qz21uls+gYiutCzaFZgOTRxkaFUq5yYpGKpRe4Y9qhbSVcoW
 yj1Lty1J5XukFHD9H6SEPiTR/KKnm7veE4XyFTFF3gKGMHNdLZxQ3v6ztkVaRVN3nP2O
 caUfEe7zEJjDPn322NHS4tV4YtLeVbdhOoPD3ptp0Hg8FrllbNDA2Dzu72x7/6LVdIZ7
 oR3wwt3zAuFWG0QLwc5ZzogUQmkZS4tM1yvlPyTNyw93RVw/ngV7IOtSLMULhQKb9vKD
 4pRg==
X-Gm-Message-State: APjAAAXKxYd6w4nZFof5NODypkFjmV4klfiVmkKjuBuIwCWSGHAd/vwD
 jAKELGgZOmHZ6o6yVgExsvbwYGKlpY/jzjetrgtkLQ==
X-Google-Smtp-Source: APXvYqw+Rx9ZZiHnKbSEQh57ahNSu2ujZISqgE/dNALPtLQdwUPVCFJVaxJi5MK+UwBtKhg4V2Gv3tUqE/HKwolbJ0Q=
X-Received: by 2002:ab0:2b13:: with SMTP id e19mr5345382uar.15.1556529098072; 
 Mon, 29 Apr 2019 02:11:38 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556313614.git.leonard.crestez@nxp.com>
 <68ccb5a90d1d2a596e7ed94ba3245171f013c781.1556313614.git.leonard.crestez@nxp.com>
In-Reply-To: <68ccb5a90d1d2a596e7ed94ba3245171f013c781.1556313614.git.leonard.crestez@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 29 Apr 2019 11:11:02 +0200
Message-ID: <CAPDyKFpCCapBfNbsR1Q+nyg8aenVJWxj9qmTCCCfmONZR3t1sg@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] PM / Domains: Add GENPD_FLAG_NO_RUNTIME_OFF flag
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_021139_696233_74A08439 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 Arulpandiyan Vadivel <Arulpandiyan_Vadivel@mentor.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 26 Apr 2019 at 23:38, Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> This is for power domains which can only be powered off for suspend but
> not as part of runtime PM.
>
> Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/base/power/domain.c | 8 ++++++--
>  include/linux/pm_domain.h   | 4 ++++
>  2 files changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
> index 189d7e14c611..f502218a0ddb 100644
> --- a/drivers/base/power/domain.c
> +++ b/drivers/base/power/domain.c
> @@ -126,10 +126,11 @@ static const struct genpd_lock_ops genpd_spin_ops = {
>  #define genpd_status_on(genpd)         (genpd->status == GPD_STATE_ACTIVE)
>  #define genpd_is_irq_safe(genpd)       (genpd->flags & GENPD_FLAG_IRQ_SAFE)
>  #define genpd_is_always_on(genpd)      (genpd->flags & GENPD_FLAG_ALWAYS_ON)
>  #define genpd_is_active_wakeup(genpd)  (genpd->flags & GENPD_FLAG_ACTIVE_WAKEUP)
>  #define genpd_is_cpu_domain(genpd)     (genpd->flags & GENPD_FLAG_CPU_DOMAIN)
> +#define genpd_is_no_runtime_off(genpd) (genpd->flags & GENPD_FLAG_NO_RUNTIME_OFF)

May I suggest to switch the name to, GENPD_FLAG_RUNTIME_ON.

Other than that, this looks good to me!

Kind regards
Uffe

>
>  static inline bool irq_safe_dev_in_no_sleep_domain(struct device *dev,
>                 const struct generic_pm_domain *genpd)
>  {
>         bool ret;
> @@ -513,11 +514,13 @@ static int genpd_power_off(struct generic_pm_domain *genpd, bool one_dev_on,
>         /*
>          * Abort power off for the PM domain in the following situations:
>          * (1) The domain is configured as always on.
>          * (2) When the domain has a subdomain being powered on.
>          */
> -       if (genpd_is_always_on(genpd) || atomic_read(&genpd->sd_count) > 0)
> +       if (genpd_is_always_on(genpd) ||
> +                       genpd_is_no_runtime_off(genpd) ||
> +                       atomic_read(&genpd->sd_count) > 0)
>                 return -EBUSY;
>
>         list_for_each_entry(pdd, &genpd->dev_list, list_node) {
>                 enum pm_qos_flags_status stat;
>
> @@ -1813,11 +1816,12 @@ int pm_genpd_init(struct generic_pm_domain *genpd,
>                 genpd->dev_ops.stop = pm_clk_suspend;
>                 genpd->dev_ops.start = pm_clk_resume;
>         }
>
>         /* Always-on domains must be powered on at initialization. */
> -       if (genpd_is_always_on(genpd) && !genpd_status_on(genpd))
> +       if ((genpd_is_always_on(genpd) || genpd_is_no_runtime_off(genpd)) &&
> +                       !genpd_status_on(genpd))
>                 return -EINVAL;
>
>         if (genpd_is_cpu_domain(genpd) &&
>             !zalloc_cpumask_var(&genpd->cpus, GFP_KERNEL))
>                 return -ENOMEM;
> diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
> index bc82e74560ee..c9f3137e2c00 100644
> --- a/include/linux/pm_domain.h
> +++ b/include/linux/pm_domain.h
> @@ -51,16 +51,20 @@
>   *                             deploy idle power management support for CPUs
>   *                             and groups of CPUs. Note that, the backend
>   *                             driver must then comply with the so called,
>   *                             last-man-standing algorithm, for the CPUs in the
>   *                             PM domain.
> + *
> + * GENPD_FLAG_NO_RUNTIME_OFF:  Instructs genpd to always keep the PM domain
> + *                             powered on except for system suspend.
>   */
>  #define GENPD_FLAG_PM_CLK       (1U << 0)
>  #define GENPD_FLAG_IRQ_SAFE     (1U << 1)
>  #define GENPD_FLAG_ALWAYS_ON    (1U << 2)
>  #define GENPD_FLAG_ACTIVE_WAKEUP (1U << 3)
>  #define GENPD_FLAG_CPU_DOMAIN   (1U << 4)
> +#define GENPD_FLAG_NO_RUNTIME_OFF (1U << 5) /* Never powered off by RPM */
>
>  enum gpd_status {
>         GPD_STATE_ACTIVE = 0,   /* PM domain is active */
>         GPD_STATE_POWER_OFF,    /* PM domain is off */
>  };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
