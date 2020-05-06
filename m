Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F011C6DD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZXIFYSPaEwYIl3lFGutDJgt6l5WjJXHdwbPERV+3fV8=; b=sNnkg/EEPElBts
	ZGqgjKcQdN8+diuRwciYTqh5n0iEV2LncjmjzoEyWbIFIFqluc6IxKStwFmeQ2lTITX2WAB0WjaiY
	Jpqt492Wgr+h/lIGjaS5DNxxPjUt0QPOBT4GGWquuSIxNeeKkUOCXgUqwOiWAZRwkxf5jdGsRd8KH
	RtfbNh0T/958lOGPDEd8gMn950Cg32GZnJ3aYuxDMZSOrPdr0PlVELFq2iyX/bRluz3eaLphIEG8Z
	8uEygqITnzHEAD5Ppj0OZcg3XD7pDivRrdmyDWOmOxpULAZ3y6w9Ex58UrkCHLW5nTnS3QpxC7XY/
	cQ2h4OXsBAZryzjNIpAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGoU-0002Dr-2k; Wed, 06 May 2020 09:58:02 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGoF-0002D6-B0
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:57:48 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u12so738972vsq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 02:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=verdurent-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cLVRESBoKPDQJtZ+ThuiAcYI3TdQCvmpu5N5ap/84vg=;
 b=QvHcHNJv4TLk4yeHfEs21Cb+swsgc5BqyQVaDr8vGh+oOkIyjdNVK6vBnsXKt1Ro9p
 lrbWbY9rsYAi6JYMsF181p9daiS8QWD+IGymftoG3EZHH7QOWQ8B704TB8nGmamk5N0/
 UcjaM/2y/cqADBsPMReZoS3BUAf7j50WZZo6mRAVi2C3JyeTqzjhgNLISHmn+Wi7wSZ9
 DmFgpjYKj+Iq8cdZyHzkwPUNn9cl+6zFjGKtkD2UE4xcQ70GFSHB9M1QyCPFzHABYV57
 ZnRi4yBgQdUQelQh1HBHv32p1LwaKnuyUf7AfoAPkacmfXnsltTrRNejAN8HBeSPOuaF
 5Eyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cLVRESBoKPDQJtZ+ThuiAcYI3TdQCvmpu5N5ap/84vg=;
 b=Aji40pgqA7UupENFrUGJcH6LBXl8B8K3sijlUKGr8u9I7n7sRInUOR0sX4aOZbNekI
 9BAk5NTVCLDxzn1DwKsfJcoLB7j8NICvZuYHxiQsQYpD8LnqWJ9vgdnt991rvpAvbNZ3
 ucUjbiy24ii9Y9WuJLDOh8oh9HJ76Z6eXN5cZEmkskeAP1joDuK2tXaULnJvM1hAtZdy
 XJcfxrKRWfdc+7lR2AUzQQxB+tZ51JaKa1NotRtaGEeaBT/3gu+JPbF5TKutWGxnQbql
 i/0eWL3RDmrDg5v/FmxIa5/GacuC9bs0CLOjGcVI8zPICVwHiOVuNVUBMafLsbbBAJTu
 Z+4A==
X-Gm-Message-State: AGi0PubbCsbvQvfPF6Q6oVuLyLXOTtna4MafVKFW/Pr2zfT3TBDP/0Hv
 SA2D9O6WSz9rII/yYjF7Hp/8L0PLO4enSdkvmjrPcA==
X-Google-Smtp-Source: APiQypKLOZf+1q8lOTy5vDVF1evQNddQakrlqUF5XgociHzpoFintL/zhnSsv06HVF3oEHG2Eb1/X7JPOcMW2F7Qklo=
X-Received: by 2002:a05:6102:407:: with SMTP id
 d7mr6020126vsq.159.1588759065941; 
 Wed, 06 May 2020 02:57:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200429103644.5492-1-daniel.lezcano@linaro.org>
 <20200429103644.5492-4-daniel.lezcano@linaro.org>
In-Reply-To: <20200429103644.5492-4-daniel.lezcano@linaro.org>
From: Amit Kucheria <amit.kucheria@verdurent.com>
Date: Wed, 6 May 2020 15:27:10 +0530
Message-ID: <CAHLCerPJkwi9o5p6UheC+bkdkSYu1fZu5jjWrOjWeSk8+R75ZQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] thermal: cpuidle: Register cpuidle cooling device
To: Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_025747_378885_06B94897 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 29, 2020 at 4:07 PM Daniel Lezcano
<daniel.lezcano@linaro.org> wrote:
>
> The cpuidle driver can be used as a cooling device by injecting idle
> cycles. The DT binding for the idle state added an optional

Incomplete sentence.

> When the property is set, register the cpuidle driver with the idle
> state node pointer as a cooling device. The thermal framework will do
> the association automatically with the thermal zone via the
> cooling-device defined in the device tree cooling-maps section.
>
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Conditionally,

Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>


> ---
>  - V4:
>    - Do not check the return value as the function does no longer return one
> ---
>  drivers/cpuidle/cpuidle-arm.c  | 3 +++
>  drivers/cpuidle/cpuidle-psci.c | 3 +++
>  2 files changed, 6 insertions(+)
>
> diff --git a/drivers/cpuidle/cpuidle-arm.c b/drivers/cpuidle/cpuidle-arm.c
> index 9e5156d39627..8c758920d699 100644
> --- a/drivers/cpuidle/cpuidle-arm.c
> +++ b/drivers/cpuidle/cpuidle-arm.c
> @@ -8,6 +8,7 @@
>
>  #define pr_fmt(fmt) "CPUidle arm: " fmt
>
> +#include <linux/cpu_cooling.h>
>  #include <linux/cpuidle.h>
>  #include <linux/cpumask.h>
>  #include <linux/cpu_pm.h>
> @@ -124,6 +125,8 @@ static int __init arm_idle_init_cpu(int cpu)
>         if (ret)
>                 goto out_kfree_drv;
>
> +       cpuidle_cooling_register(drv);
> +
>         return 0;
>
>  out_kfree_drv:
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index bae9140a65a5..1f38e0dfc9b2 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -9,6 +9,7 @@
>  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
>
>  #include <linux/cpuhotplug.h>
> +#include <linux/cpu_cooling.h>
>  #include <linux/cpuidle.h>
>  #include <linux/cpumask.h>
>  #include <linux/cpu_pm.h>
> @@ -313,6 +314,8 @@ static int __init psci_idle_init_cpu(int cpu)
>         if (ret)
>                 goto out_kfree_drv;
>
> +       cpuidle_cooling_register(drv);
> +
>         return 0;
>
>  out_kfree_drv:
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
