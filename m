Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB13EAF932
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JetZIcHuu++UUUonod3qQr3D4FKArNrgba19NoQUaxc=; b=EDEyoqkaAY9VfQ
	xDS3D7zyp3wxknOtE2iwMEblGxQz+3UDVo//djS32zLS5/OFHRlS9t9EqW6mOxf95ybuqhswi+tmw
	dsAemMuwhSr3G24w8uWavxlfLlSuJvtY4GSdzHJM/UEl3gPpDMKZNLJK7N4CzgF1sn8xZ4z4TRRCV
	BChYlCQcYTLQEcRxBCrQL1WhF1drumD6NCVEDnVKvfVIlfZxivknhLQKKe3zGhf8cfkrMNwhWOJNb
	jJLMY5QwAGTs2myYQXPafKLxIeUERhRcAAAN+zBApsSdCVzoba1oEHbGJZvVNJzPOPdonCzbPMqUf
	0MyrCBF5sfIKmwSH55wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7z7U-0001P4-Me; Wed, 11 Sep 2019 09:41:00 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z7F-0001Mw-In
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 09:40:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bC+7AkqQohlcqRdZPZWKgGspys87RR8TikThWXhbXNk=; b=QYSGWD2EiaQUzRlWTWlgn9t1p
 W/ppZ+fmwlYPNZ79bENQJ1r4n36DdMI8pp6DZpgdOVraWQJ7vWsnADH5UQapBj9/KOnyXzj8U2YoL
 nFwyucdxReA1aVGBzEr6ZxmYqFwDDjDA727zWFagxlR1qHzAng0UE6GvVsdulucPKsvvnZULSj4bS
 NNEZE8qtmZcWFLAkMToYafM4hXwJtsT0t44EN00B3wtZRuLN+UZTD17K7k3F4Jl7mT0XWjbVjauvo
 v1cm6v8uunJ77/ah/rrA/FJOiv0MH4aMFvjA1XasiwEKj/hs5SYPBqgVN8yA5B02we607O6mKW4/9
 ogS1saweA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38166)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i7z75-0005Vv-7r; Wed, 11 Sep 2019 10:40:35 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i7z72-0003qa-4e; Wed, 11 Sep 2019 10:40:32 +0100
Date: Wed, 11 Sep 2019 10:40:32 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Austin Kim <austindh.kim@gmail.com>
Subject: Re: [PATCH] ARM: module: Drop 'rel->r_offset < 0' always false
 statement
Message-ID: <20190911094031.GU13294@shell.armlinux.org.uk>
References: <20190911045408.GA62424@LGEARND20B15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911045408.GA62424@LGEARND20B15>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_024045_626821_338951A9 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: matthias.schiffer@ew.tq-group.com, info@metux.net,
 linux-arm-kernel@lists.infradead.org, allison@lohutok.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 01:54:08PM +0900, Austin Kim wrote:
> Since rel->r_offset is declared as Elf32_Addr,
> this value is always non-negative.
> typedef struct elf32_rel {
> 	  Elf32_Addr	r_offset;
> 	    Elf32_Word	r_info;
> } Elf32_Rel;
> 
> typedef __u32	Elf32_Addr;
> typedef unsigned int __u32;
> 
> Drop 'rel->r_offset < 0' statement which is always false.
> 
> Signed-off-by: Austin Kim <austindh.kim@gmail.com>
> ---
>  arch/arm/kernel/module.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/kernel/module.c b/arch/arm/kernel/module.c
> index deef17f..0921ce7 100644
> --- a/arch/arm/kernel/module.c
> +++ b/arch/arm/kernel/module.c
> @@ -92,7 +92,7 @@ apply_relocate(Elf32_Shdr *sechdrs, const char *strtab, unsigned int symindex,
>  		sym = ((Elf32_Sym *)symsec->sh_addr) + offset;
>  		symname = strtab + sym->st_name;
>  
> -		if (rel->r_offset < 0 || rel->r_offset > dstsec->sh_size - sizeof(u32)) {
> +		if (rel->r_offset > dstsec->sh_size - sizeof(u32)) {
>  			pr_err("%s: section %u reloc %u sym '%s': out of bounds relocation, offset %d size %u\n",

Also change %d to %u here.

>  			       module->name, relindex, i, symname,
>  			       rel->r_offset, dstsec->sh_size);
> -- 
> 2.6.2
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
