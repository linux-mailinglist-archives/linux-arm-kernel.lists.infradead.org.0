Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D61D1983F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 21:11:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wB3EAxEmqyFP+NTeewtPG/80eDSgHx7sShlzWVa+ubo=; b=CXdubu+9zT0Ytx
	GhCZyR6rdWQrYGlv9Z1guSetW30QfB44agmi0WqhmoWL9X7wRoE0QRJUYnyCCRwZ0RVhk2GVSG23k
	jRQrsDUd/N/t+33S2jjZC+nBt0FMylnZF5Yf3+7DPN008KJcE/7Hr6E/93vnrWNpFGzZKuetylJJW
	YCQR8kqmgA+0whcvoTP77YZINiKa8LMgMKwBfWaiavm/QRNXEMPSlBvI3mi4xzLCil+U9/mQZVXo4
	F05Qgm/vuteNE5oV8d5zt9g0YoZUV2rStUv2BU5aS/pWJzVzIk4RlA6Mb8P0azmKGjHxS8ZR+OlQj
	RQEwtxStoqHDg95UbMRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIzp1-00046K-Q9; Mon, 30 Mar 2020 19:11:43 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIzoq-00045j-8k
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 19:11:33 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02UJBJV0008882;
 Mon, 30 Mar 2020 14:11:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585595479;
 bh=OrBnsE/3/0anybmi3bMddb1VVqlFWSwjkIBSJYVW05Y=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=RjKlM4R00TJm33VjHZMQzMYAxJIEzrBtJlG3fN+/D2y/niBX7vQ/+aAgI6rQBLVlt
 bgvW7cGD7SlvNHjelAKjDqY5FcH9mHDOrZdTJ0ArTO3Co9UxodXGh8e7IG8SYkgZCG
 /1y5qfspLXncuzF6bxU0yN454DjEQbv9sVxhEuvk=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02UJBI1s059606;
 Mon, 30 Mar 2020 14:11:19 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 30
 Mar 2020 14:11:18 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 30 Mar 2020 14:11:18 -0500
Received: from [10.250.86.212] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02UJBH2Y126560;
 Mon, 30 Mar 2020 14:11:18 -0500
Subject: Re: [PATCH] remoteproc: remove rproc_elf32_sanity_check
To: Mathieu Poirier <mathieu.poirier@linaro.org>, Clement Leger
 <cleger@kalray.eu>
References: <20200327084939.8321-1-cleger@kalray.eu>
 <20200327161733.GA18041@xps15>
