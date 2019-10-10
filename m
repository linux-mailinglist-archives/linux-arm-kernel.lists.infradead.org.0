Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A397D223F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 10:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R7WvLsEuu6KjfKYNk5erW5j/cj3gNvN1xWOmv8FZttk=; b=uJN/dDQVd0z0ATnDyxuEdZBy8
	fBBO5NpM/IrnsA4MT4owLbhRtALo+CaNwUCBdGQcLxuYU7Z9bGCHczJZgTTZYjcYX4R+THcfC1+v0
	9DXI/SvjiwwufuxiF/QX5OrlBTG6b17PSakllPOvmy5FgfP9twOBaPX2DCFBOwnf7Gm/CjwLpOvsE
	P5nzIsdkDpVXTziJBYYQRiVFxQVMSl3z/7Yne2lu0I0B8yndqBQQr7e8sY3oXLaHvN9BxlvMjoCho
	34Rx9yIOTkIHl7wAPo2g8PeP+mtIhiBUUNZ+oHsID6ct+P2jgnLOUzyFB6QbP9/+Kp2xX5/8tHPve
	5IcVaeBdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITSp-000825-N6; Thu, 10 Oct 2019 08:06:23 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITSe-000816-RI
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 08:06:15 +0000
Received: from [167.98.27.226] (helo=[10.35.6.110])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iITSb-0002Ne-2z; Thu, 10 Oct 2019 09:06:09 +0100
Subject: Re: [PATCH] zImage: atags_to_fdt: fix __be32 and __be64 types
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20191009160153.6298-1-ben.dooks@codethink.co.uk>
 <20191009162417.GG25745@shell.armlinux.org.uk>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <eb1b4255-3225-1cff-d572-8b45558ac23a@codethink.co.uk>
Date: Thu, 10 Oct 2019 09:06:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009162417.GG25745@shell.armlinux.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_010613_033780_A8C589F4 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/10/2019 17:24, Russell King - ARM Linux admin wrote:
> On Wed, Oct 09, 2019 at 05:01:53PM +0100, Ben Dooks wrote:
>> Change types of some the uint32_t to __be32 or __be64 to
>> avoid the following sparse warnings:
>>
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:182:60: warning: incorrect type in assignment (different base types)
>> arch/arm/boot/compressed/atags_to_fdt.c:182:60:    expected unsigned long long [usertype]
>> arch/arm/boot/compressed/atags_to_fdt.c:182:60:    got restricted __be64 [usertype]
>> arch/arm/boot/compressed/atags_to_fdt.c:184:60: warning: incorrect type in assignment (different base types)
>> arch/arm/boot/compressed/atags_to_fdt.c:184:60:    expected unsigned long long [usertype]
>> arch/arm/boot/compressed/atags_to_fdt.c:184:60:    got restricted __be64 [usertype]
>> arch/arm/boot/compressed/atags_to_fdt.c:187:62: warning: incorrect type in assignment (different base types)
>> arch/arm/boot/compressed/atags_to_fdt.c:187:62:    expected unsigned int
>> arch/arm/boot/compressed/atags_to_fdt.c:187:62:    got restricted __be32 [usertype]
>> arch/arm/boot/compressed/atags_to_fdt.c:189:62: warning: incorrect type in assignment (different base types)
>> arch/arm/boot/compressed/atags_to_fdt.c:189:62:    expected unsigned int
>> arch/arm/boot/compressed/atags_to_fdt.c:189:62:    got restricted __be32 [usertype]
>>
>> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
>> ---
>> Cc: Russell King <linux@armlinux.org.uk>
>> Cc: linux-arm-kernel@lists.infradead.org
>> ---
>>   arch/arm/boot/compressed/atags_to_fdt.c | 12 ++++++------
>>   1 file changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
>> index 330cd3c2eae5..13407d0243b9 100644
>> --- a/arch/arm/boot/compressed/atags_to_fdt.c
>> +++ b/arch/arm/boot/compressed/atags_to_fdt.c
>> @@ -60,7 +60,7 @@ static uint32_t get_cell_size(const void *fdt)
>>   {
>>   	int len;
>>   	uint32_t cell_size = 1;
>> -	const uint32_t *size_len =  getprop(fdt, "/", "#size-cells", &len);
>> +	const __be32 *size_len =  getprop(fdt, "/", "#size-cells", &len);
>>   
>>   	if (size_len)
>>   		cell_size = fdt32_to_cpu(*size_len);
>> @@ -129,7 +129,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>>   	struct tag *atag = atag_list;
>>   	/* In the case of 64 bits memory size, need to reserve 2 cells for
>>   	 * address and size for each bank */
>> -	uint32_t mem_reg_property[2 * 2 * NR_BANKS];
>> +	__be32 mem_reg_property[2 * 2 * NR_BANKS];
>>   	int memcount = 0;
>>   	int ret, memsize;
>>   
>> @@ -138,7 +138,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>>   		return 1;
>>   
>>   	/* if we get a DTB here we're done already */
>> -	if (*(u32 *)atag_list == fdt32_to_cpu(FDT_MAGIC))
>> +	if (*(u32 *)atag_list == fdt32_to_cpu((fdt32_t)FDT_MAGIC))
>>   	       return 0;
>>   
>>   	/* validate the ATAG */
>> @@ -177,8 +177,8 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>>   				/* if memsize is 2, that means that
>>   				 * each data needs 2 cells of 32 bits,
>>   				 * so the data are 64 bits */
>> -				uint64_t *mem_reg_prop64 =
>> -					(uint64_t *)mem_reg_property;
>> +				__be64 *mem_reg_prop64 =
>> +					(__be64 *)mem_reg_property;
>>   				mem_reg_prop64[memcount++] =
>>   					cpu_to_fdt64(atag->u.mem.start);
>>   				mem_reg_prop64[memcount++] =
>> @@ -207,7 +207,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>>   	}
>>   
>>   	if (memcount) {
>> -		setprop(fdt, "/memory", "reg", mem_reg_property,
>> +		setprop(fdt, "/memory", "reg", (uint32_t *)mem_reg_property,
> 
> I'm not sure this is an improvement.
> 
> fdt_setprop() takes a const void pointer as its 4th argument:
> 
> int fdt_setprop(void *fdt, int nodeoffset, const char *name,
>                  const void *val, int len)
> 		
> setprop() could also do the same, since setprop() is just as flexible
> as fdt_setprop() itself.  Then you don't need this cast.

ok, thank you for pointing this out, I will go and sort this out.

>>   			4 * memcount * memsize);
>>   	}
>>   
>> -- 
>> 2.23.0
>>
>>
> 


-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
