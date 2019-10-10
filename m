Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20644D2798
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 12:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hGedKB9nzYi8QseYWHBDrYzKdx1VMBY19IwWvfdDR9A=; b=hho91RxBugpxsvQv70U9ddh3m
	aOpxvKtL7+fR5BQvxpLe7tvawY1cxW2QStPepAOUro6MBkzAVuO00C+VnuHPs7Hw3XzQKKZeud+eo
	0tNX3P/PiApMHFGefojO8ZBYTaKA9o017JgOl6jkmdsBhc8llDyunCjskHJvly5g3xZpvZSF3WZ0Z
	ZqoQ+Dy2w76T1YDY0ZB6Ynymv9C2wnkCvFn/sYl03/QL9uMdfHv1IVmcIRCSKQmwx00UZsZS6o2mm
	Q4RDC2TnPaA173+o71SnQY3/GzoJ3ooBUkWsMUbLFgVw/gjmSTGl8NLhoW0uNCk0K0aH5V7yAY1Um
	gxcVlM3hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIW7k-0002lE-3y; Thu, 10 Oct 2019 10:56:48 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIW7Z-0002kl-MF
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 10:56:39 +0000
Received: from [167.98.27.226] (helo=[10.35.6.110])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iIW7Y-0007wJ-09; Thu, 10 Oct 2019 11:56:36 +0100
Subject: Re: [PATCH] zImage: atags_to_fdt: fix __be32 and __be64 types
To: linux-kernel@lists.codethink.co.uk
References: <20191010105357.7205-1-ben.dooks@codethink.co.uk>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <b5d92199-4c10-a0c4-fbaf-df10df5199f7@codethink.co.uk>
Date: Thu, 10 Oct 2019 11:56:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010105357.7205-1-ben.dooks@codethink.co.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_035637_879851_DF5D82ED 
X-CRM114-Status: GOOD (  22.68  )
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
Cc: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/10/2019 11:53, Ben Dooks wrote:
> There are some sparse warnings about type conversion in
> the atags_to_fdt.c code, due to __be32 and __be64, so
> fix the following:
> 
> - Change _be32 and __be64 where appropriate
> - Change setprop() to take a 'void *'
> - Change incorrect fdt32_to_cpu() on FDT_MAGIC
> 
> Fixes the following sparse warnings:
> 
> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:66:29: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:141:34: warning: cast to restricted __be32
> arch/arm/boot/compressed/atags_to_fdt.c:182:60: warning: incorrect type in assignment (different base types)
> arch/arm/boot/compressed/atags_to_fdt.c:182:60:    expected unsigned long long [usertype]
> arch/arm/boot/compressed/atags_to_fdt.c:182:60:    got restricted __be64 [usertype]
> arch/arm/boot/compressed/atags_to_fdt.c:184:60: warning: incorrect type in assignment (different base types)
> arch/arm/boot/compressed/atags_to_fdt.c:184:60:    expected unsigned long long [usertype]
> arch/arm/boot/compressed/atags_to_fdt.c:184:60:    got restricted __be64 [usertype]
> arch/arm/boot/compressed/atags_to_fdt.c:187:62: warning: incorrect type in assignment (different base types)
> arch/arm/boot/compressed/atags_to_fdt.c:187:62:    expected unsigned int
> arch/arm/boot/compressed/atags_to_fdt.c:187:62:    got restricted __be32 [usertype]
> arch/arm/boot/compressed/atags_to_fdt.c:189:62: warning: incorrect type in assignment (different base types)
> arch/arm/boot/compressed/atags_to_fdt.c:189:62:    expected unsigned int
> arch/arm/boot/compressed/atags_to_fdt.c:189:62:    got restricted __be32 [usertype]
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> KernelVersion: 5.4-rc2
> ---
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: linux-arm-kernel@lists.infradead.org
> 
> Changes since v1:
> - Fix setprop() type to void *
> - Fix ftd32_to_cpu on FDT_MAGIC
> ---
>   arch/arm/boot/compressed/atags_to_fdt.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
> index 330cd3c2eae5..cd889f19c8a3 100644
> --- a/arch/arm/boot/compressed/atags_to_fdt.c
> +++ b/arch/arm/boot/compressed/atags_to_fdt.c
> @@ -19,7 +19,7 @@ static int node_offset(void *fdt, const char *node_path)
>   }
>   
>   static int setprop(void *fdt, const char *node_path, const char *property,
> -		   uint32_t *val_array, int size)
> +		   void *val_array, int size)
>   {
>   	int offset = node_offset(fdt, node_path);
>   	if (offset < 0)
> @@ -60,7 +60,7 @@ static uint32_t get_cell_size(const void *fdt)
>   {
>   	int len;
>   	uint32_t cell_size = 1;
> -	const uint32_t *size_len =  getprop(fdt, "/", "#size-cells", &len);
> +	const __be32 *size_len =  getprop(fdt, "/", "#size-cells", &len);
>   
>   	if (size_len)
>   		cell_size = fdt32_to_cpu(*size_len);
> @@ -129,7 +129,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>   	struct tag *atag = atag_list;
>   	/* In the case of 64 bits memory size, need to reserve 2 cells for
>   	 * address and size for each bank */
> -	uint32_t mem_reg_property[2 * 2 * NR_BANKS];
> +	__be32 mem_reg_property[2 * 2 * NR_BANKS];
>   	int memcount = 0;
>   	int ret, memsize;
>   
> @@ -138,7 +138,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>   		return 1;
>   
>   	/* if we get a DTB here we're done already */
> -	if (*(u32 *)atag_list == fdt32_to_cpu(FDT_MAGIC))
> +	if (*(__be32 *)atag_list == cpu_to_fdt32(FDT_MAGIC))
>   	       return 0;
>   
>   	/* validate the ATAG */
> @@ -177,8 +177,8 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>   				/* if memsize is 2, that means that
>   				 * each data needs 2 cells of 32 bits,
>   				 * so the data are 64 bits */
> -				uint64_t *mem_reg_prop64 =
> -					(uint64_t *)mem_reg_property;
> +				__be64 *mem_reg_prop64 =
> +					(__be64 *)mem_reg_property;
>   				mem_reg_prop64[memcount++] =
>   					cpu_to_fdt64(atag->u.mem.start);
>   				mem_reg_prop64[memcount++] =
> @@ -207,7 +207,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>   	}
>   
>   	if (memcount) {
> -		setprop(fdt, "/memory", "reg", mem_reg_property,
> +		setprop(fdt, "/memory", "reg", (uint32_t *)mem_reg_property,

grr, forgot to fix this.

>   			4 * memcount * memsize);
>   	}
>   
> 


-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
