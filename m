Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80C81955F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sPaVU0kD3TVFLUGYkcQ8yeyenI6z4H1RWFPyCFY/pHM=; b=bWyk7BqDDaWmEF
	shKztZtJrEXosS/eQVwxPRmxgoxak6Yg+OQVK30ROlEWF0tuMIL4pvueDD6Vciuu7lJBRnAYUw0cU
	EqIOsPX6g2KmtGWyTYOaGr89oEkyWN/jqX6QByeHFfFP/AG5r7CCd4J7lRADtKRB0EVO3n6sGNaZe
	XXus7kjNDLsYC/kWB0Dz930BH4sIfHZE/2guJrPuyJ+BQFW3IbbHC7WXXH/X7P65KL/UJezcJxXF8
	17C8HZhqCnrf1jiNO1qXU76fceLyouTW0zSa6yKNQ+jlaqFyHFB6hFo33QPDKgYGrA2aadYFf60Rj
	dgPuOm/dTBvUUyYYgCUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmnX-0002Ct-1Q; Fri, 27 Mar 2020 11:05:11 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmmu-0001zR-Br
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:04:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id h8so4411502pgs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 04:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=y2amsUrIjKqvUce583HPq0+BeWvAWHFZuVky7Akg4Fs=;
 b=IQL8GY5O4b0Hpen7S3DwJ4mI2egXxZznnc8twSHeVqzdDR0AI21cY7yx3tw8lpOffm
 DPwFuLeVmfRB61Zr9MkkruNgldTuXumWcTb+mbmpR/uqLdnkcLreC8lbOZWUl59RFP2O
 RqjwlN4usvTv9EztfZKmeHiJ6Ac0zeMyAVy64/TQ6ozliPT+9KRcapaXg7IfGnHR8H9V
 hQqcuweDICT2w6ufCtr+D/LF3mFulr7NH0ks5/I2gaA+KYoJjQKN072OC9PQ92fWQIjo
 FND27fRIkw7v6ww45C+ARXJz0rZXFWrxkyS/g7xU4Vn6m3WfbUkZZjgHX4eVkKkTjNAG
 2EYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y2amsUrIjKqvUce583HPq0+BeWvAWHFZuVky7Akg4Fs=;
 b=dx/3mcW5gPsukhnTg65Fxh/1LQjO0Wk1IsQymN/CoQdo5+99zetXNrHiwXvK9atw9C
 21HZHdJ6wBr3WC5cA0noKq9ZaFu2RmYsyesbAm4Rkcset2y1L/dAR42uhqV4Ao+sR6l5
 WQF+63pyJBN5VMaK5U+4tWxaTJx20eCn+OZGUgAITtjQx1+SfTYqIhs71DXNEDqPiscg
 MzRPqUW2VAk2CVS7tve62xInLuM4bUW5Z87G9o8fg86doAU4IBpkw5dXv6AqHayaosIp
 yKaLCvhtI+TXfMscv+9UDvmlk6GGCPqmo8LG5DM8cfTlRognXjy95MzL7cTz812P3hlS
 vHIA==
X-Gm-Message-State: ANhLgQ1eEfrAaJjgQSPYvU7I1Ef4i0UW1zRXontwiEnbB0QmkE0n67nK
 5ASde44OGd9mpm5loH1BWHxsaa8lHeI=
X-Google-Smtp-Source: ADFU+vvPWJ9J/gEH/XjswwsXZmjR9gxjBbPlEIc+ePxLpI4Rm93dz7bBSmy7T1iPgK6/qweZsyeKwA==
X-Received: by 2002:a65:42c5:: with SMTP id l5mr13125490pgp.152.1585307071307; 
 Fri, 27 Mar 2020 04:04:31 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id t186sm3622766pgd.43.2020.03.27.04.04.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 27 Mar 2020 04:04:30 -0700 (PDT)
Date: Fri, 27 Mar 2020 16:34:28 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: vexpress: Make schedutil governor available
Message-ID: <20200327110428.xo6i7gcs67wb5weh@vireshk-i7>
References: <20200327095703.93178-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327095703.93178-1-linus.walleij@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_040432_454633_7B064870 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: soc@kernel.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-03-20, 10:57, Linus Walleij wrote:
> When building the kernel for Versatile Express we need to
> consider that some of these boards are big.LITTLE HMP
> systems.
> 
> As can be seen from kernel/sched/topology.c:
> 
> "EAS can be used on a root domain if it meets all the following conditions:
>  1. an Energy Model (EM) is available;
>  2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
>  3. no SMT is detected.
>  4. the EM complexity is low enough to keep scheduling overheads low;
>  5. schedutil is driving the frequency of all CPUs of the rd;"
> 
> This means that at the very least, schedutil needs to be
> available as a scheduling policy for EAS to work on these
> systems. Make this explicit by selecting CPU_FREQ and
> CPU_FREQ_GOV_SCHEDUTIL from the Versatile Express
> machine.
> 
> Currently users of the TC2 board (like me) has to figure these
> dependencies out themselves and it is not helpful.
> 
> It is still necessary to configure in the schedutil as default
> governor manually to actually get a working b.L system, so this
> just makes the right governor available to b.L systems, it does
> not turn it on by default.
> 
> Cc: Vincent Guittot <vincent.guittot@linaro.org>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  arch/arm/mach-vexpress/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
> index 726a68085c3b..0a5a67448c94 100644
> --- a/arch/arm/mach-vexpress/Kconfig
> +++ b/arch/arm/mach-vexpress/Kconfig
> @@ -8,6 +8,8 @@ menuconfig ARCH_VEXPRESS
>  	select ARM_GLOBAL_TIMER
>  	select ARM_TIMER_SP804
>  	select COMMON_CLK_VERSATILE
> +	select CPU_FREQ
> +	select CPU_FREQ_GOV_SCHEDUTIL
>  	select GPIOLIB
>  	select HAVE_ARM_SCU if SMP
>  	select HAVE_ARM_TWD if SMP

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