From: Suman Anna <s-anna@ti.com>
Message-ID: <23fc7800-4ba4-07d0-de15-d81498f04d3c@ti.com>
Date: Mon, 30 Mar 2020 14:11:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200327161733.GA18041@xps15>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_121132_404576_30B78B1D 
X-CRM114-Status: GOOD (  15.45  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Clement,

On 3/27/20 11:17 AM, Mathieu Poirier wrote:
> On Fri, Mar 27, 2020 at 09:49:39AM +0100, Clement Leger wrote:
>> Since checks are present in the remoteproc elf loader before calling
>> da_to_va, loading a elf64 will work on 32bits flavors of kernel.
>> Indeed, if a segment size is larger than what size_t can hold, the
>> loader will return an error so the functionality is equivalent to
>> what exists today.
>>
>> Signed-off-by: Clement Leger <cleger@kalray.eu>
>> ---
>>  drivers/remoteproc/remoteproc_core.c       |  2 +-
>>  drivers/remoteproc/remoteproc_elf_loader.c | 21 ---------------------
>>  drivers/remoteproc/remoteproc_internal.h   |  1 -
>>  drivers/remoteproc/st_remoteproc.c         |  2 +-
>>  drivers/remoteproc/st_slim_rproc.c         |  2 +-
>>  drivers/remoteproc/stm32_rproc.c           |  2 +-
>>  6 files changed, 4 insertions(+), 26 deletions(-)
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 
>>
>> diff --git a/drivers/remoteproc/remoteproc_core.c b/drivers/remoteproc/remoteproc_core.c
>> index a9ac1d01e09b..02ff076b0122 100644
>> --- a/drivers/remoteproc/remoteproc_core.c
>> +++ b/drivers/remoteproc/remoteproc_core.c
>> @@ -2069,7 +2069,7 @@ struct rproc *rproc_alloc(struct device *dev, const char *name,
>>  		rproc->ops->parse_fw = rproc_elf_load_rsc_table;
>>  		rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
>>  		if (!rproc->ops->sanity_check)
>> -			rproc->ops->sanity_check = rproc_elf32_sanity_check;
>> +			rproc->ops->sanity_check = rproc_elf_sanity_check;

Do you still need the capability to override the sanity_check? As I
understand, you introduced this to allow platform drivers to use the
appropriate elf32 or elf64 one during the ELF64 loader support series.

regards
Suman

>>  		rproc->ops->get_boot_addr = rproc_elf_get_boot_addr;
>>  	}
>>  
>> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c b/drivers/remoteproc/remoteproc_elf_loader.c
>> index 16e2c496fd45..29034f99898d 100644
>> --- a/drivers/remoteproc/remoteproc_elf_loader.c
>> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
>> @@ -112,27 +112,6 @@ int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw)
>>  }
>>  EXPORT_SYMBOL(rproc_elf_sanity_check);
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
>>  /**
>>   * rproc_elf_get_boot_addr() - Get rproc's boot address.
>>   * @rproc: the remote processor handle
>> diff --git a/drivers/remoteproc/remoteproc_internal.h b/drivers/remoteproc/remoteproc_internal.h
>> index b389dc79da81..31994715fd43 100644
>> --- a/drivers/remoteproc/remoteproc_internal.h
>> +++ b/drivers/remoteproc/remoteproc_internal.h
>> @@ -54,7 +54,6 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, size_t len);
>>  phys_addr_t rproc_va_to_pa(void *cpu_addr);
>>  int rproc_trigger_recovery(struct rproc *rproc);
>>  
>> -int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
>>  int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
>>  u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
>> diff --git a/drivers/remoteproc/st_remoteproc.c b/drivers/remoteproc/st_remoteproc.c
>> index a6cbfa452764..a3268d95a50e 100644
>> --- a/drivers/remoteproc/st_remoteproc.c
>> +++ b/drivers/remoteproc/st_remoteproc.c
>> @@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops = {
>>  	.parse_fw		= st_rproc_parse_fw,
>>  	.load			= rproc_elf_load_segments,
>>  	.find_loaded_rsc_table	= rproc_elf_find_loaded_rsc_table,
>> -	.sanity_check		= rproc_elf32_sanity_check,
>> +	.sanity_check		= rproc_elf_sanity_check,
>>  	.get_boot_addr		= rproc_elf_get_boot_addr,
>>  };
>>  
>> diff --git a/drivers/remoteproc/st_slim_rproc.c b/drivers/remoteproc/st_slim_rproc.c
>> index 3cca8b65a8db..09bcb4d8b9e0 100644
>> --- a/drivers/remoteproc/st_slim_rproc.c
>> +++ b/drivers/remoteproc/st_slim_rproc.c
>> @@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops = {
>>  	.da_to_va       = slim_rproc_da_to_va,
>>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>>  	.load		= rproc_elf_load_segments,
>> -	.sanity_check	= rproc_elf32_sanity_check,
>> +	.sanity_check	= rproc_elf_sanity_check,
>>  };
>>  
>>  /**
>> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
>> index 6a66dbf2df40..2e07a95439c8 100644
>> --- a/drivers/remoteproc/stm32_rproc.c
>> +++ b/drivers/remoteproc/stm32_rproc.c
>> @@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops = {
>>  	.load		= rproc_elf_load_segments,
>>  	.parse_fw	= stm32_rproc_parse_fw,
>>  	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
>> -	.sanity_check	= rproc_elf32_sanity_check,
>> +	.sanity_check	= rproc_elf_sanity_check,
>>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>>  };
>>  
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
