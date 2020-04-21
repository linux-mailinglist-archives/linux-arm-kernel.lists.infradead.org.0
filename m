Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FECD1B2B2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 17:30:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5PLPDtsWCAj2vxwgrP09i7euNbqiRCJGtZ6B6j2Mezw=; b=hLBTTn/hFNU4dX3j6xCKivmVs
	3zp50ZrersPn68kGcPrbDMlzo6J205pdy1fr9kPBDh/kVzk0ndKH/YCTJk/x5vWezypoYxmUEXe5D
	TrrLQUcIUWWSiGxkbfme7UM51jNLbck6t5286XgttM02COqfaCniYQXOfI9LYObz0q8zFNl7IJLwa
	I/zxoFuVgRJfadnaX5cTDsoi+F2XzCxbgLFtD21Fj6iCM/iylU/gdFWDSOEnKO3nbVwhQuGX0u9Ga
	EphDahomJXagXIJzUCR5Ak8n90vTVOZOPZLHEUimPp99TgIb9dtSPAbvWSxj8zMdO9ue5Cd6bbuB3
	BBglc9EpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQurE-0007l3-FT; Tue, 21 Apr 2020 15:30:44 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQur4-0007jt-7z
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 15:30:36 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03LFULav048654;
 Tue, 21 Apr 2020 10:30:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587483021;
 bh=SqS4rr3BfxnSzLgPx1JoL8+qkQ9DLPAefk5MFj5dqPM=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=yH6aMjiH+Ot5jJ512oB3wK+NLRKenM5UmRmRAXmjQ6bjskhiprJSZecsDr2KH0rAd
 Ducw0AKThPdP4noyB1/f85TcoybuWFv0gERmlVmZd4+SJVPt5xlDlWjr4nd4OCtI8o
 MMId2FSvS8yvnjYzfdwlzZgiqMIhnbU2eTGjjR3M=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03LFUKLQ071348
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 21 Apr 2020 10:30:20 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 21
 Apr 2020 10:30:20 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 21 Apr 2020 10:30:20 -0500
Received: from [10.250.70.56] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03LFUJ6P067959;
 Tue, 21 Apr 2020 10:30:19 -0500
Subject: Re: [PATCH v2] remoteproc: remove rproc_elf32_sanity_check
From: Suman Anna <s-anna@ti.com>
To: Clement Leger <cleger@kalray.eu>, Ohad Ben-Cohen <ohad@wizery.com>, Bjorn
 Andersson <bjorn.andersson@linaro.org>, Patrice Chotard
 <patrice.chotard@st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
References: <20200331083336.7459-1-cleger@kalray.eu>
 <0fc07250-c62c-cb10-58e5-04ccdd6ee176@ti.com>
Message-ID: <a7994631-7a63-5477-df70-e40b995fe14f@ti.com>
Date: Tue, 21 Apr 2020 10:30:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <0fc07250-c62c-cb10-58e5-04ccdd6ee176@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_083034_633581_E6D92C3B 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Clement,

On 3/31/20 10:13 AM, Suman Anna wrote:
> On 3/31/20 3:33 AM, Clement Leger wrote:
>> Since checks are present in the remoteproc elf loader before calling
>> da_to_va, loading a elf64 will work on 32bits flavors of kernel.
>> Indeed, if a segment size is larger than what size_t can hold, the
>> loader will return an error so the functionality is equivalent to
>> what exists today.
>>
>> Signed-off-by: Clement Leger <cleger@kalray.eu>
> 
> Acked-by: Suman Anna <s-anna@ti.com>

Can you repost this after rebasing on top of the rproc-next branch
which has the rproc_alloc refactoring changes pushed now?

regards
Suman

