Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C882F1167D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 11:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghjI5Icsmq8DaSgsOtgJ07e3iSpoNMyOJcrhJQiCgq8=; b=ZNTe0BxYzryt2+
	D1wY8//cVGWb7dVxlqNps0HnaXcm4BPz93ncQ01Yc080E/stS/DUZuTWvcENS80tjNujOL5+i0c/l
	ueiJByGIPvcEgqSgB8WVPmYiTSrCV8A0dBcVNfc8qLiJZGy19f8Pi5WwhH0wKrnJY1Sk88Fu+ky+e
	rvc0+lQ0t2k8Awo7lCK5jRQslVeGU8SOmHiXldXHuvtz9tuRIYXhkuz8qLcDsG9WtoWCvMbIv/xrp
	EqJVwC+K1WyA+AqWYgRBJWeXWF7/86PbelSwIWRmw5bWpyskiNMM7kSSusJIxgRufK+LwOm5tXYJh
	CwSdlnNxXn5hHIMcnBCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM7tQ-00050H-S1; Thu, 02 May 2019 09:20:40 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM7tJ-0004zm-No
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 09:20:35 +0000
Received: by mail-ua1-x941.google.com with SMTP id p13so460365uaa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 02:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xElEiZiW+8pu34Zn/H1CxAQ/kgDPK4LUq386AHxjTlQ=;
 b=TSrUyX60EKf6hnSX7n348JqnAjc7CBmjuRHTMxv8ZRRlCVrqQpxWKtDVQRN2PvXIO3
 ZHmMt3HUk46j0W0Be7mbksA7LdN5DH+kttwaGS4VTFHt6vtKiJxdNvs67mUOWzvK55TD
 yP5cSjNs++Ak6Lor67tyTxHuTl0TxNnsThe0ya0HJEBaKOytky5uV4oga/GqfRT2Vhfy
 6RhHVOfgzNEnkNTfARi/sWriYwMuRwmYgO0Dl7dhzYxQ9pgHkxeeb0yRb/qsPvPdRLj1
 vVKzHaBNxKHOjyfkiJv+9dQAROaEq1XkwGtGvx/nN9qx0Qy5knNQYuLBDeTVeIzVjrVE
 m7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xElEiZiW+8pu34Zn/H1CxAQ/kgDPK4LUq386AHxjTlQ=;
 b=LwSGO8iaxj0tdjNBsH6MB+psQWul+uyANqQamln/VNONOwq2AIkVbSYGBOoK+7tqqD
 MCTC2qCq0dxvnyJidFQsktFEVtUD8Y2J54vmOmcujdh5vtddWmwQeEyibWvcR/LNx8hR
 JSzgDMUJzf1NfQqNa0X379D/q/57siG37VQy3gNVKKvAvXurK8vgdgWlI1vK3Uts6kCj
 zq0e3vTIlv254KpqWhWhQLKxkgtpF1I/+KVTHDj1JeXah7IoUpyVDHNN/DmO6gWzugn4
 EOlg1nxgTqllMNP+K0HsuBZwyUai+H6kDOwn1oLqd1OZn09j7UtsLNy0ssyEzGjh41Va
 qe2A==
X-Gm-Message-State: APjAAAUTwpTCIvs0V0QhM+xtEkRJTfPGdV788thgywPmz8taKC+1WkLV
 2mGOsfHL5++VLRrQxo6jAxwUmixs00wNibNjmkiNHQ==
X-Google-Smtp-Source: APXvYqxK5+VCynD8AlQT1IPEh2GNHLKAOGm07nTDMrk1pHiwKvHvUgYfslLeMERoH23TMyIaN1jJYB6R96qGLM5DQa0=
X-Received: by 2002:ab0:2a53:: with SMTP id p19mr1214638uar.100.1556788831779; 
 Thu, 02 May 2019 02:20:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556636234.git.leonard.crestez@nxp.com>
 <30247a52be55c3cb31d16b8ac0710d3ad51eea09.1556636234.git.leonard.crestez@nxp.com>
