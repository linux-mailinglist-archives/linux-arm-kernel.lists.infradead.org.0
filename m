Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E5311D3A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:19:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Psw8q5I4i5GDF9FJFFLFc5PSsTr1LvFIYV8CcDLjG/o=; b=GaCdmpANWG5Sfp
	cdAaqDBsR6Z8kR393thoXALwFkSg7J4F24vDgk4X4yU0fVvY/LejH0W1dHffKBnlskhR6+pbUgHwn
	rZ4H1EBu34RHk+Pa2NhsSPqh87DJypNRNQwBimmGJw6Lki/7kGVt+NRsS/SH8Aq0QwmqjYP5cwKoi
	aHTyb6SPBX4ja5lteKaPwIcmWbqupBQg+MjQfPxy8d9BjS3knX2+NVLtf9oL3JLuSWenpJk4Sa7+L
	IB/tk1n5+TtJFqu/fw8fZ6XhBnOREI88FUPLaZbBQBhQo6okQUz77j28CqlOyufFYPuFNTDE1vO3l
	zTpt3dRSi918hNa1jdkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifS7Y-0000UG-TA; Thu, 12 Dec 2019 17:19:24 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifS7Q-0000TT-4V
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:19:17 +0000
Received: by mail-io1-xd41.google.com with SMTP id s2so3580268iog.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 09:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FkLYAaxMsU89doUTWE2z523QubdkgbrHcn6MJHqsfXE=;
 b=wM+/b415vKlDGcH0FT/DmrKXrbr3+kjOJQQoZ4B25gdq0MrNNbvBCdRTZ70xAIsQDW
 CFLkZXXyejBI+Lhg5WzsI+7PmQ3UxW1xTQYKLLbXSaqtHm477JfYoqtJLqU3hjTxlJnE
 SmkoE4OhLIixqmmvcz3WEw8Nqo0iWTUAwkPzWlHzP5XZNyIRlIaK9JICNaa/P2x24m++
 mfCUtbdGFDjR3ImgYC3HYQqYCdBy5lw0iZO3dzBdKXbRgtuN8cpuykL65AxKHbV6P4RA
 UCNmM/c1ZIGYLZSEFUfxGHUa/cY8PUGWT2XgluJ1cZCvHwL6Dx8h8ajtSTB/VtyDCQRR
 9Eaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FkLYAaxMsU89doUTWE2z523QubdkgbrHcn6MJHqsfXE=;
 b=EIrrqNmKIOJcH0Hj28wpzChyiRya8w+1ZHPsLSJXsBzSYJfikSzsKgH1LX1vcqCufI
 6DVLwRcViETps6d/VODV4uWFlPnWsx5shkk0imYpuDf6L8XGkWskybLQsD2UUI+qOFPW
 JmSUSkO9b7sAuDrHw2rN5o4SuEwEjSsYza+ru5lQhCYQyo6x1hGFWj8Iwsx3tpr4M1cs
 ndPr3QFlpwUNuF2TDICIUhEYLCE8oftcohMSnu8LH7Uc+HX3vX13G67fdxAWsqs5SyxH
 XdIuqELoxNkwqBsHfQady69jLlm28UTbFA8Wj63jKNGlxaspTtZU1k+rNowGUQuCMol1
 /eXw==
X-Gm-Message-State: APjAAAWHQ70ZcYqhr9JL3enWM3JLm3Ji/eQppikaXyozu/3no5KfuqGH
 2M7QFeF1XBv5GxDyuAwiC0PU3KpVscc7REakuRr9tA==
X-Google-Smtp-Source: APXvYqzcvq5kvJBsourvh7Hjzum+2v1u8IfMIeuKWSS5IOPVmIafGGO3yRhanv7wXvyRrE+ZuHakaUlNy1tci7y8T2A=
X-Received: by 2002:a6b:8f41:: with SMTP id r62mr3888363iod.140.1576171151873; 
 Thu, 12 Dec 2019 09:19:11 -0800 (PST)
MIME-Version: 1.0
References: <20191210203339.2830960-1-arnd@arndb.de>
In-Reply-To: <20191210203339.2830960-1-arnd@arndb.de>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Thu, 12 Dec 2019 10:19:01 -0700
Message-ID: <CANLsYkzqoBg+Xs7i146VTfut2pG0_k_U1N60Bp9dDSs4UfqWLw@mail.gmail.com>
Subject: Re: [PATCH] coresight: etm4x: fix unused function warning
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_091916_179922_566BBCEF 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 at 13:33, Arnd Bergmann <arnd@arndb.de> wrote:
>
> Some of the newly added code in the etm4x driver is inside of an #ifdef,
> and some other code is outside of it, leading to a harmless warning when
> CONFIG_CPU_PM is disabled:
>
> drivers/hwtracing/coresight/coresight-etm4x.c:68:13: error: 'etm4_os_lock' defined but not used [-Werror=unused-function]
>  static void etm4_os_lock(struct etmv4_drvdata *drvdata)
>              ^~~~~~~~~~~~
>
> To avoid the warning and simplify the the #ifdef checks, use
> IS_ENABLED() instead, so the compiler can drop the unused functions
> without complaining.
>
> Fixes: f188b5e76aae ("coresight: etm4x: Save/restore state across CPU low power states")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/hwtracing/coresight/coresight-etm4x.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
> index dc3f507e7562..a90d757f7043 100644
> --- a/drivers/hwtracing/coresight/coresight-etm4x.c
> +++ b/drivers/hwtracing/coresight/coresight-etm4x.c
> @@ -1132,7 +1132,6 @@ static void etm4_init_trace_id(struct etmv4_drvdata *drvdata)
>         drvdata->trcid = coresight_get_trace_id(drvdata->cpu);
>  }
>
> -#ifdef CONFIG_CPU_PM
>  static int etm4_cpu_save(struct etmv4_drvdata *drvdata)
>  {
>         int i, ret = 0;
> @@ -1402,17 +1401,17 @@ static struct notifier_block etm4_cpu_pm_nb = {
>
>  static int etm4_cpu_pm_register(void)
>  {
> -       return cpu_pm_register_notifier(&etm4_cpu_pm_nb);
> +       if (IS_ENABLED(CONFIG_CPU_PM))
> +               return cpu_pm_register_notifier(&etm4_cpu_pm_nb);
> +
> +       return 0;
>  }
>
>  static void etm4_cpu_pm_unregister(void)
>  {
> -       cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
> +       if (IS_ENABLED(CONFIG_CPU_PM))
> +               cpu_pm_unregister_notifier(&etm4_cpu_pm_nb);
>  }
> -#else
> -static int etm4_cpu_pm_register(void) { return 0; }
> -static void etm4_cpu_pm_unregister(void) { }
> -#endif

I have applied this.

Thanks,
Mathieu

>
>  static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
>  {
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
