Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91851199A0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 17:44:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jn+xKF4ke7i+P7iXbER+QI3m9ti5rOLK50WYOeVw9/w=; b=ZFsL4crvJeo8C+
	pGOM4U/bTQ5qf3aY88cFv6LGXjDxMuWR+5Q0BHxCm/xfYhUXHhsHJnDhQ2Qsc9H2mYhQQYKIw9GG9
	UCR+YqJ2w1w4UgkOWs+o/JCVokNB9ffjTof6dVr6hbZGKrsDbf/ojWLsg9tKy1cCp350jykJEjifE
	GiQrdzBrMtQUot50wsrYpG12alqUjWfThIbcPaWbHVO6NYQHLTzo4LtNT4oMdVTuBgD0TxTQnwRCz
	q9k3Xte9Pkijl/+RTXBlEA1K5vPEapTFJRBRvIYnp3b7iAcife7/7f5iwpPbK6kAX7xhhM/arrYIv
	M6ikJSCH8bYbsqTRHH3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJ3s-0000lj-48; Tue, 31 Mar 2020 15:44:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJ1c-0007mc-Se
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 15:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=RoMDzKc2+/VDiXGdwwD1RSQ05yOF2jkqG94nB8oDMZA=; b=Wf3C4GzisrYJBu1X+ZBYAQIqeL
 Ay1S25Q/AfXUHtWufQKeWpQqfLaMizgeobVMZlaBtQKIFoIlqwmvOQ6pSqteuODR3Kd07t6q8fO3E
 /zw1YBLJaJbc2CFEimjqWUY3cyounv0V7xkCTvKjKO/lKP9NEkykuPQvuzh6KzOHxrttbUDNdcZCz
 NpPQrZFbqzv5+RcG63KcZOGvdCTXel9c5bLMhf3ha8nY4WZMG6ZTi5WDE1cwpIcPiY64B1JOgF+/j
 aDLxkzh0ur99jWb0mL5XZ2LbQaDfAsrpAC89F32+KnQDxtDjuULGMmcVzOAfKbOtH0I/lAru8wAv+
 FzSYjMmg==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJIa3-0004rp-0c
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 15:13:34 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02VFD8g4118835;
 Tue, 31 Mar 2020 10:13:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585667588;
 bh=RoMDzKc2+/VDiXGdwwD1RSQ05yOF2jkqG94nB8oDMZA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=kGU35WNa8EiKD9S5xaTn9wze6HFMz8Tx6CalzVqgXZLBb2NA4QGYAi/OuczfoMpXw
 yOI6HIi/hULN0UjaXSW1Vki00b+6oishY8WVMzr1YeUm/SMkYInTbR3S17NV1vCt5q
 6LF/ebqoo3LNiqLbkbhmzPfC8GQEgNlJZsYbE3Ms=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02VFD8W4014945
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 31 Mar 2020 10:13:08 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 31
 Mar 2020 10:13:08 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 31 Mar 2020 10:13:08 -0500
Received: from [10.250.86.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02VFD7C7005470;
 Tue, 31 Mar 2020 10:13:07 -0500
Subject: Re: [PATCH v2] remoteproc: remove rproc_elf32_sanity_check
To: Clement Leger <cleger@kalray.eu>, Ohad Ben-Cohen <ohad@wizery.com>, Bjorn
 Andersson <bjorn.andersson@linaro.org>, Patrice Chotard
 <patrice.chotard@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
References: <20200331083336.7459-1-cleger@kalray.eu>
From: Suman Anna <s-anna@ti.com>
Message-ID: <0fc07250-c62c-cb10-58e5-04ccdd6ee176@ti.com>
Date: Tue, 31 Mar 2020 10:13:07 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200331083336.7459-1-cleger@kalray.eu>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_161331_728821_2E8A66BB 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: -4.6 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-4.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/31/20 3:33 AM, Clement Leger wrote:
> Since checks are present in the remoteproc elf loader before calling
> da_to_va, loading a elf64 will work on 32bits flavors of kernel.
> Indeed, if a segment size is larger than what size_t can hold, the
> loader will return an error so the functionality is equivalent to
> what exists today.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>

Acked-by: Suman Anna <s-anna@ti.com>

regards
Suman

> ---
> Changes from v1 -> v2:
>  - Remove possibity to override sanity_check operation
> 
>  drivers/remoteproc/remoteproc_core.c       |  3 +--
>  drivers/remoteproc/remoteproc_elf_loader.c | 21 ---------------------
>  drivers/remoteproc/remoteproc_internal.h   |  1 -
>  drivers/remoteproc/st_remoteproc.c         |  2 +-
>  drivers/remoteproc/st_slim_rproc.c         |  2 +-
>  drivers/remoteproc/stm32_rproc.c           |  2 +-
>  6 files changed, 4 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index a9ac1d01e09b..191560048c1a 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -2068,8 +2068,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>  		rproc->ops->load = rproc_elf_load_segments;
>  		rproc->ops->parse_fw = rproc_elf_load_rsc_table;
>  		rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
> -		if (!rproc->ops->sanity_check)
> -			rproc->ops->sanity_check = rproc_elf32_sanity_check;
> +		rproc->ops->sanity_check = rproc_elf_sanity_check;
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
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
