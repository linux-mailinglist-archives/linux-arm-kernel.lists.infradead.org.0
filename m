Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C94E1C9CA5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Mx8tv7MNowYkSTb416Qa1oK0lCWhj/fjQnKAv+OMcs=; b=tZXdhs56MlH9Xc
	E7K/xe2aQ7jU6T+QA3P6p8q1nuchNU1vnnVJqSA9hi+f5fs9dVJjWyUKnsXdjomtdg2HxGZBx4NgO
	3ey0hX07apHS+3Oev09iImu76SZVJfQzSiqIaIgVH2QyqNsEat38l75Lsh9Y/vSg7aVuMr4jDpCFO
	FqNFkF/eiSpEl8Nacr9qkvWxJ/+O6UjOZGaU5vuUqfBXRfLZ6xMN57KONfVSmcBo96giQBFn5Mqf3
	nHEKLxoP55p/IF/8XtdWS9f124FGO431SHO4ojxZlwDbPgxaMP6x9ZcZhDjE2YuIZnCymGiWToqBH
	0RKFjiEelIxPaLhiRV0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnRC-0005MN-A6; Thu, 07 May 2020 20:48:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnR3-0005Ly-TR
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:48:03 +0000
Received: by mail-pf1-x444.google.com with SMTP id x77so3600008pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 13:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vdJKS+qF+OUHYIfHlno6qDRZOQOYGJjlPlQzWk2Silw=;
 b=ZtkXImleumIkEcjScidTU3n9Meql6/EGgWNO+F2lcAZQ6DWHxgFQq5Yh2MR3Yx6Hlq
 /5SjRM7Kx0WcLukzFNl4qnjhk8GgCRPhiWToAsJqkC8yw0R87ZoZ+wDSt1cNtG19BSLK
 80JlYWNYZRoeQBOqdyBrH/BITKVzZYUkWxsUgUo8ETYXl/bz9noS2hpCjQEDl3ZIwh5y
 Kuj4GvXFWPw+EemFYxZZa6xZzmhqrF7nW/BEX+2c9yr7pYHKw0hdARnvyYe7eszVbgdy
 aU2H5SS26Y/IjNxLSsX/HkpGDIiMryPD4vZ5KIFfSoSDk+nYt3Ej8hj6wSsjmqzn2plq
 1VSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vdJKS+qF+OUHYIfHlno6qDRZOQOYGJjlPlQzWk2Silw=;
 b=ZveU03UGMgTagT01BYekMr6O+exvGu/+WwOLRNAA4YKV8nrKp0v1AC4S6HcIlcbWVn
 ANGe2yxyLpANfwxIwYX1g4yTLTdBVwveuCPXyJfpq9A2330nYCLSj4Rb63gR6t1J5wRJ
 NnaJeKWEZXCR8SSfjcs36jPvG+PJfKMzOUlRgo8NkkeeG8vU+Tx6z5XgrIOwumhcn2Vh
 DCPyQSf85SCGN5dcxUHyBCwEsciX7j8EfQl8Qwnr4/smUf3juRhNrBH5vjjD94r8Q4B7
 i6X5zOJJQkTDhNuLY8rKbxj8GVHscoTWrV7bhMRh/jsMv0BaqKAA7E+s4oqC9RPOxuWW
 WwSA==
X-Gm-Message-State: AGi0PuYhKBTo6++NfUZPdEUuU1KZD/UWWeJzclKlfZR48C3sjY7kv07Q
 84F6Es5snln03Q+TyvbR2mc=
X-Google-Smtp-Source: APiQypJNI6V0kGyIZ72qD6NR9kP5h6B4aM5Tvy7gWgRQZCCB9qR9UOh5Vw5SB+uK3Q75Lo3ohNtVHw==
X-Received: by 2002:a65:5641:: with SMTP id m1mr2025265pgs.18.1588884480806;
 Thu, 07 May 2020 13:48:00 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x132sm5734903pfc.57.2020.05.07.13.47.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 13:47:59 -0700 (PDT)
Subject: Re: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
To: Mike Rapoport <rppt@linux.ibm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
 <20200507103039.GR1551@shell.armlinux.org.uk>
 <20200507202956.GG683243@linux.ibm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b8df0db2-89f3-cb2c-181b-d7526518b92b@gmail.com>
