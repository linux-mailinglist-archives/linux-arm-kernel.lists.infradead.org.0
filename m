Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4B21767F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 00:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mceZlIPM1cJ6EjB8s6j7oyZedRYuBjB+PVIxl64ZhNQ=; b=fjwlqFF4ozuP+Y
	UD6XUREo0dqBO9tYB7qyfuk1wyJrbLwq+b0DAHPl2wPuTSGrlSCD/tR95RlsW0FS7X3btxq6aQTED
	S2zGMPDXGf0Qms3jfhwq3wl2uoQSGS2IwmiwlULT5UjMklpy6tOpWKZ/sPHP8OFkQ1dvuL778LoGy
	9w/m4VM/KGAcTQenBRZHRHRc6oW15UySAiKCdYl7vkeMh6/4GiZexj+6hzlyNI7KK2BSNlZFsGuFA
	nU5222VYfl9XmAILU1Misb+fmcfapVcb4HLTLxJdTrytYZH40BRSZesBcbnWwXVTb5EHkPSLMKQMy
	TiNDcTRgL0dDmm8qVhZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8uG4-0002bp-Nh; Mon, 02 Mar 2020 23:13:56 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8uFu-0002bM-RL
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 23:13:48 +0000
Received: by mail-pj1-x1041.google.com with SMTP id lt1so464890pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 15:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VnjZ0Ovav8ThhXJbqB/J6Alq9KHUGhvFu8W6iODhPtE=;
 b=isjU/5nbZlZNuN0fg1k/tEp5bCxt83Xe5D3f3bYYgKBRkH2drx7YC8+On/HxTBl04m
 APyz2XsIxjS/zhADo0WQkJVVu3ypfPp71FZtpdXRtEwQ2UK9SdL7rUO9zd5UBxAkx06x
 x8X2VbTJ1mfblaoiGrX2BIlwTseyEYDj2DQ28J3KLvvwD5fhYRzirz8i6o17ZYJWBHQE
 lPe+kIPTgm5+PfZeWjDcrwO+0+PVo/XpdwVS/APWBzb6tNkacOy8em0KlRSXiY8x1VpX
 bbIMAbzjoAOWZUD25viq0KyXxhT9ik2QuzSp961xCHCA1nvzxzzOmDfgs5/LPIt0uoWl
 7SIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VnjZ0Ovav8ThhXJbqB/J6Alq9KHUGhvFu8W6iODhPtE=;
 b=S/2zAclUv5v7dfS0eh6dOwUQyTAcb6iq6333I+P8A1k5QmIWWOHSaTraQYBhED3KPB
 jf+a55fQSbDQhSpF/2gi5Ay1qhQyhqfe91lMK67MFHPX1Qd6uF4mTy5a8rb5JtWjiX3G
 bD4z+ISXREZPHsRttFH64WgH6jA6AyIqzi+bp1bZcWAjNCl9WEXJw3DFmrGQ3S2Zqq7n
 34LGm5bNAxVBDJjxHh+4LP6iMMgptPFOYSGT/tQniU4kg2FVyXcs9sszEboNbXNlgMQd
 rdg0WtYoZ6WKfumMwitN7kxSzAJqH6C2099Ej+ncWTrGi/s153MQ+iRE3f8RkTwcagNa
 /uxA==
X-Gm-Message-State: ANhLgQ193hCU83BKz9OWYqVhNaBp+c0Ew+ykevbSbmL5QoTSsTncistF
 f6cuFjL+xeanuAMG2TeemQAsrg==
X-Google-Smtp-Source: ADFU+vvwgZGBSGTSJS7sOaaK6KTefrZb5fJNWL/VfguLMXiwHxst0TaMhTqCP1i2MHKKY4X1QBWHqw==
X-Received: by 2002:a17:90a:a48:: with SMTP id o66mr924389pjo.66.1583190826077; 
 Mon, 02 Mar 2020 15:13:46 -0800 (PST)
Received: from yoga (pat_11.qualcomm.com. [192.35.156.11])
 by smtp.gmail.com with ESMTPSA id h5sm21413117pgi.28.2020.03.02.15.13.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 15:13:45 -0800 (PST)
Date: Mon, 2 Mar 2020 15:13:42 -0800
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH v5 5/8] remoteproc: Rename rproc_elf_sanity_check for elf32
Message-ID: <20200302231342.GE262924@yoga>
References: <20200210162209.23149-1-cleger@kalray.eu>
 <20200302093902.27849-1-cleger@kalray.eu>
 <20200302093902.27849-6-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302093902.27849-6-cleger@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_151346_888046_4F38D8AD 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Loic PALLARDY <loic.pallardy@st.com>,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>, Jonathan Corbet <corbet@lwn.net>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-doc@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 Patrice Chotard <patrice.chotard@st.com>, linux-kernel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 s-anna <s-anna@ti.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon 02 Mar 01:38 PST 2020, Clement Leger wrote:

