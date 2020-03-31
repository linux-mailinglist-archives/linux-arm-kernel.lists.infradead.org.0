Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB031198C90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 08:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9RUz8u1L7I9v/0BFvKDXHrGrnCrl2q0xC4ECRNfTkI=; b=DNG6EZuJnS+lve
	VblMoIrZm3JXen9TYFbDGBW4g9sU9CKTO7KU5o5nOjCxPzjh8iz9jN7ERzixwrIhJS90Tj4BuHNlX
	g1ybbA70zKydryKZiLJmx6RsK5/UOiHGG62gg7K5qRDIzQ2iJyHY+hDci5CUIfdFZt8HFk1dySucq
	rkU5NI4IIWQlRbxylNMrRLY3UvqsFhSfQt74PMxXvqpM0qu5K28n6d1YiRKIYwTL+93yBE1Jrwi6F
	fBHMXEPyutLO6vYkd1wPjjgGWgsZULkb9qhoRIKCl2tATEmA5gcw8UAFD91fv9euHhLkX3hUweHwj
	MtxnyjZwtT56xplEwsIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJAkc-000098-16; Tue, 31 Mar 2020 06:51:54 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJAkP-00008Q-LB
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 06:51:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 146DD27E03B2;
 Tue, 31 Mar 2020 08:51:37 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id waJ4S9bw_HMh; Tue, 31 Mar 2020 08:51:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D319527E0450;
 Tue, 31 Mar 2020 08:51:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 31zHK_ttVHDg; Tue, 31 Mar 2020 08:51:35 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B7D2527E03B2;
 Tue, 31 Mar 2020 08:51:35 +0200 (CEST)
Date: Tue, 31 Mar 2020 08:51:35 +0200 (CEST)
From: =?utf-8?Q?Cl=C3=A9ment?= Leger <cleger@kalrayinc.com>
To: s-anna <s-anna@ti.com>
Message-ID: <1759281267.12964559.1585637495215.JavaMail.zimbra@kalray.eu>
In-Reply-To: <23fc7800-4ba4-07d0-de15-d81498f04d3c@ti.com>
References: <20200327084939.8321-1-cleger@kalray.eu>
 <20200327161733.GA18041@xps15> <23fc7800-4ba4-07d0-de15-d81498f04d3c@ti.com>
Subject: Re: [PATCH] remoteproc: remove rproc_elf32_sanity_check
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.15_GA_3895 (ZimbraWebClient - GC80 (Linux)/8.8.15_GA_3895)
Thread-Topic: remoteproc: remove rproc_elf32_sanity_check
Thread-Index: 3VVoXwttsIAMn4RaA/dROFzI1f5hRw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_235142_050475_DCC949D7 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-remoteproc <linux-remoteproc@vger.kernel.org>,
 Patrice Chotard <patrice.chotard@st.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suman,

----- On 30 Mar, 2020, at 21:11, s-anna s-anna@ti.com wrote:

