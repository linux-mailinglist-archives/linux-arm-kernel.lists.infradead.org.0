Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2446D3D3B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 12:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Lc9I3oJP0arUtL9W0VUUNBdDsy24vJ7g+Is0R3nLfs0=; b=pUDYcpruYxtvF8zWI1waL5Nxj
	pzLbzChePuwXOxiQ9GCUwQETUsFeg0h6G5XXh4pvXpE8Yguz2zKVb4c7qzX/4em2MGx8B+yV65HlQ
	yfYva9sNLj8M0liZyvKKuRoLajqCBI1ZeHWoaRLAPv9gm7ibmCFwvyXicwowV3c0DcH+BFkZgBhNL
	j4U85YKouVxe8Lr1WRUh89izeU57ySLkTWkXAX2w7pTOW15nmeO+b54/rEoi6z5gm8GfHPvFJzyNC
	gp4s649aDPB47pLlgxyvBOmw7y7VAfEwHzFtMIMV/M+eYhH2+2pyrwwVIDZGLrL3azYD1mOfWqMVw
	OBcwHYTdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIs3d-00059H-9U; Fri, 11 Oct 2019 10:22:01 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIs3S-00057m-5e
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 10:21:52 +0000
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIs3N-0000D3-Pv; Fri, 11 Oct 2019 11:21:45 +0100
Subject: Re: [PATCH] zImage: atags_to_fdt: fix __be32 and __be64 types
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20191010105357.7205-1-ben.dooks@codethink.co.uk>
 <20191010162104.GJ25745@shell.armlinux.org.uk>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <49492058-d3b8-f3c1-dccc-4d42b3c5e66e@codethink.co.uk>
Date: Fri, 11 Oct 2019 11:21:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010162104.GJ25745@shell.armlinux.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_032150_357090_C35A0C79 
X-CRM114-Status: GOOD (  17.78  )
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

On 10/10/2019 17:21, Russell King - ARM Linux admin wrote:
> On Thu, Oct 10, 2019 at 11:53:57AM +0100, Ben Dooks wrote:
>> There are some sparse warnings about type conversion in
>> the atags_to_fdt.c code, due to __be32 and __be64, so
>> fix the following:
>>
>> - Change _be32 and __be64 where appropriate
>> - Change setprop() to take a 'void *'
>> - Change incorrect fdt32_to_cpu() on FDT_MAGIC
>>
>> Fixes the following sparse warnings:
>>
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
>> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
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
>> KernelVersion: 5.4-rc2
>> ---
>> Cc: Russell King <linux@armlinux.org.uk>
>> Cc: linux-arm-kernel@lists.infradead.org
>>
>> Changes since v1:
>> - Fix setprop() type to void *
>> - Fix ftd32_to_cpu on FDT_MAGIC
>> ---
>>   arch/arm/boot/compressed/atags_to_fdt.c | 14 +++++++-------
>>   1 file changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
>> index 330cd3c2eae5..cd889f19c8a3 100644
>> --- a/arch/arm/boot/compressed/atags_to_fdt.c
>> +++ b/arch/arm/boot/compressed/atags_to_fdt.c
>> @@ -19,7 +19,7 @@ static int node_offset(void *fdt, const char *node_path)
>>   }
>>   
>>   static int setprop(void *fdt, const char *node_path, const char *property,
>> -		   uint32_t *val_array, int size)
>> +		   void *val_array, int size)
>>   {
>>   	int offset = node_offset(fdt, node_path);
>>   	if (offset < 0)
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
>> +	if (*(__be32 *)atag_list == cpu_to_fdt32(FDT_MAGIC))
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
> As setprop() now takes a void pointer argument, do you need this cast?

Yes, sorry noticed this just after I sent the v2 so fixed v3.

-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