> Since this function will be modified to support both elf32 and elf64,
> rename the existing one to elf32 (which is the only supported format
> at the moment). This will allow not to introduce possible side effect
> when adding elf64 support (ie: all backends will still support only
> elf32 if not requested explicitely using rproc_elf_sanity_check).
> 

Is there a reason for preventing ELF64 binaries be loaded?

Regards,
Bjorn

> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/remoteproc/remoteproc_core.c       | 2 +-
>  drivers/remoteproc/remoteproc_elf_loader.c | 6 +++---
>  drivers/remoteproc/remoteproc_internal.h   | 2 +-
>  drivers/remoteproc/st_remoteproc.c         | 2 +-
>  drivers/remoteproc/st_slim_rproc.c         | 2 +-
>  drivers/remoteproc/stm32_rproc.c           | 2 +-
>  6 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 4bfaf4a3c4a3..99f0b796fbc7 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -2055,7 +2055,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  		rproc->ops->load = rproc_elf_load_segments;
>  		rproc->ops->parse_fw = rproc_elf_load_rsc_table;
>  		rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
> -		rproc->ops->sanity_check = rproc_elf_sanity_check;
> +		rproc->ops->sanity_check = rproc_elf32_sanity_check;
>  		rproc->ops->get_boot_addr = rproc_elf_get_boot_addr;
>  	}
>  
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index c2a9783cfb9a..5a67745f2638 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -25,13 +25,13 @@
>  #include "remoteproc_internal.h"
>  
>  /**
> - * rproc_elf_sanity_check() - Sanity Check ELF firmware image
> + * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
>   * @rproc: the remote processor handle
>   * @fw: the ELF firmware image
>   *
>   * Make sure this fw image is sane.
>   */
> -int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
> +int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
>  {
>  	const char *name = rproc->firmware;
>  	struct device *dev = &rproc->dev;
> @@ -89,7 +89,7 @@ int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
>  
>  	return 0;
>  }
> -EXPORT_SYMBOL(rproc_elf_sanity_check);
> +EXPORT_SYMBOL(rproc_elf32_sanity_check);
>  
>  /**
>   * rproc_elf_get_boot_addr() - Get rproc's boot address.
> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> index 0deae5f237b8..28639c588d58 100644
> --- a/drivers/remoteproc/remoteproc_internal.h
> +++ b/drivers/remoteproc/remoteproc_internal.h
> @@ -54,7 +54,7 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, size_t len);
>  phys_addr_t rproc_va_to_pa(void *cpu_addr);
>  int rproc_trigger_recovery(struct rproc *rproc);
>  
> -int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
> +int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
>  u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
>  int rproc_elf_load_rsc_table(struct rproc *rproc, const struct firmware *fw);
> diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
> index a3268d95a50e..a6cbfa452764 100644
> --- a/drivers/remoteproc/st_remoteproc.c
> +++ b/drivers/remoteproc/st_remoteproc.c
> @@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops = {
>  	.parse_fw		= st_rproc_parse_fw,
>  	.load			= rproc_elf_load_segments,
>  	.find_loaded_rsc_table	= rproc_elf_find_loaded_rsc_table,
> -	.sanity_check		= rproc_elf_sanity_check,
> +	.sanity_check		= rproc_elf32_sanity_check,
>  	.get_boot_addr		= rproc_elf_get_boot_addr,
>  };
>  
> diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
> index 09bcb4d8b9e0..3cca8b65a8db 100644
> --- a/drivers/remoteproc/st_slim_rproc.c
> +++ b/drivers/remoteproc/st_slim_rproc.c
> @@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops = {
>  	.da_to_va       = slim_rproc_da_to_va,
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  	.load		= rproc_elf_load_segments,
> -	.sanity_check	= rproc_elf_sanity_check,
> +	.sanity_check	= rproc_elf32_sanity_check,
>  };
>  
>  /**
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index a18f88044111..9a8b5f5e2572 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops = {
>  	.load		= rproc_elf_load_segments,
>  	.parse_fw	= stm32_rproc_parse_fw,
>  	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
> -	.sanity_check	= rproc_elf_sanity_check,
> +	.sanity_check	= rproc_elf32_sanity_check,
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  };
>  
> -- 
> 2.15.0.276.g89ea799
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