> Hi Clement,
> 
> On 3/27/20 11:17 AM, Mathieu Poirier wrote:
>> On Fri, Mar 27, 2020 at 09:49:39AM +0100, Clement Leger wrote:
>>> Since checks are present in the remoteproc elf loader before calling
>>> da_to_va, loading a elf64 will work on 32bits flavors of kernel.
>>> Indeed, if a segment size is larger than what size_t can hold, the
>>> loader will return an error so the functionality is equivalent to
>>> what exists today.
>>>
>>> Signed-off-by: Clement Leger <cleger@kalray.eu>
>>> ---
>>>  drivers/remoteproc/remoteproc_core.c       |  2 +-
>>>  drivers/remoteproc/remoteproc_elf_loader.c | 21 ---------------------
>>>  drivers/remoteproc/remoteproc_internal.h   |  1 -
>>>  drivers/remoteproc/st_remoteproc.c         |  2 +-
>>>  drivers/remoteproc/st_slim_rproc.c         |  2 +-
>>>  drivers/remoteproc/stm32_rproc.c           |  2 +-
>>>  6 files changed, 4 insertions(+), 26 deletions(-)
>> 
>> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>> 
>>>
>>> diff --git a/drivers/remoteproc/remoteproc_core.c
>>> b/drivers/remoteproc/remoteproc_core.c
>>> index a9ac1d01e09b..02ff076b0122 100644
>>> --- a/drivers/remoteproc/remoteproc_core.c
>>> +++ b/drivers/remoteproc/remoteproc_core.c
>>> @@ -2069,7 +2069,7 @@ struct rproc *rproc_alloc(struct device *dev, const char
>>> *name,
>>>  		rproc->ops->parse_fw = rproc_elf_load_rsc_table;
>>>  		rproc->ops->find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table;
>>>  		if (!rproc->ops->sanity_check)
>>> -			rproc->ops->sanity_check = rproc_elf32_sanity_check;
>>> +			rproc->ops->sanity_check = rproc_elf_sanity_check;
> 
> Do you still need the capability to override the sanity_check? As I
> understand, you introduced this to allow platform drivers to use the
> appropriate elf32 or elf64 one during the ELF64 loader support series.

Indeed, this is probably not needed anymore, I will modify that.

> 
> regards
> Suman
> 
>>>  		rproc->ops->get_boot_addr = rproc_elf_get_boot_addr;
>>>  	}
>>>  
>>> diff --git a/drivers/remoteproc/remoteproc_elf_loader.c
>>> b/drivers/remoteproc/remoteproc_elf_loader.c
>>> index 16e2c496fd45..29034f99898d 100644
>>> --- a/drivers/remoteproc/remoteproc_elf_loader.c
>>> +++ b/drivers/remoteproc/remoteproc_elf_loader.c
>>> @@ -112,27 +112,6 @@ int rproc_elf_sanity_check(struct rproc *rproc, const
>>> struct firmware *fw)
>>>  }
>>>  EXPORT_SYMBOL(rproc_elf_sanity_check);
>>>  
>>> -/**
>>> - * rproc_elf_sanity_check() - Sanity Check ELF32 firmware image
>>> - * @rproc: the remote processor handle
>>> - * @fw: the ELF32 firmware image
>>> - *
>>> - * Make sure this fw image is sane.
>>> - */
>>> -int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw)
>>> -{
>>> -	int ret = rproc_elf_sanity_check(rproc, fw);
>>> -
>>> -	if (ret)
>>> -		return ret;
>>> -
>>> -	if (fw_elf_get_class(fw) == ELFCLASS32)
>>> -		return 0;
>>> -
>>> -	return -EINVAL;
>>> -}
>>> -EXPORT_SYMBOL(rproc_elf32_sanity_check);
>>> -
>>>  /**
>>>   * rproc_elf_get_boot_addr() - Get rproc's boot address.
>>>   * @rproc: the remote processor handle
>>> diff --git a/drivers/remoteproc/remoteproc_internal.h
>>> b/drivers/remoteproc/remoteproc_internal.h
>>> index b389dc79da81..31994715fd43 100644
>>> --- a/drivers/remoteproc/remoteproc_internal.h
>>> +++ b/drivers/remoteproc/remoteproc_internal.h
>>> @@ -54,7 +54,6 @@ void *rproc_da_to_va(struct rproc *rproc, u64 da, size_t len);
>>>  phys_addr_t rproc_va_to_pa(void *cpu_addr);
>>>  int rproc_trigger_recovery(struct rproc *rproc);
>>>  
>>> -int rproc_elf32_sanity_check(struct rproc *rproc, const struct firmware *fw);
>>>  int rproc_elf_sanity_check(struct rproc *rproc, const struct firmware *fw);
>>>  u64 rproc_elf_get_boot_addr(struct rproc *rproc, const struct firmware *fw);
>>>  int rproc_elf_load_segments(struct rproc *rproc, const struct firmware *fw);
>>> diff --git a/drivers/remoteproc/st_remoteproc.c
>>> b/drivers/remoteproc/st_remoteproc.c
>>> index a6cbfa452764..a3268d95a50e 100644
>>> --- a/drivers/remoteproc/st_remoteproc.c
>>> +++ b/drivers/remoteproc/st_remoteproc.c
>>> @@ -233,7 +233,7 @@ static const struct rproc_ops st_rproc_ops = {
>>>  	.parse_fw		= st_rproc_parse_fw,
>>>  	.load			= rproc_elf_load_segments,
>>>  	.find_loaded_rsc_table	= rproc_elf_find_loaded_rsc_table,
>>> -	.sanity_check		= rproc_elf32_sanity_check,
>>> +	.sanity_check		= rproc_elf_sanity_check,
>>>  	.get_boot_addr		= rproc_elf_get_boot_addr,
>>>  };
>>>  
>>> diff --git a/drivers/remoteproc/st_slim_rproc.c
>>> b/drivers/remoteproc/st_slim_rproc.c
>>> index 3cca8b65a8db..09bcb4d8b9e0 100644
>>> --- a/drivers/remoteproc/st_slim_rproc.c
>>> +++ b/drivers/remoteproc/st_slim_rproc.c
>>> @@ -203,7 +203,7 @@ static const struct rproc_ops slim_rproc_ops = {
>>>  	.da_to_va       = slim_rproc_da_to_va,
>>>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>>>  	.load		= rproc_elf_load_segments,
>>> -	.sanity_check	= rproc_elf32_sanity_check,
>>> +	.sanity_check	= rproc_elf_sanity_check,
>>>  };
>>>  
>>>  /**
>>> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
>>> index 6a66dbf2df40..2e07a95439c8 100644
>>> --- a/drivers/remoteproc/stm32_rproc.c
>>> +++ b/drivers/remoteproc/stm32_rproc.c
>>> @@ -505,7 +505,7 @@ static struct rproc_ops st_rproc_ops = {
>>>  	.load		= rproc_elf_load_segments,
>>>  	.parse_fw	= stm32_rproc_parse_fw,
>>>  	.find_loaded_rsc_table = rproc_elf_find_loaded_rsc_table,
>>> -	.sanity_check	= rproc_elf32_sanity_check,
>>> +	.sanity_check	= rproc_elf_sanity_check,
>>>  	.get_boot_addr	= rproc_elf_get_boot_addr,
>>>  };
>>>  
>>> --
>>> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