> 
> regards
> Suman
> 
>> ---
>> Changes from v1 -> v2:
>>   - Remove possibity to override sanity_check operation
>>
>>   drivers/remoteproc/remoteproc_core.c       |  3 +--
>>   drivers/remoteproc/remoteproc_elf_loader.c | 21 ---------------------
>>   drivers/remoteproc/remoteproc_internal.h   |  1 -
>>   drivers/remoteproc/st_remoteproc.c         |  2 +-
>>   drivers/remoteproc/st_slim_rproc.c         |  2 +-
>>   drivers/remoteproc/stm32_rproc.c           |  2 +-
>>   6 files changed, 4 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
>> index a9ac1d01e09b..191560048c1a 100644
>> --- a/drivers/remoteproc/remoteproc_core.c
>> +++ b/drivers/remoteproc/remoteproc_core.c
>> @@ -2068,8 +2068,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>>   		rproc->ops->load = rproc_elf_load_segments;
>>   		rproc->ops->parse_fw = rproc_elf_load_rsc_table;
>>   		rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
>> -		if (!rproc->ops->sanity_check)
>> -			rproc->ops->sanity_check = rproc_elf32_sanity_check;
>> +		rproc->ops->sanity_check = rproc_elf_sanity_check;
>>   		rproc->ops->get_boot_addr = rproc_elf_get_boot_addr;
>>   	}
>>   
>> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
>> index 16e2c496fd45..29034f99898d 100644
>> --- a/drivers/remoteproc/remoteproc_elf_loader.c
>> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
>> @@ -112,27 +112,6 @@ int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
>>   }
>>   EXPORT_SYMBOL(rproc_elf_sanity_check);
>>   
>> -/**
>> - * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
>> - * @rproc: the remote processor handle
>> - * @fw: the ELF32 firmware image
>> - *
>> - * Make sure this fw image is sane.
>> - */
>> -int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
>> -{
>> -	int ret = rproc_elf_sanity_check(rproc, fw);
>> -
>> -	if (ret)
>> -		return ret;
>> -
>> -	if (fw_elf_get_class(fw) == ELFCLASS32)
>> -		return 0;
>> -
>> -	return -EINVAL;
>> -}
>> -EXPORT_SYMBOL(rproc_elf32_sanity_check);
>> -
>>   /**
>>    * rproc_elf_get_boot_addr() - Get rproc's boot address.
>>    * @rproc: the remote processor handle
>> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
>> index b389dc79da81..31994715fd43 100644
>> --- a/drivers/remoteproc/remoteproc_internal.h
>> +++ b/drivers/remoteproc/remoteproc_internal.h
>> @@ -54,7 +54,6 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, size_t len);
>>   phys_addr_t rproc_va_to_pa(void *cpu_addr);
>>   int rproc_trigger_recovery(struct rproc *rproc);
>>   
>> -int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
>>   int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
>>   u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>>   int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
>> diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
>> index a6cbfa452764..a3268d95a50e 100644
>> --- a/drivers/remoteproc/st_remoteproc.c
>> +++ b/drivers/remoteproc/st_remoteproc.c
>> @@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops = {
>>   	.parse_fw		= st_rproc_parse_fw,
>>   	.load			= rproc_elf_load_segments,
>>   	.find_loaded_rsc_table	= rproc_elf_find_loaded_rsc_table,
>> -	.sanity_check		= rproc_elf32_sanity_check,
>> +	.sanity_check		= rproc_elf_sanity_check,
>>   	.get_boot_addr		= rproc_elf_get_boot_addr,
>>   };
>>   
>> diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
>> index 3cca8b65a8db..09bcb4d8b9e0 100644
>> --- a/drivers/remoteproc/st_slim_rproc.c
>> +++ b/drivers/remoteproc/st_slim_rproc.c
>> @@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops = {
>>   	.da_to_va       = slim_rproc_da_to_va,
>>   	.get_boot_addr	= rproc_elf_get_boot_addr,
>>   	.load		= rproc_elf_load_segments,
>> -	.sanity_check	= rproc_elf32_sanity_check,
>> +	.sanity_check	= rproc_elf_sanity_check,
>>   };
>>   
>>   /**
>> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
>> index 6a66dbf2df40..2e07a95439c8 100644
>> --- a/drivers/remoteproc/stm32_rproc.c
>> +++ b/drivers/remoteproc/stm32_rproc.c
>> @@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops = {
>>   	.load		= rproc_elf_load_segments,
>>   	.parse_fw	= stm32_rproc_parse_fw,
>>   	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
>> -	.sanity_check	= rproc_elf32_sanity_check,
>> +	.sanity_check	= rproc_elf_sanity_check,
>>   	.get_boot_addr	= rproc_elf_get_boot_addr,
>>   };
>>   
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
