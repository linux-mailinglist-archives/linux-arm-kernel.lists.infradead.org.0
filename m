Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58B6A1B5083
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 00:49:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V0EzhxUZTPAyEewCd0BhAMeHDzOPYZ6aV76004VtLwY=; b=AF/Le5GB5eHcywPIDAyGoD+IY
	8ECzkzFGWuJVIXqQL6Y85Xf48VAbbP5x5xF/4k33KAPFCj5kH8Z6kNMGq9Yc3YZKMarPlwsv11H36
	G//Hi0skB2ddPMiLusP+VmZI8ZnKTss12oCLkLS31DRC+btRK9j286DIjlu89ve9L83HbeebDVw2f
	ErXnyX2mpOQ1hBOjfWLiQ9/bL1GJwomYS+kNRWk/ovH8JF6ZszPidngWC8ZAtgsls9WsdUas6t5e0
	UPSc7bhDATMLFVMzFYg0kE2I6PFknC9w1GMYDvy3e/uAQUC3dpPpkCXuiod3QT0KNu4+5cFSvHnso
	YdGzPOAjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jROBE-0001JK-3w; Wed, 22 Apr 2020 22:49:20 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jROB1-0001HK-UG
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 22:49:09 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03MMmoTS102812;
 Wed, 22 Apr 2020 17:48:50 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587595730;
 bh=jsrBvyKjoBsK7Qmp/aFfEnqPrRNBCyW5gwbg2tXfVtw=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=W1EAICsvSyxyQObunoinLfIA3bqsed6uzNJ0heuA2Qy/rNtJUNbVN2fp/VOgz2Vag
 tpaVjNepeJ8cvBBife5/tLswhLfzeRqqhBmEMNChsOzzPz6EnPgdVuK8NsdP+a20FC
 LL7s26/UnBkUgdIkgI5cC4RGc5BjJ6BL+KNPkgX0=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03MMmoQx040209;
 Wed, 22 Apr 2020 17:48:50 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 22
 Apr 2020 17:48:50 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 22 Apr 2020 17:48:50 -0500
Received: from [10.250.70.56] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03MMmn2S080922;
 Wed, 22 Apr 2020 17:48:49 -0500
Subject: Re: [PATCH v3] remoteproc: remove rproc_elf32_sanity_check
To: Clement Leger <cleger@kalray.eu>, Ohad Ben-Cohen <ohad@wizery.com>, Bjorn
 Andersson <bjorn.andersson@linaro.org>, Patrice Chotard
 <patrice.chotard@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
References: <20200422093017.10985-1-cleger@kalray.eu>
From: Suman Anna <s-anna@ti.com>
Message-ID: <be2f9a6f-1588-832b-9fae-21629e6241e6@ti.com>
Date: Wed, 22 Apr 2020 17:48:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200422093017.10985-1-cleger@kalray.eu>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_154908_119486_93493449 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/22/20 4:30 AM, Clement Leger wrote:
> Since checks are present in the remoteproc elf loader before calling
> da_to_va, loading a elf64 will work on 32bits flavors of kernel.
> Indeed, if a segment size is larger than what size_t can hold, the
> loader will return an error so the functionality is equivalent to
> what exists today.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>

Acked-by: Suman Anna <s-anna@ti.com>

With this patch, I can drop the specific assignment in my 64-bit C71 DSP 
remoteproc driver.

regards
Suman

> ---
> Changes from v2 -> v3:
>   - Rebase on rproc-next branch
> 
> Changes from v1 -> v2:
>   - Remove possibity to override sanity_check operation
> 
>   drivers/remoteproc/remoteproc_core.c       |  3 +--
>   drivers/remoteproc/remoteproc_elf_loader.c | 21 ---------------------
>   drivers/remoteproc/remoteproc_internal.h   |  1 -
>   drivers/remoteproc/st_remoteproc.c         |  2 +-
>   drivers/remoteproc/st_slim_rproc.c         |  2 +-
>   drivers/remoteproc/stm32_rproc.c           |  2 +-
>   6 files changed, 4 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
> index 448262470fc7..206363723071 100644
> --- a/drivers/remoteproc/remoteproc_core.c
> +++ b/drivers/remoteproc/remoteproc_core.c
> @@ -2069,8 +2069,7 @@ static int rproc_alloc_ops(struct rproc *rproc, const struct rproc_ops *ops)
>   	rproc->ops->load = rproc_elf_load_segments;
>   	rproc->ops->parse_fw = rproc_elf_load_rsc_table;
>   	rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
> -	if (!rproc->ops->sanity_check)
> -		rproc->ops->sanity_check = rproc_elf32_sanity_check;
> +	rproc->ops->sanity_check = rproc_elf_sanity_check;
>   	rproc->ops->get_boot_addr = rproc_elf_get_boot_addr;
>   
>   	return 0;
> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
> index 4869fb7d8fe4..df68d87752e4 100644
> --- a/drivers/remoteproc/remoteproc_elf_loader.c
> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
> @@ -112,27 +112,6 @@ int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
>   }
>   EXPORT_SYMBOL(rproc_elf_sanity_check);
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
>   /**
>    * rproc_elf_get_boot_addr() - Get rproc's boot address.
>    * @rproc: the remote processor handle
> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
> index b389dc79da81..31994715fd43 100644
> --- a/drivers/remoteproc/remoteproc_internal.h
> +++ b/drivers/remoteproc/remoteproc_internal.h
> @@ -54,7 +54,6 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, size_t len);
>   phys_addr_t rproc_va_to_pa(void *cpu_addr);
>   int rproc_trigger_recovery(struct rproc *rproc);
>   
> -int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
>   int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
>   u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>   int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
> diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
> index a6cbfa452764..a3268d95a50e 100644
> --- a/drivers/remoteproc/st_remoteproc.c
> +++ b/drivers/remoteproc/st_remoteproc.c
> @@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops = {
>   	.parse_fw		= st_rproc_parse_fw,
>   	.load			= rproc_elf_load_segments,
>   	.find_loaded_rsc_table	= rproc_elf_find_loaded_rsc_table,
> -	.sanity_check		= rproc_elf32_sanity_check,
> +	.sanity_check		= rproc_elf_sanity_check,
>   	.get_boot_addr		= rproc_elf_get_boot_addr,
>   };
>   
> diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
> index 3cca8b65a8db..09bcb4d8b9e0 100644
> --- a/drivers/remoteproc/st_slim_rproc.c
> +++ b/drivers/remoteproc/st_slim_rproc.c
> @@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops = {
>   	.da_to_va       = slim_rproc_da_to_va,
>   	.get_boot_addr	= rproc_elf_get_boot_addr,
>   	.load		= rproc_elf_load_segments,
> -	.sanity_check	= rproc_elf32_sanity_check,
> +	.sanity_check	= rproc_elf_sanity_check,
>   };
>   
>   /**
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 0f9d02ca4f5a..f45b8d597da0 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops = {
>   	.load		= rproc_elf_load_segments,
>   	.parse_fw	= stm32_rproc_parse_fw,
>   	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
> -	.sanity_check	= rproc_elf32_sanity_check,
> +	.sanity_check	= rproc_elf_sanity_check,
>   	.get_boot_addr	= rproc_elf_get_boot_addr,
>   };
>   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