Date: Thu, 7 May 2020 13:47:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507202956.GG683243@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_134801_949731_6E0AD1CB 
X-CRM114-Status: GOOD (  26.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Gregory Fong <gregory.0xf0@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/7/2020 1:29 PM, Mike Rapoport wrote:
> On Thu, May 07, 2020 at 11:30:39AM +0100, Russell King - ARM Linux admin wrote:
>> On Wed, May 06, 2020 at 04:50:08PM -0700, Florian Fainelli wrote:
>>> From: Kevin Cernekee <cernekee@gmail.com>
>>>
>>> If ARCH_SPARSEMEM_ENABLE=y and ARCH_{FLATMEM,DISCONTIGMEM}_ENABLE=n,
>>> then the logic in mm/Kconfig already makes CONFIG_SPARSEMEM the only
>>> choice.  This is true for all of the existing ARM users of
>>> ARCH_SPARSEMEM_ENABLE.
>>>
>>> Forcing ARCH_SPARSEMEM_DEFAULT=y if ARCH_SPARSEMEM_ENABLE=y prevents
>>> us from ever defaulting to FLATMEM, so we should remove this setting.
>>
>> No explanation why that is desirable.
>>
>>> -config ARCH_SPARSEMEM_DEFAULT
>>> -	def_bool ARCH_SPARSEMEM_ENABLE
>>> -
>>
>> What this basically says is ARCH_SPARSEMEM_ENABLE=ARCH_SPARSEMEM_DEFAULT,
>> which is exactly what we want for the non-multiplatform boards that
>> select ARCH_SPARSEMEM_ENABLE - we _want_ them to default to sparsemem
>> because that is what the platform requires.
> 
> The ARCH_SPARSEMEM_DEFAULT knob has no effect unless manual selection
> of the memory model is enabled, i.e. arch Kconfig sets
> ARCH_SELECT_MEMORY_MODEL to 'y'.
> 
> Otherwise, ARCH_SPARSEMEM_ENABLE is sufficient to select SPARSEMEM over
> FLATMEM:
> 
> config SPARSEMEM
> 	def_bool y
> 	depends on (!SELECT_MEMORY_MODEL && ARCH_SPARSEMEM_ENABLE) || SPARSEMEM_MANUAL
> 
> config FLATMEM
> 	def_bool y
> 	depends on (!DISCONTIGMEM && !SPARSEMEM) || FLATMEM_MANUAL
> 
>> For example, with RiscPC, which selects ARCH_SPARSEMEM_ENABLE, we have
>> four banks of memory at 0x10000000, 0x14000000, 0x18000000 and
>> 0x1c000000.  These correspond with the two memory slots - the first two
>> for the first slot, and the second two for the second slot.  Each slot
>> has two banks.  The size of each memory bank depends on the size of the
>> module.
>>
>> Flatmem is completely unable to work with this setup if all banks are
>> populated, and the first bank does not contain enough memory to allocate
>> the struct page array.  So, sparsemem is the only option there.
>>
>> Hence, for these platforms, we want sparsemem and only sparsemem, not
>> flatmem.
>>
>> So, this patch which makes it possible to select flatmem is completely
>> out of the question for these platforms.
> 
> This patch alone won't make it possible to select flatmem for these
> platforms, actually, as of now it changes nothing.
> 
> The removal of ARCH_SPARSEMEM_DEFAULT will have an effect only with
> addtion of ARCH_SELECT_MEMORY_MODEL.
> 
> If I understood Florian's intention correctly, the goal was to allow
> manual selection of the memory model for multiplatform builds that today
> implicitly use flatmem.

That is correct.

> 
> I think that the patch below would achieve that without changing the
> current defaults and without forcing flatmem on the platforms that
> already explicitly select sparsemem.

Agree, with your patch, we have the following:

mutli_v7_defonfig -> FLATMEM
ep93xx_defconfig -> SPARSEMEM
rpc_defconfig -> SPARSEMEM
assabet_defconfig -> SPARSEMEM

with the bonus that when you run menuconfig you can now select sparsemem
for a multi-platform build, which was the intention.

Tested-by: Florian Fainelli <f.fainelli@gmail.com>


> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 66a04f6f4775..b6eb1a28ca27 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -312,6 +312,9 @@ choice
>  config ARCH_MULTIPLATFORM
>  	bool "Allow multiple platforms to be selected"
>  	depends on MMU
> +	select ARCH_FLATMEM_ENABLE
> +	select ARCH_SPARSEMEM_ENABLE
> +	select ARCH_SELECT_MEMORY_MODEL
>  	select ARM_HAS_SG_CHAIN
>  	select ARM_PATCH_PHYS_VIRT
>  	select AUTO_ZRELADDR
> @@ -1515,11 +1518,14 @@ config OABI_COMPAT
>  config ARCH_HAS_HOLES_MEMORYMODEL
>  	bool
>  
> +config ARCH_FLATMEM_ENABLE
> +	bool
> +
>  config ARCH_SPARSEMEM_ENABLE
>  	bool
>  
> -config ARCH_SPARSEMEM_DEFAULT
> -	def_bool ARCH_SPARSEMEM_ENABLE
> +config ARCH_SELECT_MEMORY_MODEL
> +	bool
>  
>  config HAVE_ARCH_PFN_VALID
>  	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM
> 
>> -- 
>> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
>> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
