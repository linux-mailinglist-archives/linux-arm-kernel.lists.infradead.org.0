Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61A0D2E7D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:21:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUIPr4lMNQ6xBYDh6jpRPEJnK+6geIuGCmuUUHk2zyY=; b=mRDHU3z55dQztb
	WEyt6xo6CGi+WHkvtzCCe63LAvQ5oztkqFaL7A+yoUM5W+4PHLbcFfva22qEalBEHfIlBaWP49Nt6
	LsZXjrzPHkbtYj8H1VR5YIjeXyZBt6Np4+T9rcXp7tgR3cvEELBl9g11MDs2cIUduz/eOxUcQyyAm
	VDhrLx93oyxyLyIuLuOQv0ytFRP76BnfqAXiddJ2pRew9YPq8BT+KRagcBuYLt6U+oZ6oTEksoeAd
	72RidSsMIekWQbnKZGIgrZbFRWF1T2eHBo4ctb6RHHKkFK0uyn4cgcj4ZDsrCbjQConHHBUXCFMaH
	O1gy2kPrsptO1MxAwZIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbBs-0001FT-Iv; Thu, 10 Oct 2019 16:21:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbBj-0001Ea-5m
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:21:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qu0HzL4uSt1DeTFYVZAXnNh28DzFCoEA74uAX3IeWHk=; b=i4TvrVBAKNSBp2+4xzVD2MpSr
 y1Xj1D6kz2edXY2ZeGMXfo+rl6ZHYGVrZPycd4d734D+hpC0Ots447vMgFZv2KoVFBWr9uiVYMeIQ
 ooA5Cjt2G296VE1WBR1BYVPZYNoCsQFLEc1BHikklyNtwZlncH50aT2c9o8OLONSeT9FSyw5wPsex
 YuZaokdWfuo536DS0eQ+PwCo4OPZP7fOHuwpval5ZEiFeSOXurYXy+a1LjMFXMvTvPB2l2CO+8j/+
 EOiI4GviBE5ZxpjlfLFj+dBEKNKDoDloPIAFEtx6zWSLlCgmK8WGDnPG+PmjlCnVCtEXMhor4cXjY
 S77hickjA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:42424)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iIbBZ-0008Ts-EI; Thu, 10 Oct 2019 17:21:05 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iIbBY-0000ND-Mn; Thu, 10 Oct 2019 17:21:04 +0100
Date: Thu, 10 Oct 2019 17:21:04 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] zImage: atags_to_fdt: fix __be32 and __be64 types
Message-ID: <20191010162104.GJ25745@shell.armlinux.org.uk>
References: <20191010105357.7205-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010105357.7205-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_092115_367128_5EDA9069 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 11:53:57AM +0100, Ben Dooks wrote:
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
>  arch/arm/boot/compressed/atags_to_fdt.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
> index 330cd3c2eae5..cd889f19c8a3 100644
> --- a/arch/arm/boot/compressed/atags_to_fdt.c
> +++ b/arch/arm/boot/compressed/atags_to_fdt.c
> @@ -19,7 +19,7 @@ static int node_offset(void *fdt, const char *node_path)
>  }
>  
>  static int setprop(void *fdt, const char *node_path, const char *property,
> -		   uint32_t *val_array, int size)
> +		   void *val_array, int size)
>  {
>  	int offset = node_offset(fdt, node_path);
>  	if (offset < 0)
> @@ -60,7 +60,7 @@ static uint32_t get_cell_size(const void *fdt)
>  {
>  	int len;
>  	uint32_t cell_size = 1;
> -	const uint32_t *size_len =  getprop(fdt, "/", "#size-cells", &len);
> +	const __be32 *size_len =  getprop(fdt, "/", "#size-cells", &len);
>  
>  	if (size_len)
>  		cell_size = fdt32_to_cpu(*size_len);
> @@ -129,7 +129,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>  	struct tag *atag = atag_list;
>  	/* In the case of 64 bits memory size, need to reserve 2 cells for
>  	 * address and size for each bank */
> -	uint32_t mem_reg_property[2 * 2 * NR_BANKS];
> +	__be32 mem_reg_property[2 * 2 * NR_BANKS];
>  	int memcount = 0;
>  	int ret, memsize;
>  
> @@ -138,7 +138,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>  		return 1;
>  
>  	/* if we get a DTB here we're done already */
> -	if (*(u32 *)atag_list == fdt32_to_cpu(FDT_MAGIC))
> +	if (*(__be32 *)atag_list == cpu_to_fdt32(FDT_MAGIC))
>  	       return 0;
>  
>  	/* validate the ATAG */
> @@ -177,8 +177,8 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>  				/* if memsize is 2, that means that
>  				 * each data needs 2 cells of 32 bits,
>  				 * so the data are 64 bits */
> -				uint64_t *mem_reg_prop64 =
> -					(uint64_t *)mem_reg_property;
> +				__be64 *mem_reg_prop64 =
> +					(__be64 *)mem_reg_property;
>  				mem_reg_prop64[memcount++] =
>  					cpu_to_fdt64(atag->u.mem.start);
>  				mem_reg_prop64[memcount++] =
> @@ -207,7 +207,7 @@ int atags_to_fdt(void *atag_list, void *fdt, int total_space)
>  	}
>  
>  	if (memcount) {
> -		setprop(fdt, "/memory", "reg", mem_reg_property,
> +		setprop(fdt, "/memory", "reg", (uint32_t *)mem_reg_property,

As setprop() now takes a void pointer argument, do you need this cast?

>  			4 * memcount * memsize);
>  	}
>  
> -- 
> 2.23.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