In-Reply-To: <30247a52be55c3cb31d16b8ac0710d3ad51eea09.1556636234.git.leonard.crestez@nxp.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 2 May 2019 11:19:55 +0200
Message-ID: <CAPDyKFr7wOpS9OCsy_ENxoXuEeGujY5A9DjnG0O+UiD5s51+mw@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] PM / Domains: Add GENPD_FLAG_RPM_ALWAYS_ON flag
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_022034_080731_C3270C4D 
X-CRM114-Status: GOOD (  20.72  )
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Apr 2019 at 17:06, Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> This is for power domains which can only be powered off for suspend but
> not as part of runtime PM.
>
> Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> ---
>  drivers/base/power/domain.c | 8 ++++++--
>  include/linux/pm_domain.h   | 4 ++++
>  2 files changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
> index 7a6aa2318915..33c30c1e6a30 100644
> --- a/drivers/base/power/domain.c
> +++ b/drivers/base/power/domain.c
> @@ -126,10 +126,11 @@ static const struct genpd_lock_ops genpd_spin_ops = {
>  #define genpd_status_on(genpd)         (genpd->status == GPD_STATE_ACTIVE)
>  #define genpd_is_irq_safe(genpd)       (genpd->flags & GENPD_FLAG_IRQ_SAFE)
>  #define genpd_is_always_on(genpd)      (genpd->flags & GENPD_FLAG_ALWAYS_ON)
>  #define genpd_is_active_wakeup(genpd)  (genpd->flags & GENPD_FLAG_ACTIVE_WAKEUP)
>  #define genpd_is_cpu_domain(genpd)     (genpd->flags & GENPD_FLAG_CPU_DOMAIN)
> +#define genpd_is_rpm_always_on(genpd)  (genpd->flags & GENPD_FLAG_RPM_ALWAYS_ON)
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
> +                       genpd_is_rpm_always_on(genpd) ||
> +                       atomic_read(&genpd->sd_count) > 0)
>                 return -EBUSY;
>
>         list_for_each_entry(pdd, &genpd->dev_list, list_node) {
>                 enum pm_qos_flags_status stat;
>
> @@ -1810,11 +1813,12 @@ int pm_genpd_init(struct generic_pm_domain *genpd,
>                 genpd->dev_ops.stop = pm_clk_suspend;
>                 genpd->dev_ops.start = pm_clk_resume;
>         }
>
>         /* Always-on domains must be powered on at initialization. */
> -       if (genpd_is_always_on(genpd) && !genpd_status_on(genpd))
> +       if ((genpd_is_always_on(genpd) || genpd_is_rpm_always_on(genpd)) &&
> +                       !genpd_status_on(genpd))
>                 return -EINVAL;
>
>         if (genpd_is_cpu_domain(genpd) &&
>             !zalloc_cpumask_var(&genpd->cpus, GFP_KERNEL))
>                 return -ENOMEM;
> diff --git a/include/linux/pm_domain.h b/include/linux/pm_domain.h
> index 0e8e356bed6a..b21f35f0ee2e 100644
> --- a/include/linux/pm_domain.h
> +++ b/include/linux/pm_domain.h
> @@ -51,16 +51,20 @@
>   *                             deploy idle power management support for CPUs
>   *                             and groups of CPUs. Note that, the backend
>   *                             driver must then comply with the so called,
>   *                             last-man-standing algorithm, for the CPUs in the
>   *                             PM domain.
> + *
> + * GENPD_FLAG_RPM_ALWAYS_ON:   Instructs genpd to always keep the PM domain
> + *                             powered on except for system suspend.
>   */
>  #define GENPD_FLAG_PM_CLK       (1U << 0)
>  #define GENPD_FLAG_IRQ_SAFE     (1U << 1)
>  #define GENPD_FLAG_ALWAYS_ON    (1U << 2)
>  #define GENPD_FLAG_ACTIVE_WAKEUP (1U << 3)
>  #define GENPD_FLAG_CPU_DOMAIN   (1U << 4)
> +#define GENPD_FLAG_RPM_ALWAYS_ON (1U << 5)
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
