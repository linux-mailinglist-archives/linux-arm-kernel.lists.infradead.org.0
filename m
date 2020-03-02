Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A88417529F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 05:22:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fPt7DkXy5oM/osl8NSsPFc9cj8+4UmgSgk2yVXsAmno=; b=l9WWs+8gyiiz8Z
	DqHcwyN9InAmu9E8tmPFmDQeaUgde0GazacaOsMiEyvBldHO4jXhgRhFZ/EhMr1Gc+GyP+9JyDAXA
	fkJmpCKOGZ53y/Obp+yxrBgzxVQjD7fUFi6lYv0BCN9X/+s4t6Bw2dFNeIgnhCUEjlVe8lIEdplMX
	FQc4+37Jg3jk60yVk5reSOnNsehKUpTdERXYtjUyAZp2rKTiwBS9+FPvVqbP4WIvMaH+8D4mYTnDw
	aZuWgi3nM7Z8etSNWYzgkJI2Yi0ZbKbJTuWkqLui9tIfy+5NL8ymjI6KE1KQ4uktqAhSMcEQEweYY
	rM8a6i8hvyvU/JhKgpoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8cax-0003lR-Ik; Mon, 02 Mar 2020 04:22:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8cao-0003l4-HA
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 04:22:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id t24so4753922pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 20:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nEymnoWCysdqUOEM0GVP2RMGFvpfCKyRNTLiiTVwFyA=;
 b=LEr2acfyicnJtodTBYrmxcy/hePBgCxG/9feceVqsr1rV3za0EvZMH4IjP6RrmZp5t
 YqlPalK3qpKlkKdVkf9+M93Ro4lnVW4/HZNjKsySAfp61Rm0v8iZvuGtzITr/il8jFkx
 nAbFGfQ2OOp+cjC2NOiaDM4tYRNTfqSUGHGq2GDG7t9HDz68+xtY7TYhfEfuy/rddOYP
 51rfLWGH9p7nVDJdqy8oe3xUP61C3zgSnz6xNSRtc7iHdhvknrmxL+AJGLssXU3Y28XU
 cSZjjxbDj7puQ0CnrgpJtvJtcaOb86sDJWIpUTOb8CHEZRs58cn+Z39PWhiFBBZbxUCm
 PAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nEymnoWCysdqUOEM0GVP2RMGFvpfCKyRNTLiiTVwFyA=;
 b=bgIYm4RwUzY9lleRPPihWrPGkkBnuVWXCzu25OnUWvjOOmY4zqZX069xur0cvVAn90
 pOTa4relfmJDYt0uzx97EGdcijApfk1ICdQ+bOyWXLktAR5LLZNv+fhD2cNXzbw+nl7K
 PV02iL2XxThHvvwYzE4Txk7fNrkJ5bestxT/1I/WE2SqW+i7eMdDZ0QcDIjf3JePU+TW
 L/tvN2XBHA0ZU/YrQLP6Ijeyq3TfRXfVxcOQxIE8Fkxc0hyBJGzf4rF/633P+5YF4Q/S
 erQof5csQX9FwjAbqcsbkh7ld9lNp0h2b9WslgAmnQBkuHE0CJ+MGGAK6wM0TgW2oggm
 MSlw==
X-Gm-Message-State: APjAAAXPWCAd/1Blp0ACn/eGyHHaPTgJtW6F9hOU6rFydYdd7mpnVLFo
 uIpBnJZwHupPA76bmtd+z1nwsw==
X-Google-Smtp-Source: APXvYqxt9FPs2zCeoj2/EcvbIYQjJgWvkX5q2K0UUOpXgS5Lw9/SfLAveY2bQ+4cNlHhasQlmsnTVA==
X-Received: by 2002:a63:6ec7:: with SMTP id
 j190mr16813087pgc.356.1583122929629; 
 Sun, 01 Mar 2020 20:22:09 -0800 (PST)
Received: from localhost ([122.167.24.230])
 by smtp.gmail.com with ESMTPSA id h13sm10295072pjc.9.2020.03.01.20.22.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Mar 2020 20:22:08 -0800 (PST)
Date: Mon, 2 Mar 2020 09:52:05 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: config: multi_v7 Use schedutil cpufreq
Message-ID: <20200302042205.tonnru7ysr46fht4@vireshk-i7>
References: <20200229210225.173084-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229210225.173084-1-linus.walleij@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_202210_601006_F9D82FA8 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: soc@kernel.org, arm@kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-02-20, 22:02, Linus Walleij wrote:
> The multi v7 config is using the ondemand governor by default,
> but the schedutil is mature and enabled by default in other
> defconfigs, let's encourage schedutil as governor but keep
> ondemand as compiled-in instead of the other way around.
> 
> Cc: Rafael J. Wysocki <rjw@rjwysocki.net>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ARM SoC folks: if you agree please apply this directly. I think
> putting this in the multi v7 as default is a good way to
> actively encourage this governor, unless Viresh or Rafael
> objects.
> ---
>  arch/arm/configs/multi_v7_defconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 017d65f86eba..beec2c8d76aa 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -100,11 +100,11 @@ CONFIG_KEXEC=y
>  CONFIG_EFI=y
>  CONFIG_CPU_FREQ=y
>  CONFIG_CPU_FREQ_STAT=y
> -CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
> +CONFIG_CPU_FREQ_DEFAULT_GOV_SCHEDUTIL=y
>  CONFIG_CPU_FREQ_GOV_POWERSAVE=m
>  CONFIG_CPU_FREQ_GOV_USERSPACE=m
>  CONFIG_CPU_FREQ_GOV_CONSERVATIVE=m
> -CONFIG_CPU_FREQ_GOV_SCHEDUTIL=y
> +CONFIG_CPU_FREQ_GOV_ONDEMAND=y
>  CONFIG_CPUFREQ_DT=y
>  CONFIG_ARM_IMX6Q_CPUFREQ=y
>  CONFIG_ARM_RASPBERRYPI_CPUFREQ=y

FWIW, I have tried something similar for arm64 earlier.

https://lore.kernel.org/lkml/af12e002bc165844101830c0eb00e283b536a879.1510813288.git.viresh.kumar@linaro.org/

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
