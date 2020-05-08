Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540E01CBA09
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 23:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXrjqdgJlreYv9WfvHcEG2pkmMLUlIqnJ6iP017xSJo=; b=LA1tlZOGaBcE6B
	FjWRh6vOPuxhLvgPT+uFK5iUJcOSmeT9GF1dGEpkmHAKYZrl+pLzD5Q3uow4uXKuyDgwvADU7SgL1
	NZKvGWK0rr7tLzuOHswLQ13RXuIlnJA0xMmbz3HlMoWeEEmF68qXwjiKinqVoJLqxAayGU5rrveUc
	MkLMtPq3ZLy+hKGWTKzxoDLgTs4QYOX0SemAzapra3ZGxh5EJ0ZDNSB2jxUKX27oXBLqJQLWMtg4H
	4Gs2+Kpx0rohFG+Gnu0G1Alr75w/qxpN8/udbGZnXdMyS1KZXm2GEk5y6OkkvH8PuKBmHmQurvwsp
	YP09TkHPLOfJdp52SCcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXAop-0004nL-Ed; Fri, 08 May 2020 21:46:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXAoi-0004mx-1A
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 21:46:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id p25so1617098pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 May 2020 14:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=J2llUZU1VTOjt8RJony1VXtYkFA0eo/mgvzY58JsBGM=;
 b=grWg6imwhlKztYsJApvc9wuUtCdjn2aoziNKXHXGvj92upZqJ1WefANWwyR1yz7FmC
 Q6gTj5SvYILzV9NoN2M02uoq3EFlmw1CQKwehEkRLWIEbPdTtjR25maCLZq+dz/jfu13
 Lb795tvdCPgW0runVoSx/YnIBx4goocH1EL9+8+8GbUjKu8w34AL+xLEa0qzMw+3oNw/
 aCHcKkgfTpwBXHxorlfvWGyCwh7itx2fHzAJ7T3bUa6fGEJ3hYTTq5q4p8jrkK1uY1n4
 fGGnbP8cBjrlhSpJz5R7+Ll5XtkJmox1gHaYXinJW9/ZyHfloQnzq5XRmPQi7d/wbxdQ
 cObA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=J2llUZU1VTOjt8RJony1VXtYkFA0eo/mgvzY58JsBGM=;
 b=muUDDItt1HDprPLIlSZ4XHTicnVfNmqGUdm4mm4jbYP3nTKrZl0Fe2HXCUvPILdB6w
 EgkAgBiSrvIGgAEXzEwqMHCN/eHd9G71mkGgZBs6+8SHw981ZxmqiLMOj9sJiEApNlmU
 0wHVZn9mgM+aatt4RW4IQRg0GcXQ4uJlw2Ujyuvngp0u02WNqEdD6P9Jwls0D2jyA56Z
 dxD1ChJd0uSBLiZIirf9gHNWUNA6kXSbdP30MpYrhs0j6JphfjORjd7Ez8WbyK6F66im
 QLEY4sPwQyhJo8TC3TXZkfB1eL0xmeJnv04yAq32a8yd/yZqrElTYjDOuAp8OI1W3ogM
 WrRg==
X-Gm-Message-State: AGi0PuY56pQnNBb7hMIaI/MMnWb+9PUtnp5LTaDhMfoIn1vA/scTX/Pd
 biNCD5/FzTzoSUlCvwh5/rg=
X-Google-Smtp-Source: APiQypKNhBaIrU+cuKIu54FYRz1JPaLtuIde04J2FyaZj6578kVFKXUn6fUSwENnPvp9SOt5nlRSyQ==
X-Received: by 2002:a63:130c:: with SMTP id i12mr3670647pgl.122.1588974358955; 
 Fri, 08 May 2020 14:45:58 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id gm3sm3160737pjb.49.2020.05.08.14.45.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 May 2020 14:45:57 -0700 (PDT)
Subject: Re: [PATCH 1/2] ARM: Remove redundant ARCH_SPARSEMEM_DEFAULT setting
To: Mike Rapoport <rppt@linux.ibm.com>
References: <20200506235009.25023-1-f.fainelli@gmail.com>
 <20200506235009.25023-2-f.fainelli@gmail.com>
 <20200507103039.GR1551@shell.armlinux.org.uk>
 <20200507202956.GG683243@linux.ibm.com>
 <b8df0db2-89f3-cb2c-181b-d7526518b92b@gmail.com>
 <20200508214149.GB759899@linux.ibm.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <d52457ab-35a0-2018-e18e-5ed99472c040@gmail.com>
