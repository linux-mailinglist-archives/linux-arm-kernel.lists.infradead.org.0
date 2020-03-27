Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FF8195AED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otUoHLJ3PH1IEVaaf8l6tgjpxHZtr9DvPOsJYKikf48=; b=uRUoJ2V8yAQhpD
	CQX0Ej891qZAQDPR06eLUp31sW4jhf2E8F7zErqQrcntIic71iPKJS5gR/8edyo9Wx+AXZp84nq9W
	HlBOx3Z8ikik2XkPuMMHslTXabxwFRQKr8swVljgoPIKVKvj68La3USDYc6kCRvq090wxurBZBflX
	MXIdIHVssVR16GuSoRfN2YzZk8CAlDwvD2OvmHSZOCw3kWe4EnknezLUlnLGJCRiLnl8wZIDbdzlh
	qh52IfBP60cPqJfzXgNVT/rWBRCsSW6ANspPvqJFDDzfhOm1mB98iKoq7HdCXktYdm+mWnsxHWsYh
	G+aPac9SL/zooRlK/mpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrgE-00070Y-PF; Fri, 27 Mar 2020 16:17:58 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrfz-0006zW-5O
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:17:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id b1so4788074pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 09:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jhwYADhdGcLZbWIzbwxBzjxRAObWsK9tu6OvJnZhgK8=;
 b=mjFVfqnvAEAdGQxoWYIHbYy0+wwJhPKkgVBXpuF+JLGBQHrARncYWjhkj60r3u/Ohy
 gMlDZxixdo2YrheHdj9PypFdZMB4paHUWQ0Dysvo3Dh5fJaL5hUpsnIv/KsaI/XPQ6VC
 mXRHbbwQqeOtFbCLT6H5JqwjEOKjI4zV1UzKrgYsI+otvfieN3FwQ4AwuDFr19uD/GnN
 N/soZ2oeh19LWDzC3NqMTPMWCHm0v4z9h5ktH+BeEw37BkMO5xVf+2faWKp6mI/nLwa0
 AbLTb8CrC0uhcaCKalPUaZC0OYxrZqF3/lI5W6+/LkIN0haEj7jwE5xbAQreuF2zG7qP
 VHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jhwYADhdGcLZbWIzbwxBzjxRAObWsK9tu6OvJnZhgK8=;
 b=bF6t0fHOXUo6LpTiuqwhwg3xDaUWEmLY01FDVigo4Uugw6id00sh4EDU2QRVH3+vrF
 VGK5/lKVxUgOom0NykELcSVUwXmI7csv0lk0WQyXqdxV0NWYXsnhlgjoTQelcQE4LbsK
 7u8sEAJq8wWMuDJ0a72Dg/zubFUpNMrrn4Acyzs4SkOiFm+Ly0XHf3x+1zo7PSmSCnoL
 FOys54lkMKTwp5ejuy4b6Mqphups7XRfQmW837nUU7G301mMHvqRLsxrDkevKylTPAEN
 aR9X3kbiA0/MPf1QPTqMU9vsLjGI3xvc6zRfA0i5ShH5UduOyFhrYpZGpup62cdnpS/O
 7qnw==
X-Gm-Message-State: ANhLgQ1TUGVbbh1M4Qg+9AyKvY8+wviR0qs9JWeulM5f+8GYOU8m0vDm
 muw5uYcc2lybaSK664HWLDssvg==
X-Google-Smtp-Source: ADFU+vuHJjTwlUlAnTmVZwL7ukhLfqdQyllSGr+zoP1DUk27+DscTsfzu3LkM6z3KfW5PHAuL3zRCQ==
X-Received: by 2002:a62:2cc3:: with SMTP id
 s186mr15383429pfs.236.1585325856083; 
 Fri, 27 Mar 2020 09:17:36 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id d3sm4136628pjz.2.2020.03.27.09.17.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 09:17:35 -0700 (PDT)
