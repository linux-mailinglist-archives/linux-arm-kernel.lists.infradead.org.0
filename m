Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3301FD5F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 22:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHHpLFGisMMf0/INnfCjaUGha73i7ST6MlkEKLyxiOU=; b=nBilVCDDkRCjNz
	WkXyVCFiqd3EmhizqrnDIiuJU4shx57o2OilmY8uZ+Qpu+prX+jMWVaeAJIBLD5wz17uqnoMaaV7n
	OX96KrEcGcHxa5iYd6OOtj4B5OOkiZe2hC38k7HKk1NeaxFTJC5q3PgrCU26VjyRfQZL/6mjphYeB
	rGmGMqym54F2hnPUv/bF0mmecxPUE9xYipaHkSdLmME1lqg+Y/1i0ve3/bEQC9TLCuw9hOPkJ3EzS
	noe3IGebXUCaNWS+36IuQBZUzNWhwjB1UnoclrrcxwbrygdkLC2xY1FKJiRZce4JefuHMknijKOJa
	7Oeuw8Ni71CeBkPIAhrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jleao-0005EG-Af; Wed, 17 Jun 2020 20:23:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jleaY-0005Dr-PV
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 20:23:16 +0000
Received: by mail-pg1-x544.google.com with SMTP id b5so1824742pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 13:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:content-transfer-encoding:in-reply-to:references
 :subject:from:cc:to:date:message-id:user-agent;
 bh=eps4Ei5p4v0C3v2/fz1NIeuMiErn9v1jAL+UTG1cAZ4=;
 b=KUwEnnVuoDexMEaNIhuG4RLuBUPsEa0c8mx/p66yeGTJknY5jo5chKwZr87y1L3H+5
 FLevFJUpgH8KfcLzKSALX5DDxCB7+s9Mqo++j4RM5/MFcO9wC+IcBRKXSPpo8C7wyHud
 dj86nf9Qb1XbOuSKdsBKTtZI7uk0dkGUjuwmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:subject:from:cc:to:date:message-id
 :user-agent;
 bh=eps4Ei5p4v0C3v2/fz1NIeuMiErn9v1jAL+UTG1cAZ4=;
 b=d6U8CNn0DAtY/3umjhVsoXFFtta+X1b+GAlvzOHdnmkK+nlW0yfmF04Kb2pRHG5CEx
 7xYJkEh/841dUyfO4/gfcI4I4lSNJIKPSGEkeLuRF0EgBJeoOOLqkCwawHKpXCvixKi7
 digvsOOegerQnqjCZLpewXwhsfWi2h4U7Y2DAgliLaCQN15A6eRS030bFs4IuDA5a131
 3fIeGg3yDbdNebB/Y/TLLRoQoUnwNZDLUWfEJvA9dttYlK/0srROxaO7703dOBWmvsIV
 h8biRy/0nV/nZxGUb0YSYXJEyuOGMQ8uWhiBxSWPHgxutri69r3W5fkdDP/myYK7iuoI
 8vYw==
X-Gm-Message-State: AOAM533Su3aOAWoYFdtSSXSNECJSmb4+FsLA2sSEDo6yGgBOlgOmhjzi
 FfN6SnqsIf2DisN7CWpUUpZEiw==
X-Google-Smtp-Source: ABdhPJwWQgEdOfbFG7zAFOTYs510ibb89tg4xrESspvF0suYJlxtlkHG0lqpc/fh7RGBgnoPvxH+kg==
X-Received: by 2002:a65:6550:: with SMTP id a16mr452402pgw.183.1592425393877; 
 Wed, 17 Jun 2020 13:23:13 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id s21sm615275pgg.8.2020.06.17.13.23.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 13:23:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20200617113851.607706-7-alexandru.elisei@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-7-alexandru.elisei@arm.com>
Subject: Re: [PATCH v5 6/7] arm_pmu: Introduce pmu_irq_ops
From: Stephen Boyd <swboyd@chromium.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Wed, 17 Jun 2020 13:23:12 -0700
Message-ID: <159242539231.62212.11549121838391298623@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_132314_850310_1D646990 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 maz@kernel.org, Will Deacon <will.deacon@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandru Elisei (2020-06-17 04:38:50)
> diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> index df352b334ea7..17e5952d21e4 100644
> --- a/drivers/perf/arm_pmu.c
> +++ b/drivers/perf/arm_pmu.c
> @@ -26,8 +26,46 @@
>  
>  #include <asm/irq_regs.h>
>  
> +static int armpmu_count_irq_users(const int irq);
> +
> +struct pmu_irq_ops {
> +       void (*enable_pmuirq)(unsigned int irq);
> +       void (*disable_pmuirq)(unsigned int irq);
> +       void (*free_pmuirq)(unsigned int irq, int cpu, void __percpu *devid);

Does 'cpu' need to be signed?

> +};
> +
> +static void armpmu_free_pmuirq(unsigned int irq, int cpu, void __percpu *devid)
> +{
> +       free_irq(irq, per_cpu_ptr(devid, cpu));
> +}
> +
> +static const struct pmu_irq_ops pmuirq_ops = {
> +       .enable_pmuirq = enable_irq,
> +       .disable_pmuirq = disable_irq_nosync,
> +       .free_pmuirq = armpmu_free_pmuirq
> +};
> +
> +static void armpmu_enable_percpu_pmuirq(unsigned int irq)
> +{
> +       enable_percpu_irq(irq, IRQ_TYPE_NONE);
> +}
> +
> +static void armpmu_free_percpu_pmuirq(unsigned int irq, int cpu,
> +                                  void __percpu *devid)
> +{
> +       if (armpmu_count_irq_users(irq) == 1)
> +               free_percpu_irq(irq, devid);
> +}
> +
> +static const struct pmu_irq_ops percpu_pmuirq_ops = {
> +       .enable_pmuirq = armpmu_enable_percpu_pmuirq,
> +       .disable_pmuirq = disable_percpu_irq,
> +       .free_pmuirq = armpmu_free_percpu_pmuirq
> +};
> +
>  static DEFINE_PER_CPU(struct arm_pmu *, cpu_armpmu);
>  static DEFINE_PER_CPU(int, cpu_irq);

Same question as above.

> +static DEFINE_PER_CPU(const struct pmu_irq_ops *, cpu_irq_ops);
>  
>  static inline u64 arm_pmu_event_max_period(struct perf_event *event)
>  {

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