Date: Fri, 8 May 2020 14:45:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200508214149.GB759899@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_144600_073824_547EEBD7 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Doug Berger <opendmb@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 sboyd@kernel.org, Kevin Cernekee <cernekee@gmail.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Gregory Fong <gregory.0xf0@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/8/2020 2:41 PM, Mike Rapoport wrote:
> On Thu, May 07, 2020 at 01:47:57PM -0700, Florian Fainelli wrote:
>>
>> On 5/7/2020 1:29 PM, Mike Rapoport wrote:
> 
> ...
> 
>>> If I understood Florian's intention correctly, the goal was to allow
>>> manual selection of the memory model for multiplatform builds that today
>>> implicitly use flatmem.
>>
>> That is correct.
>>
>>>
>>> I think that the patch below would achieve that without changing the
>>> current defaults and without forcing flatmem on the platforms that
>>> already explicitly select sparsemem.
>>
>> Agree, with your patch, we have the following:
>>
>> mutli_v7_defonfig -> FLATMEM
>> ep93xx_defconfig -> SPARSEMEM
>> rpc_defconfig -> SPARSEMEM
>> assabet_defconfig -> SPARSEMEM
>>
>> with the bonus that when you run menuconfig you can now select sparsemem
>> for a multi-platform build, which was the intention.
> 
> If there is a need to use sparsemem for the multiplatform build, then
> maybe we should consider moving to sparsemem?

For ARCH_BRCMSTB we definitively want sparsemem (hence these patches)
because of the memory map for those chips, but not having access to all
ARM platforms that are supported by the multi-platform kernel, I would
rather we stay conservative and allow platforms to select the memory
model they want. If it turns out that sparsemem is the default, I
suppose we could always change it later on. Arnd, Russell, what do you
think?

> > The increase in size for the defconfig build is about 7k and some of if
> is accounted for the .init code and data:
> 
>    text    data     bss     dec     hex filename
> 14539957        7461462  413288 22414707        1560573 vmlinux-flatmem
> 14545233        7461762  415400 22422395        156237b vmlinux-sparse-static
> 
> I don't have ARM hardware, so I cannot measure the run-time effect though. 
> 
> 
>> Tested-by: Florian Fainelli <f.fainelli@gmail.com>
>  
> Thanks!
> 
>>>
>>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
>>> index 66a04f6f4775..b6eb1a28ca27 100644
>>> --- a/arch/arm/Kconfig
>>> +++ b/arch/arm/Kconfig
>>> @@ -312,6 +312,9 @@ choice
>>>  config ARCH_MULTIPLATFORM
>>>  	bool "Allow multiple platforms to be selected"
>>>  	depends on MMU
>>> +	select ARCH_FLATMEM_ENABLE
>>> +	select ARCH_SPARSEMEM_ENABLE
>>> +	select ARCH_SELECT_MEMORY_MODEL
>>>  	select ARM_HAS_SG_CHAIN
>>>  	select ARM_PATCH_PHYS_VIRT
>>>  	select AUTO_ZRELADDR
>>> @@ -1515,11 +1518,14 @@ config OABI_COMPAT
>>>  config ARCH_HAS_HOLES_MEMORYMODEL
>>>  	bool
>>>  
>>> +config ARCH_FLATMEM_ENABLE
>>> +	bool
>>> +
>>>  config ARCH_SPARSEMEM_ENABLE
>>>  	bool
>>>  
>>> -config ARCH_SPARSEMEM_DEFAULT
>>> -	def_bool ARCH_SPARSEMEM_ENABLE
>>> +config ARCH_SELECT_MEMORY_MODEL
>>> +	bool
>>>  
>>>  config HAVE_ARCH_PFN_VALID
>>>  	def_bool ARCH_HAS_HOLES_MEMORYMODEL || !SPARSEMEM
>>>
>>>> -- 
>>>> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
>>>> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up
>>>
>>
>> -- 
>> Florian
> 

-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