Date: Fri, 27 Mar 2020 10:17:33 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Clement Leger <cleger@kalray.eu>
Subject: Re: [PATCH] remoteproc: remove rproc_elf32_sanity_check
Message-ID: <20200327161733.GA18041@xps15>
References: <20200327084939.8321-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327084939.8321-1-cleger@kalray.eu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_091743_347779_498DEDF2 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 09:49:39AM +0100, Clement Leger wrote:
> Since checks are present in the remoteproc elf loader before calling
> da_to_va, loading a elf64 will work on 32bits flavors of kernel.
> Indeed, if a segment size is larger than what size_t can hold, the
> loader will return an error so the functionality is equivalent to
> what exists today.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/remoteproc/remoteproc_core.c       |  2 +-
>  drivers/remoteproc/remoteproc_elf_loader.c | 21 ---------------------
>  drivers/remoteproc/remoteproc_internal.h   |  1 -
>  drivers/remoteproc/st_remoteproc.c         |  2 +-
>  drivers/remoteproc/st_slim_rproc.c         |  2 +-
>  drivers/remoteproc/stm32_rproc.c           |  2 +-
>  6 files changed, 4 insertions(+), 26 deletions(-)

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index a9ac1d01e09b..02ff076b0122 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -2069,7 +2069,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  		rproc->ops->parse_fw = rproc_elf_load_rsc_table;
>  		rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
>  		if (!rproc->ops->sanity_check)
> -			rproc->ops->sanity_check = rproc_elf32_sanity_check;
> +			rproc->ops->sanity_check = rproc_elf_sanity_check;
>  		rproc->ops->get_boot_addr = rproc_elf_get_boot_addr;
>  	}
>  
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index 16e2c496fd45..29034f99898d 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -112,27 +112,6 @@ int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
>  }
>  EXPORT_SYMBOL(rproc_elf_sanity_check);
>  
> -/**
> - * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
> - * @rproc: the remote processor handle
> - * @fw: the ELF32 firmware image
> - *
> - * Make sure this fw image is sane.
> - */
> -int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
> -{
> -	int ret = rproc_elf_sanity_check(rproc, fw);
> -
> -	if (ret)
> -		return ret;
> -
> -	if (fw_elf_get_class(fw) == ELFCLASS32)
> -		return 0;
> -
> -	return -EINVAL;
> -}
> -EXPORT_SYMBOL(rproc_elf32_sanity_check);
> -
>  /**
>   * rproc_elf_get_boot_addr() - Get rproc's boot address.
>   * @rproc: the remote processor handle
> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> index b389dc79da81..31994715fd43 100644
> --- a/drivers/remoteproc/remoteproc_internal.h
> +++ b/drivers/remoteproc/remoteproc_internal.h
> @@ -54,7 +54,6 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, size_t len);
>  phys_addr_t rproc_va_to_pa(void *cpu_addr);
>  int rproc_trigger_recovery(struct rproc *rproc);
>  
> -int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
>  int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
>  u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
> diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
> index a6cbfa452764..a3268d95a50e 100644
> --- a/drivers/remoteproc/st_remoteproc.c
> +++ b/drivers/remoteproc/st_remoteproc.c
> @@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops = {
>  	.parse_fw		= st_rproc_parse_fw,
>  	.load			= rproc_elf_load_segments,
>  	.find_loaded_rsc_table	= rproc_elf_find_loaded_rsc_table,
> -	.sanity_check		= rproc_elf32_sanity_check,
> +	.sanity_check		= rproc_elf_sanity_check,
>  	.get_boot_addr		= rproc_elf_get_boot_addr,
>  };
>  
> diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
> index 3cca8b65a8db..09bcb4d8b9e0 100644
> --- a/drivers/remoteproc/st_slim_rproc.c
> +++ b/drivers/remoteproc/st_slim_rproc.c
> @@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops = {
>  	.da_to_va       = slim_rproc_da_to_va,
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  	.load		= rproc_elf_load_segments,
> -	.sanity_check	= rproc_elf32_sanity_check,
> +	.sanity_check	= rproc_elf_sanity_check,
>  };
>  
>  /**
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 6a66dbf2df40..2e07a95439c8 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops = {
>  	.load		= rproc_elf_load_segments,
>  	.parse_fw	= stm32_rproc_parse_fw,
>  	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
> -	.sanity_check	= rproc_elf32_sanity_check,
> +	.sanity_check	= rproc_elf_sanity_check,
>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>  };
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
